let gameSeq = [];
let userSeq = [];
let highestScore = 0;

let btns = ["yellow", "green", "purple", "pink"];

let start = false;
let level = 0;

let h3 = document.querySelector('.game-status');
let highestScoreDisplay = document.getElementById("highestScore");

document.addEventListener("keypress", function () {
  if (start === false) {
    console.log("Game Started");
    start = true;
    levelUp();
  }
});

function btnFlash(btn) {
  btn.classList.add("flash");
  setTimeout(() => btn.classList.remove("flash"), 250);
}

function userFlash(btn) {
  btn.classList.add("userFlash");
  setTimeout(() => btn.classList.remove("userFlash"), 250);
}

function levelUp() {
  userSeq = [];
  level++;
  h3.innerText = `Level ${level}`;

  let randomInx = Math.floor(Math.random() * btns.length);
  let randomColor = btns[randomInx];
  let randomBtn = document.querySelector(`#${randomColor}`);

  gameSeq.push(randomColor);
  console.log(`Game sequence ${randomColor}`);
  btnFlash(randomBtn);
}

function checkSeq(idx) {
  if (userSeq[idx] === gameSeq[idx]) {
    if (userSeq.length === gameSeq.length) {
      setTimeout(levelUp, 1000);
    }
  } else {
    h3.innerHTML = `❌ Game Over! Your score: <b>${level}</b><br>Press any key to restart.`;
    if (level > highestScore) {
      highestScore = level;
      highestScoreDisplay.innerText = highestScore;
    }

    document.body.style.backgroundColor = "red";
    setTimeout(() => document.body.style.backgroundColor = "#f7f7f7", 200);

    reset();
  }
}

function btnPress() {
  let btn = this;
  userFlash(btn);

  let userColor = btn.getAttribute("id");
  userSeq.push(userColor);

  checkSeq(userSeq.length - 1);
}

let allButtons = document.querySelectorAll('.btn');
for (let btn of allButtons) {
  btn.addEventListener("click", btnPress);
}

function reset() {
  level = 0;
  userSeq = [];
  gameSeq = [];
  start = false;
}
