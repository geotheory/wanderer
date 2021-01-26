.class final Lde/agrothe/wanderer/MazeView$1$2;
.super Landroid/os/Handler;
.source "MazeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/agrothe/wanderer/MazeView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lde/agrothe/wanderer/MazeView$1;

.field final synthetic val$blinkerRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lde/agrothe/wanderer/MazeView$1;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lde/agrothe/wanderer/MazeView$1$2;->this$1:Lde/agrothe/wanderer/MazeView$1;

    iput-object p2, p0, Lde/agrothe/wanderer/MazeView$1$2;->val$blinkerRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "pMessage"    # Landroid/os/Message;

    .prologue
    .line 216
    iget-object v1, p0, Lde/agrothe/wanderer/MazeView$1$2;->val$blinkerRunnable:Ljava/lang/Runnable;

    monitor-enter v1

    .line 218
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 251
    :cond_0
    :goto_0
    monitor-exit v1

    .line 252
    return-void

    .line 221
    :sswitch_0
    iget-object v2, p0, Lde/agrothe/wanderer/MazeView$1$2;->this$1:Lde/agrothe/wanderer/MazeView$1;

    iget-object v2, v2, Lde/agrothe/wanderer/MazeView$1;->this$0:Lde/agrothe/wanderer/MazeView;

    iget-object v0, v2, Lde/agrothe/wanderer/MazeView;->_maze:Lde/agrothe/wanderer/MazeView$Maze;

    .line 222
    .local v0, "maze":Lde/agrothe/wanderer/MazeView$Maze;
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v2, v3}, Lde/agrothe/wanderer/MazeView$Maze;->access$100(Lde/agrothe/wanderer/MazeView$Maze;II)V

    .line 224
    invoke-static {}, Lde/agrothe/wanderer/Game;->getLevel()I

    move-result v2

    if-nez v2, :cond_1

    .line 226
    iget-object v2, p0, Lde/agrothe/wanderer/MazeView$1$2;->this$1:Lde/agrothe/wanderer/MazeView$1;

    iget-object v2, v2, Lde/agrothe/wanderer/MazeView$1;->this$0:Lde/agrothe/wanderer/MazeView;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lde/agrothe/wanderer/MazeView;->access$200(Lde/agrothe/wanderer/MazeView;I)I

    .line 232
    :goto_1
    iget-object v2, p0, Lde/agrothe/wanderer/MazeView$1$2;->this$1:Lde/agrothe/wanderer/MazeView$1;

    invoke-static {v2}, Lde/agrothe/wanderer/MazeView$1;->access$000(Lde/agrothe/wanderer/MazeView$1;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 234
    iget-object v2, p0, Lde/agrothe/wanderer/MazeView$1$2;->this$1:Lde/agrothe/wanderer/MazeView$1;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lde/agrothe/wanderer/MazeView$1;->access$002(Lde/agrothe/wanderer/MazeView$1;Z)Z

    .line 235
    iget-object v2, p0, Lde/agrothe/wanderer/MazeView$1$2;->val$blinkerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    goto :goto_0

    .line 251
    .end local v0    # "maze":Lde/agrothe/wanderer/MazeView$Maze;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 230
    .restart local v0    # "maze":Lde/agrothe/wanderer/MazeView$Maze;
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Lde/agrothe/wanderer/MazeView$Maze;->drawScreenBkgnd(Z)V

    goto :goto_1

    .line 239
    .end local v0    # "maze":Lde/agrothe/wanderer/MazeView$Maze;
    :sswitch_1
    iget-object v2, p0, Lde/agrothe/wanderer/MazeView$1$2;->this$1:Lde/agrothe/wanderer/MazeView$1;

    iget-object v2, v2, Lde/agrothe/wanderer/MazeView$1;->this$0:Lde/agrothe/wanderer/MazeView;

    invoke-static {v2}, Lde/agrothe/wanderer/MazeView;->access$300(Lde/agrothe/wanderer/MazeView;)V

    goto :goto_0

    .line 242
    :sswitch_2
    iget-object v2, p0, Lde/agrothe/wanderer/MazeView$1$2;->this$1:Lde/agrothe/wanderer/MazeView$1;

    iget-object v2, v2, Lde/agrothe/wanderer/MazeView$1;->this$0:Lde/agrothe/wanderer/MazeView;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2, v3, v4}, Lde/agrothe/wanderer/MazeView;->access$400(Lde/agrothe/wanderer/MazeView;II)V

    goto :goto_0

    .line 245
    :sswitch_3
    iget-object v2, p0, Lde/agrothe/wanderer/MazeView$1$2;->this$1:Lde/agrothe/wanderer/MazeView$1;

    iget-object v2, v2, Lde/agrothe/wanderer/MazeView$1;->this$0:Lde/agrothe/wanderer/MazeView;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2, v3}, Lde/agrothe/wanderer/MazeView;->access$200(Lde/agrothe/wanderer/MazeView;I)I

    goto :goto_0

    .line 248
    :sswitch_4
    iget-object v2, p0, Lde/agrothe/wanderer/MazeView$1$2;->this$1:Lde/agrothe/wanderer/MazeView$1;

    iget-object v2, v2, Lde/agrothe/wanderer/MazeView$1;->this$0:Lde/agrothe/wanderer/MazeView;

    iget-object v2, v2, Lde/agrothe/wanderer/MazeView;->_maze:Lde/agrothe/wanderer/MazeView$Maze;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Lde/agrothe/wanderer/MazeView$Maze;->drawWandererBkgnd(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 218
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0xb -> :sswitch_1
        0xe -> :sswitch_4
    .end sparse-switch
.end method
