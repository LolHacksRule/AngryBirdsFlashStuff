package §1"a§
{
   import §"k§.§5"2§;
   import §,"N§.§@#B§;
   import §]Q§.§&#P§;
   import com.rovio.assets.§5_§;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §9#+§ extends §"!w§
   {
       
      
      private var §="#§:Sprite;
      
      public function §9#+§()
      {
         this.init();
         super();
      }
      
      private function init() : void
      {
         var _loc1_:Class = §5_§.§`"G§(this.assetName);
         §5!-§ = new _loc1_();
         addChild(§5!-§);
         §5!-§.mcCrown.stop();
         §5!-§.btnBrag.addEventListener(MouseEvent.CLICK,this.§!r§);
         §5!-§.tabChildren = false;
         §5!-§.tabEnabled = false;
      }
      
      protected function get assetName() : String
      {
         return "com.AngryBirds.friendsbar.LevelScorePlateAsset";
      }
      
      override public function update() : void
      {
         if(!this.§-!L§)
         {
            return;
         }
         super.update();
         §5!-§.gotoAndStop(!!§?r§ ? 2 : 1);
         §5!-§.btnBrag.visible = this.§-!L§.§-!p§ == true && §@#B§(§4#;§.singleton.dataModel).§;!A§.§[!D§(this.§-!L§.userId);
         §<"9§();
         §^"d§(this.§-!L§.userName || "");
         if(this.§-!L§.§9!<§ <= 3 && (this.§-!L§.§@"0§ > 0 || this.§-!L§.§3H§ > 0))
         {
            §5!-§.mcCrown.visible = true;
            §5!-§.txtRank.visible = false;
            §5!-§.mcCrown.gotoAndStop(this.§-!L§.§9!<§);
         }
         else
         {
            §5!-§.mcCrown.visible = false;
            §5!-§.txtRank.visible = true;
            §5!-§.txtRank.text = this.§-!L§.§9!<§.toString() || "";
         }
         §5!-§.txtScore.text = §@#F§(this.§-!L§.§@"0§) || "0";
         §5!-§.mcStar1.gotoAndStop((this.§-!L§.§<L§ >= 1).toString());
         §5!-§.mcStar2.gotoAndStop((this.§-!L§.§<L§ >= 2).toString());
         §5!-§.mcStar3.gotoAndStop((this.§-!L§.§<L§ >= 3).toString());
         this.updateFalcon();
      }
      
      protected function updateFalcon() : void
      {
         if(this.§-!L§.§3H§ > 0)
         {
            §5!-§.falconBadge.visible = true;
            §5!-§.falconBadge.gotoAndStop(this.§-!L§.§3H§ < 50 ? 3 : (this.§-!L§.§3H§ == 100 ? 1 : 2));
         }
         else
         {
            §5!-§.falconBadge.visible = false;
            §5!-§.falconBadge.stop();
         }
      }
      
      private function §1[§(param1:int) : Number
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
      
      private function §!r§(param1:Event) : void
      {
         §5!-§.btnBrag.visible = false;
         this.§-!L§.§-!p§ = false;
         dispatchEvent(new §&#P§(§&#P§.§10§,true));
      }
      
      public function get §-!L§() : §5"2§
      {
         return data as §5"2§;
      }
   }
}
