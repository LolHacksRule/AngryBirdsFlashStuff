package §2V§
{
   import §'!U§.§0!?§;
   import §+!d§.§3§;
   import §,n§.§+!f§;
   import §,n§.§?#!§;
   import §1!@§.§&#a§;
   import §4q§.§!#Q§;
   import §6"r§.§0"<§;
   import §6"r§.§="T§;
   import §6"r§.§]$!§;
   import §7g§.§2N§;
   import §7g§.§4!q§;
   import §7g§.§`!b§;
   import §8§.§#$+§;
   import §<!O§.§@#`§;
   import §?"R§.§[W§;
   import §^!,§.§8!H§;
   import §^!,§.§<d§;
   import §^!,§.AbstractPopup;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   
   public class §'$-§ extends AbstractPopup
   {
      
      public static const ID:String = "PopupLeagueInfo";
      
      private static var §!!3§:String;
       
      
      private var §>!!§:Array;
      
      private var §8!J§:MovieClip;
      
      public function §'$-§(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         this.§>!!§ = [];
         super(param1,param2,§@#`§.§#!c§.Popups.Popup_LeagueInfo[0],ID);
      }
      
      override protected function init() : void
      {
         var _loc13_:§2N§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:* = null;
         var _loc24_:MovieClip = null;
         var _loc25_:§2N§ = null;
         var _loc26_:MovieClip = null;
         var _loc27_:MovieClip = null;
         super.init();
         this.§8!J§ = §7!j§.mClip;
         var _loc1_:§;a§ = new §;a§(this.§8!J§.Button_Tab_League_Info,"Container_TabContentLeagueInfo");
         var _loc2_:§;a§ = new §;a§(this.§8!J§.Button_Tab_League_Profile,"Container_TabContentLeagueProfile");
         var _loc3_:§0"<§ = §7!j§.getItemByName(_loc1_.name) as §0"<§;
         var _loc4_:§0"<§ = §7!j§.getItemByName(_loc2_.name) as §0"<§;
         _loc1_.addEventListener(MouseEvent.CLICK,this.§-$§);
         _loc2_.addEventListener(MouseEvent.CLICK,this.§-$§);
         this.§>!!§.push(_loc1_);
         this.§>!!§.push(_loc2_);
         this.§8!J§.btnClose.addEventListener(MouseEvent.CLICK,this.§="R§);
         this.§8!J§.btnMoreInfo.addEventListener(MouseEvent.CLICK,this.§2!=§);
         var _loc5_:§2N§ = §4!q§.§3!]§.§+"s§();
         var _loc6_:Object = §4!q§.§3!]§.§2!N§();
         var _loc7_:Object = §4!q§.§3!]§.§5"9§();
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 1;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         for each(_loc13_ in §`!b§.§0#J§)
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
            _loc24_.txtRating.text = _loc13_.§[!P§ + "+";
            _loc24_.txtReward.text = _loc13_.§+$3§;
         }
         _loc24_ = _loc4_.getItemByName("IconLeagueEgg").mClip;
         _loc14_ = _loc4_.getItemByName("NextLeagueIcon").mClip;
         _loc15_ = "";
         if(_loc5_)
         {
            _loc24_.gotoAndStop(_loc5_.id);
            (_loc4_.getItemByName("TextField_LeagueName") as §]$!§).setText(_loc5_.name);
            _loc25_ = §`!b§.§<9§(_loc5_.id);
            _loc14_.gotoAndStop(_loc25_.id);
            _loc9_ = _loc5_.§[!P§;
            _loc10_ = _loc25_.§[!P§;
            if(_loc5_.name == §`!b§.§#!a§())
            {
               _loc15_ = §`!b§.§6#<§ + "1";
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
               else if(_loc7_ && _loc7_.lr - §`!b§.§3!-§ >= _loc10_)
               {
                  _loc12_ = (_loc11_ = int((_loc7_.lr - _loc10_) / §`!b§.§3!-§)) + 1;
                  if(_loc26_)
                  {
                     _loc26_.visible = true;
                     (_loc26_.getChildByName("txtStarRating") as TextField).text = "" + _loc11_;
                  }
               }
               _loc9_ += §`!b§.§3!-§ * _loc11_;
               _loc10_ += §`!b§.§3!-§ * _loc12_;
               _loc15_ = §`!b§.§6#<§ + _loc12_;
               _loc14_.gotoAndStop(§`!b§.§8#y§);
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
         (_loc4_.getItemByName("TextField_NextLeague") as §]$!§).setText(_loc15_);
         var _loc16_:* = §4!q§.§3!]§.§&$0§() > -1;
         _loc4_.getItemByName("MC_NotInLeague").visible = !_loc16_;
         var _loc17_:String = §?#!§.§@$6§[§?#!§.§8"N§];
         if(_loc7_)
         {
            §&#a§.§^E§((_loc4_.getItemByName("TextField_PlayerName") as §]$!§).§@]§,!!_loc7_.ni ? _loc7_.ni : (AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§).userName);
            if(_loc7_.i)
            {
               _loc17_ = _loc7_.i;
            }
            if(_loc7_.lr)
            {
               _loc8_ = _loc7_.lr;
            }
            (_loc4_.getItemByName("TextField_LeagueRating") as §]$!§).setText("" + _loc8_);
         }
         else
         {
            §&#a§.§^E§((_loc4_.getItemByName("TextField_PlayerName") as §]$!§).§@]§,(AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§).userName);
         }
         (_loc4_.getItemByName("TextField_LeagueProgressValue_Start") as §]$!§).setText("" + _loc9_);
         (_loc4_.getItemByName("TextField_LeagueProgressValue_Goal") as §]$!§).setText("" + _loc10_);
         var _loc18_:MovieClip;
         var _loc19_:Number = (_loc18_ = (_loc4_.getItemByName("LeagueProgress") as §="T§).mClip).mcProgress.width;
         var _loc20_:Number = (_loc8_ - _loc9_) / (_loc10_ - _loc9_);
         var _loc21_:Rectangle = new Rectangle(0,0,_loc19_ * _loc20_,_loc4_.getItemByName("LeagueProgress").height);
         _loc18_.mcProgress.scrollRect = _loc21_;
         var _loc22_:MovieClip;
         (_loc22_ = _loc4_.getItemByName("PlayerAvatarBase").mClip).removeChildren();
         var _loc23_:§?#!§ = new §?#!§((AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§).userID,_loc17_,(AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§).avatarString,false,§+!f§.§2!2§,§+!f§.§2!2§);
         _loc22_.addChild(_loc23_.§"#M§);
         if(!§!!3§)
         {
            this.§&w§(_loc1_.name);
         }
         else
         {
            this.§&w§(§!!3§);
         }
      }
      
      private function §2!=§(param1:MouseEvent) : void
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new §,"e§(§[W§.NORMAL,§<d§.§8"K§,null,id,this));
      }
      
      private function §="R§(param1:MouseEvent) : void
      {
         super.close();
      }
      
      protected function §-$§(param1:Event) : void
      {
         var _loc2_:String = (param1.target as §;a§).name;
         if(§!!3§ != _loc2_)
         {
            §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
            this.§&w§(_loc2_);
         }
      }
      
      protected function §&w§(param1:String) : void
      {
         null;
         var _loc3_:§;a§ = null;
         for each(_loc3_ in this.§>!!§)
         {
            if(_loc3_.name == param1)
            {
               _loc3_.select();
               §!!3§ = param1;
            }
            else
            {
               _loc3_.§!!?§();
            }
            (§7!j§.getItemByName(_loc3_.name) as §0"<§).setVisibility(_loc3_.name == param1);
         }
         this.§8!J§.btnMoreInfo.visible = param1 == "Container_TabContentLeagueInfo";
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§0!?§) : void
      {
         var _loc4_:§8!H§ = null;
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "SLINGSHOT_REWARD_1":
               AngryBirdsBase.singleton.popupManager.openPopup(new §%#E§(§3#8§.SLING_SHOT_BOUNCY.§"!E§,§%#E§.§'!r§));
               break;
            case "SLINGSHOT_REWARD_2":
               AngryBirdsBase.singleton.popupManager.openPopup(new §%#E§(§3#8§.SLING_SHOT_DIAMOND.§"!E§,§%#E§.§'!r§));
               break;
            case "EDIT_PROFILE":
               _loc4_ = new §+" §(§[W§.NORMAL,§<d§.TOP);
               AngryBirdsBase.singleton.popupManager.openPopup(_loc4_);
         }
      }
   }
}
