.class final Lde/agrothe/wanderer/MazeView$2$1;
.super Ljava/lang/Object;
.source "MazeView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/agrothe/wanderer/MazeView$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lde/agrothe/wanderer/MazeView$2;


# direct methods
.method constructor <init>(Lde/agrothe/wanderer/MazeView$2;)V
    .locals 0

    .prologue
    .line 406
    iput-object p1, p0, Lde/agrothe/wanderer/MazeView$2$1;->this$1:Lde/agrothe/wanderer/MazeView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "pDialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "pWhichButton"    # I

    .prologue
    .line 413
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 415
    iget-object v0, p0, Lde/agrothe/wanderer/MazeView$2$1;->this$1:Lde/agrothe/wanderer/MazeView$2;

    iget-object v0, v0, Lde/agrothe/wanderer/MazeView$2;->this$0:Lde/agrothe/wanderer/MazeView;

    invoke-static {}, Lde/agrothe/wanderer/Game;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lde/agrothe/wanderer/MazeView;->loadLevel(I)V

    .line 417
    :cond_0
    return-void
.end method
