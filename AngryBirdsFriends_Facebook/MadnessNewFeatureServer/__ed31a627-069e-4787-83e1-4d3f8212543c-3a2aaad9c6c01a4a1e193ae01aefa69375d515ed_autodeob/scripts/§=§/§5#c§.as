package §=§#0
{
   import com.rovio.assets.§6$A§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §5#c§ extends § #i§
   {
       
      
      private var §8"@§:MovieClip;
      
      private var §[# §:Timer;
      
      public function §5#c§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.§8"@§ = new §6$A§.§1!m§("AddFriendsPlate")());
         this.§8"@§.btnAddFriends.addEventListener(MouseEvent.CLICK,this.§@!,§);
      }
      
      private function §@!,§(param1:Event) : void
      {
         if(!this.§[# §)
         {
            this.§[# § = new Timer(1000);
            this.§[# §.addEventListener(TimerEvent.TIMER,this.§2!V§);
            this.§[# §.start();
            § #v§(§ #v§.§1!!§).§3#X§("SIDEBAR");
         }
      }
      
      private function §2!V§(param1:TimerEvent) : void
      {
         if(this.§[# §)
         {
            this.§[# §.stop();
            this.§[# §.removeEventListener(TimerEvent.TIMER,this.§2!V§);
            this.§[# § = null;
         }
      }
   }
}
