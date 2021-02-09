.class final Lde/agrothe/wanderer/MazeView$3;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MazeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/agrothe/wanderer/MazeView;->surfaceCreated(Landroid/view/SurfaceHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field _actualEvent:Landroid/view/MotionEvent;

.field _cummulatedX:F

.field _cummulatedY:F

.field final synthetic this$0:Lde/agrothe/wanderer/MazeView;

.field final synthetic val$mainHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lde/agrothe/wanderer/MazeView;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 468
    iput-object p1, p0, Lde/agrothe/wanderer/MazeView$3;->this$0:Lde/agrothe/wanderer/MazeView;

    iput-object p2, p0, Lde/agrothe/wanderer/MazeView$3;->val$mainHandler:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "pEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 515
    iget-object v0, p0, Lde/agrothe/wanderer/MazeView$3;->val$mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lde/agrothe/wanderer/MazeView$3;->val$mainHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    iget-object v3, p0, Lde/agrothe/wanderer/MazeView$3;->this$0:Lde/agrothe/wanderer/MazeView;

    iget-object v3, v3, Lde/agrothe/wanderer/MazeView;->_resources:Landroid/content/res/Resources;

    const v4, 0x7f050072

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 518
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .param p1, "pEvent1"    # Landroid/view/MotionEvent;
    .param p2, "pEvent2"    # Landroid/view/MotionEvent;
    .param p3, "pDistanceX"    # F
    .param p4, "pDistanceY"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 481
    iget-object v0, p0, Lde/agrothe/wanderer/MazeView$3;->_actualEvent:Landroid/view/MotionEvent;

    if-eq v0, p1, :cond_0

    .line 483
    iput-object p1, p0, Lde/agrothe/wanderer/MazeView$3;->_actualEvent:Landroid/view/MotionEvent;

    .line 484
    iput v2, p0, Lde/agrothe/wanderer/MazeView$3;->_cummulatedY:F

    iput v2, p0, Lde/agrothe/wanderer/MazeView$3;->_cummulatedX:F

    .line 486
    :cond_0
    iget v0, p0, Lde/agrothe/wanderer/MazeView$3;->_cummulatedX:F

    add-float/2addr v0, p3

    iput v0, p0, Lde/agrothe/wanderer/MazeView$3;->_cummulatedX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lde/agrothe/wanderer/MazeView$3;->this$0:Lde/agrothe/wanderer/MazeView;

    iget v1, v1, Lde/agrothe/wanderer/MazeView;->_xScrollThreshHold:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 488
    iput v2, p0, Lde/agrothe/wanderer/MazeView$3;->_cummulatedX:F

    .line 489
    iget-object v0, p0, Lde/agrothe/wanderer/MazeView$3;->this$0:Lde/agrothe/wanderer/MazeView;

    invoke-static {p3}, Ljava/lang/Math;->signum(F)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1, v3}, Lde/agrothe/wanderer/MazeView;->move(II)V

    move v0, v4

    .line 498
    :goto_0
    return v0

    .line 492
    :cond_1
    iget v0, p0, Lde/agrothe/wanderer/MazeView$3;->_cummulatedY:F

    add-float/2addr v0, p4

    iput v0, p0, Lde/agrothe/wanderer/MazeView$3;->_cummulatedY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lde/agrothe/wanderer/MazeView$3;->this$0:Lde/agrothe/wanderer/MazeView;

    iget v1, v1, Lde/agrothe/wanderer/MazeView;->_yScrollThreshHold:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 494
    iput v2, p0, Lde/agrothe/wanderer/MazeView$3;->_cummulatedY:F

    .line 495
    iget-object v0, p0, Lde/agrothe/wanderer/MazeView$3;->this$0:Lde/agrothe/wanderer/MazeView;

    invoke-static {p4}, Ljava/lang/Math;->signum(F)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v3, v1}, Lde/agrothe/wanderer/MazeView;->move(II)V

    move v0, v4

    .line 496
    goto :goto_0

    :cond_2
    move v0, v3

    .line 498
    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "pEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 506
    iget-object v0, p0, Lde/agrothe/wanderer/MazeView$3;->this$0:Lde/agrothe/wanderer/MazeView;

    invoke-virtual {v0, v1, v1}, Lde/agrothe/wanderer/MazeView;->move(II)V

    .line 507
    const/4 v0, 0x1

    return v0
.end method
