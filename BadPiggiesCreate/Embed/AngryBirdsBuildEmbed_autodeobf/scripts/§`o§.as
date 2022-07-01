package
{
   import com.rovio.assets.LoadingScreen;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §`o§ extends Sprite
   {
       
      
      private var §3r§:LoadingScreen;
      
      public function §`o§()
      {
         this.§3r§ = new LoadingScreen();
         super();
         addChild(this.§3r§);
         this.§3r§.name = "Bar";
         addEventListener(Event.ENTER_FRAME,this.onResize);
         addEventListener(Event.ADDED_TO_STAGE,this.onResize);
      }
      
      protected function onResize(param1:Event) : void
      {
         if(stage)
         {
            width = stage.stageWidth;
            height = stage.stageHeight;
            x = 0;
            y = 0;
         }
      }
   }
}
