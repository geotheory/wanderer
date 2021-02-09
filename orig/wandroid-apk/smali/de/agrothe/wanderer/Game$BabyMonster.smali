.class final Lde/agrothe/wanderer/Game$BabyMonster;
.super Ljava/lang/Object;
.source "Game.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/agrothe/wanderer/Game;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BabyMonster"
.end annotation


# instance fields
.field _mx:I

.field _my:I

.field _under:C

.field _x:I

.field _y:I


# direct methods
.method constructor <init>(II)V
    .locals 1
    .param p1, "pX"    # I
    .param p2, "pY"    # I

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput p1, p0, Lde/agrothe/wanderer/Game$BabyMonster;->_x:I

    iput p2, p0, Lde/agrothe/wanderer/Game$BabyMonster;->_y:I

    .line 125
    const/4 v0, 0x1

    iput v0, p0, Lde/agrothe/wanderer/Game$BabyMonster;->_mx:I

    const/4 v0, 0x0

    iput v0, p0, Lde/agrothe/wanderer/Game$BabyMonster;->_my:I

    .line 126
    const/16 v0, 0x2d

    iput-char v0, p0, Lde/agrothe/wanderer/Game$BabyMonster;->_under:C

    .line 127
    return-void
.end method
