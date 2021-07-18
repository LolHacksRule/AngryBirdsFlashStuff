package §2!X§
{
   import §%$!§.§3J§;
   import §,n§.§+!f§;
   import §,n§.§3I§;
   import §1!@§.§&#a§;
   import §9!s§.§!#d§;
   import com.rovio.assets.§@`§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §8#D§ extends §5$<§
   {
       
      
      private var §["h§:MovieClip;
      
      private var §8X§:§>"Y§;
      
      private var §-!H§:Timer;
      
      public function §8#D§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.§["h§ = new §@`§.§4!i§("com.AngryBirds.friendsbar.InvitePlateAsset")());
         this.§["h§.txtName.mouseEnabled = false;
         this.§-!H§ = null;
         tabChildren = false;
      }
      
      override public function update() : void
      {
         if(!data)
         {
            return;
         }
         updatePhoto();
         §&#a§.§^E§(this.§["h§.txtName,data.userName || "");
         if(this.§-!H§)
         {
            this.§3#H§(null);
         }
         else
         {
            this.§["h§.addEventListener(MouseEvent.CLICK,this.§,!r§,false,0,true);
            if(!this.§8X§)
            {
               this.§8X§ = new §>"Y§();
               addChild(this.§8X§.mAssetHolder);
               this.§8X§.§=";§.addEventListener(MouseEvent.CLICK,this.§,!r§,false,0,true);
            }
            this.§8X§.§=";§.visible = true;
         }
         this.§ if§();
      }
      
      override protected function createNewPhoto() : void
      {
         §!v§ = new §3I§(data.userId,"",true,§+!f§.§%#M§,data.profileImageURL);
         §!v§.x = 5;
         §!v§.y = 5;
      }
      
      private function §,!r§(param1:MouseEvent) : void
      {
         if(!this.§-!H§)
         {
            this.§["h§.removeEventListener(MouseEvent.CLICK,this.§,!r§);
            this.§8X§.§=";§.removeEventListener(MouseEvent.CLICK,this.§,!r§);
            this.§-!H§ = new Timer(1000);
            this.§-!H§.addEventListener(TimerEvent.TIMER,this.§3#H§);
            this.§-!H§.start();
            dispatchEvent(new §!#d§(§!#d§.§^h§,this.§!!%§,true));
         }
      }
      
      private function §3#H§(param1:TimerEvent) : void
      {
         if(this.§-!H§)
         {
            this.§-!H§.stop();
            this.§-!H§.removeEventListener(TimerEvent.TIMER,this.§3#H§);
            this.§-!H§ = null;
            this.§["h§.addEventListener(MouseEvent.CLICK,this.§,!r§,false,0,true);
            this.§8X§.§=";§.addEventListener(MouseEvent.CLICK,this.§,!r§);
         }
      }
      
      public function get §!!%§() : §3J§
      {
         return data as §3J§;
      }
      
      private function § if§() : void
      {
         if(this.§8X§)
         {
            setChildIndex(this.§8X§.mAssetHolder,numChildren - 1);
         }
      }
   }
}
