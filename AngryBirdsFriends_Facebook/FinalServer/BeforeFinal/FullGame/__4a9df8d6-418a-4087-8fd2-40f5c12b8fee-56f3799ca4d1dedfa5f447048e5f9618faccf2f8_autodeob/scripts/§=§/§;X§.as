package §=§#0
{
   import §!#C§.§#"E§;
   import §"!n§.§;"x§;
   import §?!]§.§6#k§;
   import §?!a§.§-=§;
   import §?!a§.§6#b§;
   import com.rovio.assets.§6$A§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §;X§ extends § #i§
   {
       
      
      private var §8"@§:MovieClip;
      
      private var §3#P§:§`#H§;
      
      private var §'#d§:Timer;
      
      public function §;X§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.§8"@§ = new §6$A§.§1!m§("com.AngryBirds.friendsbar.InvitePlateAsset")());
         this.§8"@§.txtName.mouseEnabled = false;
         this.§'#d§ = null;
         tabChildren = false;
      }
      
      override public function update() : void
      {
         if(!data)
         {
            return;
         }
         updatePhoto();
         §;"x§.§+>§(this.§8"@§.txtName,data.userName || "");
         if(this.§'#d§)
         {
            this.§;"_§(null);
         }
         else
         {
            this.§8"@§.addEventListener(MouseEvent.CLICK,this.§;!g§,false,0,true);
            if(!this.§3#P§)
            {
               this.§3#P§ = new §`#H§();
               addChild(this.§3#P§.mAssetHolder);
               this.§3#P§.§?#c§.addEventListener(MouseEvent.CLICK,this.§;!g§,false,0,true);
            }
            this.§3#P§.§?#c§.visible = true;
         }
         this.§-!k§();
      }
      
      override protected function createNewPhoto() : void
      {
         §7#j§ = new §-=§(data.userId,"",true,§6#b§.§?^§,data.profileImageURL);
         §7#j§.x = 5;
         §7#j§.y = 5;
      }
      
      private function §;!g§(param1:MouseEvent) : void
      {
         if(!this.§'#d§)
         {
            this.§8"@§.removeEventListener(MouseEvent.CLICK,this.§;!g§);
            this.§3#P§.§?#c§.removeEventListener(MouseEvent.CLICK,this.§;!g§);
            this.§'#d§ = new Timer(1000);
            this.§'#d§.addEventListener(TimerEvent.TIMER,this.§;"_§);
            this.§'#d§.start();
            dispatchEvent(new §6#k§(§6#k§.§^"$§,this.§;!P§,true));
         }
      }
      
      private function §;"_§(param1:TimerEvent) : void
      {
         if(this.§'#d§)
         {
            this.§'#d§.stop();
            this.§'#d§.removeEventListener(TimerEvent.TIMER,this.§;"_§);
            this.§'#d§ = null;
            this.§8"@§.addEventListener(MouseEvent.CLICK,this.§;!g§,false,0,true);
            this.§3#P§.§?#c§.addEventListener(MouseEvent.CLICK,this.§;!g§);
         }
      }
      
      public function get §;!P§() : §#"E§
      {
         return data as §#"E§;
      }
      
      private function §-!k§() : void
      {
         if(this.§3#P§)
         {
            setChildIndex(this.§3#P§.mAssetHolder,numChildren - 1);
         }
      }
   }
}
