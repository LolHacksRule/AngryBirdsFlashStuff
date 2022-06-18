package §3#q§
{
   import com.rovio.assets.§=@§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §^!7§ extends §8#>§
   {
       
      
      private var §'!L§:MovieClip;
      
      private var §<#C§:Timer;
      
      public function §^!7§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.§'!L§ = new §=@§.§9!x§("AddFriendsPlate")());
         this.§'!L§.btnAddFriends.addEventListener(MouseEvent.CLICK,this.§]"^§);
      }
      
      private function §]"^§(param1:Event) : void
      {
         if(!this.§<#C§)
         {
            this.§<#C§ = new Timer(1000);
            this.§<#C§.addEventListener(TimerEvent.TIMER,this.§%p§);
            this.§<#C§.start();
            §^"a§(§^"a§.§9!h§).§31§("SIDEBAR");
         }
      }
      
      private function §%p§(param1:TimerEvent) : void
      {
         if(this.§<#C§)
         {
            this.§<#C§.stop();
            this.§<#C§.removeEventListener(TimerEvent.TIMER,this.§%p§);
            this.§<#C§ = null;
         }
      }
   }
}
