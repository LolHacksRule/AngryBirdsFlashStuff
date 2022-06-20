package §catch§
{
   import § "v§.§]#?§;
   import § #_§.§?!>§;
   import §!!H§.§-$8§;
   import §2$;§.§;!b§;
   import §4#$§.§2#X§;
   import §4#$§.§5"L§;
   import §?o§.§4#?§;
   import §[#A§.§&n§;
   import §[#A§.§+#<§;
   import §[#v§.§4e§;
   import com.rovio.assets.§=@§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   
   public class § !M§ extends §4e§
   {
      
      private static const §-"`§:String = "CombinedBackground";
      
      private static const §-#s§:String = "CampaignButton";
      
      private static const § #S§:String = "MovieClip_TitleSignContainer";
      
      private static const §+!a§:String = "banner";
      
      private static const §=$%§:String = "LEVEL_SELECTION_BG_";
      
      private static const § #u§:String = "TITLE_SIGN_";
      
      private static const §+!L§:String = "TITLE_TEXT_";
      
      private static const §4L§:String = "BANNER_";
      
      public static const STATE_NAME:String = "TournamentState";
       
      
      public function § !M§(param1:§4#?§, param2:§?!>§, param3:Boolean = false, param4:String = "TournamentState")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         var _loc1_:String = null;
         var _loc9_:MovieClip = null;
         var _loc10_:MovieClip = null;
         var _loc11_:MovieClip = null;
         var _loc12_:MovieClip = null;
         var _loc13_:MovieClip = null;
         var _loc14_:MovieClip = null;
         §@!D§ = new §+#<§(this);
         §@!D§.init(§&n§.§7a§.Views.View_Tournament[0]);
         if(§5"L§.§3"1§.§2o§())
         {
            _loc1_ = §9!b§;
         }
         else
         {
            _loc1_ = §5"L§.§3"1§.tournamentRules.§,d§;
         }
         §-$8§.§#f§(§@!D§.getItemByName("CombinedBackground").mClip,"DEFAULT");
         §-$8§.§#f§(§@!D§.getItemByName("TitleSignContainer").mClip,"DEFAULT");
         §-$8§.§#f§(§@!D§.getItemByName("TextContainer").mClip,"DEFAULT");
         var _loc2_:String = §=$%§ + _loc1_;
         var _loc3_:Class = §=@§.§9!x§(_loc2_,false);
         if(_loc3_)
         {
            _loc9_ = §@!D§.getItemByName("CombinedBackground").mClip;
            _loc9_.removeChild(_loc9_.getChildByName(§-"`§));
            (_loc10_ = new _loc3_()).name = §-"`§;
            _loc9_.addChild(_loc10_);
         }
         var _loc4_:String = § #u§ + _loc1_;
         var _loc5_:Class;
         if(_loc5_ = §=@§.§9!x§(_loc4_,false))
         {
            _loc11_ = §@!D§.getItemByName("TitleSignContainer").mClip;
            _loc11_.removeChild(_loc11_.getChildByName(§ #S§));
            (_loc12_ = new _loc5_()).name = § #S§;
            _loc11_.addChild(_loc12_);
         }
         var _loc6_:String = §+!L§ + _loc1_;
         var _loc7_:Class;
         if(_loc7_ = §=@§.§9!x§(_loc6_,false))
         {
            _loc13_ = §@!D§.getItemByName("TextContainer").mClip;
            _loc13_.removeChild(_loc13_.getChildByName(§`!f§));
            (_loc14_ = new _loc7_()).name = §`!f§;
            _loc13_.addChild(_loc14_);
         }
         var _loc8_:String = "THEME_MUSIC_" + _loc1_;
         if(§=@§.§8!l§(_loc8_))
         {
            §^"a§.§9!h§.§^"C§().§4#v§(_loc8_);
         }
      }
      
      override protected function makeLevelButton(param1:int, param2:Object, param3:§;!b§) : §2#X§
      {
         var _loc4_:§2#X§;
         (_loc4_ = super.makeLevelButton(param1,param2,param3)).§4_§(§5"L§.§3"1§.tournamentRules.§,d§);
         return _loc4_;
      }
      
      override protected function getCampaignButtonFromBG() : SimpleButton
      {
         var _loc1_:MovieClip = §@!D§.getItemByName("CombinedBackground").mClip;
         return SimpleButton((_loc1_.getChildByName(§-"`§) as DisplayObjectContainer).getChildByName(§-#s§));
      }
      
      override public function activate(param1:String) : void
      {
         if(§5"L§.§3"1§.§2o§())
         {
            §2u§ = false;
         }
         super.activate(param1);
      }
   }
}
