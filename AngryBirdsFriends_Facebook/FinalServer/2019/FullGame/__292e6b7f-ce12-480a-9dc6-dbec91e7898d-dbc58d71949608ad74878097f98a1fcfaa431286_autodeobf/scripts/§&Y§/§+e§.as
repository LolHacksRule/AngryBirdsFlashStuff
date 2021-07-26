package §&Y§
{
   import § "L§.§"!A§;
   import § "L§.§23§;
   import § "L§.§7`§;
   import § $0§.§,#@§;
   import § $0§.§5R§;
   import § $0§.AbstractPopup;
   import §!L§.§`#u§;
   import §";§.§false§;
   import §+!Y§.§[@§;
   import §2G§.§##W§;
   import §2G§.§?!s§;
   import §3"V§.§ b§;
   import §?Q§.§@#D§;
   import §]#'§.§3$-§;
   import §]#'§.§4"s§;
   import §]#'§.§6#P§;
   import §^"3§.§`$4§;
   import §`"t§.§7"U§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   
   public class §+e§ extends AbstractPopup
   {
      
      public static const ID:String = "PopupLeagueInfo";
      
      private static var §]#?§:String;
       
      
      private var §0,§:Array;
      
      private var §8#M§:MovieClip;
      
      public function §+e§(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         this.§0,§ = [];
         super(param1,param2,§false§.§4#;§.Popups.Popup_LeagueInfo[0],ID);
      }
      
      override protected function init() : void
      {
         var _loc13_:§3$-§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:* = null;
         var _loc24_:MovieClip = null;
         var _loc25_:§3$-§ = null;
         var _loc26_:MovieClip = null;
         var _loc27_:MovieClip = null;
         super.init();
         this.§8#M§ = §;#'§.mClip;
         var _loc1_:§'$5§ = new §'$5§(this.§8#M§.Button_Tab_League_Info,"Container_TabContentLeagueInfo");
         var _loc2_:§'$5§ = new §'$5§(this.§8#M§.Button_Tab_League_Profile,"Container_TabContentLeagueProfile");
         var _loc3_:§23§ = §;#'§.getItemByName(_loc1_.name) as §23§;
         var _loc4_:§23§ = §;#'§.getItemByName(_loc2_.name) as §23§;
         _loc1_.addEventListener(MouseEvent.CLICK,this.§='§);
         _loc2_.addEventListener(MouseEvent.CLICK,this.§='§);
         this.§0,§.push(_loc1_);
         this.§0,§.push(_loc2_);
         this.§8#M§.btnClose.addEventListener(MouseEvent.CLICK,this.§+"O§);
         this.§8#M§.btnMoreInfo.addEventListener(MouseEvent.CLICK,this.§%"_§);
         var _loc5_:§3$-§ = §4"s§.§+!,§.currentLeague();
         var _loc6_:Object = §4"s§.§+!,§.§>!7§();
         var _loc7_:Object = §4"s§.§+!,§.§+S§();
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 1;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         for each(_loc13_ in §6#P§.§]$+§)
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
            _loc24_.txtRating.text = _loc13_.§"$A§ + "+";
            _loc24_.txtReward.text = _loc13_.reward;
         }
         _loc24_ = _loc4_.getItemByName("IconLeagueEgg").mClip;
         _loc14_ = _loc4_.getItemByName("NextLeagueIcon").mClip;
         _loc15_ = "";
         if(_loc5_)
         {
            _loc24_.gotoAndStop(_loc5_.id);
            (_loc4_.getItemByName("TextField_LeagueName") as §7`§).setText(_loc5_.name);
            _loc25_ = §6#P§.§"M§(_loc5_.id);
            _loc14_.gotoAndStop(_loc25_.id);
            _loc9_ = _loc5_.§"$A§;
            _loc10_ = _loc25_.§"$A§;
            if(_loc5_.name == §6#P§.§<!a§())
            {
               _loc15_ = §6#P§.§?!O§ + "1";
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
               else if(_loc7_ && _loc7_.lr - §6#P§.§>$0§ >= _loc10_)
               {
                  _loc12_ = (_loc11_ = int((_loc7_.lr - _loc10_) / §6#P§.§>$0§)) + 1;
                  if(_loc26_)
                  {
                     _loc26_.visible = true;
                     (_loc26_.getChildByName("txtStarRating") as TextField).text = "" + _loc11_;
                  }
               }
               _loc9_ += §6#P§.§>$0§ * _loc11_;
               _loc10_ += §6#P§.§>$0§ * _loc12_;
               _loc15_ = §6#P§.§?!O§ + _loc12_;
               _loc14_.gotoAndStop(§6#P§.§=# §);
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
         (_loc4_.getItemByName("TextField_NextLeague") as §7`§).setText(_loc15_);
         var _loc16_:* = §4"s§.§+!,§.§5"M§() > -1;
         _loc4_.getItemByName("MC_NotInLeague").visible = !_loc16_;
         var _loc17_:String = §##W§.§%N§[§##W§.§-"=§];
         if(_loc7_)
         {
            §7"U§.§+$5§((_loc4_.getItemByName("TextField_PlayerName") as §7`§).§%!8§,!!_loc7_.ni ? _loc7_.ni : (AngryBirdsBase.singleton.dataModel.userProgress as §`#u§).userName);
            if(_loc7_.i)
            {
               _loc17_ = _loc7_.i;
            }
            if(_loc7_.lr)
            {
               _loc8_ = _loc7_.lr;
            }
            (_loc4_.getItemByName("TextField_LeagueRating") as §7`§).setText("" + _loc8_);
         }
         else
         {
            §7"U§.§+$5§((_loc4_.getItemByName("TextField_PlayerName") as §7`§).§%!8§,(AngryBirdsBase.singleton.dataModel.userProgress as §`#u§).userName);
         }
         (_loc4_.getItemByName("TextField_LeagueProgressValue_Start") as §7`§).setText("" + _loc9_);
         (_loc4_.getItemByName("TextField_LeagueProgressValue_Goal") as §7`§).setText("" + _loc10_);
         var _loc18_:MovieClip;
         var _loc19_:Number = (_loc18_ = (_loc4_.getItemByName("LeagueProgress") as §"!A§).mClip).mcProgress.width;
         var _loc20_:Number = (_loc8_ - _loc9_) / (_loc10_ - _loc9_);
         var _loc21_:Rectangle = new Rectangle(0,0,_loc19_ * _loc20_,_loc4_.getItemByName("LeagueProgress").height);
         _loc18_.mcProgress.scrollRect = _loc21_;
         var _loc22_:MovieClip;
         (_loc22_ = _loc4_.getItemByName("PlayerAvatarBase").mClip).removeChildren();
         var _loc23_:§##W§ = new §##W§((AngryBirdsBase.singleton.dataModel.userProgress as §`#u§).userID,_loc17_,(AngryBirdsBase.singleton.dataModel.userProgress as §`#u§).avatarString,false,§?!s§.§[$0§,§?!s§.§[$0§);
         _loc22_.addChild(_loc23_.§[!i§);
         if(!§]#?§)
         {
            this.§1$+§(_loc1_.name);
         }
         else
         {
            this.§1$+§(§]#?§);
         }
      }
      
      private function §%"_§(param1:MouseEvent) : void
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new §6#E§(§@#D§.NORMAL,§5R§.§!#§,null,id,this));
      }
      
      private function §+"O§(param1:MouseEvent) : void
      {
         super.close();
      }
      
      protected function §='§(param1:Event) : void
      {
         var _loc2_:String = (param1.target as §'$5§).name;
         if(§]#?§ != _loc2_)
         {
            § b§.playSound("Menu_Confirm",§ b§.§;$5§);
            this.§1$+§(_loc2_);
         }
      }
      
      protected function §1$+§(param1:String) : void
      {
         var _loc3_:§'$5§ = null;
         for each(_loc3_ in this.§0,§)
         {
            if(_loc3_.name == param1)
            {
               _loc3_.select();
               §]#?§ = param1;
            }
            else
            {
               _loc3_.§]6§();
            }
            (§;#'§.getItemByName(_loc3_.name) as §23§).setVisibility(_loc3_.name == param1);
         }
         this.§8#M§.btnMoreInfo.visible = param1 == "Container_TabContentLeagueInfo";
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§`$4§) : void
      {
         var _loc4_:§,#@§ = null;
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "SLINGSHOT_REWARD_1":
               AngryBirdsBase.singleton.popupManager.openPopup(new §@"E§(§[@§.SLING_SHOT_BOUNCY.§8t§,§@"E§.§>J§));
               break;
            case "SLINGSHOT_REWARD_2":
               AngryBirdsBase.singleton.popupManager.openPopup(new §@"E§(§[@§.SLING_SHOT_DIAMOND.§8t§,§@"E§.§>J§));
               break;
            case "EDIT_PROFILE":
               _loc4_ = new §,+§(§@#D§.NORMAL,§5R§.TOP);
               AngryBirdsBase.singleton.popupManager.openPopup(_loc4_);
         }
      }
   }
}
