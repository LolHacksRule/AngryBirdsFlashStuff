package § ""§
{
   import § "v§.§4$4§;
   import § h§.§-!S§;
   import §!!H§.§ $4§;
   import §-"S§.§>#G§;
   import §-"e§.§[9§;
   import §2$;§.§!"e§;
   import §2$;§.§-$5§;
   import §2$;§.§=!Z§;
   import §9!6§.§## §;
   import §9!6§.§?!y§;
   import §9!6§.AbstractPopup;
   import §9x§.§&$<§;
   import §9x§.§7",§;
   import §<8§.§8!g§;
   import §[#A§.§&n§;
   import §^#?§.§#!T§;
   import §^#?§.§2R§;
   import §^#?§.§?#,§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   
   public class §#"r§ extends AbstractPopup
   {
      
      public static const ID:String = "PopupLeagueInfo";
      
      private static var §,"z§:String;
       
      
      private var §6!p§:Array;
      
      private var §3`§:MovieClip;
      
      public function §#"r§(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         this.§6!p§ = [];
         super(param1,param2,§&n§.§7a§.Popups.Popup_LeagueInfo[0],ID);
      }
      
      override protected function init() : void
      {
         var _loc13_:§2R§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:* = null;
         var _loc24_:MovieClip = null;
         var _loc25_:§2R§ = null;
         var _loc26_:MovieClip = null;
         var _loc27_:MovieClip = null;
         super.init();
         this.§3`§ = §'o§.mClip;
         var _loc1_:§%#g§ = new §%#g§(this.§3`§.Button_Tab_League_Info,"Container_TabContentLeagueInfo");
         var _loc2_:§%#g§ = new §%#g§(this.§3`§.Button_Tab_League_Profile,"Container_TabContentLeagueProfile");
         var _loc3_:§!"e§ = §'o§.getItemByName(_loc1_.name) as §!"e§;
         var _loc4_:§!"e§ = §'o§.getItemByName(_loc2_.name) as §!"e§;
         _loc1_.addEventListener(MouseEvent.CLICK,this.§6$B§);
         _loc2_.addEventListener(MouseEvent.CLICK,this.§6$B§);
         this.§6!p§.push(_loc1_);
         this.§6!p§.push(_loc2_);
         this.§3`§.btnClose.addEventListener(MouseEvent.CLICK,this.§-"D§);
         this.§3`§.btnMoreInfo.addEventListener(MouseEvent.CLICK,this.§?!n§);
         var _loc5_:§2R§ = §?#,§.§3"1§.currentLeague();
         var _loc6_:Object = §?#,§.§3"1§.§-#x§();
         var _loc7_:Object = §?#,§.§3"1§.§4"4§();
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 1;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         for each(_loc13_ in §#!T§.§]#%§)
         {
            _loc24_ = _loc3_.getItemByName("mcLeagueInfo" + _loc13_.id.toUpperCase()).mClip;
            if(_loc5_)
            {
               _loc24_.gotoAndStop(_loc5_.id == _loc13_.id ? 2 : 1);
            }
            else
            {
               _loc24_.gotoAndStop(1);
            }
            _loc24_.txtName.text = _loc13_.id;
            _loc24_.txtRating.text = _loc13_.§+9§ + "+";
            _loc24_.txtReward.text = _loc13_.reward;
         }
         _loc24_ = _loc4_.getItemByName("IconLeagueEgg").mClip;
         _loc14_ = _loc4_.getItemByName("NextLeagueIcon").mClip;
         _loc15_ = "";
         if(_loc5_)
         {
            _loc24_.gotoAndStop(_loc5_.id);
            (_loc4_.getItemByName("TextField_LeagueName") as §-$5§).setText(_loc5_.name);
            _loc25_ = §#!T§.§8p§(_loc5_.id);
            _loc14_.gotoAndStop(_loc25_.id);
            _loc9_ = _loc5_.§+9§;
            _loc10_ = _loc25_.§+9§;
            if(_loc5_.name == §#!T§.§]"h§())
            {
               _loc15_ = §#!T§.§4!!§ + "1";
               _loc12_ = 1;
            }
            else
            {
               _loc15_ = _loc25_.name;
            }
            if(_loc12_ > 0)
            {
               if(_loc26_ = _loc24_.getChildByName("StarPromotionIcon") as MovieClip)
               {
                  _loc26_.visible = false;
               }
               if(_loc6_)
               {
                  if(_loc6_.s && _loc6_.s > 0)
                  {
                     _loc12_ = (_loc11_ = _loc6_.s) + 1;
                     if(_loc26_)
                     {
                        _loc26_.visible = true;
                        (_loc26_.getChildByName("txtStarRating") as TextField).text = "" + _loc11_;
                     }
                  }
               }
               else if(_loc7_ && _loc7_.lr - §#!T§.§##§ >= _loc10_)
               {
                  _loc12_ = (_loc11_ = int((_loc7_.lr - _loc10_) / §#!T§.§##§)) + 1;
                  if(_loc26_)
                  {
                     _loc26_.visible = true;
                     (_loc26_.getChildByName("txtStarRating") as TextField).text = "" + _loc11_;
                  }
               }
               _loc9_ += §#!T§.§##§ * _loc11_;
               _loc10_ += §#!T§.§##§ * _loc12_;
               _loc15_ = §#!T§.§4!!§ + _loc12_;
               _loc14_.gotoAndStop(§#!T§.§;#3§);
               if(_loc27_ = _loc14_.getChildByName("StarPromotionIcon") as MovieClip)
               {
                  _loc27_.visible = true;
                  (_loc27_.getChildByName("txtStarRating") as TextField).text = "" + _loc12_;
               }
            }
         }
         else
         {
            _loc24_.gotoAndStop(1);
            _loc14_.gotoAndStop(1);
         }
         (_loc4_.getItemByName("TextField_NextLeague") as §-$5§).setText(_loc15_);
         var _loc16_:* = §?#,§.§3"1§.§ d§() > -1;
         _loc4_.getItemByName("MC_NotInLeague").visible = !_loc16_;
         var _loc17_:String = §&$<§.§5I§[§&$<§.§0"a§];
         if(_loc7_)
         {
            § $4§.§'#d§((_loc4_.getItemByName("TextField_PlayerName") as §-$5§).§>$D§,!!_loc7_.ni ? _loc7_.ni : (AngryBirdsBase.singleton.dataModel.userProgress as §>#G§).userName);
            if(_loc7_.i)
            {
               _loc17_ = _loc7_.i;
            }
            if(_loc7_.lr)
            {
               _loc8_ = _loc7_.lr;
            }
            (_loc4_.getItemByName("TextField_LeagueRating") as §-$5§).setText("" + _loc8_);
         }
         else
         {
            § $4§.§'#d§((_loc4_.getItemByName("TextField_PlayerName") as §-$5§).§>$D§,(AngryBirdsBase.singleton.dataModel.userProgress as §>#G§).userName);
         }
         (_loc4_.getItemByName("TextField_LeagueProgressValue_Start") as §-$5§).setText("" + _loc9_);
         (_loc4_.getItemByName("TextField_LeagueProgressValue_Goal") as §-$5§).setText("" + _loc10_);
         var _loc18_:MovieClip;
         var _loc19_:Number = (_loc18_ = (_loc4_.getItemByName("LeagueProgress") as §=!Z§).mClip).mcProgress.width;
         var _loc20_:Number = (_loc8_ - _loc9_) / (_loc10_ - _loc9_);
         var _loc21_:Rectangle = new Rectangle(0,0,_loc19_ * _loc20_,_loc4_.getItemByName("LeagueProgress").height);
         _loc18_.mcProgress.scrollRect = _loc21_;
         var _loc22_:MovieClip;
         (_loc22_ = _loc4_.getItemByName("PlayerAvatarBase").mClip).removeChildren();
         var _loc23_:§&$<§ = new §&$<§((AngryBirdsBase.singleton.dataModel.userProgress as §>#G§).userID,_loc17_,(AngryBirdsBase.singleton.dataModel.userProgress as §>#G§).avatarString,false,§7",§.§4$6§,§7",§.§4$6§);
         _loc22_.addChild(_loc23_.§0!e§);
         if(!§,"z§)
         {
            this.§`"1§(_loc1_.name);
         }
         else
         {
            this.§`"1§(§,"z§);
         }
      }
      
      private function §?!n§(param1:MouseEvent) : void
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new §>"+§(§-!S§.NORMAL,§## §.§<#k§,null,id,this));
      }
      
      private function §-"D§(param1:MouseEvent) : void
      {
         super.close();
      }
      
      protected function §6$B§(param1:Event) : void
      {
         var _loc2_:String = (param1.target as §%#g§).name;
         if(§,"z§ != _loc2_)
         {
            §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
            this.§`"1§(_loc2_);
         }
      }
      
      protected function §`"1§(param1:String) : void
      {
         var _loc3_:§%#g§ = null;
         for each(_loc3_ in this.§6!p§)
         {
            if(_loc3_.name == param1)
            {
               _loc3_.select();
               §,"z§ = param1;
            }
            else
            {
               _loc3_.§2!9§();
            }
            (§'o§.getItemByName(_loc3_.name) as §!"e§).setVisibility(_loc3_.name == param1);
         }
         this.§3`§.btnMoreInfo.visible = param1 == "Container_TabContentLeagueInfo";
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§8!g§) : void
      {
         var _loc4_:§?!y§ = null;
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "SLINGSHOT_REWARD_1":
               AngryBirdsBase.singleton.popupManager.openPopup(new §-&§(§[9§.SLING_SHOT_BOUNCY.§=#@§,§-&§.§if §));
               break;
            case "SLINGSHOT_REWARD_2":
               AngryBirdsBase.singleton.popupManager.openPopup(new §-&§(§[9§.SLING_SHOT_DIAMOND.§=#@§,§-&§.§if §));
               break;
            case "EDIT_PROFILE":
               _loc4_ = new §<$+§(§-!S§.NORMAL,§## §.TOP);
               AngryBirdsBase.singleton.popupManager.openPopup(_loc4_);
         }
      }
   }
}
