package §2!X§
{
   import com.rovio.assets.§@`§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §[k§ extends §5$<§
   {
       
      
      private var §["h§:MovieClip;
      
      private var §##=§:Timer;
      
      public function §[k§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.§["h§ = new §@`§.§4!i§("AddFriendsPlate")());
         this.§["h§.btnAddFriends.addEventListener(MouseEvent.CLICK,this.§3C§);
      }
      
      private function §3C§(param1:Event) : void
      {
         if(!this.§##=§)
         {
            this.§##=§ = new Timer(1000);
            this.§##=§.addEventListener(TimerEvent.TIMER,this.§;#'§);
            this.§##=§.start();
            §8G§(§8G§.§%#S§).§`p§("SIDEBAR");
         }
      }
      
      private function §;#'§(param1:TimerEvent) : void
      {
         if(this.§##=§)
         {
            this.§##=§.stop();
            this.§##=§.removeEventListener(TimerEvent.TIMER,this.§;#'§);
            this.§##=§ = null;
         }
      }
   }
}
