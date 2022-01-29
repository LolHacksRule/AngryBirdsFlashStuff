package §?P§
{
   import § %§.§1Q§;
   import §1!=§.AbstractPopup;
   import §@!M§.§!"p§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class EggCollectedPopup extends AbstractPopup
   {
      
      public static const ID:String = "EggCollectedPopup";
      
      private static var §`+§:String;
       
      
      private var §0!Q§:MovieClip;
      
      public function EggCollectedPopup(param1:int, param2:int, param3:String)
      {
         super(param1,param2,§1Q§.§5T§.Views.PopupView_EggFound[0],ID);
         §`+§ = param3;
      }
      
      override protected function init() : void
      {
         this.§0!Q§ = §,#2§.mClip;
         if(§`+§.indexOf("300") != -1)
         {
            this.§0!Q§.spin.visible = false;
         }
         else
         {
            this.§0!Q§.spin.visible = true;
         }
         this.§0!Q§.EasterEgg.gotoAndStop(§`+§);
         §!"p§.playSound("goldenegg",§!"p§.§+!;§);
         this.§0!Q§.gotoAndPlay(1);
         this.§0!Q§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         if(this.§0!Q§.currentFrame == this.§0!Q§.totalFrames)
         {
            this.§0!Q§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            this.§0!Q§.stop();
            close();
         }
      }
   }
}
