package §@r§
{
   import § %§.§1Q§;
   import §%#w§.§2#s§;
   import §%#w§.§4$'§;
   import §%#w§.§?"z§;
   import §+$?§.§4!+§;
   import §+$?§.§<"`§;
   import §-!S§.§##>§;
   import §1!=§.§%#;§;
   import §1!=§.AbstractPopup;
   import §1!=§.§^"U§;
   import §3#T§.§'§;
   import §4"R§.§4"c§;
   import §<h§.§%M§;
   import §<h§.§@N§;
   import §<h§.§[#K§;
   import §?P§.§]"$§;
   import §@!M§.§!"p§;
   import §[#[§.§=#Q§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   
   public class §=T§ extends AbstractPopup
   {
      
      public static const ID:String = "PopupLeagueInfo";
      
      private static var §-6§:String;
       
      
      private var §4!x§:Array;
      
      private var §0!Q§:MovieClip;
      
      public function §=T§(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         this.§4!x§ = [];
         super(param1,param2,§1Q§.§5T§.Popups.Popup_LeagueInfo[0],ID);
      }
      
      override protected function init() : void
      {
         var _loc13_:§4$'§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:* = null;
         var _loc24_:MovieClip = null;
         var _loc25_:§4$'§ = null;
         var _loc26_:MovieClip = null;
         var _loc27_:MovieClip = null;
         super.init();
         this.§0!Q§ = §,#2§.mClip;
         var _loc1_:§+"i§ = new §+"i§(this.§0!Q§.Button_Tab_League_Info,"Container_TabContentLeagueInfo");
         var _loc2_:§+"i§ = new §+"i§(this.§0!Q§.Button_Tab_League_Profile,"Container_TabContentLeagueProfile");
         var _loc3_:§[#K§ = §,#2§.getItemByName(_loc1_.name) as §[#K§;
         var _loc4_:§[#K§ = §,#2§.getItemByName(_loc2_.name) as §[#K§;
         _loc1_.addEventListener(MouseEvent.CLICK,this.§'"M§);
         _loc2_.addEventListener(MouseEvent.CLICK,this.§'"M§);
         this.§4!x§.push(_loc1_);
         this.§4!x§.push(_loc2_);
         this.§0!Q§.btnClose.addEventListener(MouseEvent.CLICK,this.§-"F§);
         this.§0!Q§.btnMoreInfo.addEventListener(MouseEvent.CLICK,this.§1#u§);
         var _loc5_:§4$'§ = §2#s§.§6!§.currentLeague();
         var _loc6_:Object = §2#s§.§6!§.§]e§();
         var _loc7_:Object = §2#s§.§6!§.§5"Y§();
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 1;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         for each(_loc13_ in §?"z§.§%#V§)
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
            _loc24_.txtRating.text = _loc13_.§[#_§ + "+";
            _loc24_.txtReward.text = _loc13_.reward;
         }
         _loc24_ = _loc4_.getItemByName("IconLeagueEgg").mClip;
         _loc14_ = _loc4_.getItemByName("NextLeagueIcon").mClip;
         _loc15_ = "";
         if(_loc5_)
         {
            _loc24_.gotoAndStop(_loc5_.id);
            (_loc4_.getItemByName("TextField_LeagueName") as §%M§).setText(_loc5_.name);
            _loc25_ = §?"z§.§5?§(_loc5_.id);
            _loc14_.gotoAndStop(_loc25_.id);
            _loc9_ = _loc5_.§[#_§;
            _loc10_ = _loc25_.§[#_§;
            if(_loc5_.name == §?"z§.§"#S§())
            {
               _loc15_ = §?"z§.§5"I§ + "1";
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
               else if(_loc7_ && _loc7_.lr - §?"z§.§ "§ >= _loc10_)
               {
                  _loc12_ = (_loc11_ = int((_loc7_.lr - _loc10_) / §?"z§.§ "§)) + 1;
                  if(_loc26_)
                  {
                     _loc26_.visible = true;
                     (_loc26_.getChildByName("txtStarRating") as TextField).text = "" + _loc11_;
                  }
               }
               _loc9_ += §?"z§.§ "§ * _loc11_;
               _loc10_ += §?"z§.§ "§ * _loc12_;
               _loc15_ = §?"z§.§5"I§ + _loc12_;
               _loc14_.gotoAndStop(§?"z§.§-3§);
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
         (_loc4_.getItemByName("TextField_NextLeague") as §%M§).setText(_loc15_);
         var _loc16_:* = §2#s§.§6!§.§^H§() > -1;
         _loc4_.getItemByName("MC_NotInLeague").visible = !_loc16_;
         var _loc17_:String = §<"`§.§,;§[§<"`§.§8"P§];
         if(_loc7_)
         {
            §=#Q§.§0$,§((_loc4_.getItemByName("TextField_PlayerName") as §%M§).§4!"§,!!_loc7_.ni ? _loc7_.ni : (AngryBirdsBase.singleton.dataModel.userProgress as §##>§).userName);
            if(_loc7_.i)
            {
               _loc17_ = _loc7_.i;
            }
            if(_loc7_.lr)
            {
               _loc8_ = _loc7_.lr;
            }
            (_loc4_.getItemByName("TextField_LeagueRating") as §%M§).setText("" + _loc8_);
         }
         else
         {
            §=#Q§.§0$,§((_loc4_.getItemByName("TextField_PlayerName") as §%M§).§4!"§,(AngryBirdsBase.singleton.dataModel.userProgress as §##>§).userName);
         }
         (_loc4_.getItemByName("TextField_LeagueProgressValue_Start") as §%M§).setText("" + _loc9_);
         (_loc4_.getItemByName("TextField_LeagueProgressValue_Goal") as §%M§).setText("" + _loc10_);
         var _loc18_:MovieClip;
         var _loc19_:Number = (_loc18_ = (_loc4_.getItemByName("LeagueProgress") as §@N§).mClip).mcProgress.width;
         var _loc20_:Number = (_loc8_ - _loc9_) / (_loc10_ - _loc9_);
         var _loc21_:Rectangle = new Rectangle(0,0,_loc19_ * _loc20_,_loc4_.getItemByName("LeagueProgress").height);
         _loc18_.mcProgress.scrollRect = _loc21_;
         var _loc22_:MovieClip;
         (_loc22_ = _loc4_.getItemByName("PlayerAvatarBase").mClip).removeChildren();
         var _loc23_:§<"`§ = new §<"`§((AngryBirdsBase.singleton.dataModel.userProgress as §##>§).userID,_loc17_,(AngryBirdsBase.singleton.dataModel.userProgress as §##>§).avatarString,false,§4!+§.§,"7§,§4!+§.§,"7§);
         _loc22_.addChild(_loc23_.§'#b§);
         if(!§-6§)
         {
            this.§+#V§(_loc1_.name);
         }
         else
         {
            this.§+#V§(§-6§);
         }
      }
      
      private function §1#u§(param1:MouseEvent) : void
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new §8#j§(§]"$§.NORMAL,§^"U§.§-#s§,null,id,this));
      }
      
      private function §-"F§(param1:MouseEvent) : void
      {
         super.close();
      }
      
      protected function §'"M§(param1:Event) : void
      {
         var _loc2_:String = (param1.target as §+"i§).name;
         if(§-6§ != _loc2_)
         {
            §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
            this.§+#V§(_loc2_);
         }
      }
      
      protected function §+#V§(param1:String) : void
      {
         var _loc3_:§+"i§ = null;
         for each(_loc3_ in this.§4!x§)
         {
            if(_loc3_.name == param1)
            {
               _loc3_.select();
               §-6§ = param1;
            }
            else
            {
               _loc3_.§!#z§();
            }
            (§,#2§.getItemByName(_loc3_.name) as §[#K§).setVisibility(_loc3_.name == param1);
         }
         this.§0!Q§.btnMoreInfo.visible = param1 == "Container_TabContentLeagueInfo";
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'#0§) : void
      {
         var _loc4_:§%#;§ = null;
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "SLINGSHOT_REWARD_1":
               AngryBirdsBase.singleton.popupManager.openPopup(new §6#1§(§4"c§.SLING_SHOT_BOUNCY.§5"g§,§6#1§.§3!G§));
               break;
            case "SLINGSHOT_REWARD_2":
               AngryBirdsBase.singleton.popupManager.openPopup(new §6#1§(§4"c§.SLING_SHOT_DIAMOND.§5"g§,§6#1§.§3!G§));
               break;
            case "EDIT_PROFILE":
               _loc4_ = new §>"B§(§]"$§.NORMAL,§^"U§.TOP);
               AngryBirdsBase.singleton.popupManager.openPopup(_loc4_);
         }
      }
   }
}
