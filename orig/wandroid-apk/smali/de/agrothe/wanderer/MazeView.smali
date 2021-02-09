.class public final Lde/agrothe/wanderer/MazeView;
.super Landroid/view/SurfaceView;
.source "MazeView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/agrothe/wanderer/MazeView$SettingsSeekBarListener;,
        Lde/agrothe/wanderer/MazeView$Maze;
    }
.end annotation


# static fields
.field static final _BLINKER_THREAD_NAME:Ljava/lang/String; = "BLINKER"

.field static final _BLINK_FREQUENCY_ID:I = 0x1

.field static final _BLINK_WANDERER:I = 0xe

.field static final _BUILD_SELECT_LEVEL_DIALOG:I = 0xb

.field static final _BUNDLE_ITEMS_KEY:Ljava/lang/String; = "items"

.field static final _BUNDLE_LEVELS_KEY:Ljava/lang/String; = "levels"

.field static final _CANGE_ORIENTATION:I = 0x2

.field static final _DRAW_DIAMONDS:I = 0x7

.field static final _DRAW_LEVEL:I = 0x8

.field static final _DRAW_MOVES:I = 0x5

.field static final _DRAW_SCORE:I = 0x6

.field static final _GAME_THREAD_NAME:Ljava/lang/String; = "GAME"

.field static final _GAME_THREAD_STACK_SIZE:I = 0x100000

.field static final _LOAD_LEVEL:I = 0x4

.field static final _MOVE:I = 0x3

.field static final _PREFERENCES_BLINK_FREQUENCY_KEY:Ljava/lang/String; = "BlinkFrequency"

.field static final _PREFERENCES_GESTURE_SENSIVITY_KEY:Ljava/lang/String; = "GestureSensivity"

.field static final _PREFERENCES_HIGHEST_LEVEL:Ljava/lang/String; = "Highestlevel"

.field static final _PREFERENCES_HIGHSCORE_PREFIX:Ljava/lang/String; = "HighScore_"

.field static final _SCROLL_THRESH_HOLD_ID:I = 0x0

.field static final _SHOW_DEAD_DIALOG:I = 0x9

.field static final _SHOW_HIGH_SCORE_DIALOG:I = 0xa

.field static final _SHOW_NO_MORE_LEVELS_DIALOG:I = 0xd

.field static final _SHOW_SELECT_LEVEL_DIALOG:I = 0xc

.field static final _blinkWandererXferModePaint:Landroid/graphics/Paint;

.field static final _deadMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final _flipMatrix:Landroid/graphics/Matrix;

.field static final _xferModePaint:Landroid/graphics/Paint;


# instance fields
.field _BLINK_FREQUENCE_RANGE:I

.field _BLINK_FREQUENCY_RANGE_FACTOR:I

.field _DEFAULT_BLINK_FREQUENCY_OFFSET:I

.field _DEFAULT_SCROLL_THRESH_HOLD_OFFSET:I

.field _MEDIUM_BLINK_FREQUENCY:I

.field _MEDIUM_SCROLL_THRESH_HOLD_FACTOR:F

.field _SCROLL_THRESH_HOLD_RANGE:I

.field _SCROLL_THRESH_HOLD_RANGE_FACTOR:F

.field _blinkFrequency:I

.field final _context:Landroid/content/Context;

.field _gameHandler:Landroid/os/Handler;

.field _gameLooper:Landroid/os/Looper;

.field private final _gameRunnable:Ljava/lang/Runnable;

.field _gameThread:Ljava/lang/Thread;

.field final _mainActivity:Lde/agrothe/wanderer/MainActivity;

.field _mainHandler:Landroid/os/Handler;

.field final _maze:Lde/agrothe/wanderer/MazeView$Maze;

.field final _resources:Landroid/content/res/Resources;

.field final _sharedPreferences:Landroid/content/SharedPreferences;

.field final _surfaceHolder:Landroid/view/SurfaceHolder;

.field final _threadGroup:Ljava/lang/ThreadGroup;

.field _xScrollThreshHold:F

.field _yScrollThreshHold:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 109
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lde/agrothe/wanderer/MazeView;->_xferModePaint:Landroid/graphics/Paint;

    .line 113
    sget-object v1, Lde/agrothe/wanderer/MazeView;->_xferModePaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 115
    new-instance v1, Landroid/graphics/Paint;

    sget-object v2, Lde/agrothe/wanderer/MazeView;->_xferModePaint:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    sput-object v1, Lde/agrothe/wanderer/MazeView;->_blinkWandererXferModePaint:Landroid/graphics/Paint;

    .line 119
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    sput-object v1, Lde/agrothe/wanderer/MazeView;->_flipMatrix:Landroid/graphics/Matrix;

    .line 122
    sget-object v1, Lde/agrothe/wanderer/MazeView;->_flipMatrix:Landroid/graphics/Matrix;

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 126
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Lde/agrothe/wanderer/MazeView;->_deadMap:Ljava/util/HashMap;

    .line 129
    sget-object v0, Lde/agrothe/wanderer/MazeView;->_deadMap:Ljava/util/HashMap;

    .line 130
    .local v0, "deadMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f050074

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f050075

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f050076

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f050077

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f050078

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f050079

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f05007a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f05007b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "pContext"    # Landroid/content/Context;
    .param p2, "pAttrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 315
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 141
    new-instance v4, Lde/agrothe/wanderer/MazeView$1;

    invoke-direct {v4, p0}, Lde/agrothe/wanderer/MazeView$1;-><init>(Lde/agrothe/wanderer/MazeView;)V

    iput-object v4, p0, Lde/agrothe/wanderer/MazeView;->_gameRunnable:Ljava/lang/Runnable;

    .line 289
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v4

    iput-object v4, p0, Lde/agrothe/wanderer/MazeView;->_threadGroup:Ljava/lang/ThreadGroup;

    .line 298
    new-instance v4, Lde/agrothe/wanderer/MazeView$Maze;

    invoke-direct {v4, p0}, Lde/agrothe/wanderer/MazeView$Maze;-><init>(Lde/agrothe/wanderer/MazeView;)V

    iput-object v4, p0, Lde/agrothe/wanderer/MazeView;->_maze:Lde/agrothe/wanderer/MazeView$Maze;

    .line 316
    iput-object p1, p0, Lde/agrothe/wanderer/MazeView;->_context:Landroid/content/Context;

    .line 318
    invoke-virtual {p0}, Lde/agrothe/wanderer/MazeView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lde/agrothe/wanderer/MazeView;->_resources:Landroid/content/res/Resources;

    .line 319
    .local v3, "resources":Landroid/content/res/Resources;
    iget-object v4, p0, Lde/agrothe/wanderer/MazeView;->_maze:Lde/agrothe/wanderer/MazeView$Maze;

    const v5, 0x7f050071

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lde/agrothe/wanderer/MazeView$Maze;->_unlimitedMovesValue:Ljava/lang/String;

    .line 321
    const/high16 v4, 0x7f070000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iput v4, p0, Lde/agrothe/wanderer/MazeView;->_MEDIUM_SCROLL_THRESH_HOLD_FACTOR:F

    .line 323
    const v4, 0x7f070001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iput v4, p0, Lde/agrothe/wanderer/MazeView;->_SCROLL_THRESH_HOLD_RANGE_FACTOR:F

    .line 325
    const/high16 v4, 0x7f080000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lde/agrothe/wanderer/MazeView;->_SCROLL_THRESH_HOLD_RANGE:I

    .line 327
    iget v4, p0, Lde/agrothe/wanderer/MazeView;->_SCROLL_THRESH_HOLD_RANGE:I

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lde/agrothe/wanderer/MazeView;->_DEFAULT_SCROLL_THRESH_HOLD_OFFSET:I

    .line 328
    const v4, 0x7f080001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lde/agrothe/wanderer/MazeView;->_MEDIUM_BLINK_FREQUENCY:I

    .line 330
    const v4, 0x7f080002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lde/agrothe/wanderer/MazeView;->_BLINK_FREQUENCE_RANGE:I

    .line 332
    iget v4, p0, Lde/agrothe/wanderer/MazeView;->_BLINK_FREQUENCE_RANGE:I

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lde/agrothe/wanderer/MazeView;->_DEFAULT_BLINK_FREQUENCY_OFFSET:I

    .line 333
    const v4, 0x7f080003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lde/agrothe/wanderer/MazeView;->_BLINK_FREQUENCY_RANGE_FACTOR:I

    .line 336
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lde/agrothe/wanderer/MazeView;->_sharedPreferences:Landroid/content/SharedPreferences;

    .line 339
    iget-object v4, p0, Lde/agrothe/wanderer/MazeView;->_maze:Lde/agrothe/wanderer/MazeView$Maze;

    sput-object v4, Lde/agrothe/wanderer/Game;->_maze:Lde/agrothe/wanderer/MazeView$Maze;

    .line 340
    move-object v0, p1

    check-cast v0, Lde/agrothe/wanderer/MainActivity;

    move-object v2, v0

    iput-object v2, p0, Lde/agrothe/wanderer/MazeView;->_mainActivity:Lde/agrothe/wanderer/MainActivity;

    .line 341
    .local v2, "mainActivity":Lde/agrothe/wanderer/MainActivity;
    iput-object p0, v2, Lde/agrothe/wanderer/MainActivity;->_mazeView:Lde/agrothe/wanderer/MazeView;

    .line 343
    invoke-virtual {p0}, Lde/agrothe/wanderer/MazeView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iput-object v1, p0, Lde/agrothe/wanderer/MazeView;->_surfaceHolder:Landroid/view/SurfaceHolder;

    .line 344
    .local v1, "holder":Landroid/view/SurfaceHolder;
    const/4 v4, -0x2

    invoke-interface {v1, v4}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 345
    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 346
    return-void
.end method

.method static synthetic access$200(Lde/agrothe/wanderer/MazeView;I)I
    .locals 1
    .param p0, "x0"    # Lde/agrothe/wanderer/MazeView;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lde/agrothe/wanderer/MazeView;->loadLevelBkgnd(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lde/agrothe/wanderer/MazeView;)V
    .locals 0
    .param p0, "x0"    # Lde/agrothe/wanderer/MazeView;

    .prologue
    .line 57
    invoke-direct {p0}, Lde/agrothe/wanderer/MazeView;->buildSelectLevelDialogBkgnd()V

    return-void
.end method

.method static synthetic access$400(Lde/agrothe/wanderer/MazeView;II)V
    .locals 0
    .param p0, "x0"    # Lde/agrothe/wanderer/MazeView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lde/agrothe/wanderer/MazeView;->moveBkgnd(II)V

    return-void
.end method

.method private buildSelectLevelDialogBkgnd()V
    .locals 10

    .prologue
    .line 1394
    invoke-direct {p0}, Lde/agrothe/wanderer/MazeView;->getHighestLevel()I

    move-result v2

    .line 1395
    .local v2, "highestLevel":I
    new-array v4, v2, [Ljava/lang/String;

    .line 1396
    .local v4, "items":[Ljava/lang/String;
    new-array v6, v2, [I

    .line 1397
    .local v6, "levels":[I
    move v5, v2

    .local v5, "level":I
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_0
    if-lez v5, :cond_0

    .line 1399
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0, v5}, Lde/agrothe/wanderer/MazeView;->getHighScore(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v3

    .line 1401
    aput v5, v6, v3

    .line 1397
    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1403
    :cond_0
    iget-object v1, p0, Lde/agrothe/wanderer/MazeView;->_mainHandler:Landroid/os/Handler;

    .line 1404
    .local v1, "handler":Landroid/os/Handler;
    const/16 v8, 0xc

    invoke-virtual {v1, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 1405
    .local v7, "message":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1406
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v8, "items"

    invoke-virtual {v0, v8, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1407
    const-string v8, "levels"

    invoke-virtual {v0, v8, v6}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1408
    invoke-virtual {v7, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1409
    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1410
    return-void
.end method

.method private getHighScore(I)I
    .locals 3
    .param p1, "pLevel"    # I

    .prologue
    .line 1319
    iget-object v0, p0, Lde/agrothe/wanderer/MazeView;->_sharedPreferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HighScore_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getHighestLevel()I
    .locals 3

    .prologue
    .line 1296
    iget-object v0, p0, Lde/agrothe/wanderer/MazeView;->_mainActivity:Lde/agrothe/wanderer/MainActivity;

    iget v0, v0, Lde/agrothe/wanderer/MainActivity;->_unlockAllScreensCnt:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/16 v0, 0x3b

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lde/agrothe/wanderer/MazeView;->_sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "Highestlevel"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method static imageViewSetBitmap(Landroid/view/View;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p0, "pContainerView"    # Landroid/view/View;
    .param p1, "pTagName"    # Ljava/lang/String;
    .param p2, "pBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1583
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1585
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 1587
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1589
    :cond_0
    return-void
.end method

.method private loadLevelBkgnd(I)I
    .locals 4
    .param p1, "pLevel"    # I

    .prologue
    const/4 v3, 0x0

    .line 1220
    if-nez p1, :cond_0

    .line 1222
    invoke-direct {p0}, Lde/agrothe/wanderer/MazeView;->getHighestLevel()I

    move-result p1

    .line 1224
    :cond_0
    invoke-virtual {p0, p1}, Lde/agrothe/wanderer/MazeView;->getLevel(I)Ljava/lang/String;

    move-result-object v1

    .line 1225
    .local v1, "screen":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 1227
    iget-object v0, p0, Lde/agrothe/wanderer/MazeView;->_mainHandler:Landroid/os/Handler;

    .line 1228
    .local v0, "handler":Landroid/os/Handler;
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v2, v3

    .line 1236
    .end local v0    # "handler":Landroid/os/Handler;
    :goto_0
    return v2

    .line 1232
    :cond_1
    invoke-virtual {p0, p1}, Lde/agrothe/wanderer/MazeView;->getMaxMoves(I)I

    move-result v2

    invoke-static {p1, v1, v2}, Lde/agrothe/wanderer/Game;->loadLevel(ILjava/lang/String;I)V

    .line 1233
    const/4 v2, 0x1

    sub-int v2, p1, v2

    invoke-direct {p0, v2}, Lde/agrothe/wanderer/MazeView;->getHighScore(I)I

    move-result v2

    invoke-static {v2}, Lde/agrothe/wanderer/Game;->setScore(I)V

    .line 1234
    iget-object v2, p0, Lde/agrothe/wanderer/MazeView;->_maze:Lde/agrothe/wanderer/MazeView$Maze;

    invoke-virtual {v2, v3}, Lde/agrothe/wanderer/MazeView$Maze;->drawScreenBkgnd(Z)V

    move v2, p1

    .line 1236
    goto :goto_0
.end method

.method private moveBkgnd(II)V
    .locals 13
    .param p1, "pDiffX"    # I
    .param p2, "pDiffY"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v12, 0x0

    .line 1254
    sget v7, Lde/agrothe/wanderer/Game;->_howdead:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    .line 1291
    .end local p0    # "this":Lde/agrothe/wanderer/MazeView;
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 1258
    .restart local p0    # "this":Lde/agrothe/wanderer/MazeView;
    :cond_1
    iget-object v4, p0, Lde/agrothe/wanderer/MazeView;->_maze:Lde/agrothe/wanderer/MazeView$Maze;

    .line 1259
    .local v4, "maze":Lde/agrothe/wanderer/MazeView$Maze;
    if-ltz p1, :cond_2

    if-nez p1, :cond_3

    iget-boolean v7, v4, Lde/agrothe/wanderer/MazeView$Maze;->_moveLeft:Z

    if-eqz v7, :cond_3

    :cond_2
    move v7, v9

    :goto_1
    iput-boolean v7, v4, Lde/agrothe/wanderer/MazeView$Maze;->_moveLeft:Z

    .line 1260
    invoke-static {p1, p2}, Lde/agrothe/wanderer/Game;->move(II)V

    .line 1261
    sget v1, Lde/agrothe/wanderer/Game;->_howdead:I

    .line 1262
    .local v1, "howdead":I
    iget-object v5, p0, Lde/agrothe/wanderer/MazeView;->_resources:Landroid/content/res/Resources;

    .line 1263
    .local v5, "resources":Landroid/content/res/Resources;
    sparse-switch v1, :sswitch_data_0

    .line 1285
    iget-object v0, p0, Lde/agrothe/wanderer/MazeView;->_mainHandler:Landroid/os/Handler;

    .line 1286
    .local v0, "handler":Landroid/os/Handler;
    const/16 v7, 0x9

    const v8, 0x7f050073

    new-array v9, v9, [Ljava/lang/Object;

    sget-object v10, Lde/agrothe/wanderer/MazeView;->_deadMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lde/agrothe/wanderer/MazeView;
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {v5, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .end local v0    # "handler":Landroid/os/Handler;
    .end local v1    # "howdead":I
    .end local v5    # "resources":Landroid/content/res/Resources;
    .restart local p0    # "this":Lde/agrothe/wanderer/MazeView;
    :cond_3
    move v7, v12

    .line 1259
    goto :goto_1

    .line 1268
    .restart local v1    # "howdead":I
    .restart local v5    # "resources":Landroid/content/res/Resources;
    :sswitch_1
    invoke-static {}, Lde/agrothe/wanderer/Game;->getScore()I

    move-result v6

    .line 1269
    .local v6, "score":I
    invoke-static {}, Lde/agrothe/wanderer/Game;->getLevel()I

    move-result v3

    .line 1270
    .local v3, "level":I
    invoke-direct {p0, v3, v6}, Lde/agrothe/wanderer/MazeView;->setHighScore(II)I

    move-result v2

    .line 1271
    .local v2, "lastHighScore":I
    if-ge v2, v6, :cond_4

    .line 1273
    iget-object v0, p0, Lde/agrothe/wanderer/MazeView;->_mainHandler:Landroid/os/Handler;

    .line 1274
    .restart local v0    # "handler":Landroid/os/Handler;
    const/16 v7, 0xa

    const v8, 0x7f05007e

    new-array v9, v9, [Ljava/lang/Object;

    sub-int v10, v6, v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {v5, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1279
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v3}, Lde/agrothe/wanderer/MazeView;->loadLevelBkgnd(I)I

    move-result v7

    if-eqz v7, :cond_0

    .line 1281
    invoke-direct {p0, v3}, Lde/agrothe/wanderer/MazeView;->setHighestLevel(I)V

    goto :goto_0

    .line 1263
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch
.end method

.method private setHighScore(II)I
    .locals 4
    .param p1, "pLevel"    # I
    .param p2, "pHighscore"    # I

    .prologue
    .line 1329
    const/4 v1, 0x1

    sub-int v1, p1, v1

    invoke-direct {p0, v1}, Lde/agrothe/wanderer/MazeView;->getHighScore(I)I

    move-result v0

    .line 1330
    .local v0, "lastHighScore":I
    if-ge v0, p2, :cond_0

    .line 1332
    iget-object v1, p0, Lde/agrothe/wanderer/MazeView;->_sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HighScore_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1336
    :cond_0
    return v0
.end method

.method private setHighestLevel(I)V
    .locals 3
    .param p1, "pLevel"    # I

    .prologue
    .line 1306
    invoke-direct {p0}, Lde/agrothe/wanderer/MazeView;->getHighestLevel()I

    move-result v0

    .line 1307
    .local v0, "highestLevel":I
    if-le p1, v0, :cond_0

    .line 1309
    iget-object v1, p0, Lde/agrothe/wanderer/MazeView;->_sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "Highestlevel"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1312
    :cond_0
    return-void
.end method


# virtual methods
.method public calculateBlinkFrequency()V
    .locals 4

    .prologue
    .line 565
    iget v0, p0, Lde/agrothe/wanderer/MazeView;->_DEFAULT_BLINK_FREQUENCY_OFFSET:I

    .line 567
    .local v0, "defaultBlinkFrequencyOffset":I
    iget v1, p0, Lde/agrothe/wanderer/MazeView;->_MEDIUM_BLINK_FREQUENCY:I

    iget-object v2, p0, Lde/agrothe/wanderer/MazeView;->_sharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "BlinkFrequency"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sub-int v2, v0, v2

    iget v3, p0, Lde/agrothe/wanderer/MazeView;->_BLINK_FREQUENCY_RANGE_FACTOR:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Lde/agrothe/wanderer/MazeView;->_blinkFrequency:I

    .line 572
    return-void
.end method

.method getLevel(I)Ljava/lang/String;
    .locals 3
    .param p1, "pLevel"    # I

    .prologue
    .line 1365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lde/agrothe/wanderer/MazeView;->_resources:Landroid/content/res/Resources;

    const v2, 0x7f050005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/agrothe/wanderer/MazeView;->getResourceByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getMaxMoves(I)I
    .locals 5
    .param p1, "pLevel"    # I

    .prologue
    .line 1373
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lde/agrothe/wanderer/MazeView;->_resources:Landroid/content/res/Resources;

    const v4, 0x7f050006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lde/agrothe/wanderer/MazeView;->getResourceByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1377
    .local v1, "level":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1381
    :goto_0
    return v2

    .line 1379
    :catch_0
    move-exception v0

    .line 1381
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, -0x1

    goto :goto_0
.end method

.method getResourceByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "pName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x5

    .line 1346
    :try_start_0
    iget-object v2, p0, Lde/agrothe/wanderer/MazeView;->_resources:Landroid/content/res/Resources;

    const-class v3, Lde/agrothe/wanderer/R$string;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, "resStr":Ljava/lang/String;
    move-object v2, v1

    .line 1358
    .end local v1    # "resStr":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 1349
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1351
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lde/agrothe/wanderer/MainActivity;->_LOG_TAG:Ljava/lang/String;

    invoke-static {v2, v5}, Lde/agrothe/util/Logging;->isEnabledFor(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1353
    sget-object v2, Lde/agrothe/wanderer/MainActivity;->_LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed reading resource for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v5, v3}, Lde/agrothe/util/Logging;->log(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    move-object v2, v6

    .line 1356
    goto :goto_0
.end method

.method loadLevel(I)V
    .locals 3
    .param p1, "pLevel"    # I

    .prologue
    .line 1209
    iget-object v0, p0, Lde/agrothe/wanderer/MazeView;->_gameHandler:Landroid/os/Handler;

    .line 1210
    .local v0, "handler":Landroid/os/Handler;
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1211
    .local v1, "message":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 1212
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1213
    return-void
.end method

.method move(II)V
    .locals 2
    .param p1, "pDiffX"    # I
    .param p2, "pDiffY"    # I

    .prologue
    .line 1244
    iget-object v0, p0, Lde/agrothe/wanderer/MazeView;->_gameHandler:Landroid/os/Handler;

    .line 1245
    .local v0, "handler":Landroid/os/Handler;
    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1246
    return-void
.end method

.method showCreditsDialog()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 1414
    iget-object v6, p0, Lde/agrothe/wanderer/MazeView;->_context:Landroid/content/Context;

    .line 1415
    .local v6, "context":Landroid/content/Context;
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, v6}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 1416
    .local v0, "webView":Landroid/webkit/WebView;
    iget-object v2, p0, Lde/agrothe/wanderer/MazeView;->_resources:Landroid/content/res/Resources;

    const v3, 0x7f050004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1419
    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setNetworkAvailable(Z)V

    .line 1420
    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 1421
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080041

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f050003

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1425
    return-void
.end method

.method showHelpDialog()V
    .locals 27

    .prologue
    .line 1515
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/agrothe/wanderer/MazeView;->_context:Landroid/content/Context;

    move-object v5, v0

    .line 1516
    .local v5, "context":Landroid/content/Context;
    new-instance v24, Landroid/view/ViewStub;

    const/high16 v25, 0x7f030000

    move-object/from16 v0, v24

    move-object v1, v5

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;I)V

    .line 1517
    .local v24, "viewStub":Landroid/view/ViewStub;
    new-instance v25, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v25

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v26, 0x1080040

    invoke-virtual/range {v25 .. v26}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v25

    const v26, 0x7f050065

    invoke-virtual/range {v25 .. v26}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1520
    invoke-virtual/range {v24 .. v24}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v23

    .line 1521
    .local v23, "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/agrothe/wanderer/MazeView;->_resources:Landroid/content/res/Resources;

    move-object v15, v0

    .line 1522
    .local v15, "resources":Landroid/content/res/Resources;
    const/high16 v25, 0x7f0b0000

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1523
    .local v7, "helpHead":Landroid/widget/TextView;
    if-eqz v7, :cond_0

    .line 1525
    const v25, 0x7f050081

    move-object v0, v15

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v25

    move-object v0, v7

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1528
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/agrothe/wanderer/MazeView;->_maze:Lde/agrothe/wanderer/MazeView$Maze;

    move-object v13, v0

    .line 1529
    .local v13, "maze":Lde/agrothe/wanderer/MazeView$Maze;
    invoke-static {v13}, Lde/agrothe/wanderer/MazeView$Maze;->access$500(Lde/agrothe/wanderer/MazeView$Maze;)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v21, v0

    .line 1530
    .local v21, "tileWidth":I
    invoke-static {v13}, Lde/agrothe/wanderer/MazeView$Maze;->access$600(Lde/agrothe/wanderer/MazeView$Maze;)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v20, v0

    .line 1531
    .local v20, "tileHeight":I
    move-object v0, v13

    iget-object v0, v0, Lde/agrothe/wanderer/MazeView$Maze;->_tiles:Ljava/util/HashMap;

    move-object/from16 v22, v0

    .line 1532
    .local v22, "tiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;[I>;"
    iget-object v4, v13, Lde/agrothe/wanderer/MazeView$Maze;->_config:Landroid/graphics/Bitmap$Config;

    .line 1533
    .local v4, "config":Landroid/graphics/Bitmap$Config;
    const v25, 0x7f050002

    move-object v0, v15

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1534
    .local v18, "textTag":Ljava/lang/String;
    const/high16 v25, 0x7f050000

    move-object v0, v15

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1535
    .local v11, "labelTag":Ljava/lang/String;
    const v25, 0x7f050001

    move-object v0, v15

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1537
    .local v12, "labelTag1":Ljava/lang/String;
    const v25, 0x7f040002

    move-object v0, v15

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 1538
    .local v9, "helpRowIds":Landroid/content/res/TypedArray;
    const v25, 0x7f040003

    move-object v0, v15

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 1539
    .local v8, "helpIconSymbols":Landroid/content/res/TypedArray;
    const v25, 0x7f040004

    move-object v0, v15

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 1540
    .local v10, "helpTexts":Landroid/content/res/TypedArray;
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->length()I

    move-result v14

    .line 1541
    .local v14, "numRows":I
    const/16 v16, 0x0

    .end local p0    # "this":Lde/agrothe/wanderer/MazeView;
    .local v16, "rowIdx":I
    :goto_0
    move/from16 v0, v16

    move v1, v14

    if-ge v0, v1, :cond_2

    .line 1543
    const/16 v25, 0x0

    move-object v0, v9

    move/from16 v1, v16

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v25

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TableRow;

    .line 1545
    .local v17, "tableRow":Landroid/widget/TableRow;
    if-eqz v17, :cond_1

    .line 1547
    invoke-virtual/range {v17 .. v18}, Landroid/widget/TableRow;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 1549
    .local v19, "textView":Landroid/widget/TextView;
    if-eqz v19, :cond_1

    .line 1551
    move-object v0, v10

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1553
    move-object v0, v8

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1554
    .local v6, "gameSymbols":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 1556
    const/16 v25, 0x0

    move-object v0, v6

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v20

    move-object v3, v4

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v25

    move-object/from16 v0, v17

    move-object v1, v11

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lde/agrothe/wanderer/MazeView;->imageViewSetBitmap(Landroid/view/View;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 1560
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_1

    .line 1562
    const/16 v25, 0x1

    move-object v0, v6

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v20

    move-object v3, v4

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v25

    move-object/from16 v0, v17

    move-object v1, v12

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lde/agrothe/wanderer/MazeView;->imageViewSetBitmap(Landroid/view/View;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 1541
    .end local v6    # "gameSymbols":Ljava/lang/String;
    .end local v19    # "textView":Landroid/widget/TextView;
    :cond_1
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 1571
    .end local v17    # "tableRow":Landroid/widget/TableRow;
    :cond_2
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 1572
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 1573
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 1574
    return-void
.end method

.method showSelectLevelDialog()V
    .locals 2

    .prologue
    .line 1387
    iget-object v0, p0, Lde/agrothe/wanderer/MazeView;->_gameHandler:Landroid/os/Handler;

    .line 1388
    .local v0, "handler":Landroid/os/Handler;
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1389
    return-void
.end method

.method showSettingsDialog()V
    .locals 14

    .prologue
    const/4 v11, 0x1

    const-string v13, "GestureSensivity"

    const-string v12, "BlinkFrequency"

    .line 1481
    iget-object v0, p0, Lde/agrothe/wanderer/MazeView;->_context:Landroid/content/Context;

    .line 1482
    .local v0, "context":Landroid/content/Context;
    new-instance v7, Landroid/view/ViewStub;

    const v8, 0x7f030003

    invoke-direct {v7, v0, v8}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;I)V

    .line 1483
    .local v7, "viewStub":Landroid/view/ViewStub;
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x1080049

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f050069

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1486
    invoke-virtual {v7}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v6

    .line 1487
    .local v6, "view":Landroid/view/View;
    iget-object v5, p0, Lde/agrothe/wanderer/MazeView;->_sharedPreferences:Landroid/content/SharedPreferences;

    .line 1488
    .local v5, "sharedPreferences":Landroid/content/SharedPreferences;
    const v8, 0x7f0b0012

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    .line 1490
    .local v2, "gestureSeekBar":Landroid/widget/SeekBar;
    invoke-virtual {v2, v11}, Landroid/widget/SeekBar;->setFocusable(Z)V

    .line 1491
    iget v8, p0, Lde/agrothe/wanderer/MazeView;->_SCROLL_THRESH_HOLD_RANGE:I

    invoke-virtual {v2, v8}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1492
    const-string v4, "GestureSensivity"

    .line 1494
    .local v4, "preferencesGestureSensivityKey":Ljava/lang/String;
    const-string v3, "BlinkFrequency"

    .line 1495
    .local v3, "preferencesBlinkFrequencyKey":Ljava/lang/String;
    const-string v8, "GestureSensivity"

    iget v8, p0, Lde/agrothe/wanderer/MazeView;->_DEFAULT_SCROLL_THRESH_HOLD_OFFSET:I

    invoke-interface {v5, v13, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1498
    new-instance v8, Lde/agrothe/wanderer/MazeView$SettingsSeekBarListener;

    const/4 v9, 0x0

    const-string v10, "GestureSensivity"

    invoke-direct {v8, p0, v9, v13}, Lde/agrothe/wanderer/MazeView$SettingsSeekBarListener;-><init>(Lde/agrothe/wanderer/MazeView;ILjava/lang/String;)V

    invoke-virtual {v2, v8}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1501
    const v8, 0x7f0b0013

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    .line 1503
    .local v1, "frequencySeekBar":Landroid/widget/SeekBar;
    invoke-virtual {v1, v11}, Landroid/widget/SeekBar;->setFocusable(Z)V

    .line 1504
    iget v8, p0, Lde/agrothe/wanderer/MazeView;->_BLINK_FREQUENCE_RANGE:I

    invoke-virtual {v1, v8}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1505
    const-string v8, "BlinkFrequency"

    iget v8, p0, Lde/agrothe/wanderer/MazeView;->_DEFAULT_BLINK_FREQUENCY_OFFSET:I

    invoke-interface {v5, v12, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1508
    new-instance v8, Lde/agrothe/wanderer/MazeView$SettingsSeekBarListener;

    const-string v9, "BlinkFrequency"

    invoke-direct {v8, p0, v11, v12}, Lde/agrothe/wanderer/MazeView$SettingsSeekBarListener;-><init>(Lde/agrothe/wanderer/MazeView;ILjava/lang/String;)V

    invoke-virtual {v1, v8}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1511
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .param p1, "pHolder"    # Landroid/view/SurfaceHolder;
    .param p2, "pFormat"    # I
    .param p3, "pWidth"    # I
    .param p4, "pHeight"    # I

    .prologue
    .line 536
    iget-object v1, p0, Lde/agrothe/wanderer/MazeView;->_gameThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 538
    iget-object v0, p0, Lde/agrothe/wanderer/MazeView;->_gameHandler:Landroid/os/Handler;

    .line 539
    .local v0, "handler":Landroid/os/Handler;
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 542
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 12
    .param p1, "pHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 353
    iget-object v2, p0, Lde/agrothe/wanderer/MazeView;->_gameRunnable:Ljava/lang/Runnable;

    .line 354
    .local v2, "gameRunnable":Ljava/lang/Runnable;
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lde/agrothe/wanderer/MazeView;->_threadGroup:Ljava/lang/ThreadGroup;

    const-string v3, "GAME"

    const-wide/32 v4, 0x100000

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    iput-object v0, p0, Lde/agrothe/wanderer/MazeView;->_gameThread:Ljava/lang/Thread;

    .line 357
    .local v0, "thread":Ljava/lang/Thread;
    monitor-enter v2

    .line 359
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 365
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 367
    iget-object v1, p0, Lde/agrothe/wanderer/MazeView;->_mainHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 520
    :goto_1
    return-void

    .line 365
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 372
    :cond_0
    sget-object v10, Lde/agrothe/wanderer/MainActivity;->_viewIdTextViewMap:Ljava/util/HashMap;

    .line 375
    .local v10, "viewIdTextViewMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/widget/TextView;>;"
    const v1, 0x7f0b001a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 376
    .local v5, "diamonds":Landroid/widget/TextView;
    const v1, 0x7f0b0017

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 377
    .local v6, "score":Landroid/widget/TextView;
    const v1, 0x7f0b0015

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 378
    .local v7, "level":Landroid/widget/TextView;
    const v1, 0x7f0b0019

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 380
    .local v8, "moves":Landroid/widget/TextView;
    iget-object v9, p0, Lde/agrothe/wanderer/MazeView;->_context:Landroid/content/Context;

    .line 381
    .local v9, "context":Landroid/content/Context;
    new-instance v3, Lde/agrothe/wanderer/MazeView$2;

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lde/agrothe/wanderer/MazeView$2;-><init>(Lde/agrothe/wanderer/MazeView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/content/Context;)V

    iput-object v3, p0, Lde/agrothe/wanderer/MazeView;->_mainHandler:Landroid/os/Handler;

    .line 466
    .local v3, "mainHandler":Landroid/os/Handler;
    iget-object v1, p0, Lde/agrothe/wanderer/MazeView;->_mainActivity:Lde/agrothe/wanderer/MainActivity;

    new-instance v4, Landroid/view/GestureDetector;

    new-instance v11, Lde/agrothe/wanderer/MazeView$3;

    invoke-direct {v11, p0, v3}, Lde/agrothe/wanderer/MazeView$3;-><init>(Lde/agrothe/wanderer/MazeView;Landroid/os/Handler;)V

    invoke-direct {v4, v11}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v4, v1, Lde/agrothe/wanderer/MainActivity;->_gestureDetector:Landroid/view/GestureDetector;

    goto :goto_1

    .line 364
    .end local v3    # "mainHandler":Landroid/os/Handler;
    .end local v5    # "diamonds":Landroid/widget/TextView;
    .end local v6    # "score":Landroid/widget/TextView;
    .end local v7    # "level":Landroid/widget/TextView;
    .end local v8    # "moves":Landroid/widget/TextView;
    .end local v9    # "context":Landroid/content/Context;
    .end local v10    # "viewIdTextViewMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/widget/TextView;>;"
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "pHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 549
    iget-object v1, p0, Lde/agrothe/wanderer/MazeView;->_gameLooper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 550
    iget-object v0, p0, Lde/agrothe/wanderer/MazeView;->_gameThread:Ljava/lang/Thread;

    .line 555
    .local v0, "thread":Ljava/lang/Thread;
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 560
    return-void

    .line 558
    :catch_0
    move-exception v1

    goto :goto_0
.end method
