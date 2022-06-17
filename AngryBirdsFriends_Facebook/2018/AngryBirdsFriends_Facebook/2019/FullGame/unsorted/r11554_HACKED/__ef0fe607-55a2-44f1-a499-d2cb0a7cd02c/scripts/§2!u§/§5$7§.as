package §2!u§
{
   import com.rovio.assets.§2"O§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §5$7§ extends §^#h§
   {
       
      
      private var §#"r§:MovieClip;
      
      private var §'!v§:Timer;
      
      public function §5$7§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.§#"r§ = new §2"O§.§`>§("AddFriendsPlate")());
         this.§#"r§.btnAddFriends.addEventListener(MouseEvent.CLICK,this.§0W§);
      }
      
      private function §0W§(param1:Event) : void
      {
         if(!this.§'!v§)
         {
            this.§'!v§ = new Timer(1000);
            this.§'!v§.addEventListener(TimerEvent.TIMER,this.§%#r§);
            this.§'!v§.start();
            §'"a§(§'"a§.§!!8§).§@e§("SIDEBAR");
         }
      }
      
      private function §%#r§(param1:TimerEvent) : void
      {
         if(this.§'!v§)
         {
            this.§'!v§.stop();
            this.§'!v§.removeEventListener(TimerEvent.TIMER,this.§%#r§);
            this.§'!v§ = null;
         }
      }
   }
}
