package §+W§
{
   import com.rovio.assets.§[a§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §[$$§ extends §2!$§
   {
       
      
      private var §"#E§:MovieClip;
      
      private var §=!+§:Timer;
      
      public function §[$$§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.§"#E§ = new §[a§.§8#k§("AddFriendsPlate")());
         this.§"#E§.btnAddFriends.addEventListener(MouseEvent.CLICK,this.§#!I§);
      }
      
      private function §#!I§(param1:Event) : void
      {
         if(!this.§=!+§)
         {
            this.§=!+§ = new Timer(1000);
            this.§=!+§.addEventListener(TimerEvent.TIMER,this.§>n§);
            this.§=!+§.start();
            §@z§(§@z§.§ !D§).§!"O§("SIDEBAR");
         }
      }
      
      private function §>n§(param1:TimerEvent) : void
      {
         if(this.§=!+§)
         {
            this.§=!+§.stop();
            this.§=!+§.removeEventListener(TimerEvent.TIMER,this.§>n§);
            this.§=!+§ = null;
         }
      }
   }
}
