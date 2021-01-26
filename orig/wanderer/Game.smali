.class final Lde/agrothe/wanderer/Game;
.super Ljava/lang/Object;
.source "Game.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/agrothe/wanderer/Game$BabyMonster;
    }
.end annotation


# static fields
.field static final _ALIVE:I = -0x1

.field static final _ARRIVAL:C = 'A'

.field static final _BABY_MONSTER:C = 'S'

.field static final _BALLOON:C = '^'

.field static final _BIG_MONSTER:C = 'M'

.field static final _BOMB:C = 'B'

.field static final _BOULDER:C = 'O'

.field static final _BRICK:C = '='

.field static final _CAGE:C = '+'

.field static final _CREDIT:C = 'C'

.field static final _DEAD_BABY_MONSTER:I = 0x6

.field static final _DEAD_EXPLODING_BOMB:I = 0x8

.field static final _DEAD_EXPLODING_LANDMINE:I = 0x4

.field static final _DEAD_FALLING_BOULDER:I = 0x0

.field static final _DEAD_HUNGRY_MONSTER:I = 0x2

.field static final _DEAD_NEXT_LEVEL:I = 0x7

.field static final _DEAD_OUT_OF_MOVES:I = 0x3

.field static final _DEAD_SPEEDING_ARROW:I = 0x1

.field static final _DEAD_WALKING_INTO_MONSTER:I = 0x5

.field static final _DEAD_WANDERER:C = '%'

.field static final _DIAMOND:C = '*'

.field static final _EARTH:C = ':'

.field static final _EXIT:C = 'X'

.field static final _LANDMINE:C = '!'

.field static final _LEFT_ARROW:C = '<'

.field static final _LEFT_DEAD_WANDERER:C = 'd'

.field static final _LEFT_SLOPE:C = '|'

.field static final _LEFT_WANDERER:C = 'l'

.field static final _NOOFROWS:I = 0x10

.field static final _PUSHABLE:C = '~'

.field static final _RIGHT_ARROW:C = '>'

.field static final _RIGHT_SLOPE:C = '/'

.field static final _ROCK:C = '#'

.field static final _ROWLEN:I = 0x28

.field static final _SPACE:C = '-'

.field static final _TELEPORT:C = 'T'

.field static final _UNLIMITED_MOVES:I = -0x1

.field static final _WANDERER:C = '@'

.field private static _arrivalX:I

.field private static _arrivalY:I

.field static final _babyMonsterDir:Landroid/graphics/Point;

.field private static final _babyMonsters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lde/agrothe/wanderer/Game$BabyMonster;",
            ">;"
        }
    .end annotation
.end field

.field private static _bigMonsterX:I

.field private static _bigMonsterY:I

.field private static final _charAllowedObjs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field static final _charObjs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static _diamonds:I

.field static final _dontCheck:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field static final _dontCheck1:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field static final _dontCheck2:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field static _howdead:I

.field private static _level:I

.field private static _maxMoves:I

.field static _maze:Lde/agrothe/wanderer/MazeView$Maze;

.field private static _moving:Z

.field private static _score:I

.field static final _screen:[C

.field static final _viables:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static _wandererX:I

.field private static _wandererY:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x2d

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 67
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x19

    new-array v1, v1, [Ljava/lang/Character;

    const/16 v2, 0x43

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v4

    const/16 v2, 0x40

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v5

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v6

    const/16 v2, 0x3a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x4

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const/16 v3, 0x4f

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const/16 v3, 0x5e

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const/16 v3, 0x3c

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const/16 v3, 0x3e

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const/16 v3, 0x7e

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const/16 v3, 0x21

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const/16 v3, 0x42

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const/16 v3, 0x58

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const/16 v3, 0x54

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const/16 v3, 0x41

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const/16 v3, 0x4d

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const/16 v3, 0x53

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const/16 v3, 0x23

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const/16 v3, 0x3d

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const/16 v3, 0x7c

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const/16 v3, 0x2f

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const/16 v3, 0x2b

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const/16 v3, 0x25

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const/16 v3, 0x6c

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lde/agrothe/wanderer/Game;->_charObjs:Ljava/util/HashSet;

    .line 76
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lde/agrothe/wanderer/Game;->_charObjs:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lde/agrothe/wanderer/Game;->_charAllowedObjs:Ljava/util/HashSet;

    .line 80
    sget-object v0, Lde/agrothe/wanderer/Game;->_charAllowedObjs:Ljava/util/HashSet;

    const/16 v1, 0x25

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Lde/agrothe/wanderer/Game;->_charAllowedObjs:Ljava/util/HashSet;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lde/agrothe/wanderer/Game;->_charAllowedObjs:Ljava/util/HashSet;

    const/16 v1, 0x6c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 86
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Character;

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v4

    const/16 v2, 0x3a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v5

    const/16 v2, 0x40

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v6

    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const/16 v3, 0x53

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lde/agrothe/wanderer/Game;->_viables:Ljava/util/HashSet;

    .line 90
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lde/agrothe/wanderer/Game;->_charAllowedObjs:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lde/agrothe/wanderer/Game;->_dontCheck:Ljava/util/HashSet;

    .line 93
    sget-object v0, Lde/agrothe/wanderer/Game;->_dontCheck:Ljava/util/HashSet;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Character;

    const/16 v2, 0x4f

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v5

    const/16 v2, 0x4d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v6

    const/16 v2, 0x7c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const/16 v3, 0x2f

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const/16 v3, 0x40

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const/16 v3, 0x5e

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const/16 v3, 0x42

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 99
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lde/agrothe/wanderer/Game;->_charAllowedObjs:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lde/agrothe/wanderer/Game;->_dontCheck1:Ljava/util/HashSet;

    .line 102
    sget-object v0, Lde/agrothe/wanderer/Game;->_dontCheck1:Ljava/util/HashSet;

    new-array v1, v7, [Ljava/lang/Character;

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v4

    const/16 v2, 0x4d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v5

    const/16 v2, 0x42

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 106
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lde/agrothe/wanderer/Game;->_charAllowedObjs:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lde/agrothe/wanderer/Game;->_dontCheck2:Ljava/util/HashSet;

    .line 109
    sget-object v0, Lde/agrothe/wanderer/Game;->_dontCheck2:Ljava/util/HashSet;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Character;

    const/16 v2, 0x5e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v5

    const/16 v2, 0x4d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v6

    const/16 v2, 0x42

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lde/agrothe/wanderer/Game;->_babyMonsters:Ljava/util/ArrayList;

    .line 134
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, Lde/agrothe/wanderer/Game;->_babyMonsterDir:Landroid/graphics/Point;

    .line 137
    const/16 v0, 0x280

    new-array v0, v0, [C

    sput-object v0, Lde/agrothe/wanderer/Game;->_screen:[C

    .line 141
    sput v4, Lde/agrothe/wanderer/Game;->_level:I

    sput v4, Lde/agrothe/wanderer/Game;->_score:I

    .line 148
    sput-boolean v4, Lde/agrothe/wanderer/Game;->_moving:Z

    .line 151
    const/4 v0, -0x1

    sput v0, Lde/agrothe/wanderer/Game;->_howdead:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    return-void
.end method

.method private static bang(II)Z
    .locals 13
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    const/16 v12, 0x2d

    const/4 v8, 0x2

    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 862
    const/4 v3, 0x0

    .line 863
    .local v3, "gottim":Z
    invoke-static {p1, p0, v12}, Lde/agrothe/wanderer/Game;->set(IIC)V

    .line 864
    const/4 v0, -0x1

    .local v0, "ba":I
    :goto_0
    if-ge v0, v8, :cond_5

    .line 865
    const/4 v1, -0x1

    .local v1, "bb":I
    :goto_1
    if-ge v1, v8, :cond_4

    .line 867
    add-int v6, p1, v0

    .local v6, "yba":I
    add-int v5, p0, v1

    .line 868
    .local v5, "xbb":I
    invoke-static {v6, v5}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result v4

    .line 869
    .local v4, "obj":C
    const/16 v7, 0x23

    if-ne v4, v7, :cond_0

    .line 865
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 870
    :cond_0
    const/16 v7, 0x40

    if-ne v4, v7, :cond_1

    const/4 v3, 0x1

    .line 871
    :cond_1
    const/16 v7, 0x4d

    if-ne v4, v7, :cond_2

    const/4 v7, -0x2

    sput v7, Lde/agrothe/wanderer/Game;->_bigMonsterY:I

    sput v7, Lde/agrothe/wanderer/Game;->_bigMonsterX:I

    .line 872
    :cond_2
    const/16 v7, 0x42

    if-ne v4, v7, :cond_3

    .line 873
    invoke-static {v5, v6}, Lde/agrothe/wanderer/Game;->bang(II)Z

    move-result v7

    or-int/2addr v3, v7

    .line 874
    :cond_3
    invoke-static {v6, v5, v12}, Lde/agrothe/wanderer/Game;->set(IIC)V

    goto :goto_2

    .line 864
    .end local v4    # "obj":C
    .end local v5    # "xbb":I
    .end local v6    # "yba":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 876
    .end local v1    # "bb":I
    :cond_5
    invoke-static {}, Lde/agrothe/wanderer/Game;->flush()V

    .line 877
    if-eqz v3, :cond_6

    .line 879
    const/16 v7, 0x8

    sput v7, Lde/agrothe/wanderer/Game;->_howdead:I

    move v7, v9

    .line 887
    :goto_3
    return v7

    .line 884
    :cond_6
    sub-int v7, p0, v9

    sub-int v8, p1, v9

    invoke-static {v7, v8, v9, v10}, Lde/agrothe/wanderer/Game;->check(IIII)Z

    move-result v2

    .line 885
    .local v2, "dead":Z
    sub-int v7, p0, v9

    add-int/lit8 v8, p1, 0x1

    invoke-static {v7, v8, v10, v11}, Lde/agrothe/wanderer/Game;->check(IIII)Z

    move-result v7

    or-int/2addr v2, v7

    .line 886
    add-int/lit8 v7, p0, 0x1

    sub-int v8, p1, v9

    invoke-static {v7, v8, v10, v9}, Lde/agrothe/wanderer/Game;->check(IIII)Z

    move-result v7

    or-int/2addr v2, v7

    .line 887
    add-int/lit8 v7, p0, 0x1

    add-int/lit8 v8, p1, 0x1

    invoke-static {v7, v8, v11, v10}, Lde/agrothe/wanderer/Game;->check(IIII)Z

    move-result v7

    or-int/2addr v7, v2

    goto :goto_3
.end method

.method private static check(IIII)Z
    .locals 3
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 536
    invoke-static {p0, p1}, Lde/agrothe/wanderer/Game;->fall(II)Z

    move-result v0

    .line 537
    .local v0, "dead":Z
    sub-int v1, p0, p2

    sub-int v2, p1, p3

    invoke-static {v1, v2}, Lde/agrothe/wanderer/Game;->fall(II)Z

    move-result v1

    or-int/2addr v0, v1

    .line 538
    sub-int v1, p0, p3

    sub-int v2, p1, p2

    invoke-static {v1, v2}, Lde/agrothe/wanderer/Game;->fall(II)Z

    move-result v1

    or-int/2addr v0, v1

    .line 539
    add-int v1, p0, p3

    add-int v2, p1, p2

    invoke-static {v1, v2}, Lde/agrothe/wanderer/Game;->fall(II)Z

    move-result v1

    or-int/2addr v0, v1

    .line 540
    sub-int v1, p0, p2

    sub-int/2addr v1, p3

    sub-int v2, p1, p3

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Lde/agrothe/wanderer/Game;->fall(II)Z

    move-result v1

    or-int/2addr v0, v1

    .line 541
    sub-int v1, p0, p2

    add-int/2addr v1, p3

    sub-int v2, p1, p3

    add-int/2addr v2, p2

    invoke-static {v1, v2}, Lde/agrothe/wanderer/Game;->fall(II)Z

    move-result v1

    or-int/2addr v1, v0

    return v1
.end method

.method private static fall(II)Z
    .locals 13
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    const/16 v12, 0x40

    const/4 v11, -0x2

    const/4 v10, 0x0

    const/16 v9, 0x2d

    const/4 v8, 0x1

    .line 550
    const/16 v6, 0xf

    if-gt p1, v6, :cond_0

    if-ltz p1, :cond_0

    if-ltz p0, :cond_0

    const/16 v6, 0x27

    if-le p0, v6, :cond_1

    :cond_0
    move v6, v10

    .line 853
    :goto_0
    return v6

    .line 554
    :cond_1
    move v1, p0

    .local v1, "nx":I
    move v2, p0

    .local v2, "nxu":I
    move v3, p1

    .local v3, "nyl":I
    move v4, p1

    .line 555
    .local v4, "nyr":I
    const/4 v0, 0x0

    .line 566
    .local v0, "dead":Z
    invoke-static {p1, p0}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result v5

    .line 567
    .local v5, "objYx":C
    sget-object v6, Lde/agrothe/wanderer/Game;->_dontCheck:Ljava/util/HashSet;

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v10

    .line 578
    goto :goto_0

    .line 579
    :cond_2
    const/16 v6, 0x42

    if-ne v5, v6, :cond_3

    sget-boolean v6, Lde/agrothe/wanderer/Game;->_moving:Z

    if-nez v6, :cond_3

    move v6, v10

    .line 580
    goto :goto_0

    .line 581
    :cond_3
    const/16 v6, 0x4f

    if-ne v5, v6, :cond_4

    .line 583
    sub-int v6, p0, v8

    invoke-static {p1, v6}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result v6

    if-ne v6, v9, :cond_10

    sub-int v6, p1, v8

    sub-int v7, p0, v8

    invoke-static {v6, v7}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result v6

    if-ne v6, v9, :cond_10

    .line 585
    add-int/lit8 v1, v1, -0x1

    .line 594
    :goto_1
    sub-int v6, p0, v8

    invoke-static {p1, v6}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result v6

    if-ne v6, v9, :cond_12

    add-int/lit8 v6, p1, 0x1

    sub-int v7, p0, v8

    invoke-static {v6, v7}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result v6

    if-ne v6, v9, :cond_12

    .line 596
    add-int/lit8 v2, v2, -0x1

    .line 605
    :goto_2
    sub-int v6, p1, v8

    invoke-static {v6, p0}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result v6

    if-ne v6, v9, :cond_14

    sub-int v6, p1, v8

    add-int/lit8 v7, p0, 0x1

    invoke-static {v6, v7}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result v6

    if-ne v6, v9, :cond_14

    .line 607
    add-int/lit8 v4, v4, -0x1

    .line 616
    :goto_3
    sub-int v6, p1, v8

    invoke-static {v6, p0}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result v6

    if-ne v6, v9, :cond_16

    sub-int v6, p1, v8

    sub-int v7, p0, v8

    invoke-static {v6, v7}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result v6

    if-ne v6, v9, :cond_16

    .line 618
    add-int/lit8 v3, v3, -0x1

    .line 628
    :cond_4
    :goto_4
    const/16 v6, 0x7c

    if-ne v5, v6, :cond_8

    .line 630
    sub-int v6, p1, v8

    add-int/lit8 v1, v1, 0x1

    invoke-static {v6, v1}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result v6

    if-eq v6, v9, :cond_5

    .line 631
    const/4 v1, -0x1

    .line 632
    :cond_5
    add-int/lit8 v6, p1, 0x1

    add-int/lit8 v2, v2, -0x1

    invoke-static {v6, v2}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result v6

    if-eq v6, v9, :cond_6

    .line 633
    const/4 v2, -0x1

    .line 634
    :cond_6
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v6, p0, 0x1

    invoke-static {v4, v6}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result v6

    if-eq v6, v9, :cond_7

    .line 635
    const/4 v4, -0x1

    .line 636
    :cond_7
    add-int/lit8 v3, v3, 0x1

    sub-int v6, p0, v8

    invoke-static {v3, v6}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result v6

    if-eq v6, v9, :cond_8

    .line 637
    const/4 v3, -0x1

    .line 639
    :cond_8
    const/16 v6, 0x2f

    if-ne v5, v6, :cond_c

    .line 641
    sub-int v6, p1, v8

    add-int/lit8 v1, v1, -0x1

    invoke-static {v6, v1}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result v6

    if-eq v6, v9, :cond_9

    .line 642
    const/4 v1, -0x1

    .line 643
    :cond_9
    add-int/lit8 v6, p1, 0x1

    add-int/lit8 v2, v2, 0x1

    invoke-static {v6, v2}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result v6

    if-eq v6, v9, :cond_a

    .line 644
    const/4 v2, -0x1

    .line 645
    :cond_a
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v6, p0, 0x1

    invoke-static {v4, v6}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result v6

    if-eq v6, v9, :cond_b

    .line 646
    const/4 v4, -0x1

    .line 647
    :cond_b
    add-int/lit8 v3, v3, -0x1

    sub-int v6, p0, v8

    invoke-static {v3, v6}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result v6

    if-eq v6, v9, :cond_c

    .line 648
    const/4 v3, -0x1

    .line 650
    :cond_c
    sget-object v6, Lde/agrothe/wanderer/Game;->_dontCheck1:Ljava/util/HashSet;

    invoke-static {p1, v1}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 656
    const/4 v1, -0x1

    .line 657
    :cond_d
    sub-int v6, p1, v8

    invoke-static {v6, p0}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result v6

    const/16 v7, 0x4f

    if-ne v6, v7, :cond_1a

    if-ltz v1, :cond_1a

    if-lez p1, :cond_1a

    .line 660
    sput-boolean v8, Lde/agrothe/wanderer/Game;->_moving:Z

    .line 661
    sub-int v6, p1, v8

    invoke-static {v6, p0, v9}, Lde/agrothe/wanderer/Game;->set(IIC)V

    .line 662
    invoke-static {}, Lde/agrothe/wanderer/Game;->flush()V

    .line 663
    invoke-static {p1, v1}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result v6

    if-ne v6, v12, :cond_e

    .line 665
    sput v10, Lde/agrothe/wanderer/Game;->_howdead:I

    .line 667
    const/4 v0, 0x1

    .line 669
    :cond_e
    invoke-static {p1, v1}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result v6

    const/16 v7, 0x4d

    if-ne v6, v7, :cond_f

    .line 671
    sput v11, Lde/agrothe/wanderer/Game;->_bigMonsterY:I

    sput v11, Lde/agrothe/wanderer/Game;->_bigMonsterX:I

    .line 672
    invoke-static {p1, v1, v9}, Lde/agrothe/wanderer/Game;->set(IIC)V

    .line 673
    invoke-static {}, Lde/agrothe/wanderer/Game;->flush()V

    .line 675
    :cond_f
    invoke-static {p1, v1}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result v6

    const/16 v7, 0x42

    if-ne v6, v7, :cond_18

    .line 677
    invoke-static {v1, p1}, Lde/agrothe/wanderer/Game;->bang(II)Z

    move-result v6

    goto/16 :goto_0

    .line 588
    :cond_10
    add-int/lit8 v6, p0, 0x1

    invoke-static {p1, v6}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result v6

    if-ne v6, v9, :cond_11

    sub-int v6, p1, v8

    add-int/lit8 v7, p0, 0x1

    invoke-static {v6, v7}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result v6

    if-ne v6, v9, :cond_11

    .line 590
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 592
    :cond_11
    const/4 v1, -0x1

    goto/16 :goto_1

    .line 599
    :cond_12
    add-int/lit8 v6, p0, 0x1

    invoke-static {p1, v6}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result v6

    if-ne v6, v9, :cond_13

    add-int/lit8 v6, p1, 0x1

    add-int/lit8 v7, p0, 0x1

    invoke-static {v6, v7}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result v6

    if-ne v6, v9, :cond_13

    .line 601
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 603
    :cond_13
    const/4 v2, -0x1

    goto/16 :goto_2

    .line 610
    :cond_14
    add-int/lit8 v6, p1, 0x1

    invoke-static {v6, p0}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result v6

    if-ne v6, v9, :cond_15

    add-int/lit8 v6, p1, 0x1

    add-int/lit8 v7, p0, 0x1

    invoke-static {v6, v7}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result v6

    if-ne v6, v9, :cond_15

    .line 612
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 614
    :cond_15
    const/4 v4, -0x1

    goto/16 :goto_3

    .line 621
    :cond_16
    add-int/lit8 v6, p1, 0x1

    invoke-static {v6, p0}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result v6

    if-ne v6, v9, :cond_17

    add-int/lit8 v6, p1, 0x1

    sub-int v7, p0, v8

    invoke-static {v6, v7}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result v6

    if-ne v6, v9, :cond_17

    .line 623
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    .line 625
    :cond_17
    const/4 v3, -0x1

    goto/16 :goto_4

    .line 679
    :cond_18
    const/16 v6, 0x4f

    invoke-static {p1, v1, v6}, Lde/agrothe/wanderer/Game;->set(IIC)V

    .line 680
    invoke-static {}, Lde/agrothe/wanderer/Game;->flush()V

    .line 681
    add-int/lit8 v6, p1, 0x1

    invoke-static {v1, v6}, Lde/agrothe/wanderer/Game;->fall(II)Z

    move-result v6

    or-int/2addr v0, v6

    .line 682
    sput-boolean v10, Lde/agrothe/wanderer/Game;->_moving:Z

    .line 683
    sub-int v6, p1, v8

    invoke-static {p0, v6, v10, v8}, Lde/agrothe/wanderer/Game;->check(IIII)Z

    move-result v6

    or-int/2addr v0, v6

    .line 684
    add-int/lit8 v6, p1, 0x1

    invoke-static {v6, v1}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result v6

    if-ne v6, v12, :cond_19

    .line 686
    sput v10, Lde/agrothe/wanderer/Game;->_howdead:I

    move v6, v8

    .line 688
    goto/16 :goto_0

    .line 690
    :cond_19
    add-int/lit8 v6, p1, 0x1

    invoke-static {v6, v1}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result v6

    const/16 v7, 0x4d

    if-ne v6, v7, :cond_1a

    .line 692
    sput v11, Lde/agrothe/wanderer/Game;->_bigMonsterY:I

    sput v11, Lde/agrothe/wanderer/Game;->_bigMonsterX:I

    .line 693
    add-int/lit8 v6, p1, 0x1

    invoke-static {v6, v1, v9}, Lde/agrothe/wanderer/Game;->set(IIC)V

    .line 694
    invoke-static {}, Lde/agrothe/wanderer/Game;->flush()V

    .line 697
    :cond_1a
    sget-object v6, Lde/agrothe/wanderer/Game;->_dontCheck2:Ljava/util/HashSet;

    invoke-static {v4, p0}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 704
    const/4 v4, -0x1

    .line 705
    :cond_1b
    add-int/lit8 v6, p0, 0x1

    invoke-static {p1, v6}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result v6

    const/16 v7, 0x3c

    if-ne v6, v7, :cond_20

    if-ltz v4, :cond_20

    add-int/lit8 v6, p0, 0x1

    const/16 v7, 0x28

    if-ge v6, v7, :cond_20

    .line 708
    sput-boolean v8, Lde/agrothe/wanderer/Game;->_moving:Z

    .line 709
    add-int/lit8 v6, p0, 0x1

    invoke-static {p1, v6, v9}, Lde/agrothe/wanderer/Game;->set(IIC)V

    .line 710
    invoke-static {}, Lde/agrothe/wanderer/Game;->flush()V

    .line 711
    invoke-static {v4, p0}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result v6

    if-ne v6, v12, :cond_1c

    .line 713
    sput v8, Lde/agrothe/wanderer/Game;->_howdead:I

    .line 715
    const/4 v0, 0x1

    .line 717
    :cond_1c
    invoke-static {v4, p0}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result v6

    const/16 v7, 0x4d

    if-ne v6, v7, :cond_1d

    .line 719
    sput v11, Lde/agrothe/wanderer/Game;->_bigMonsterY:I

    sput v11, Lde/agrothe/wanderer/Game;->_bigMonsterX:I

    .line 720
    invoke-static {v4, p0, v9}, Lde/agrothe/wanderer/Game;->set(IIC)V

    .line 721
    invoke-static {}, Lde/agrothe/wanderer/Game;->flush()V

    .line 723
    :cond_1d
    invoke-static {v4, p0}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result v6

    const/16 v7, 0x42

    if-ne v6, v7, :cond_1e

    .line 725
    invoke-static {p0, v4}, Lde/agrothe/wanderer/Game;->bang(II)Z

    move-result v6

    goto/16 :goto_0

    .line 727
    :cond_1e
    const/16 v6, 0x3c

    invoke-static {v4, p0, v6}, Lde/agrothe/wanderer/Game;->set(IIC)V

    .line 728
    invoke-static {}, Lde/agrothe/wanderer/Game;->flush()V

    .line 729
    sub-int v6, p0, v8

    invoke-static {v6, v4}, Lde/agrothe/wanderer/Game;->fall(II)Z

    move-result v6

    or-int/2addr v0, v6

    .line 730
    sput-boolean v10, Lde/agrothe/wanderer/Game;->_moving:Z

    .line 731
    add-int/lit8 v6, p0, 0x1

    const/4 v7, -0x1

    invoke-static {v6, p1, v7, v10}, Lde/agrothe/wanderer/Game;->check(IIII)Z

    move-result v6

    or-int/2addr v0, v6

    .line 732
    sub-int v6, p0, v8

    invoke-static {v4, v6}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result v6

    if-ne v6, v12, :cond_1f

    .line 734
    sput v8, Lde/agrothe/wanderer/Game;->_howdead:I

    move v6, v8

    .line 736
    goto/16 :goto_0

    .line 738
    :cond_1f
    sub-int v6, p0, v8

    invoke-static {v4, v6}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result v6

    const/16 v7, 0x4d

    if-ne v6, v7, :cond_20

    .line 740
    sput v11, Lde/agrothe/wanderer/Game;->_bigMonsterY:I

    sput v11, Lde/agrothe/wanderer/Game;->_bigMonsterX:I

    .line 741
    sub-int v6, p0, v8

    invoke-static {v4, v6, v9}, Lde/agrothe/wanderer/Game;->set(IIC)V

    .line 742
    invoke-static {}, Lde/agrothe/wanderer/Game;->flush()V

    .line 745
    :cond_20
    sget-object v6, Lde/agrothe/wanderer/Game;->_dontCheck2:Ljava/util/HashSet;

    invoke-static {v3, p0}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 752
    const/4 v3, -0x1

    .line 753
    :cond_21
    sub-int v6, p0, v8

    invoke-static {p1, v6}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result v6

    const/16 v7, 0x3e

    if-ne v6, v7, :cond_26

    if-ltz v3, :cond_26

    if-lez p0, :cond_26

    .line 756
    sput-boolean v8, Lde/agrothe/wanderer/Game;->_moving:Z

    .line 757
    sub-int v6, p0, v8

    invoke-static {p1, v6, v9}, Lde/agrothe/wanderer/Game;->set(IIC)V

    .line 758
    invoke-static {}, Lde/agrothe/wanderer/Game;->flush()V

    .line 759
    invoke-static {v3, p0}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result v6

    if-ne v6, v12, :cond_22

    .line 761
    sput v8, Lde/agrothe/wanderer/Game;->_howdead:I

    .line 763
    const/4 v0, 0x1

    .line 765
    :cond_22
    invoke-static {v3, p0}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result v6

    const/16 v7, 0x4d

    if-ne v6, v7, :cond_23

    .line 767
    sput v11, Lde/agrothe/wanderer/Game;->_bigMonsterY:I

    sput v11, Lde/agrothe/wanderer/Game;->_bigMonsterX:I

    .line 768
    invoke-static {v3, p0, v9}, Lde/agrothe/wanderer/Game;->set(IIC)V

    .line 769
    invoke-static {}, Lde/agrothe/wanderer/Game;->flush()V

    .line 771
    :cond_23
    invoke-static {v4, p0}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result v6

    const/16 v7, 0x42

    if-ne v6, v7, :cond_24

    .line 773
    invoke-static {p0, v4}, Lde/agrothe/wanderer/Game;->bang(II)Z

    move-result v6

    goto/16 :goto_0

    .line 775
    :cond_24
    const/16 v6, 0x3e

    invoke-static {v3, p0, v6}, Lde/agrothe/wanderer/Game;->set(IIC)V

    .line 776
    invoke-static {}, Lde/agrothe/wanderer/Game;->flush()V

    .line 777
    add-int/lit8 v6, p0, 0x1

    invoke-static {v6, v3}, Lde/agrothe/wanderer/Game;->fall(II)Z

    move-result v6

    or-int/2addr v0, v6

    .line 778
    sput-boolean v10, Lde/agrothe/wanderer/Game;->_moving:Z

    .line 779
    sub-int v6, p0, v8

    invoke-static {v6, p1, v8, v10}, Lde/agrothe/wanderer/Game;->check(IIII)Z

    move-result v6

    or-int/2addr v0, v6

    .line 780
    add-int/lit8 v6, p0, 0x1

    invoke-static {v3, v6}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result v6

    if-ne v6, v12, :cond_25

    .line 782
    sput v8, Lde/agrothe/wanderer/Game;->_howdead:I

    move v6, v8

    .line 784
    goto/16 :goto_0

    .line 786
    :cond_25
    add-int/lit8 v6, p0, 0x1

    invoke-static {v3, v6}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result v6

    const/16 v7, 0x4d

    if-ne v6, v7, :cond_26

    .line 788
    sput v11, Lde/agrothe/wanderer/Game;->_bigMonsterY:I

    sput v11, Lde/agrothe/wanderer/Game;->_bigMonsterX:I

    .line 789
    add-int/lit8 v6, p0, 0x1

    invoke-static {v3, v6, v9}, Lde/agrothe/wanderer/Game;->set(IIC)V

    .line 790
    invoke-static {}, Lde/agrothe/wanderer/Game;->flush()V

    .line 794
    :cond_26
    invoke-static {p1, v2}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result v6

    if-eq v6, v9, :cond_27

    .line 795
    const/4 v2, -0x1

    .line 797
    :cond_27
    add-int/lit8 v6, p1, 0x1

    invoke-static {v6, p0}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result v6

    const/16 v7, 0x5e

    if-ne v6, v7, :cond_28

    if-ltz v2, :cond_28

    const/16 v6, 0x10

    if-ge p1, v6, :cond_28

    invoke-static {p1, p0}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result v6

    const/16 v7, 0x5e

    if-eq v6, v7, :cond_28

    invoke-static {p1, p0}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result v6

    const/16 v7, 0x42

    if-eq v6, v7, :cond_28

    .line 802
    add-int/lit8 v6, p1, 0x1

    invoke-static {v6, p0, v9}, Lde/agrothe/wanderer/Game;->set(IIC)V

    .line 803
    const/16 v6, 0x5e

    invoke-static {p1, v2, v6}, Lde/agrothe/wanderer/Game;->set(IIC)V

    .line 804
    invoke-static {}, Lde/agrothe/wanderer/Game;->flush()V

    .line 805
    sub-int v6, p1, v8

    invoke-static {v2, v6}, Lde/agrothe/wanderer/Game;->fall(II)Z

    move-result v6

    or-int/2addr v0, v6

    .line 806
    add-int/lit8 v6, p1, 0x1

    const/4 v7, -0x1

    invoke-static {p0, v6, v10, v7}, Lde/agrothe/wanderer/Game;->check(IIII)Z

    move-result v6

    or-int/2addr v0, v6

    :cond_28
    move v6, v0

    .line 853
    goto/16 :goto_0
.end method

.method private static flush()V
    .locals 2

    .prologue
    .line 1084
    sget-object v0, Lde/agrothe/wanderer/Game;->_maze:Lde/agrothe/wanderer/MazeView$Maze;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lde/agrothe/wanderer/MazeView$Maze;->drawScreenBkgnd(Z)V

    .line 1085
    return-void
.end method

.method static getDiamonds()I
    .locals 1

    .prologue
    .line 162
    sget v0, Lde/agrothe/wanderer/Game;->_diamonds:I

    return v0
.end method

.method static getLevel()I
    .locals 1

    .prologue
    .line 156
    sget v0, Lde/agrothe/wanderer/Game;->_level:I

    return v0
.end method

.method static getMoves()I
    .locals 1

    .prologue
    .line 168
    sget v0, Lde/agrothe/wanderer/Game;->_maxMoves:I

    return v0
.end method

.method static getScore()I
    .locals 1

    .prologue
    .line 174
    sget v0, Lde/agrothe/wanderer/Game;->_score:I

    return v0
.end method

.method static getWandererX()I
    .locals 1

    .prologue
    .line 188
    sget v0, Lde/agrothe/wanderer/Game;->_wandererX:I

    return v0
.end method

.method static getWandererY()I
    .locals 1

    .prologue
    .line 195
    sget v0, Lde/agrothe/wanderer/Game;->_wandererY:I

    return v0
.end method

.method static loadLevel(ILjava/lang/String;I)V
    .locals 6
    .param p0, "pLevel"    # I
    .param p1, "pScreen"    # Ljava/lang/String;
    .param p2, "pMaxMoves"    # I

    .prologue
    .line 205
    if-nez p1, :cond_1

    .line 301
    .end local p0    # "pLevel":I
    .end local p1    # "pScreen":Ljava/lang/String;
    .end local p2    # "pMaxMoves":I
    :cond_0
    return-void

    .line 210
    .restart local p0    # "pLevel":I
    .restart local p1    # "pScreen":Ljava/lang/String;
    .restart local p2    # "pMaxMoves":I
    :cond_1
    const/4 v0, -0x1

    sput v0, Lde/agrothe/wanderer/Game;->_howdead:I

    .line 211
    sput p0, Lde/agrothe/wanderer/Game;->_level:I

    .line 212
    sput p2, Lde/agrothe/wanderer/Game;->_maxMoves:I

    .line 213
    const/4 p0, 0x0

    sput p0, Lde/agrothe/wanderer/Game;->_diamonds:I

    .line 214
    .end local p0    # "pLevel":I
    const/4 p0, -0x1

    sput p0, Lde/agrothe/wanderer/Game;->_bigMonsterY:I

    sput p0, Lde/agrothe/wanderer/Game;->_bigMonsterX:I

    .line 215
    const/4 p0, -0x1

    sput p0, Lde/agrothe/wanderer/Game;->_arrivalX:I

    .line 216
    sget-object p0, Lde/agrothe/wanderer/Game;->_babyMonsters:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 219
    const/4 p2, 0x0

    .line 220
    .local p2, "screenIdx":I
    const/4 p0, 0x0

    .local p0, "row":I
    move v0, p0

    .end local p0    # "row":I
    .local v0, "row":I
    :goto_0
    const/16 p0, 0x10

    if-ge v0, p0, :cond_5

    .line 224
    const/4 p0, 0x0

    .local p0, "col":I
    :goto_1
    const/16 v1, 0x28

    if-ge p0, v1, :cond_4

    .line 229
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "screenIdx":I
    .local v1, "screenIdx":I
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 235
    .local p2, "screenChar":C
    :goto_2
    sget-object v2, Lde/agrothe/wanderer/Game;->_charAllowedObjs:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 237
    sget-object v2, Lde/agrothe/wanderer/MainActivity;->_LOG_TAG:Ljava/lang/String;

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lde/agrothe/util/Logging;->isEnabledFor(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 239
    sget-object v2, Lde/agrothe/wanderer/MainActivity;->_LOG_TAG:Ljava/lang/String;

    const/4 v3, 0x6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "screen object not defined \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    .end local p2    # "screenChar":C
    const-string v4, "\'"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, v3, p2}, Lde/agrothe/util/Logging;->log(Ljava/lang/String;ILjava/lang/Object;)V

    .line 243
    :cond_2
    const/16 p2, 0x2d

    .line 245
    .restart local p2    # "screenChar":C
    :cond_3
    sparse-switch p2, :sswitch_data_0

    .line 265
    :goto_3
    invoke-static {v0, p0, p2}, Lde/agrothe/wanderer/Game;->set(IIC)V

    .line 224
    add-int/lit8 p0, p0, 0x1

    move p2, v1

    .end local v1    # "screenIdx":I
    .local p2, "screenIdx":I
    goto :goto_1

    .line 231
    .end local p2    # "screenIdx":I
    .restart local v1    # "screenIdx":I
    :catch_0
    move-exception p2

    .line 233
    .local p2, "e":Ljava/lang/Exception;
    const/16 p2, 0x2d

    .local p2, "screenChar":C
    goto :goto_2

    .line 249
    :sswitch_0
    sget v2, Lde/agrothe/wanderer/Game;->_diamonds:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lde/agrothe/wanderer/Game;->_diamonds:I

    goto :goto_3

    .line 252
    :sswitch_1
    sput p0, Lde/agrothe/wanderer/Game;->_arrivalX:I

    .line 253
    sput v0, Lde/agrothe/wanderer/Game;->_arrivalY:I

    .line 254
    const/16 p2, 0x2d

    .line 255
    goto :goto_3

    .line 257
    :sswitch_2
    sput p0, Lde/agrothe/wanderer/Game;->_wandererX:I

    .line 258
    sput v0, Lde/agrothe/wanderer/Game;->_wandererY:I

    goto :goto_3

    .line 261
    :sswitch_3
    sput p0, Lde/agrothe/wanderer/Game;->_bigMonsterX:I

    .line 262
    sput v0, Lde/agrothe/wanderer/Game;->_bigMonsterY:I

    goto :goto_3

    .line 220
    .end local v1    # "screenIdx":I
    .local p2, "screenIdx":I
    :cond_4
    add-int/lit8 p0, v0, 0x1

    .end local v0    # "row":I
    .local p0, "row":I
    move v0, p0

    .end local p0    # "row":I
    .restart local v0    # "row":I
    goto :goto_0

    .line 269
    :cond_5
    const/4 p0, 0x0

    .local p0, "y":I
    move p2, p0

    .end local v0    # "row":I
    .end local p0    # "y":I
    .end local p1    # "pScreen":Ljava/lang/String;
    .local p2, "y":I
    :goto_4
    const/16 p0, 0x10

    if-ge p2, p0, :cond_0

    .line 271
    const/4 p0, 0x0

    .local p0, "x":I
    move p1, p0

    .end local p0    # "x":I
    .local p1, "x":I
    :goto_5
    const/16 p0, 0x28

    if-ge p1, p0, :cond_a

    .line 274
    invoke-static {p2, p1}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result p0

    const/16 v0, 0x53

    if-ne p0, v0, :cond_6

    .line 276
    new-instance p0, Lde/agrothe/wanderer/Game$BabyMonster;

    invoke-direct {p0, p1, p2}, Lde/agrothe/wanderer/Game$BabyMonster;-><init>(II)V

    .line 277
    .local p0, "monster":Lde/agrothe/wanderer/Game$BabyMonster;
    sget-object v0, Lde/agrothe/wanderer/Game;->_babyMonsters:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    const/4 v0, 0x1

    sub-int v0, p2, v0

    invoke-static {p1, v0}, Lde/agrothe/wanderer/Game;->viable(II)Z

    move-result v0

    if-nez v0, :cond_7

    .line 280
    const/4 v0, 0x1

    iput v0, p0, Lde/agrothe/wanderer/Game$BabyMonster;->_mx:I

    .line 281
    const/4 v0, 0x0

    iput v0, p0, Lde/agrothe/wanderer/Game$BabyMonster;->_my:I

    .line 271
    .end local p0    # "monster":Lde/agrothe/wanderer/Game$BabyMonster;
    :cond_6
    :goto_6
    add-int/lit8 p0, p1, 0x1

    .end local p1    # "x":I
    .local p0, "x":I
    move p1, p0

    .end local p0    # "x":I
    .restart local p1    # "x":I
    goto :goto_5

    .line 283
    .local p0, "monster":Lde/agrothe/wanderer/Game$BabyMonster;
    :cond_7
    add-int/lit8 v0, p1, 0x1

    invoke-static {v0, p2}, Lde/agrothe/wanderer/Game;->viable(II)Z

    move-result v0

    if-nez v0, :cond_8

    .line 285
    const/4 v0, 0x0

    iput v0, p0, Lde/agrothe/wanderer/Game$BabyMonster;->_mx:I

    .line 286
    const/4 v0, 0x1

    iput v0, p0, Lde/agrothe/wanderer/Game$BabyMonster;->_my:I

    goto :goto_6

    .line 288
    :cond_8
    add-int/lit8 v0, p2, 0x1

    invoke-static {p1, v0}, Lde/agrothe/wanderer/Game;->viable(II)Z

    move-result v0

    if-nez v0, :cond_9

    .line 290
    const/4 v0, -0x1

    iput v0, p0, Lde/agrothe/wanderer/Game$BabyMonster;->_mx:I

    .line 291
    const/4 v0, 0x0

    iput v0, p0, Lde/agrothe/wanderer/Game$BabyMonster;->_my:I

    goto :goto_6

    .line 293
    :cond_9
    const/4 v0, 0x1

    sub-int v0, p1, v0

    invoke-static {v0, p2}, Lde/agrothe/wanderer/Game;->viable(II)Z

    move-result v0

    if-nez v0, :cond_6

    .line 295
    const/4 v0, 0x0

    iput v0, p0, Lde/agrothe/wanderer/Game$BabyMonster;->_mx:I

    .line 296
    const/4 v0, -0x1

    iput v0, p0, Lde/agrothe/wanderer/Game$BabyMonster;->_my:I

    goto :goto_6

    .line 269
    .end local p0    # "monster":Lde/agrothe/wanderer/Game$BabyMonster;
    :cond_a
    add-int/lit8 p0, p2, 0x1

    .end local p2    # "y":I
    .local p0, "y":I
    move p2, p0

    .end local p0    # "y":I
    .restart local p2    # "y":I
    goto :goto_4

    .line 245
    nop

    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x40 -> :sswitch_2
        0x41 -> :sswitch_1
        0x4d -> :sswitch_3
    .end sparse-switch
.end method

.method static move(II)V
    .locals 7
    .param p0, "pDiffX"    # I
    .param p1, "pDiffY"    # I

    .prologue
    .line 309
    sget v4, Lde/agrothe/wanderer/Game;->_wandererX:I

    .local v4, "x":I
    sget v5, Lde/agrothe/wanderer/Game;->_wandererY:I

    .line 310
    .local v5, "y":I
    add-int v1, v4, p0

    .local v1, "nx":I
    add-int v2, v5, p1

    .line 311
    .local v2, "ny":I
    if-ltz v1, :cond_0

    const/16 p0, 0x28

    if-eq v1, p0, :cond_0

    .end local p0    # "pDiffX":I
    if-ltz v2, :cond_0

    const/16 p0, 0x10

    if-ne v2, p0, :cond_1

    :cond_0
    move p1, v5

    .end local v5    # "y":I
    .local p1, "y":I
    move p0, v4

    .line 516
    .end local v1    # "nx":I
    .end local v2    # "ny":I
    .end local v4    # "x":I
    .local p0, "x":I
    :goto_0
    return-void

    .line 315
    .end local p0    # "x":I
    .restart local v1    # "nx":I
    .restart local v2    # "ny":I
    .restart local v4    # "x":I
    .restart local v5    # "y":I
    .local p1, "pDiffY":I
    :cond_1
    const/4 p0, 0x0

    .line 316
    .local p0, "dead":Z
    invoke-static {v2, v1}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result p1

    .line 317
    .local p1, "objNyNx":C
    const/16 v0, 0x43

    if-ne p1, v0, :cond_10

    .line 319
    sget p1, Lde/agrothe/wanderer/Game;->_score:I

    .end local p1    # "objNyNx":C
    add-int/lit8 p1, p1, 0x4

    sput p1, Lde/agrothe/wanderer/Game;->_score:I

    .line 320
    sget p1, Lde/agrothe/wanderer/Game;->_maxMoves:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 322
    sget p1, Lde/agrothe/wanderer/Game;->_maxMoves:I

    add-int/lit16 p1, p1, 0xfa

    sput p1, Lde/agrothe/wanderer/Game;->_maxMoves:I

    .line 324
    :cond_2
    const/16 p1, 0x3a

    .restart local p1    # "objNyNx":C
    invoke-static {v2, v1, p1}, Lde/agrothe/wanderer/Game;->set(IIC)V

    move v3, p1

    .line 325
    .end local p1    # "objNyNx":C
    .local v3, "objNyNx":C
    invoke-static {}, Lde/agrothe/wanderer/Game;->flush()V

    .line 327
    :goto_1
    mul-int/lit8 p1, v1, 0x2

    sub-int/2addr p1, v4

    .local p1, "nXmul2minX":I
    mul-int/lit8 v0, v2, 0x2

    sub-int/2addr v0, v5

    .line 329
    .local v0, "nYmul2minY":I
    sparse-switch v3, :sswitch_data_0

    .end local v0    # "nYmul2minY":I
    .end local v3    # "objNyNx":C
    .end local p1    # "nXmul2minX":I
    :cond_3
    move v0, v5

    .end local v5    # "y":I
    .local v0, "y":I
    move p1, v4

    .line 499
    .end local v4    # "x":I
    .local p1, "x":I
    :goto_2
    if-ne v0, v2, :cond_4

    if-ne p1, v1, :cond_4

    sget v1, Lde/agrothe/wanderer/Game;->_maxMoves:I

    .end local v1    # "nx":I
    if-lez v1, :cond_4

    .line 501
    sget-object v1, Lde/agrothe/wanderer/Game;->_maze:Lde/agrothe/wanderer/MazeView$Maze;

    const/4 v2, 0x5

    sget v3, Lde/agrothe/wanderer/Game;->_maxMoves:I

    .end local v2    # "ny":I
    const/4 v4, 0x1

    sub-int/2addr v3, v4

    sput v3, Lde/agrothe/wanderer/Game;->_maxMoves:I

    invoke-virtual {v1, v2, v3}, Lde/agrothe/wanderer/MazeView$Maze;->updateStatusBgnd(II)V

    .line 503
    :cond_4
    sget v1, Lde/agrothe/wanderer/Game;->_maxMoves:I

    if-nez v1, :cond_5

    .line 505
    const/4 p0, 0x3

    sput p0, Lde/agrothe/wanderer/Game;->_howdead:I

    .line 506
    .end local p0    # "dead":Z
    const/4 p0, 0x1

    .line 509
    .restart local p0    # "dead":Z
    :cond_5
    invoke-static {p1, v0}, Lde/agrothe/wanderer/Game;->moveMonsters(II)Z

    move-result v1

    or-int/2addr p0, v1

    .line 511
    if-eqz p0, :cond_6

    .line 513
    const/16 p0, 0x25

    invoke-static {v0, p1, p0}, Lde/agrothe/wanderer/Game;->set(IIC)V

    .line 514
    .end local p0    # "dead":Z
    invoke-static {}, Lde/agrothe/wanderer/Game;->flush()V

    :cond_6
    move p0, p1

    .end local p1    # "x":I
    .local p0, "x":I
    move p1, v0

    .line 516
    .end local v0    # "y":I
    .local p1, "y":I
    goto :goto_0

    .local v0, "nYmul2minY":I
    .restart local v1    # "nx":I
    .restart local v2    # "ny":I
    .restart local v3    # "objNyNx":C
    .restart local v4    # "x":I
    .restart local v5    # "y":I
    .local p0, "dead":Z
    .local p1, "nXmul2minX":I
    :sswitch_0
    move v0, v5

    .end local v5    # "y":I
    .local v0, "y":I
    move p1, v4

    .line 332
    .end local v4    # "x":I
    .local p1, "x":I
    goto :goto_2

    .line 334
    .local v0, "nYmul2minY":I
    .restart local v4    # "x":I
    .restart local v5    # "y":I
    .local p1, "nXmul2minX":I
    :sswitch_1
    sget p0, Lde/agrothe/wanderer/Game;->_score:I

    .end local p0    # "dead":Z
    add-int/lit8 p0, p0, 0x9

    sput p0, Lde/agrothe/wanderer/Game;->_score:I

    .line 335
    sget p0, Lde/agrothe/wanderer/Game;->_diamonds:I

    const/4 p1, 0x1

    sub-int/2addr p0, p1

    sput p0, Lde/agrothe/wanderer/Game;->_diamonds:I

    .line 336
    .end local p1    # "nXmul2minX":I
    sget-object p0, Lde/agrothe/wanderer/Game;->_maze:Lde/agrothe/wanderer/MazeView$Maze;

    const/4 p1, 0x7

    sget v0, Lde/agrothe/wanderer/Game;->_diamonds:I

    .end local v0    # "nYmul2minY":I
    invoke-virtual {p0, p1, v0}, Lde/agrothe/wanderer/MazeView$Maze;->updateStatusBgnd(II)V

    .line 338
    :sswitch_2
    sget p0, Lde/agrothe/wanderer/Game;->_score:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lde/agrothe/wanderer/Game;->_score:I

    .line 339
    invoke-static {}, Lde/agrothe/wanderer/Game;->updateScore()V

    .line 341
    :sswitch_3
    const/16 p0, 0x2d

    invoke-static {v5, v4, p0}, Lde/agrothe/wanderer/Game;->set(IIC)V

    .line 342
    const/16 p0, 0x40

    invoke-static {v2, v1, p0}, Lde/agrothe/wanderer/Game;->set(IIC)V

    .line 343
    invoke-static {}, Lde/agrothe/wanderer/Game;->flush()V

    .line 345
    sub-int p0, v1, v4

    sub-int p1, v2, v5

    invoke-static {v4, v5, p0, p1}, Lde/agrothe/wanderer/Game;->check(IIII)Z

    move-result p0

    .line 346
    .restart local p0    # "dead":Z
    move p1, v1

    .end local v4    # "x":I
    .local p1, "x":I
    sput v1, Lde/agrothe/wanderer/Game;->_wandererX:I

    move v0, v2

    .end local v5    # "y":I
    .local v0, "y":I
    sput v2, Lde/agrothe/wanderer/Game;->_wandererY:I

    goto :goto_2

    .line 349
    .local v0, "nYmul2minY":I
    .restart local v4    # "x":I
    .restart local v5    # "y":I
    .local p1, "nXmul2minX":I
    :sswitch_4
    if-eqz v1, :cond_3

    const/16 v0, 0x28

    if-ne v1, v0, :cond_7

    .end local v0    # "nYmul2minY":I
    move v0, v5

    .end local v5    # "y":I
    .local v0, "y":I
    move p1, v4

    .line 351
    .end local v4    # "x":I
    .local p1, "x":I
    goto :goto_2

    .line 353
    .end local v0    # "y":I
    .restart local v4    # "x":I
    .restart local v5    # "y":I
    .local p1, "nXmul2minX":I
    :cond_7
    invoke-static {v5, p1}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result v0

    const/16 v3, 0x4d

    if-ne v0, v3, :cond_8

    .line 355
    .end local v3    # "objNyNx":C
    const/16 v0, 0x2d

    invoke-static {v5, p1, v0}, Lde/agrothe/wanderer/Game;->set(IIC)V

    .line 356
    invoke-static {}, Lde/agrothe/wanderer/Game;->flush()V

    .line 357
    const/4 v0, -0x1

    sput v0, Lde/agrothe/wanderer/Game;->_bigMonsterY:I

    sput v0, Lde/agrothe/wanderer/Game;->_bigMonsterX:I

    .line 358
    sget v0, Lde/agrothe/wanderer/Game;->_score:I

    add-int/lit8 v0, v0, 0x64

    sput v0, Lde/agrothe/wanderer/Game;->_score:I

    .line 359
    invoke-static {}, Lde/agrothe/wanderer/Game;->updateScore()V

    .line 361
    :cond_8
    invoke-static {v5, p1}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result v0

    const/16 v3, 0x2d

    if-ne v0, v3, :cond_3

    .line 363
    const/16 p0, 0x4f

    invoke-static {v5, p1, p0}, Lde/agrothe/wanderer/Game;->set(IIC)V

    .line 364
    .end local p0    # "dead":Z
    const/16 p0, 0x2d

    invoke-static {v5, v4, p0}, Lde/agrothe/wanderer/Game;->set(IIC)V

    .line 365
    const/16 p0, 0x40

    invoke-static {v2, v1, p0}, Lde/agrothe/wanderer/Game;->set(IIC)V

    .line 366
    invoke-static {}, Lde/agrothe/wanderer/Game;->flush()V

    .line 367
    add-int/lit8 p0, v5, 0x1

    invoke-static {p1, p0}, Lde/agrothe/wanderer/Game;->fall(II)Z

    move-result p0

    .line 368
    .restart local p0    # "dead":Z
    mul-int/lit8 p1, v4, 0x2

    sub-int/2addr p1, v1

    invoke-static {p1, v5}, Lde/agrothe/wanderer/Game;->fall(II)Z

    .end local p1    # "nXmul2minX":I
    move-result p1

    or-int/2addr p0, p1

    .line 369
    invoke-static {v4, v5}, Lde/agrothe/wanderer/Game;->fall(II)Z

    move-result p1

    or-int/2addr p0, p1

    .line 370
    const/4 p1, 0x1

    sub-int p1, v5, p1

    invoke-static {v4, p1}, Lde/agrothe/wanderer/Game;->fall(II)Z

    move-result p1

    or-int/2addr p0, p1

    .line 371
    add-int/lit8 p1, v5, 0x1

    invoke-static {v4, p1}, Lde/agrothe/wanderer/Game;->fall(II)Z

    move-result p1

    or-int/2addr p0, p1

    .line 372
    move p1, v1

    .end local v4    # "x":I
    .local p1, "x":I
    sput v1, Lde/agrothe/wanderer/Game;->_wandererX:I

    move v0, v2

    .end local v5    # "y":I
    .restart local v0    # "y":I
    sput v2, Lde/agrothe/wanderer/Game;->_wandererY:I

    goto/16 :goto_2

    .line 376
    .local v0, "nYmul2minY":I
    .restart local v3    # "objNyNx":C
    .restart local v4    # "x":I
    .restart local v5    # "y":I
    .local p1, "nXmul2minX":I
    :sswitch_5
    if-eqz v1, :cond_3

    const/16 v0, 0x28

    if-ne v1, v0, :cond_9

    .end local v0    # "nYmul2minY":I
    move v0, v5

    .end local v5    # "y":I
    .local v0, "y":I
    move p1, v4

    .line 378
    .end local v4    # "x":I
    .local p1, "x":I
    goto/16 :goto_2

    .line 380
    .end local v0    # "y":I
    .restart local v4    # "x":I
    .restart local v5    # "y":I
    .local p1, "nXmul2minX":I
    :cond_9
    invoke-static {v5, p1}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result v0

    const/16 v3, 0x2d

    if-ne v0, v3, :cond_3

    .line 382
    .end local v3    # "objNyNx":C
    const/16 p0, 0x5e

    invoke-static {v5, p1, p0}, Lde/agrothe/wanderer/Game;->set(IIC)V

    .line 383
    .end local p0    # "dead":Z
    const/16 p0, 0x2d

    invoke-static {v5, v4, p0}, Lde/agrothe/wanderer/Game;->set(IIC)V

    .line 384
    const/16 p0, 0x40

    invoke-static {v2, v1, p0}, Lde/agrothe/wanderer/Game;->set(IIC)V

    .line 385
    invoke-static {}, Lde/agrothe/wanderer/Game;->flush()V

    .line 386
    const/4 p0, 0x1

    sub-int p0, v5, p0

    invoke-static {p1, p0}, Lde/agrothe/wanderer/Game;->fall(II)Z

    move-result p0

    .line 387
    .restart local p0    # "dead":Z
    mul-int/lit8 p1, v4, 0x2

    sub-int/2addr p1, v1

    invoke-static {p1, v5}, Lde/agrothe/wanderer/Game;->fall(II)Z

    .end local p1    # "nXmul2minX":I
    move-result p1

    or-int/2addr p0, p1

    .line 388
    invoke-static {v4, v5}, Lde/agrothe/wanderer/Game;->fall(II)Z

    move-result p1

    or-int/2addr p0, p1

    .line 389
    add-int/lit8 p1, v5, 0x1

    invoke-static {v4, p1}, Lde/agrothe/wanderer/Game;->fall(II)Z

    move-result p1

    or-int/2addr p0, p1

    .line 390
    const/4 p1, 0x1

    sub-int p1, v5, p1

    invoke-static {v4, p1}, Lde/agrothe/wanderer/Game;->fall(II)Z

    move-result p1

    or-int/2addr p0, p1

    .line 391
    move p1, v1

    .end local v4    # "x":I
    .local p1, "x":I
    sput v1, Lde/agrothe/wanderer/Game;->_wandererX:I

    move v0, v2

    .end local v5    # "y":I
    .restart local v0    # "y":I
    sput v2, Lde/agrothe/wanderer/Game;->_wandererY:I

    goto/16 :goto_2

    .line 396
    .local v0, "nYmul2minY":I
    .restart local v3    # "objNyNx":C
    .restart local v4    # "x":I
    .restart local v5    # "y":I
    .local p1, "nXmul2minX":I
    :sswitch_6
    if-eqz v2, :cond_3

    const/16 p1, 0x10

    if-ne v2, p1, :cond_a

    .end local p1    # "nXmul2minX":I
    move v0, v5

    .end local v5    # "y":I
    .local v0, "y":I
    move p1, v4

    .line 398
    .end local v4    # "x":I
    .local p1, "x":I
    goto/16 :goto_2

    .line 400
    .end local p1    # "x":I
    .local v0, "nYmul2minY":I
    .restart local v4    # "x":I
    .restart local v5    # "y":I
    :cond_a
    invoke-static {v0, v4}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result p1

    const/16 v3, 0x4d

    if-ne p1, v3, :cond_b

    .line 402
    .end local v3    # "objNyNx":C
    const/16 p1, 0x2d

    invoke-static {v0, v4, p1}, Lde/agrothe/wanderer/Game;->set(IIC)V

    .line 403
    invoke-static {}, Lde/agrothe/wanderer/Game;->flush()V

    .line 404
    const/4 p1, -0x1

    sput p1, Lde/agrothe/wanderer/Game;->_bigMonsterY:I

    sput p1, Lde/agrothe/wanderer/Game;->_bigMonsterX:I

    .line 405
    sget p1, Lde/agrothe/wanderer/Game;->_score:I

    add-int/lit8 p1, p1, 0x64

    sput p1, Lde/agrothe/wanderer/Game;->_score:I

    .line 406
    invoke-static {}, Lde/agrothe/wanderer/Game;->updateScore()V

    .line 408
    :cond_b
    invoke-static {v0, v4}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result p1

    const/16 v3, 0x2d

    if-ne p1, v3, :cond_3

    .line 410
    mul-int/lit8 p1, v2, 0x2

    sub-int/2addr p1, v5

    invoke-static {v2, v1}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result v3

    invoke-static {p1, v4, v3}, Lde/agrothe/wanderer/Game;->set(IIC)V

    .line 411
    const/16 p1, 0x2d

    invoke-static {v5, v4, p1}, Lde/agrothe/wanderer/Game;->set(IIC)V

    .line 412
    const/16 p1, 0x40

    invoke-static {v2, v1, p1}, Lde/agrothe/wanderer/Game;->set(IIC)V

    .line 413
    invoke-static {}, Lde/agrothe/wanderer/Game;->flush()V

    .line 414
    if-le v2, v5, :cond_c

    move p1, v5

    .line 415
    .local p1, "nYgtY":I
    :goto_3
    invoke-static {v4, v5}, Lde/agrothe/wanderer/Game;->fall(II)Z

    move-result v3

    or-int/2addr p0, v3

    .line 416
    const/4 v3, 0x1

    sub-int v3, v4, v3

    invoke-static {v3, p1}, Lde/agrothe/wanderer/Game;->fall(II)Z

    move-result v3

    or-int/2addr p0, v3

    .line 417
    add-int/lit8 v3, v4, 0x1

    invoke-static {v3, p1}, Lde/agrothe/wanderer/Game;->fall(II)Z

    move-result p1

    .end local p1    # "nYgtY":I
    or-int/2addr p0, p1

    .line 418
    const/4 p1, 0x1

    sub-int p1, v4, p1

    invoke-static {p1, v0}, Lde/agrothe/wanderer/Game;->fall(II)Z

    move-result p1

    or-int/2addr p0, p1

    .line 419
    add-int/lit8 p1, v4, 0x1

    invoke-static {p1, v0}, Lde/agrothe/wanderer/Game;->fall(II)Z

    move-result p1

    or-int/2addr p0, p1

    .line 420
    move p1, v1

    .end local v4    # "x":I
    .local p1, "x":I
    sput v1, Lde/agrothe/wanderer/Game;->_wandererX:I

    move v0, v2

    .end local v5    # "y":I
    .local v0, "y":I
    sput v2, Lde/agrothe/wanderer/Game;->_wandererY:I

    goto/16 :goto_2

    .line 414
    .end local p1    # "x":I
    .local v0, "nYmul2minY":I
    .restart local v4    # "x":I
    .restart local v5    # "y":I
    :cond_c
    const/4 p1, 0x1

    sub-int p1, v5, p1

    goto :goto_3

    .line 451
    .restart local v3    # "objNyNx":C
    .local p1, "nXmul2minX":I
    :sswitch_7
    const/4 p0, 0x4

    sput p0, Lde/agrothe/wanderer/Game;->_howdead:I

    .line 452
    .end local p0    # "dead":Z
    const/4 p0, 0x1

    .restart local p0    # "dead":Z
    move v0, v5

    .end local v5    # "y":I
    .local v0, "y":I
    move p1, v4

    .line 454
    .end local v4    # "x":I
    .local p1, "x":I
    goto/16 :goto_2

    .line 456
    .local v0, "nYmul2minY":I
    .restart local v4    # "x":I
    .restart local v5    # "y":I
    .local p1, "nXmul2minX":I
    :sswitch_8
    sget p1, Lde/agrothe/wanderer/Game;->_diamonds:I

    .end local p1    # "nXmul2minX":I
    if-nez p1, :cond_3

    .line 458
    sget p0, Lde/agrothe/wanderer/Game;->_score:I

    .end local p0    # "dead":Z
    add-int/lit16 p0, p0, 0xfa

    sput p0, Lde/agrothe/wanderer/Game;->_score:I

    .line 459
    invoke-static {}, Lde/agrothe/wanderer/Game;->updateScore()V

    .line 460
    const/4 p0, 0x7

    sput p0, Lde/agrothe/wanderer/Game;->_howdead:I

    move p1, v5

    .end local v5    # "y":I
    .local p1, "y":I
    move p0, v4

    .line 461
    .end local v4    # "x":I
    .local p0, "x":I
    goto/16 :goto_0

    .line 465
    .restart local v4    # "x":I
    .restart local v5    # "y":I
    .local p0, "dead":Z
    .local p1, "nXmul2minX":I
    :sswitch_9
    sget p1, Lde/agrothe/wanderer/Game;->_arrivalX:I

    .end local p1    # "nXmul2minX":I
    const/4 v0, -0x1

    if-le p1, v0, :cond_f

    .line 467
    .end local v0    # "nYmul2minY":I
    const/16 p1, 0x2d

    invoke-static {v2, v1, p1}, Lde/agrothe/wanderer/Game;->set(IIC)V

    .line 468
    const/16 p1, 0x2d

    invoke-static {v5, v4, p1}, Lde/agrothe/wanderer/Game;->set(IIC)V

    .line 469
    move p1, v4

    .local p1, "lx":I
    move v0, v5

    .line 470
    .local v0, "ly":I
    sget v3, Lde/agrothe/wanderer/Game;->_arrivalX:I

    .end local v4    # "x":I
    .local v3, "x":I
    sput v3, Lde/agrothe/wanderer/Game;->_wandererX:I

    sget v4, Lde/agrothe/wanderer/Game;->_arrivalY:I

    .end local v5    # "y":I
    .local v4, "y":I
    sput v4, Lde/agrothe/wanderer/Game;->_wandererY:I

    .line 471
    const/16 v5, 0x40

    invoke-static {v4, v3, v5}, Lde/agrothe/wanderer/Game;->set(IIC)V

    .line 472
    invoke-static {}, Lde/agrothe/wanderer/Game;->flush()V

    .line 473
    sget v5, Lde/agrothe/wanderer/Game;->_score:I

    add-int/lit8 v5, v5, 0x14

    sput v5, Lde/agrothe/wanderer/Game;->_score:I

    .line 474
    invoke-static {}, Lde/agrothe/wanderer/Game;->updateScore()V

    .line 475
    invoke-static {v1, v2}, Lde/agrothe/wanderer/Game;->fall(II)Z

    move-result v5

    if-nez v5, :cond_d

    invoke-static {p1, v0}, Lde/agrothe/wanderer/Game;->fall(II)Z

    move-result v5

    if-nez v5, :cond_d

    add-int/lit8 v5, p1, 0x1

    const/4 v6, 0x1

    sub-int v6, v0, v6

    invoke-static {v5, v6}, Lde/agrothe/wanderer/Game;->fall(II)Z

    move-result v5

    if-nez v5, :cond_d

    add-int/lit8 v5, p1, 0x1

    add-int/lit8 v6, v0, 0x1

    invoke-static {v5, v6}, Lde/agrothe/wanderer/Game;->fall(II)Z

    move-result v5

    if-nez v5, :cond_d

    const/4 v5, 0x1

    sub-int v5, p1, v5

    add-int/lit8 v6, v0, 0x1

    invoke-static {v5, v6}, Lde/agrothe/wanderer/Game;->fall(II)Z

    move-result v5

    if-nez v5, :cond_d

    const/4 v5, 0x1

    sub-int/2addr p1, v5

    const/4 v5, 0x1

    sub-int/2addr v0, v5

    invoke-static {p1, v0}, Lde/agrothe/wanderer/Game;->fall(II)Z

    .end local v0    # "ly":I
    .end local p1    # "lx":I
    move-result p1

    if-eqz p1, :cond_e

    :cond_d
    const/4 p1, 0x1

    :goto_4
    or-int/2addr p0, p1

    move v0, v4

    .end local v4    # "y":I
    .local v0, "y":I
    move p1, v3

    .line 481
    .end local v3    # "x":I
    .local p1, "x":I
    goto/16 :goto_2

    .line 475
    .end local v0    # "y":I
    .end local p1    # "x":I
    .restart local v3    # "x":I
    .restart local v4    # "y":I
    :cond_e
    const/4 p1, 0x0

    goto :goto_4

    .line 484
    .local v3, "objNyNx":C
    .local v4, "x":I
    .restart local v5    # "y":I
    :cond_f
    const/16 p1, 0x2d

    invoke-static {v2, v1, p1}, Lde/agrothe/wanderer/Game;->set(IIC)V

    .line 485
    invoke-static {}, Lde/agrothe/wanderer/Game;->flush()V

    move v0, v5

    .end local v5    # "y":I
    .restart local v0    # "y":I
    move p1, v4

    .line 487
    .end local v4    # "x":I
    .restart local p1    # "x":I
    goto/16 :goto_2

    .line 489
    .local v0, "nYmul2minY":I
    .restart local v4    # "x":I
    .restart local v5    # "y":I
    .local p1, "nXmul2minX":I
    :sswitch_a
    const/4 p0, 0x2

    sput p0, Lde/agrothe/wanderer/Game;->_howdead:I

    .line 490
    .end local p0    # "dead":Z
    const/4 p0, 0x1

    .restart local p0    # "dead":Z
    move v0, v5

    .end local v5    # "y":I
    .local v0, "y":I
    move p1, v4

    .line 492
    .end local v4    # "x":I
    .local p1, "x":I
    goto/16 :goto_2

    .line 494
    .local v0, "nYmul2minY":I
    .restart local v4    # "x":I
    .restart local v5    # "y":I
    .local p1, "nXmul2minX":I
    :sswitch_b
    const/4 p0, 0x5

    sput p0, Lde/agrothe/wanderer/Game;->_howdead:I

    .line 495
    .end local p0    # "dead":Z
    const/4 p0, 0x1

    .restart local p0    # "dead":Z
    move v0, v5

    .end local v5    # "y":I
    .local v0, "y":I
    move p1, v4

    .end local v4    # "x":I
    .local p1, "x":I
    goto/16 :goto_2

    .end local v0    # "y":I
    .end local v3    # "objNyNx":C
    .restart local v4    # "x":I
    .restart local v5    # "y":I
    .local p1, "objNyNx":C
    :cond_10
    move v3, p1

    .end local p1    # "objNyNx":C
    .restart local v3    # "objNyNx":C
    goto/16 :goto_1

    .line 329
    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_7
        0x2a -> :sswitch_1
        0x2d -> :sswitch_3
        0x3a -> :sswitch_2
        0x3c -> :sswitch_6
        0x3e -> :sswitch_6
        0x40 -> :sswitch_0
        0x4d -> :sswitch_a
        0x4f -> :sswitch_4
        0x53 -> :sswitch_b
        0x54 -> :sswitch_9
        0x58 -> :sswitch_8
        0x5e -> :sswitch_5
    .end sparse-switch
.end method

.method private static moveMonsters(II)Z
    .locals 9
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 896
    sget v1, Lde/agrothe/wanderer/Game;->_bigMonsterX:I

    .local v1, "mx":I
    sget v2, Lde/agrothe/wanderer/Game;->_bigMonsterY:I

    .line 898
    .local v2, "my":I
    const/4 v0, 0x0

    .line 901
    .local v0, "dead":Z
    const/4 v3, -0x2

    if-ne v1, v3, :cond_17

    .line 903
    sget v1, Lde/agrothe/wanderer/Game;->_score:I

    .end local v1    # "mx":I
    add-int/lit8 v1, v1, 0x64

    sput v1, Lde/agrothe/wanderer/Game;->_score:I

    .line 904
    const/4 v2, -0x1

    move v1, v2

    .restart local v1    # "mx":I
    sput v2, Lde/agrothe/wanderer/Game;->_bigMonsterY:I

    sput v2, Lde/agrothe/wanderer/Game;->_bigMonsterX:I

    move v3, v2

    .end local v2    # "my":I
    .local v3, "my":I
    move v2, v1

    .line 906
    .end local v1    # "mx":I
    .local v2, "mx":I
    invoke-static {}, Lde/agrothe/wanderer/Game;->updateScore()V

    .line 909
    :goto_0
    const/4 v1, -0x1

    if-eq v2, v1, :cond_16

    .line 911
    const/16 v1, 0x2d

    invoke-static {v3, v2, v1}, Lde/agrothe/wanderer/Game;->set(IIC)V

    .line 912
    if-le v2, p0, :cond_1

    .line 913
    const/4 v1, -0x1

    .local v1, "xdirection":I
    move v6, v1

    .line 916
    .end local v1    # "xdirection":I
    .local v6, "xdirection":I
    :goto_1
    sub-int p0, v2, p0

    .local p0, "hd":I
    if-gez p0, :cond_15

    .line 917
    neg-int p0, p0

    move v1, p0

    .line 918
    .end local p0    # "hd":I
    .local v1, "hd":I
    :goto_2
    sub-int p0, v3, p1

    .local p0, "vd":I
    if-gez p0, :cond_14

    .line 919
    neg-int p0, p0

    move v5, p0

    .line 920
    .end local p0    # "vd":I
    .local v5, "vd":I
    :goto_3
    add-int p0, v2, v6

    .line 921
    .local p0, "dir":I
    invoke-static {v3, p0}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result v4

    .line 922
    .local v4, "obj":C
    if-le v1, v5, :cond_2

    const/16 v1, 0x28

    if-ge p0, v1, :cond_2

    .end local v1    # "hd":I
    const/16 v1, 0x2d

    if-eq v4, v1, :cond_0

    const/16 v1, 0x40

    if-ne v4, v1, :cond_2

    .line 924
    :cond_0
    move p1, p0

    .end local v2    # "mx":I
    .local p1, "mx":I
    sput p0, Lde/agrothe/wanderer/Game;->_bigMonsterX:I

    move v2, v4

    .end local v4    # "obj":C
    .local v2, "obj":C
    move v1, v3

    .line 943
    .end local v3    # "my":I
    .local v1, "my":I
    :goto_4
    invoke-static {v1, p1}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result p0

    .end local p0    # "dir":I
    const/16 v2, 0x40

    if-ne p0, v2, :cond_12

    .line 945
    .end local v2    # "obj":C
    const/4 p0, 0x2

    sput p0, Lde/agrothe/wanderer/Game;->_howdead:I

    .line 946
    const/4 p0, 0x1

    .line 948
    .end local v0    # "dead":Z
    .local p0, "dead":Z
    :goto_5
    const/16 v0, 0x4d

    invoke-static {v1, p1, v0}, Lde/agrothe/wanderer/Game;->set(IIC)V

    move v0, v1

    .line 949
    .end local v1    # "my":I
    .local v0, "my":I
    invoke-static {}, Lde/agrothe/wanderer/Game;->flush()V

    .line 952
    .end local v5    # "vd":I
    .end local v6    # "xdirection":I
    :goto_6
    sget-object p1, Lde/agrothe/wanderer/Game;->_babyMonsters:Ljava/util/ArrayList;

    .end local p1    # "mx":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    move p1, p0

    .line 1017
    .end local v0    # "my":I
    .end local p0    # "dead":Z
    .local p1, "dead":Z
    :goto_7
    return p1

    .line 915
    .local v0, "dead":Z
    .local v2, "mx":I
    .restart local v3    # "my":I
    .local p0, "x":I
    .local p1, "y":I
    :cond_1
    const/4 v1, 0x1

    .local v1, "xdirection":I
    move v6, v1

    .end local v1    # "xdirection":I
    .restart local v6    # "xdirection":I
    goto :goto_1

    .line 927
    .restart local v4    # "obj":C
    .restart local v5    # "vd":I
    .local p0, "dir":I
    :cond_2
    if-le v3, p1, :cond_4

    .line 928
    const/4 p0, -0x1

    .line 931
    .local p0, "ydirection":I
    :goto_8
    add-int/2addr p0, v3

    .line 932
    .local p0, "dir":I
    invoke-static {p0, v2}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result v1

    .line 933
    .end local v4    # "obj":C
    .local v1, "obj":C
    const/16 p1, 0x10

    if-ge p0, p1, :cond_5

    .end local p1    # "y":I
    const/16 p1, 0x2d

    if-eq v1, p1, :cond_3

    const/16 p1, 0x40

    if-ne v1, p1, :cond_5

    .line 934
    :cond_3
    move p1, p0

    .end local v3    # "my":I
    .local p1, "my":I
    sput p0, Lde/agrothe/wanderer/Game;->_bigMonsterY:I

    move v8, v1

    .end local v1    # "obj":C
    .local v8, "obj":C
    move v1, p1

    .end local p1    # "my":I
    .local v1, "my":I
    move p1, v2

    .end local v2    # "mx":I
    .local p1, "mx":I
    move v2, v8

    .end local v8    # "obj":C
    .local v2, "obj":C
    goto :goto_4

    .line 930
    .end local v1    # "my":I
    .local v2, "mx":I
    .restart local v3    # "my":I
    .restart local v4    # "obj":C
    .local p1, "y":I
    :cond_4
    const/4 p0, 0x1

    .local p0, "ydirection":I
    goto :goto_8

    .line 937
    .end local v4    # "obj":C
    .end local p1    # "y":I
    .local v1, "obj":C
    .local p0, "dir":I
    :cond_5
    add-int p0, v2, v6

    .line 938
    invoke-static {v3, p0}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result v1

    .line 939
    const/16 p1, 0x28

    if-ge p0, p1, :cond_6

    const/16 p1, 0x2d

    if-eq v1, p1, :cond_7

    :cond_6
    const/16 p1, 0x40

    if-ne v1, p1, :cond_13

    .line 940
    :cond_7
    move p1, p0

    .end local v2    # "mx":I
    .local p1, "mx":I
    sput p0, Lde/agrothe/wanderer/Game;->_bigMonsterX:I

    move v2, v1

    .end local v1    # "obj":C
    .local v2, "obj":C
    move v1, v3

    .end local v3    # "my":I
    .local v1, "my":I
    goto :goto_4

    .line 956
    .end local v1    # "my":I
    .end local v2    # "obj":C
    .end local v5    # "vd":I
    .end local v6    # "xdirection":I
    .end local p1    # "mx":I
    .local v0, "my":I
    .local p0, "dead":Z
    :cond_8
    const/4 p1, 0x0

    .line 957
    .local p1, "deleteMonsters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lde/agrothe/wanderer/Game$BabyMonster;>;"
    sget-object v0, Lde/agrothe/wanderer/Game;->_babyMonsters:Ljava/util/ArrayList;

    .end local v0    # "my":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    move-object v1, p1

    .end local p1    # "deleteMonsters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lde/agrothe/wanderer/Game$BabyMonster;>;"
    .local v1, "deleteMonsters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lde/agrothe/wanderer/Game$BabyMonster;>;"
    move v0, p0

    .end local p0    # "dead":Z
    .local v0, "dead":Z
    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lde/agrothe/wanderer/Game$BabyMonster;

    .line 960
    .local v5, "monster":Lde/agrothe/wanderer/Game$BabyMonster;
    if-eqz v0, :cond_c

    .line 1012
    .end local v5    # "monster":Lde/agrothe/wanderer/Game$BabyMonster;
    :cond_a
    if-eqz v1, :cond_b

    .line 1014
    sget-object p0, Lde/agrothe/wanderer/Game;->_babyMonsters:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1016
    :cond_b
    invoke-static {}, Lde/agrothe/wanderer/Game;->flush()V

    move p0, v0

    .end local v0    # "dead":Z
    .restart local p0    # "dead":Z
    move p1, v0

    .line 1017
    .end local p0    # "dead":Z
    .local p1, "dead":Z
    goto :goto_7

    .line 964
    .end local p1    # "dead":Z
    .restart local v0    # "dead":Z
    .restart local v5    # "monster":Lde/agrothe/wanderer/Game$BabyMonster;
    :cond_c
    iget v3, v5, Lde/agrothe/wanderer/Game$BabyMonster;->_x:I

    .local v3, "monX":I
    iget v4, v5, Lde/agrothe/wanderer/Game$BabyMonster;->_y:I

    .line 965
    .local v4, "monY":I
    iget p0, v5, Lde/agrothe/wanderer/Game$BabyMonster;->_mx:I

    iget p1, v5, Lde/agrothe/wanderer/Game$BabyMonster;->_my:I

    invoke-static {v3, v4, p0, p1}, Lde/agrothe/wanderer/Game;->newDirection(IIII)V

    .line 966
    sget-object p1, Lde/agrothe/wanderer/Game;->_babyMonsterDir:Landroid/graphics/Point;

    .line 967
    .local p1, "dir":Landroid/graphics/Point;
    iget p0, p1, Landroid/graphics/Point;->x:I

    .local p0, "bx":I
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 968
    .local p1, "by":I
    if-nez p0, :cond_d

    if-eqz p1, :cond_9

    .line 972
    :cond_d
    iget-char v6, v5, Lde/agrothe/wanderer/Game$BabyMonster;->_under:C

    .line 973
    .local v6, "under":C
    const/16 v7, 0x53

    if-eq v6, v7, :cond_e

    .line 976
    iget-char v7, v5, Lde/agrothe/wanderer/Game$BabyMonster;->_under:C

    invoke-static {v4, v3, v7}, Lde/agrothe/wanderer/Game;->set(IIC)V

    .line 977
    const/16 v7, 0x2d

    if-ne v6, v7, :cond_e

    .line 978
    invoke-static {v3, v4, p0, p1}, Lde/agrothe/wanderer/Game;->check(IIII)Z

    move-result v0

    .line 984
    :cond_e
    iput p0, v5, Lde/agrothe/wanderer/Game$BabyMonster;->_mx:I

    .line 985
    iput p1, v5, Lde/agrothe/wanderer/Game$BabyMonster;->_my:I

    .line 986
    iget p0, v5, Lde/agrothe/wanderer/Game$BabyMonster;->_x:I

    .end local p0    # "bx":I
    iget p1, v5, Lde/agrothe/wanderer/Game$BabyMonster;->_mx:I

    .end local p1    # "by":I
    add-int/2addr p1, p0

    iput p1, v5, Lde/agrothe/wanderer/Game$BabyMonster;->_x:I

    .line 987
    .end local v3    # "monX":I
    .local p1, "monX":I
    iget p0, v5, Lde/agrothe/wanderer/Game$BabyMonster;->_y:I

    iget v3, v5, Lde/agrothe/wanderer/Game$BabyMonster;->_my:I

    add-int/2addr v3, p0

    iput v3, v5, Lde/agrothe/wanderer/Game$BabyMonster;->_y:I

    .line 988
    .end local v4    # "monY":I
    .local v3, "monY":I
    invoke-static {v3, p1}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result p0

    iput-char p0, v5, Lde/agrothe/wanderer/Game$BabyMonster;->_under:C

    .line 989
    .end local v6    # "under":C
    .local p0, "under":C
    const/16 v4, 0x53

    invoke-static {v3, p1, v4}, Lde/agrothe/wanderer/Game;->set(IIC)V

    .line 991
    const/16 v4, 0x40

    if-ne p0, v4, :cond_11

    .line 994
    const/4 p0, 0x6

    sput p0, Lde/agrothe/wanderer/Game;->_howdead:I

    .line 995
    .end local p0    # "under":C
    const/4 p0, 0x1

    .line 996
    .end local v0    # "dead":Z
    .local p0, "dead":Z
    const/16 v0, 0x2d

    iput-char v0, v5, Lde/agrothe/wanderer/Game$BabyMonster;->_under:C

    .line 998
    .local v0, "under":C
    :goto_a
    const/16 v4, 0x2b

    if-ne v0, v4, :cond_10

    .line 1001
    sget v0, Lde/agrothe/wanderer/Game;->_score:I

    .end local v0    # "under":C
    add-int/lit8 v0, v0, 0x14

    sput v0, Lde/agrothe/wanderer/Game;->_score:I

    .line 1003
    invoke-static {}, Lde/agrothe/wanderer/Game;->updateScore()V

    .line 1004
    const/16 v0, 0x2a

    invoke-static {v3, p1, v0}, Lde/agrothe/wanderer/Game;->set(IIC)V

    .line 1005
    if-nez v1, :cond_f

    .line 1007
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "monX":I
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1009
    .end local v1    # "deleteMonsters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lde/agrothe/wanderer/Game$BabyMonster;>;"
    .local p1, "deleteMonsters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lde/agrothe/wanderer/Game$BabyMonster;>;"
    :goto_b
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_c
    move-object v1, p1

    .end local p1    # "deleteMonsters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lde/agrothe/wanderer/Game$BabyMonster;>;"
    .restart local v1    # "deleteMonsters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lde/agrothe/wanderer/Game$BabyMonster;>;"
    move v0, p0

    .line 1011
    .end local p0    # "dead":Z
    .local v0, "dead":Z
    goto/16 :goto_9

    .end local v0    # "dead":Z
    .restart local p0    # "dead":Z
    .local p1, "monX":I
    :cond_f
    move-object p1, v1

    .end local v1    # "deleteMonsters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lde/agrothe/wanderer/Game$BabyMonster;>;"
    .local p1, "deleteMonsters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lde/agrothe/wanderer/Game$BabyMonster;>;"
    goto :goto_b

    .local v0, "under":C
    .restart local v1    # "deleteMonsters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lde/agrothe/wanderer/Game$BabyMonster;>;"
    .local p1, "monX":I
    :cond_10
    move-object p1, v1

    .end local v1    # "deleteMonsters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lde/agrothe/wanderer/Game$BabyMonster;>;"
    .local p1, "deleteMonsters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lde/agrothe/wanderer/Game$BabyMonster;>;"
    goto :goto_c

    .local v0, "dead":Z
    .restart local v1    # "deleteMonsters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lde/agrothe/wanderer/Game$BabyMonster;>;"
    .local p0, "under":C
    .local p1, "monX":I
    :cond_11
    move v8, p0

    .end local p0    # "under":C
    .local v8, "under":C
    move p0, v0

    .end local v0    # "dead":Z
    .local p0, "dead":Z
    move v0, v8

    .end local v8    # "under":C
    .local v0, "under":C
    goto :goto_a

    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "monY":I
    .end local p0    # "dead":Z
    .local v0, "dead":Z
    .local v1, "my":I
    .local v5, "vd":I
    .local v6, "xdirection":I
    .local p1, "mx":I
    :cond_12
    move p0, v0

    .end local v0    # "dead":Z
    .restart local p0    # "dead":Z
    goto/16 :goto_5

    .end local p1    # "mx":I
    .restart local v0    # "dead":Z
    .local v1, "obj":C
    .local v2, "mx":I
    .local v3, "my":I
    .local p0, "dir":I
    :cond_13
    move p1, v2

    .end local v2    # "mx":I
    .restart local p1    # "mx":I
    move v2, v1

    .end local v1    # "obj":C
    .local v2, "obj":C
    move v1, v3

    .end local v3    # "my":I
    .local v1, "my":I
    goto/16 :goto_4

    .end local v5    # "vd":I
    .local v1, "hd":I
    .local v2, "mx":I
    .restart local v3    # "my":I
    .local p0, "vd":I
    .local p1, "y":I
    :cond_14
    move v5, p0

    .end local p0    # "vd":I
    .restart local v5    # "vd":I
    goto/16 :goto_3

    .end local v1    # "hd":I
    .end local v5    # "vd":I
    .local p0, "hd":I
    :cond_15
    move v1, p0

    .end local p0    # "hd":I
    .restart local v1    # "hd":I
    goto/16 :goto_2

    .end local v1    # "hd":I
    .end local v6    # "xdirection":I
    .local p0, "x":I
    :cond_16
    move p0, v0

    .end local v0    # "dead":Z
    .local p0, "dead":Z
    move p1, v2

    .end local v2    # "mx":I
    .local p1, "mx":I
    move v0, v3

    .end local v3    # "my":I
    .local v0, "my":I
    goto/16 :goto_6

    .local v0, "dead":Z
    .local v1, "mx":I
    .local v2, "my":I
    .local p0, "x":I
    .local p1, "y":I
    :cond_17
    move v3, v2

    .end local v2    # "my":I
    .restart local v3    # "my":I
    move v2, v1

    .end local v1    # "mx":I
    .local v2, "mx":I
    goto/16 :goto_0
.end method

.method private static newDirection(IIII)V
    .locals 4
    .param p0, "pX"    # I
    .param p1, "pY"    # I
    .param p2, "pBx"    # I
    .param p3, "pBy"    # I

    .prologue
    .line 1029
    add-int v2, p0, p3

    sub-int v3, p1, p2

    invoke-static {v2, v3}, Lde/agrothe/wanderer/Game;->viable(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1031
    move v0, p3

    .line 1032
    .local v0, "x":I
    neg-int v1, p2

    .line 1054
    .local v1, "y":I
    :goto_0
    sget-object v2, Lde/agrothe/wanderer/Game;->_babyMonsterDir:Landroid/graphics/Point;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 1055
    return-void

    .line 1034
    .end local v0    # "x":I
    .end local v1    # "y":I
    :cond_0
    add-int v2, p0, p2

    add-int v3, p1, p3

    invoke-static {v2, v3}, Lde/agrothe/wanderer/Game;->viable(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1036
    move v0, p2

    .line 1037
    .restart local v0    # "x":I
    move v1, p3

    .restart local v1    # "y":I
    goto :goto_0

    .line 1039
    .end local v0    # "x":I
    .end local v1    # "y":I
    :cond_1
    sub-int v2, p0, p3

    add-int v3, p1, p2

    invoke-static {v2, v3}, Lde/agrothe/wanderer/Game;->viable(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1041
    neg-int v0, p3

    .line 1042
    .restart local v0    # "x":I
    move v1, p2

    .restart local v1    # "y":I
    goto :goto_0

    .line 1044
    .end local v0    # "x":I
    .end local v1    # "y":I
    :cond_2
    sub-int v2, p0, p2

    sub-int v3, p1, p3

    invoke-static {v2, v3}, Lde/agrothe/wanderer/Game;->viable(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1046
    neg-int v0, p2

    .line 1047
    .restart local v0    # "x":I
    neg-int v1, p3

    .restart local v1    # "y":I
    goto :goto_0

    .line 1051
    .end local v0    # "x":I
    .end local v1    # "y":I
    :cond_3
    const/4 v0, 0x0

    .line 1052
    .restart local v0    # "x":I
    const/4 v1, 0x0

    .restart local v1    # "y":I
    goto :goto_0
.end method

.method static screen(II)C
    .locals 2
    .param p0, "pY"    # I
    .param p1, "pX"    # I

    .prologue
    .line 1063
    if-ltz p1, :cond_0

    const/16 v0, 0x28

    if-ge p1, v0, :cond_0

    if-ltz p0, :cond_0

    const/16 v0, 0x10

    if-lt p0, v0, :cond_1

    .line 1065
    :cond_0
    const/16 v0, 0x23

    .line 1067
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lde/agrothe/wanderer/Game;->_screen:[C

    mul-int/lit8 v1, p0, 0x28

    add-int/2addr v1, p1

    aget-char v0, v0, v1

    goto :goto_0
.end method

.method private static set(IIC)V
    .locals 2
    .param p0, "pY"    # I
    .param p1, "pX"    # I
    .param p2, "pObj"    # C

    .prologue
    .line 1077
    sget-object v0, Lde/agrothe/wanderer/Game;->_screen:[C

    mul-int/lit8 v1, p0, 0x28

    add-int/2addr v1, p1

    aput-char p2, v0, v1

    .line 1078
    sget-object v0, Lde/agrothe/wanderer/Game;->_maze:Lde/agrothe/wanderer/MazeView$Maze;

    invoke-virtual {v0, p1, p0, p2}, Lde/agrothe/wanderer/MazeView$Maze;->drawTileBkgnd(IIC)V

    .line 1079
    return-void
.end method

.method static setScore(I)V
    .locals 0
    .param p0, "pScore"    # I

    .prologue
    .line 182
    sput p0, Lde/agrothe/wanderer/Game;->_score:I

    .line 183
    return-void
.end method

.method private static updateScore()V
    .locals 3

    .prologue
    .line 1090
    sget-object v0, Lde/agrothe/wanderer/Game;->_maze:Lde/agrothe/wanderer/MazeView$Maze;

    const/4 v1, 0x6

    sget v2, Lde/agrothe/wanderer/Game;->_score:I

    invoke-virtual {v0, v1, v2}, Lde/agrothe/wanderer/MazeView$Maze;->updateStatusBgnd(II)V

    .line 1092
    return-void
.end method

.method private static viable(II)Z
    .locals 2
    .param p0, "pX"    # I
    .param p1, "pY"    # I

    .prologue
    .line 524
    if-ltz p0, :cond_0

    if-ltz p1, :cond_0

    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    const/16 v0, 0x28

    if-ge p0, v0, :cond_0

    sget-object v0, Lde/agrothe/wanderer/Game;->_viables:Ljava/util/HashSet;

    invoke-static {p1, p0}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
