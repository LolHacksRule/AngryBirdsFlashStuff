package §+W§
{
   import §,#,§.§-n§;
   import §2G§.§?!s§;
   import §2G§.§?$3§;
   import §7"X§.§2"R§;
   import §`"t§.§7"U§;
   import com.rovio.assets.§[a§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §;,§ extends §2!$§
   {
       
      
      private var §"#E§:MovieClip;
      
      private var §#"6§:§9g§;
      
      private var §=$§:Timer;
      
      public function §;,§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addChild(this.§"#E§ = new §[a§.§8#k§("com.AngryBirds.friendsbar.InvitePlateAsset")());
         this.§"#E§.txtName.mouseEnabled = false;
         this.§=$§ = null;
         tabChildren = false;
      }
      
      override public function update() : void
      {
         if(!data)
         {
            return;
         }
         updatePhoto();
         §7"U§.§+$5§(this.§"#E§.txtName,data.userName || "");
         if(this.§=$§)
         {
            this.§""v§(null);
         }
         else
         {
            this.§"#E§.addEventListener(MouseEvent.CLICK,this.§0#f§,false,0,true);
            if(!this.§#"6§)
            {
               this.§#"6§ = new §9g§();
               addChild(this.§#"6§.mAssetHolder);
               this.§#"6§.§,!%§.addEventListener(MouseEvent.CLICK,this.§0#f§,false,0,true);
            }
            this.§#"6§.§,!%§.visible = true;
         }
         this.§=#-§();
      }
      
      override protected function createNewPhoto() : void
      {
         §>"o§ = new §?$3§(data.userId,"",true,§?!s§.§'!n§,data.profileImageURL);
         §>"o§.x = 5;
         §>"o§.y = 5;
      }
      
      private function §0#f§(param1:MouseEvent) : void
      {
         if(!this.§=$§)
         {
            this.§"#E§.removeEventListener(MouseEvent.CLICK,this.§0#f§);
            this.§#"6§.§,!%§.removeEventListener(MouseEvent.CLICK,this.§0#f§);
            this.§=$§ = new Timer(1000);
            this.§=$§.addEventListener(TimerEvent.TIMER,this.§""v§);
            this.§=$§.start();
            dispatchEvent(new §2"R§(§2"R§.§#"p§,this.§["y§,true));
         }
      }
      
      private function §""v§(param1:TimerEvent) : void
      {
         if(this.§=$§)
         {
            this.§=$§.stop();
            this.§=$§.removeEventListener(TimerEvent.TIMER,this.§""v§);
            this.§=$§ = null;
            this.§"#E§.addEventListener(MouseEvent.CLICK,this.§0#f§,false,0,true);
            this.§#"6§.§,!%§.addEventListener(MouseEvent.CLICK,this.§0#f§);
         }
      }
      
      public function get §["y§() : §-n§
      {
         return data as §-n§;
      }
      
      private function §=#-§() : void
      {
         if(this.§#"6§)
         {
            setChildIndex(this.§#"6§.mAssetHolder,numChildren - 1);
         }
      }
   }
}
