package §%"q§
{
   import §[!`§.§#e§;
   import §`!b§.§>"h§;
   import §`"8§.§-!w§;
   import com.rovio.assets.§5"]§;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §3#7§ extends §0!h§
   {
       
      
      private var §""S§:Sprite;
      
      public function §3#7§()
      {
         this.init();
         super();
      }
      
      private function init() : void
      {
         var _loc1_:Class = §5"]§.§4!K§(this.assetName);
         §&"_§ = new _loc1_();
         addChild(§&"_§);
         §&"_§.mcCrown.stop();
         §&"_§.btnBrag.addEventListener(MouseEvent.CLICK,this.§9"b§);
         §&"_§.tabChildren = false;
         §&"_§.tabEnabled = false;
      }
      
      protected function get assetName() : String
      {
         return "com.AngryBirds.friendsbar.LevelScorePlateAsset";
      }
      
      override public function update() : void
      {
         if(!this.§,!p§)
         {
            return;
         }
         super.update();
         §&"_§.gotoAndStop(!!§%"r§ ? 2 : 1);
         §&"_§.btnBrag.visible = this.§,!p§.§'!s§ == true && §-!w§(§;"@§.singleton.dataModel).§'"l§.§8"4§(this.§,!p§.userId);
         §1J§();
         §8"V§(this.§,!p§.userName || "");
         if(this.§,!p§.§["Q§ <= 3 && (this.§,!p§.§#!W§ > 0 || this.§,!p§.§&"8§ > 0))
         {
            §&"_§.mcCrown.visible = true;
            §&"_§.txtRank.visible = false;
            §&"_§.mcCrown.gotoAndStop(this.§,!p§.§["Q§);
         }
         else
         {
            §&"_§.mcCrown.visible = false;
            §&"_§.txtRank.visible = true;
            §&"_§.txtRank.text = this.§,!p§.§["Q§.toString() || "";
         }
         §&"_§.txtScore.text = §3!a§(this.§,!p§.§#!W§) || "0";
         §&"_§.mcStar1.gotoAndStop((this.§,!p§.§",§ >= 1).toString());
         §&"_§.mcStar2.gotoAndStop((this.§,!p§.§",§ >= 2).toString());
         §&"_§.mcStar3.gotoAndStop((this.§,!p§.§",§ >= 3).toString());
         this.updateFalcon();
      }
      
      protected function updateFalcon() : void
      {
         if(this.§,!p§.§&"8§ > 0)
         {
            §&"_§.falconBadge.visible = true;
            §&"_§.falconBadge.gotoAndStop(this.§,!p§.§&"8§ < 50 ? 3 : (this.§,!p§.§&"8§ == 100 ? 1 : 2));
         }
         else
         {
            §&"_§.falconBadge.visible = false;
            §&"_§.falconBadge.stop();
         }
      }
      
      private function §5@§(param1:int) : Number
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
      
      private function §9"b§(param1:Event) : void
      {
         §&"_§.btnBrag.visible = false;
         this.§,!p§.§'!s§ = false;
         dispatchEvent(new §#e§(§#e§.§ -§,true));
      }
      
      public function get §,!p§() : §>"h§
      {
         return data as §>"h§;
      }
   }
}
