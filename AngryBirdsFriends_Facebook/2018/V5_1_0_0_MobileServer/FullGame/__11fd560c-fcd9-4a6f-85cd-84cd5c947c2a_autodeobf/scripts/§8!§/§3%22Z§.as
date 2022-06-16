package §8!§
{
   import com.rovio.assets.§!"f§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §3"Z§ extends §2$-§
   {
       
      
      private var §`!!§:MovieClip;
      
      private var §"$0§:Timer;
      
      public function §3"Z§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.§`!!§ = new §!"f§.§##?§("AddFriendsPlate")());
         this.§`!!§.btnAddFriends.addEventListener(MouseEvent.CLICK,this.§`$$§);
      }
      
      private function §`$$§(param1:Event) : void
      {
         if(!this.§"$0§)
         {
            this.§"$0§ = new Timer(1000);
            this.§"$0§.addEventListener(TimerEvent.TIMER,this.§2#`§);
            this.§"$0§.start();
            §,A§(§,A§.§2#O§).§ !a§("SIDEBAR");
         }
      }
      
      private function §2#`§(param1:TimerEvent) : void
      {
         if(this.§"$0§)
         {
            this.§"$0§.stop();
            this.§"$0§.removeEventListener(TimerEvent.TIMER,this.§2#`§);
            this.§"$0§ = null;
         }
      }
   }
}
