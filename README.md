# Bowling Game Scoring

## Scoring

<figure>
<table>
  <thead>
    <tr>
      <th>Frame</th>
      <th colspan="2">1</th>
      <th colspan="2">2</th>
      <th colspan="2">3</th>
      <th colspan="2">4</th>
      <th colspan="2">5</th>
      <th colspan="2">6</th>
      <th colspan="2">7</th>
      <th colspan="2">8</th>
      <th colspan="2">9</th>
      <th colspan="3">10</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>Roll</th>
      <td>1</td>
      <td>4</td>
      <td>4</td>
      <td>5</td>
      <td>6</td>
      <td>/</td>
      <td>5</td>
      <td>/</td>
      <td></td>
      <td>X</td>
      <td>0</td>
      <td>1</td>
      <td>7</td>
      <td>/</td>
      <td>6</td>
      <td>/</td>
      <td></td>
      <td>X</td>
      <td>2</td>
      <td>/</td>
      <td>6</td>
    </tr>
    <tr>
      <th>Score</th>
      <td colspan="2">5</td>
      <td colspan="2">14</td>
      <td colspan="2">29</td>
      <td colspan="2">49</td>
      <td colspan="2">60</td>
      <td colspan="2">61</td>
      <td colspan="2">77</td>
      <td colspan="2">97</td>
      <td colspan="2">117</td>
      <td colspan="3">133</td>
    </tr>
  </tbody>
</table>
<figcaption>An example game</figcaption>
</figure>

A bowling game consists of 10 frames. In each frame the player has two
opportunities to knock down 10 pins. The score for the frame is the total
number of pins knocked down, plus bonuses for strikes and spares.

A **spare** is when the player knocks down all 10 pins in two tries. The bonus
for that frame is the number of pins knocked down by the next roll. So in frame
3 above, the score is 10 (the total number knocked down) plus a bonus of 5 (the
number of pins knocked down on the next roll).

A **strike** is when the player knocks down all 10 pins on their first try. The
bonus for that frame is the value of the next two balls rolled. So in frame 5
above, the score is 10 (the total number knocked down) plus a bonus of 0 (the
number of pins knocked down in the next roll) plus 1 (the number of pins
knocked down in the subsequent roll).

In the tenth frame a player who rolls a spare or strike is allowed to roll the
extra balls to complete the frame. However, no more than three balls can be
rolled in the tenth frame.

## Application Requirements

Write a class named “Game” that has two methods:

- `#roll(pins)` is called each time the player rolls a ball. The argument is
  the number of pins knocked down.
- `#score` is called only at the very end of the game. It returns the total
  score for that game.

### Example Design

The `Game` class represents an entire bowling game for a single player. It
consists of 10 frames and implements:

- `#roll(pins)` – a roll of the bowling ball and how many pins were knocked
  down.
- `#score` – the cumulative score of all frames.

The `Frame` class represents a single frame of a game. Each frame has 1–2 rolls
and a complete game consists of 10 frames. `Frame` implements:

- `#score` – the score achieved in this frame. The score for a spare or a
  strike depends on successive frames.

The `Roll` class represents a roll of the bowling ball. A frame has 1 or 2
rolls. Each roll knocks down 0–10 pins.

- `#pins` – the number of pins knocked down by this roll.

The `TenthFrame` class is a special case version of the `Frame` class. The
tenth and final frame has 2 or 3 rolls. As such, it is different than the
previous nine frames.

## Development

There is already some initial structure and tests set up for you to build upon.
The only requirement is that the class `Bowling::Game` remain intact and that
it implements the public interface `#roll(pins)` and `#score`.

You can run the tests by doing `rspec test` from the command line, and you can
load up the app to play with by running `irb -r ./lib/bowling_game` or by
running `irb` and then doing `require_relative ./lib/bowling_game`.
