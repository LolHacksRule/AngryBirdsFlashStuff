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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         this.§3r§ = new LoadingScreen();
         if(_loc1_)
         {
            super();
            if(!(_loc2_ && this))
            {
               addChild(this.§3r§);
               this.§3r§.name = "Bar";
               if(_loc1_)
               {
                  addEventListener(Event.ENTER_FRAME,this.onResize);
                  if(_loc1_)
                  {
                     addr69:
                     addEventListener(Event.ADDED_TO_STAGE,this.onResize);
                  }
               }
            }
            return;
         }
         §§goto(addr69);
      }
      
      protected function onResize(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(stage)
            {
               if(_loc3_ || _loc3_)
               {
                  width = stage.stageWidth;
                  if(!(_loc2_ && _loc2_))
                  {
                     height = stage.stageHeight;
                     if(_loc3_ || param1)
                     {
                        x = 0;
                        if(_loc3_ || this)
                        {
                        }
                        §§goto(addr88);
                     }
                  }
                  y = 0;
               }
            }
         }
         addr88:
      }
   }
}
