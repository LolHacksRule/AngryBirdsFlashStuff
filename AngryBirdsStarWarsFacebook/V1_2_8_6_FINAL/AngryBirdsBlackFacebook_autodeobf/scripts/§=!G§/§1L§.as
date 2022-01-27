package §=!G§
{
   import §"d§.§%-§;
   import §0"k§.§-"[§;
   import §9"U§.§7"1§;
   import com.rovio.assets.§%!Z§;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §1L§ extends §3"M§
   {
       
      
      private var §9l§:Sprite;
      
      public function §1L§()
      {
         this.init();
         super();
      }
      
      private function init() : void
      {
         var _loc1_:Class = §%!Z§.§;",§(this.assetName);
         §,# § = new _loc1_();
         addChild(§,# §);
         §,# §.mcCrown.stop();
         §,# §.btnBrag.addEventListener(MouseEvent.CLICK,this.§,>§);
         §,# §.tabChildren = false;
         §,# §.tabEnabled = false;
      }
      
      protected function get assetName() : String
      {
         return "com.AngryBirds.friendsbar.LevelScorePlateAsset";
      }
      
      override public function update() : void
      {
         if(!this.§ "F§)
         {
            return;
         }
         super.update();
         §,# §.gotoAndStop(!!§<2§ ? 2 : 1);
         §,# §.btnBrag.visible = this.§ "F§.§2!N§ == true && §7"1§(§4"#§.singleton.dataModel).§6!I§.§9'§(this.§ "F§.userId);
         §0!Q§();
         §[!_§(this.§ "F§.userName || "");
         if(this.§ "F§.§5!b§ <= 3 && (this.§ "F§.§2!2§ > 0 || this.§ "F§.§<!M§ > 0))
         {
            §,# §.mcCrown.visible = true;
            §,# §.txtRank.visible = false;
            §,# §.mcCrown.gotoAndStop(this.§ "F§.§5!b§);
         }
         else
         {
            §,# §.mcCrown.visible = false;
            §,# §.txtRank.visible = true;
            §,# §.txtRank.text = this.§ "F§.§5!b§.toString() || "";
         }
         §,# §.txtScore.text = §=!`§(this.§ "F§.§2!2§) || "0";
         §,# §.mcStar1.gotoAndStop((this.§ "F§.§`-§ >= 1).toString());
         §,# §.mcStar2.gotoAndStop((this.§ "F§.§`-§ >= 2).toString());
         §,# §.mcStar3.gotoAndStop((this.§ "F§.§`-§ >= 3).toString());
         this.updateFalcon();
      }
      
      protected function updateFalcon() : void
      {
         if(this.§ "F§.§<!M§ > 0)
         {
            §,# §.falconBadge.visible = true;
            §,# §.falconBadge.gotoAndStop(this.§ "F§.§<!M§ < 50 ? 3 : (this.§ "F§.§<!M§ == 100 ? 1 : 2));
         }
         else
         {
            §,# §.falconBadge.visible = false;
            §,# §.falconBadge.stop();
         }
      }
      
      private function §24§(param1:int) : Number
      {
         if(param1 <= 0)
         {
            return 0;
         }
         if(param1 < 25)
         {
            return 0.125;
         }
         return Math.floor(param1 / 25) * 0.25;
      }
      
      private function §,>§(param1:Event) : void
      {
         §,# §.btnBrag.visible = false;
         this.§ "F§.§2!N§ = false;
         dispatchEvent(new §%-§(§%-§.§5"§,true));
      }
      
      public function get § "F§() : §-"[§
      {
         return data as §-"[§;
      }
   }
}
