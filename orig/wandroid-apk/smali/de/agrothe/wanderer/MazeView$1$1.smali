.class final Lde/agrothe/wanderer/MazeView$1$1;
.super Ljava/lang/Object;
.source "MazeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/agrothe/wanderer/MazeView$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lde/agrothe/wanderer/MazeView$1;


# direct methods
.method constructor <init>(Lde/agrothe/wanderer/MazeView$1;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lde/agrothe/wanderer/MazeView$1$1;->this$1:Lde/agrothe/wanderer/MazeView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 153
    monitor-enter p0

    .line 157
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 158
    iget-object v7, p0, Lde/agrothe/wanderer/MazeView$1$1;->this$1:Lde/agrothe/wanderer/MazeView$1;

    iget-object v7, v7, Lde/agrothe/wanderer/MazeView$1;->this$0:Lde/agrothe/wanderer/MazeView;

    invoke-virtual {v7}, Lde/agrothe/wanderer/MazeView;->calculateBlinkFrequency()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    iget-object v7, p0, Lde/agrothe/wanderer/MazeView$1$1;->this$1:Lde/agrothe/wanderer/MazeView$1;

    iget-object v7, v7, Lde/agrothe/wanderer/MazeView$1;->this$0:Lde/agrothe/wanderer/MazeView;

    iget-object v6, v7, Lde/agrothe/wanderer/MazeView;->_resources:Landroid/content/res/Resources;

    .line 164
    .local v6, "resources":Landroid/content/res/Resources;
    const v7, 0x7f080005

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 166
    .local v1, "_BLINK_DARK_ALPHA":I
    const v7, 0x7f080006

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 168
    .local v0, "_BLINK_BRIGHT_ALPHA":I
    const v7, 0x7f080004

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 171
    .local v2, "_BLINK_FREQUENCY_DARKEN_WAIT_FACTOR":I
    const/4 v4, 0x0

    .line 172
    .local v4, "darken":Z
    iget-object v7, p0, Lde/agrothe/wanderer/MazeView$1$1;->this$1:Lde/agrothe/wanderer/MazeView$1;

    iget-object v7, v7, Lde/agrothe/wanderer/MazeView$1;->this$0:Lde/agrothe/wanderer/MazeView;

    iget-object v5, v7, Lde/agrothe/wanderer/MazeView;->_gameHandler:Landroid/os/Handler;

    .line 173
    .local v5, "handler":Landroid/os/Handler;
    :goto_1
    iget-object v7, p0, Lde/agrothe/wanderer/MazeView$1$1;->this$1:Lde/agrothe/wanderer/MazeView$1;

    invoke-static {v7}, Lde/agrothe/wanderer/MazeView$1;->access$000(Lde/agrothe/wanderer/MazeView$1;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 175
    monitor-enter p0

    .line 177
    :try_start_2
    sget v7, Lde/agrothe/wanderer/Game;->_howdead:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_3

    .line 179
    const/16 v7, 0xe

    if-nez v4, :cond_1

    const/4 v8, 0x1

    move v4, v8

    :goto_2
    if-eqz v4, :cond_2

    move v8, v1

    :goto_3
    const/4 v9, 0x0

    invoke-virtual {v5, v7, v8, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 184
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 198
    :cond_0
    return-void

    .line 161
    .end local v0    # "_BLINK_BRIGHT_ALPHA":I
    .end local v1    # "_BLINK_DARK_ALPHA":I
    .end local v2    # "_BLINK_FREQUENCY_DARKEN_WAIT_FACTOR":I
    .end local v4    # "darken":Z
    .end local v5    # "handler":Landroid/os/Handler;
    .end local v6    # "resources":Landroid/content/res/Resources;
    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v7

    .restart local v0    # "_BLINK_BRIGHT_ALPHA":I
    .restart local v1    # "_BLINK_DARK_ALPHA":I
    .restart local v2    # "_BLINK_FREQUENCY_DARKEN_WAIT_FACTOR":I
    .restart local v4    # "darken":Z
    .restart local v5    # "handler":Landroid/os/Handler;
    .restart local v6    # "resources":Landroid/content/res/Resources;
    :cond_1
    move v4, v10

    .line 179
    goto :goto_2

    :cond_2
    move v8, v0

    goto :goto_3

    .line 189
    :cond_3
    :try_start_4
    iget-object v7, p0, Lde/agrothe/wanderer/MazeView$1$1;->this$1:Lde/agrothe/wanderer/MazeView$1;

    iget-object v7, v7, Lde/agrothe/wanderer/MazeView$1;->this$0:Lde/agrothe/wanderer/MazeView;

    iget v3, v7, Lde/agrothe/wanderer/MazeView;->_blinkFrequency:I

    .line 190
    .local v3, "blinkFrequency":I
    if-eqz v4, :cond_4

    div-int v7, v3, v2

    int-to-long v7, v7

    :goto_4
    invoke-virtual {p0, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 196
    .end local v3    # "blinkFrequency":I
    :goto_5
    :try_start_5
    monitor-exit p0

    goto :goto_1

    :catchall_1
    move-exception v7

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v7

    .line 190
    .restart local v3    # "blinkFrequency":I
    :cond_4
    int-to-long v7, v3

    goto :goto_4

    .line 195
    .end local v3    # "blinkFrequency":I
    :catch_0
    move-exception v7

    goto :goto_5

    .line 160
    .end local v0    # "_BLINK_BRIGHT_ALPHA":I
    .end local v1    # "_BLINK_DARK_ALPHA":I
    .end local v2    # "_BLINK_FREQUENCY_DARKEN_WAIT_FACTOR":I
    .end local v4    # "darken":Z
    .end local v5    # "handler":Landroid/os/Handler;
    .end local v6    # "resources":Landroid/content/res/Resources;
    :catch_1
    move-exception v7

    goto :goto_0
.end method
