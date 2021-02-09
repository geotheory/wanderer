.class final Lde/agrothe/wanderer/MazeView$SettingsSeekBarListener;
.super Ljava/lang/Object;
.source "MazeView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/agrothe/wanderer/MazeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SettingsSeekBarListener"
.end annotation


# instance fields
.field final _id:I

.field final _key:Ljava/lang/String;

.field final synthetic this$0:Lde/agrothe/wanderer/MazeView;


# direct methods
.method constructor <init>(Lde/agrothe/wanderer/MazeView;ILjava/lang/String;)V
    .locals 0
    .param p2, "pId"    # I
    .param p3, "pKey"    # Ljava/lang/String;

    .prologue
    .line 1439
    iput-object p1, p0, Lde/agrothe/wanderer/MazeView$SettingsSeekBarListener;->this$0:Lde/agrothe/wanderer/MazeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1440
    iput p2, p0, Lde/agrothe/wanderer/MazeView$SettingsSeekBarListener;->_id:I

    .line 1441
    iput-object p3, p0, Lde/agrothe/wanderer/MazeView$SettingsSeekBarListener;->_key:Ljava/lang/String;

    .line 1442
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "pSeekBar"    # Landroid/widget/SeekBar;
    .param p2, "pValue"    # I
    .param p3, "pByUser"    # Z

    .prologue
    .line 1451
    iget-object v0, p0, Lde/agrothe/wanderer/MazeView$SettingsSeekBarListener;->this$0:Lde/agrothe/wanderer/MazeView;

    iget-object v0, v0, Lde/agrothe/wanderer/MazeView;->_sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lde/agrothe/wanderer/MazeView$SettingsSeekBarListener;->_key:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1453
    iget-object v0, p0, Lde/agrothe/wanderer/MazeView$SettingsSeekBarListener;->this$0:Lde/agrothe/wanderer/MazeView;

    iget-object v0, v0, Lde/agrothe/wanderer/MazeView;->_maze:Lde/agrothe/wanderer/MazeView$Maze;

    invoke-virtual {v0}, Lde/agrothe/wanderer/MazeView$Maze;->calculateScrollThreshold()V

    .line 1454
    iget v0, p0, Lde/agrothe/wanderer/MazeView$SettingsSeekBarListener;->_id:I

    packed-switch v0, :pswitch_data_0

    .line 1462
    :goto_0
    :pswitch_0
    return-void

    .line 1459
    :pswitch_1
    iget-object v0, p0, Lde/agrothe/wanderer/MazeView$SettingsSeekBarListener;->this$0:Lde/agrothe/wanderer/MazeView;

    invoke-virtual {v0}, Lde/agrothe/wanderer/MazeView;->calculateBlinkFrequency()V

    goto :goto_0

    .line 1454
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "pSeekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 1469
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "pSeekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 1476
    return-void
.end method
