.class final Lde/agrothe/wanderer/MazeView$1;
.super Ljava/lang/Object;
.source "MazeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/agrothe/wanderer/MazeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field private final _blinkerRunnable:Ljava/lang/Runnable;

.field private _run:Z

.field final synthetic this$0:Lde/agrothe/wanderer/MazeView;


# direct methods
.method constructor <init>(Lde/agrothe/wanderer/MazeView;)V
    .locals 1

    .prologue
    .line 143
    iput-object p1, p0, Lde/agrothe/wanderer/MazeView$1;->this$0:Lde/agrothe/wanderer/MazeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/agrothe/wanderer/MazeView$1;->_run:Z

    .line 147
    new-instance v0, Lde/agrothe/wanderer/MazeView$1$1;

    invoke-direct {v0, p0}, Lde/agrothe/wanderer/MazeView$1$1;-><init>(Lde/agrothe/wanderer/MazeView$1;)V

    iput-object v0, p0, Lde/agrothe/wanderer/MazeView$1;->_blinkerRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lde/agrothe/wanderer/MazeView$1;)Z
    .locals 1
    .param p0, "x0"    # Lde/agrothe/wanderer/MazeView$1;

    .prologue
    .line 143
    iget-boolean v0, p0, Lde/agrothe/wanderer/MazeView$1;->_run:Z

    return v0
.end method

.method static synthetic access$002(Lde/agrothe/wanderer/MazeView$1;Z)Z
    .locals 0
    .param p0, "x0"    # Lde/agrothe/wanderer/MazeView$1;
    .param p1, "x1"    # Z

    .prologue
    .line 143
    iput-boolean p1, p0, Lde/agrothe/wanderer/MazeView$1;->_run:Z

    return p1
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 204
    iget-object v0, p0, Lde/agrothe/wanderer/MazeView$1;->_blinkerRunnable:Ljava/lang/Runnable;

    .line 206
    .local v0, "blinkerRunnable":Ljava/lang/Runnable;
    monitor-enter p0

    .line 208
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 209
    iget-object v3, p0, Lde/agrothe/wanderer/MazeView$1;->this$0:Lde/agrothe/wanderer/MazeView;

    new-instance v2, Lde/agrothe/wanderer/MazeView$1$2;

    invoke-direct {v2, p0, v0}, Lde/agrothe/wanderer/MazeView$1$2;-><init>(Lde/agrothe/wanderer/MazeView$1;Ljava/lang/Runnable;)V

    iput-object v2, v3, Lde/agrothe/wanderer/MazeView;->_gameHandler:Landroid/os/Handler;

    .line 254
    .local v2, "handler":Landroid/os/Handler;
    iget-object v3, p0, Lde/agrothe/wanderer/MazeView$1;->this$0:Lde/agrothe/wanderer/MazeView;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iput-object v4, v3, Lde/agrothe/wanderer/MazeView;->_gameLooper:Landroid/os/Looper;

    .line 255
    new-instance v1, Ljava/lang/Thread;

    const-string v3, "BLINKER"

    invoke-direct {v1, v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 256
    .local v1, "blinkerThread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 257
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 258
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 261
    monitor-enter v0

    .line 263
    const/4 v3, 0x0

    :try_start_1
    iput-boolean v3, p0, Lde/agrothe/wanderer/MazeView$1;->_run:Z

    .line 264
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 265
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 270
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 271
    return-void

    .line 258
    .end local v1    # "blinkerThread":Ljava/lang/Thread;
    .end local v2    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 265
    .restart local v1    # "blinkerThread":Ljava/lang/Thread;
    .restart local v2    # "handler":Landroid/os/Handler;
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 273
    :catch_0
    move-exception v3

    goto :goto_0
.end method
