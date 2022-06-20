package §;#l§
{
   import §"!n§.§;"x§;
   import §##Z§.§"#Q§;
   import §##Z§.§'#N§;
   import §##Z§.§<$2§;
   import §#,§.§'!`§;
   import §#,§.§]$+§;
   import §#,§.§`"$§;
   import §%!-§.§?l§;
   import §,!Q§.§6"n§;
   import §-$!§.§0$@§;
   import §0!s§.§5!-§;
   import §0!s§.AbstractPopup;
   import §0!s§.§]"Y§;
   import §7R§.§ #`§;
   import §8#K§.§3Z§;
   import §>z§.§#"l§;
   import §?!a§.§4" §;
   import §?!a§.§6#b§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   
   public class §+#i§ extends AbstractPopup
   {
      
      public static const ID:String = "PopupLeagueInfo";
      
      private static var §3$&§:String;
       
      
      private var §!#_§:Array;
      
      private var §&r§:MovieClip;
      
      public function §+#i§(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         this.§!#_§ = [];
         super(param1,param2,§?l§.§3m§.Popups.Popup_LeagueInfo[0],ID);
      }
      
      override protected function init() : void
      {
         var _loc13_:§"#Q§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:* = null;
         var _loc24_:MovieClip = null;
         var _loc25_:§"#Q§ = null;
         var _loc26_:MovieClip = null;
         var _loc27_:MovieClip = null;
         super.init();
         this.§&r§ = §&!M§.mClip;
         var _loc1_:§]"6§ = new §]"6§(this.§&r§.Button_Tab_League_Info,"Container_TabContentLeagueInfo");
         var _loc2_:§]"6§ = new §]"6§(this.§&r§.Button_Tab_League_Profile,"Container_TabContentLeagueProfile");
         var _loc3_:§]$+§ = §&!M§.getItemByName(_loc1_.name) as §]$+§;
         var _loc4_:§]$+§ = §&!M§.getItemByName(_loc2_.name) as §]$+§;
         _loc1_.addEventListener(MouseEvent.CLICK,this.§71§);
         _loc2_.addEventListener(MouseEvent.CLICK,this.§71§);
         this.§!#_§.push(_loc1_);
         this.§!#_§.push(_loc2_);
         this.§&r§.btnClose.addEventListener(MouseEvent.CLICK,this.§-!b§);
         this.§&r§.btnMoreInfo.addEventListener(MouseEvent.CLICK,this.§!"]§);
         var _loc5_:§"#Q§ = §<$2§.§`"H§.currentLeague();
         var _loc6_:Object = §<$2§.§`"H§.§6#+§();
         var _loc7_:Object = §<$2§.§`"H§.§1>§();
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 1;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         for each(_loc13_ in §'#N§.§3!N§)
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
            _loc24_.txtRating.text = _loc13_.§+#s§ + "+";
            _loc24_.txtReward.text = _loc13_.reward;
         }
         _loc24_ = _loc4_.getItemByName("IconLeagueEgg").mClip;
         _loc14_ = _loc4_.getItemByName("NextLeagueIcon").mClip;
         _loc15_ = "";
         if(_loc5_)
         {
            _loc24_.gotoAndStop(_loc5_.id);
            (_loc4_.getItemByName("TextField_LeagueName") as §`"$§).setText(_loc5_.name);
            _loc25_ = §'#N§.§6!>§(_loc5_.id);
            _loc14_.gotoAndStop(_loc25_.id);
            _loc9_ = _loc5_.§+#s§;
            _loc10_ = _loc25_.§+#s§;
            if(_loc5_.name == §'#N§.§#$0§())
            {
               _loc15_ = §'#N§.§-$+§ + "1";
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
               else if(_loc7_ && _loc7_.lr - §'#N§.§+!0§ >= _loc10_)
               {
                  _loc12_ = (_loc11_ = int((_loc7_.lr - _loc10_) / §'#N§.§+!0§)) + 1;
                  if(_loc26_)
                  {
                     _loc26_.visible = true;
                     (_loc26_.getChildByName("txtStarRating") as TextField).text = "" + _loc11_;
                  }
               }
               _loc9_ += §'#N§.§+!0§ * _loc11_;
               _loc10_ += §'#N§.§+!0§ * _loc12_;
               _loc15_ = §'#N§.§-$+§ + _loc12_;
               _loc14_.gotoAndStop(§'#N§.§7!A§);
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
         (_loc4_.getItemByName("TextField_NextLeague") as §`"$§).setText(_loc15_);
         var _loc16_:* = §<$2§.§`"H§.§3"U§() > -1;
         _loc4_.getItemByName("MC_NotInLeague").visible = !_loc16_;
         var _loc17_:String = §4" §.§9# §[§4" §.§&#d§];
         if(_loc7_)
         {
            §;"x§.§+>§((_loc4_.getItemByName("TextField_PlayerName") as §`"$§).§2"<§,!!_loc7_.ni ? _loc7_.ni : (AngryBirdsBase.singleton.dataModel.userProgress as § #`§).userName);
            if(_loc7_.i)
            {
               _loc17_ = _loc7_.i;
            }
            if(_loc7_.lr)
            {
               _loc8_ = _loc7_.lr;
            }
            (_loc4_.getItemByName("TextField_LeagueRating") as §`"$§).setText("" + _loc8_);
         }
         else
         {
            §;"x§.§+>§((_loc4_.getItemByName("TextField_PlayerName") as §`"$§).§2"<§,(AngryBirdsBase.singleton.dataModel.userProgress as § #`§).userName);
         }
         (_loc4_.getItemByName("TextField_LeagueProgressValue_Start") as §`"$§).setText("" + _loc9_);
         (_loc4_.getItemByName("TextField_LeagueProgressValue_Goal") as §`"$§).setText("" + _loc10_);
         var _loc18_:MovieClip;
         var _loc19_:Number = (_loc18_ = (_loc4_.getItemByName("LeagueProgress") as §'!`§).mClip).mcProgress.width;
         var _loc20_:Number = (_loc8_ - _loc9_) / (_loc10_ - _loc9_);
         var _loc21_:Rectangle = new Rectangle(0,0,_loc19_ * _loc20_,_loc4_.getItemByName("LeagueProgress").height);
         _loc18_.mcProgress.scrollRect = _loc21_;
         var _loc22_:MovieClip;
         (_loc22_ = _loc4_.getItemByName("PlayerAvatarBase").mClip).removeChildren();
         var _loc23_:§4" § = new §4" §((AngryBirdsBase.singleton.dataModel.userProgress as § #`§).userID,_loc17_,(AngryBirdsBase.singleton.dataModel.userProgress as § #`§).avatarString,false,§6#b§.§[#+§,§6#b§.§[#+§);
         _loc22_.addChild(_loc23_.§6"q§);
         if(!§3$&§)
         {
            this.§1#Y§(_loc1_.name);
         }
         else
         {
            this.§1#Y§(§3$&§);
         }
      }
      
      private function §!"]§(param1:MouseEvent) : void
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new §+!g§(§#"l§.NORMAL,§]"Y§.§]a§,null,id,this));
      }
      
      private function §-!b§(param1:MouseEvent) : void
      {
         super.close();
      }
      
      protected function §71§(param1:Event) : void
      {
         var _loc2_:String = (param1.target as §]"6§).name;
         if(§3$&§ != _loc2_)
         {
            §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
            this.§1#Y§(_loc2_);
         }
      }
      
      protected function §1#Y§(param1:String) : void
      {
         var _loc3_:§]"6§ = null;
         for each(_loc3_ in this.§!#_§)
         {
            if(_loc3_.name == param1)
            {
               _loc3_.select();
               §3$&§ = param1;
            }
            else
            {
               _loc3_.§throw§();
            }
            (§&!M§.getItemByName(_loc3_.name) as §]$+§).setVisibility(_loc3_.name == param1);
         }
         this.§&r§.btnMoreInfo.visible = param1 == "Container_TabContentLeagueInfo";
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6"n§) : void
      {
         var _loc4_:§5!-§ = null;
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "SLINGSHOT_REWARD_1":
               AngryBirdsBase.singleton.popupManager.openPopup(new §!!'§(§0$@§.SLING_SHOT_BOUNCY.§1#7§,§!!'§.§!w§));
               break;
            case "SLINGSHOT_REWARD_2":
               AngryBirdsBase.singleton.popupManager.openPopup(new §!!'§(§0$@§.SLING_SHOT_DIAMOND.§1#7§,§!!'§.§!w§));
               break;
            case "EDIT_PROFILE":
               _loc4_ = new §4!J§(§#"l§.NORMAL,§]"Y§.TOP);
               AngryBirdsBase.singleton.popupManager.openPopup(_loc4_);
         }
      }
   }
}
