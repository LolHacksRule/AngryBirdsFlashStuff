package §]$<§
{
   import § O§.§7!S§;
   import §#!E§.§2#Q§;
   import §%#v§.§0"j§;
   import §4!n§.§'!,§;
   import §5!$§.§-#j§;
   import §5!$§.§<c§;
   import §5!$§.§>§;
   import §6!'§.§@#c§;
   import §6!'§.§[!k§;
   import §6!'§.§]o§;
   import §8"b§.§&!b§;
   import §;$5§.§9§;
   import §;$5§.§@#G§;
   import §;$5§.AbstractPopup;
   import §=#§.§1!"§;
   import §=#§.§1#+§;
   import §>"9§.§[#%§;
   import §?!N§.§%#§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   
   public class §9"6§ extends AbstractPopup
   {
      
      public static const ID:String = "PopupLeagueInfo";
      
      private static var §4#s§:String;
       
      
      private var §0#0§:Array;
      
      private var §%§:MovieClip;
      
      public function §9"6§(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         this.§0#0§ = [];
         super(param1,param2,§0"j§.§-i§.Popups.Popup_LeagueInfo[0],ID);
      }
      
      override protected function init() : void
      {
         var _loc13_:§]o§ = null;
         var _loc14_:MovieClip = null;
         var _loc15_:* = null;
         var _loc24_:MovieClip = null;
         var _loc25_:§]o§ = null;
         var _loc26_:MovieClip = null;
         var _loc27_:MovieClip = null;
         super.init();
         this.§%§ = §8#Y§.mClip;
         var _loc1_:§<!§ = new §<!§(this.§%§.Button_Tab_League_Info,"Container_TabContentLeagueInfo");
         var _loc2_:§<!§ = new §<!§(this.§%§.Button_Tab_League_Profile,"Container_TabContentLeagueProfile");
         var _loc3_:§<c§ = §8#Y§.getItemByName(_loc1_.name) as §<c§;
         var _loc4_:§<c§ = §8#Y§.getItemByName(_loc2_.name) as §<c§;
         _loc1_.addEventListener(MouseEvent.CLICK,this.§+Z§);
         _loc2_.addEventListener(MouseEvent.CLICK,this.§+Z§);
         this.§0#0§.push(_loc1_);
         this.§0#0§.push(_loc2_);
         this.§%§.btnClose.addEventListener(MouseEvent.CLICK,this.§>"J§);
         this.§%§.btnMoreInfo.addEventListener(MouseEvent.CLICK,this.§ #_§);
         var _loc5_:§]o§ = §@#c§.§?q§.currentLeague();
         var _loc6_:Object = §@#c§.§?q§.§+$"§();
         var _loc7_:Object = §@#c§.§?q§.§5k§();
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 1;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         for each(_loc13_ in §[!k§.§?!4§)
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
            _loc24_.txtRating.text = _loc13_.§8#N§ + "+";
            _loc24_.txtReward.text = _loc13_.reward;
         }
         _loc24_ = _loc4_.getItemByName("IconLeagueEgg").mClip;
         _loc14_ = _loc4_.getItemByName("NextLeagueIcon").mClip;
         _loc15_ = "";
         if(_loc5_)
         {
            _loc24_.gotoAndStop(_loc5_.id);
            (_loc4_.getItemByName("TextField_LeagueName") as §-#j§).setText(_loc5_.name);
            _loc25_ = §[!k§.§'&§(_loc5_.id);
            _loc14_.gotoAndStop(_loc25_.id);
            _loc9_ = _loc5_.§8#N§;
            _loc10_ = _loc25_.§8#N§;
            if(_loc5_.name == §[!k§.§&!§())
            {
               _loc15_ = §[!k§.§&!k§ + "1";
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
               else if(_loc7_ && _loc7_.lr - §[!k§.§ #>§ >= _loc10_)
               {
                  _loc12_ = (_loc11_ = int((_loc7_.lr - _loc10_) / §[!k§.§ #>§)) + 1;
                  if(_loc26_)
                  {
                     _loc26_.visible = true;
                     (_loc26_.getChildByName("txtStarRating") as TextField).text = "" + _loc11_;
                  }
               }
               _loc9_ += §[!k§.§ #>§ * _loc11_;
               _loc10_ += §[!k§.§ #>§ * _loc12_;
               _loc15_ = §[!k§.§&!k§ + _loc12_;
               _loc14_.gotoAndStop(§[!k§.§^#>§);
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
         (_loc4_.getItemByName("TextField_NextLeague") as §-#j§).setText(_loc15_);
         var _loc16_:* = §@#c§.§?q§.§%$=§() > -1;
         _loc4_.getItemByName("MC_NotInLeague").visible = !_loc16_;
         var _loc17_:String = §1#+§.§;D§[§1#+§.§]!;§];
         if(_loc7_)
         {
            §&!b§.§9G§((_loc4_.getItemByName("TextField_PlayerName") as §-#j§).§^g§,!!_loc7_.ni ? _loc7_.ni : (AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§).userName);
            if(_loc7_.i)
            {
               _loc17_ = _loc7_.i;
            }
            if(_loc7_.lr)
            {
               _loc8_ = _loc7_.lr;
            }
            (_loc4_.getItemByName("TextField_LeagueRating") as §-#j§).setText("" + _loc8_);
         }
         else
         {
            §&!b§.§9G§((_loc4_.getItemByName("TextField_PlayerName") as §-#j§).§^g§,(AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§).userName);
         }
         (_loc4_.getItemByName("TextField_LeagueProgressValue_Start") as §-#j§).setText("" + _loc9_);
         (_loc4_.getItemByName("TextField_LeagueProgressValue_Goal") as §-#j§).setText("" + _loc10_);
         var _loc18_:MovieClip;
         var _loc19_:Number = (_loc18_ = (_loc4_.getItemByName("LeagueProgress") as §>#8§).mClip).mcProgress.width;
         var _loc20_:Number = (_loc8_ - _loc9_) / (_loc10_ - _loc9_);
         var _loc21_:Rectangle = new Rectangle(0,0,_loc19_ * _loc20_,_loc4_.getItemByName("LeagueProgress").height);
         _loc18_.mcProgress.scrollRect = _loc21_;
         var _loc22_:MovieClip;
         (_loc22_ = _loc4_.getItemByName("PlayerAvatarBase").mClip).removeChildren();
         var _loc23_:§1#+§ = new §1#+§((AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§).userID,_loc17_,(AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§).avatarString,false,§1!"§.§,!z§,§1!"§.§,!z§);
         _loc22_.addChild(_loc23_.§@#_§);
         if(!§4#s§)
         {
            this.§2#I§(_loc1_.name);
         }
         else
         {
            this.§2#I§(§4#s§);
         }
      }
      
      private function § #_§(param1:MouseEvent) : void
      {
         AngryBirdsBase.singleton.popupManager.openPopup(new §^#l§(§%#§.NORMAL,§9#5§.§;!!§,null,id,this));
      }
      
      private function §>"J§(param1:MouseEvent) : void
      {
         super.close();
      }
      
      protected function §+Z§(param1:Event) : void
      {
         var _loc2_:String = (param1.target as §<!§).name;
         if(§4#s§ != _loc2_)
         {
            §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
            this.§2#I§(_loc2_);
         }
      }
      
      protected function §2#I§(param1:String) : void
      {
         var _loc3_:§<!§ = null;
         for each(_loc3_ in this.§0#0§)
         {
            if(_loc3_.name == param1)
            {
               _loc3_.select();
               §4#s§ = param1;
            }
            else
            {
               _loc3_.§]#h§();
            }
            (§8#Y§.getItemByName(_loc3_.name) as §<c§).setVisibility(_loc3_.name == param1);
         }
         this.§%§.btnMoreInfo.visible = param1 == "Container_TabContentLeagueInfo";
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!,§) : void
      {
         var _loc4_:§@#G§ = null;
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "SLINGSHOT_REWARD_1":
               AngryBirdsBase.singleton.popupManager.openPopup(new §9g§(§7!S§.SLING_SHOT_BOUNCY.§]'§,§9g§.§'H§));
               break;
            case "SLINGSHOT_REWARD_2":
               AngryBirdsBase.singleton.popupManager.openPopup(new §9g§(§7!S§.SLING_SHOT_DIAMOND.§]'§,§9g§.§'H§));
               break;
            case "EDIT_PROFILE":
               _loc4_ = new §1+§(§%#§.NORMAL,§9#5§.TOP);
               AngryBirdsBase.singleton.popupManager.openPopup(_loc4_);
         }
      }
   }
}
