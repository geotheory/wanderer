.class final Lde/agrothe/wanderer/MazeView$4;
.super Ljava/lang/Object;
.source "MazeView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/agrothe/wanderer/MazeView;->showSettingsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/agrothe/wanderer/MazeView;


# direct methods
.method constructor <init>(Lde/agrothe/wanderer/MazeView;)V
    .locals 0

    .prologue
    .line 1361
    iput-object p1, p0, Lde/agrothe/wanderer/MazeView$4;->this$0:Lde/agrothe/wanderer/MazeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .param p1, "pSeekBar"    # Landroid/widget/SeekBar;
    .param p2, "pValue"    # I
    .param p3, "pByUser"    # Z

    .prologue
    const/4 v3, 0x3

    .line 1369
    sget-object v0, Lde/agrothe/wanderer/MainActivity;->_LOG_TAG:Ljava/lang/String;

    invoke-static {v0, v3}, Lde/agrothe/util/Logging;->isEnabledFor(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1371
    sget-object v0, Lde/agrothe/wanderer/MainActivity;->_LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "val "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lde/agrothe/util/Logging;->log(Ljava/lang/String;ILjava/lang/Object;)V

    .line 1373
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "pSeekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 1380
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "pSeekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 1387
    return-void
.end method
