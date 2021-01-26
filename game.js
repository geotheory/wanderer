
var config = {
    type: Phaser.AUTO,
    parent: 'phaser-example',
    width: 800,
    height: 320,
    scene: {
        preload: preload,
        create: create
    }
};

var game = new Phaser.Game(config);

function preload ()
{
    this.load.image('bg', 'assets/skies/background1.png');
}

function create ()
{
    this.add.image(400, 300, 'bg');

    var r = [
        this.add.rectangle(0, 0, 200, 200, 0x6666ff), 
        this.add.rectangle(200, 0, 200, 200, 0x9966ff),
        this.add.rectangle(400, 0, 200, 200),
        this.add.rectangle(0, 200, 200, 200, 0xff6699),
        this.add.rectangle(200, 200, 200, 200, 0xff33cc),
        this.add.rectangle(400, 200, 200, 200, 0xff66ff)
    ];
    r[2].setStrokeStyle(2, 0x1a65ac);

    this.tweens.add({
        targets: r[3],
        scaleX: 0.25,
        scaleY: 0.5,
        yoyo: true,
        repeat: -1,
        ease: 'Sine.easeInOut'
    });

    this.tweens.add({
        targets: r[4],
        alpha: 0.2,
        yoyo: true,
        repeat: -1,
        ease: 'Sine.easeInOut'
    });

    this.tweens.add({
        targets: r[5],
        angle: 90,
        yoyo: true,
        repeat: -1,
        ease: 'Sine.easeInOut'
    });
}
