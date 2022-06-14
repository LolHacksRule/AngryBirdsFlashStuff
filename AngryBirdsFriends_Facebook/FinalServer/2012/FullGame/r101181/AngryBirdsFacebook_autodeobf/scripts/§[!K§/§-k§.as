package §[!K§
{
   import § "C§.§+!D§;
   import § "C§.§-!l§;
   import § "C§.§0]§;
   import §!"D§.§@!!§;
   import §#!e§.LevelManager;
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §%!v§.§[<§;
   import §&G§.§1z§;
   import §&G§.§@!5§;
   import §'!s§.§%?§;
   import §'!s§.§-d§;
   import §'K§.§"!=§;
   import §0!G§.§1-§;
   import §2!i§.§'M§;
   import §3!7§.§?!F§;
   import §4!e§.§-"E§;
   import §4!e§.§^!D§;
   import §6!B§.§ do§;
   import §6!B§.§&!7§;
   import §7"@§.§9<§;
   import §7"@§.§?'§;
   import §7-§.§,!C§;
   import §7-§.§-"<§;
   import §]!>§.§#"1§;
   import §]!>§.§,;§;
   import §]!>§.§0!!§;
   import §]!>§.§[Q§;
   import §]!A§.;
   import com.AngryBirds.friendsbar.§ K§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   
   public class §-k§ extends §1-§
   {
      
      public static const STATE_NAME:String = "TournamentState";
      
      private static const §4!S§:int = -20;
      
      private static const §+§:int = 0;
       
      
      private var §`!l§:Array;
      
      protected var §-!j§:§-"<§;
      
      protected var §?n§:§-"<§;
      
      protected var § !§:§-"<§;
      
      private var §-!w§:Array;
      
      private var §<P§:§0]§;
      
      protected var §92§:Array;
      
      protected var §]u§:int = 0;
      
      private var §<!Y§:Boolean = false;
      
      public function §-k§(param1:Boolean = false, param2:String = "TournamentState")
      {
         this.§-!w§ = [97,112,112,108,105,99,97,116,105,111,110,47,106,115,111,110];
         super(param1,param2);
      }
      
      public static function §"!V§(param1:*, param2:int = 2, param3:Boolean = false, param4:Boolean = false) : String
      {
         var _loc11_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Number = Math.pow(10,param2);
         var _loc8_:*;
         var _loc7_:String;
         var _loc9_:int = !!(_loc8_ = (_loc7_ = String(Math.round(_loc6_ * Number(param1)) / _loc6_)).indexOf(".") == -1) ? int(_loc7_.length) : int(_loc7_.indexOf("."));
         var _loc10_:* = (_loc8_ && !param3 ? "" : (!!param4 ? "," : ".")) + _loc7_.substr(_loc9_ + 1);
         if(param3)
         {
            _loc11_ = 0;
            while(_loc11_ <= param2 - (_loc7_.length - (!!_loc8_ ? _loc9_ - 1 : _loc9_)))
            {
               _loc10_ += "0";
               _loc11_++;
            }
         }
         while(_loc5_ + 3 < (_loc7_.substr(0,1) == "-" ? _loc9_ - 1 : _loc9_))
         {
            _loc10_ = (!!param4 ? "." : ",") + _loc7_.substr(_loc9_ - (_loc5_ = _loc5_ + 3),3) + _loc10_;
         }
         return _loc7_.substr(0,_loc9_ - _loc5_) + _loc10_;
      }
      
      override public function init() : void
      {
         super.init();
         §6w§ = new §7!A§(this);
         §6w§.init(§ "A§.§4[§.Views.View_Tournament[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.playThemeMusic();
         (§#6§.§ q§ as §3T§).§`!P§(§ K§.§7!y§);
         §3T§.§67§.§6!l§("Tournament scores");
         §6w§.getItemByName("Button_PreviousResults").setVisibility(false);
         this.requestTournamentInfo();
      }
      
      protected function playThemeMusic() : void
      {
         var _loc1_:§ do§ = §3T§.§67§.§2!c§();
         _loc1_.§"!r§(§&!7§.§3V§);
      }
      
      protected function requestTournamentInfo() : void
      {
         var _loc6_:§^!D§ = null;
         var _loc7_:URLRequest = null;
         §6w§.getItemByName("loadingTournament").setVisibility(true);
         var _loc1_:§^!D§ = §6w§.getItemByName("LevelButton1") as §^!D§;
         var _loc2_:§^!D§ = §6w§.getItemByName("LevelButton2") as §^!D§;
         var _loc3_:§^!D§ = §6w§.getItemByName("LevelButton3") as §^!D§;
         var _loc4_:§^!D§ = §6w§.getItemByName("LevelButton4") as §^!D§;
         var _loc5_:Array = [_loc1_,_loc2_,_loc3_,_loc4_];
         for each(_loc6_ in _loc5_)
         {
            _loc6_.setVisibility(false);
         }
         (_loc7_ = §-!l§.§%""§(AngryBirdsFP11.§76§ + "/tournamentinit")).method = URLRequestMethod.POST;
         _loc7_.contentType = this.§6!q§();
         this.§<P§ = new §0]§(null,2);
         this.§<P§.addEventListener(Event.COMPLETE,this.§7I§);
         this.§<P§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§<P§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§<P§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§<P§.load(_loc7_);
      }
      
      private function onError(param1:Event) : void
      {
         if(param1.type == §+!D§.§25§)
         {
            §%?§.§6!7§(§-d§.§]x§);
         }
         else
         {
            §%?§.§6!7§();
         }
      }
      
      private function §6!q§() : String
      {
         return this.§-W§(this.§-!w§);
      }
      
      private function §-W§(param1:Array) : String
      {
         var _loc3_:int = 0;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += String.fromCharCode(_loc3_);
         }
         return _loc2_;
      }
      
      private function §7I§(param1:Event) : void
      {
         var _loc4_:Object = null;
         §6w§.getItemByName("loadingTournament").setVisibility(false);
         if(param1.currentTarget.data)
         {
            _loc4_ = JSON.parse(param1.currentTarget.data);
            §,!C§.§;"§.injectData(_loc4_);
         }
         var _loc2_:Boolean = §"!=§.§super§();
         if(_loc2_)
         {
            §%?§.§!,§();
            §3T§.§if §.§ !;§(§,!C§.§;"§.§-&§);
            §?!F§.§;"§.§-Y§();
         }
         var _loc3_:* = false;
         if(§,!C§.§;"§.previousTournament)
         {
            _loc3_ = §,!C§.§;"§.previousTournament != null;
         }
         §6w§.getItemByName("Button_PreviousResults").setVisibility(_loc3_);
         (AngryBirdsFP11.sUserProgress as §[<§).§;!i§(§,!C§.§;"§.levelScores);
         this.injectData();
         if(§?!F§.§;"§.§2!h§.§7g§(§@!!§.§8"8§))
         {
            §%?§.§8"5§();
         }
      }
      
      override public function deActivate() : void
      {
         var _loc2_:§^!D§ = null;
         super.deActivate();
         if(this.§-!j§)
         {
            this.§-!j§.dispose();
         }
         if(this.§?n§)
         {
            this.§?n§.dispose();
         }
         if(this.§ !§)
         {
            this.§ !§.dispose();
         }
         this.§92§ = §,!C§.§;"§.§-&§;
         var _loc1_:int = 0;
         while(_loc1_ < this.§92§.length)
         {
            _loc2_ = §6w§.getItemByName("LevelButton" + (_loc1_ + 1)) as §^!D§;
            if(_loc2_ && (_loc2_.mClip as MovieClip).currentFrameLabel == "Closed")
            {
               (_loc2_.mClip as MovieClip).removeEventListener(MouseEvent.MOUSE_UP,this.§&h§);
               break;
            }
            _loc1_++;
         }
         LevelManager.§+!;§ = null;
      }
      
      public function injectData() : void
      {
         var _loc2_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:§#"1§ = null;
         var _loc8_:§@!5§ = null;
         var _loc9_:String = null;
         var _loc10_:§@!5§ = null;
         var _loc11_:String = null;
         this.§]u§ = getTimer();
         var _loc3_:int = this.setLevelButtons();
         var _loc4_:Array = [];
         this.§`!l§ = [];
         var _loc5_:Array = §,!C§.§;"§.§#!3§();
         for each(_loc6_ in _loc5_)
         {
            if(_loc8_ = §1z§.§@Z§(_loc6_.u))
            {
               if(_loc8_.name)
               {
                  _loc6_.n = _loc8_.name;
               }
            }
            if(_loc6_.n == null)
            {
               _loc6_.n = "";
            }
            if(_loc6_.u == (AngryBirdsFP11.sUserProgress as §[<§).§4v§)
            {
               _loc6_.p = _loc3_;
               _loc2_ = _loc6_;
            }
            this.§`!l§.push(§[Q§.§!!t§(_loc6_));
            _loc4_.push(§[Q§.§!!t§(_loc6_));
         }
         if(_loc2_ == null)
         {
            _loc9_ = (AngryBirdsFP11.sUserProgress as §[<§).§4v§;
            _loc11_ = !!(_loc10_ = §1z§.§@Z§(_loc9_)) ? _loc10_.name : "You";
            _loc2_ = {
               "r":_loc5_.length + 1,
               "u":_loc9_,
               "n":_loc11_
            };
            _loc2_.p = _loc3_;
            this.§`!l§.push(§[Q§.§!!t§(_loc2_));
            _loc4_.push(§[Q§.§!!t§(_loc2_));
         }
         for each(_loc7_ in §,!C§.§;"§.§=!V§())
         {
            _loc4_.push(_loc7_);
         }
         (§#6§.§ q§ as §3T§).§0#§.§[!L§(_loc4_);
         this.§5!H§();
         this.§,!o§(_loc2_.r);
      }
      
      private function §!S§(param1:Array) : void
      {
         var _loc4_:§@!5§ = null;
         var _loc5_:Boolean = false;
         var _loc6_:§[Q§ = null;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc2_:Dictionary = §1z§.§^"4§();
         for each(_loc4_ in _loc2_)
         {
            _loc5_ = false;
            for each(_loc6_ in this.§`!l§)
            {
               if(_loc4_.§4v§ == _loc6_.userId)
               {
                  _loc5_ = true;
               }
            }
            if(!_loc5_)
            {
               _loc7_ = "";
               if(_loc4_.§4v§)
               {
                  _loc7_ = _loc4_.§4v§;
               }
               _loc8_ = "";
               if(_loc4_.name)
               {
                  _loc8_ = _loc4_.name;
               }
               param1.push(new §,;§(_loc7_,_loc8_,"",!§0!!§.§;"§.§;">§(_loc7_)));
            }
         }
      }
      
      protected function setLevelButtons() : int
      {
         var _loc5_:§^!D§ = null;
         var _loc6_:§^!D§ = null;
         var _loc7_:String = null;
         var _loc8_:§[<§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:Number = NaN;
         this.§92§ = §,!C§.§;"§.§-&§;
         var _loc1_:Array = [];
         var _loc2_:int = 0;
         while(_loc2_ < this.§92§.length)
         {
            _loc5_ = §6w§.getItemByName("LevelButton" + (_loc2_ + 1)) as §^!D§;
            _loc1_.push(_loc5_);
            _loc2_++;
         }
         var _loc3_:int = 0;
         _loc2_ = 0;
         while(_loc2_ < _loc1_.length)
         {
            if((_loc6_ = _loc1_[_loc2_]) != null)
            {
               _loc6_.setVisibility(true);
               _loc7_ = this.§92§[_loc2_];
               if(§,!C§.§;"§.isLevelOpen(_loc7_))
               {
                  _loc6_.mClip.gotoAndStop("Open");
                  _loc6_.setEnabled(true);
                  _loc6_.mClip.TextField_LevelNum.text.text = _loc2_ + 1 + "";
                  if((_loc9_ = (_loc8_ = AngryBirdsFP11.sUserProgress as §[<§).§4!N§(_loc7_)) && _loc9_ <= 3)
                  {
                     _loc6_.mClip.LevelSelection_Crown.gotoAndStop(_loc9_);
                  }
                  else
                  {
                     _loc6_.mClip.LevelSelection_Crown.gotoAndStop(4);
                  }
                  _loc10_ = _loc8_.§<U§(_loc7_);
                  _loc6_.mClip.Textfield_LevelScore.text.text = §"!V§(_loc10_);
                  _loc11_ = _loc8_.getStarsForLevel(_loc7_,_loc10_);
                  _loc6_.mClip.MovieClip_Stars.gotoAndStop(_loc11_.toString() + "_stars");
                  if(_loc10_ == 0)
                  {
                     _loc6_.mClip.MovieClip_Stars.visible = false;
                     _loc6_.mClip.Textfield_LevelScore.visible = false;
                     _loc6_.mClip.GiftboxMovieclip.visible = true;
                  }
                  else
                  {
                     _loc6_.mClip.MovieClip_Stars.visible = true;
                     _loc6_.mClip.Textfield_LevelScore.visible = true;
                     _loc6_.mClip.GiftboxMovieclip.visible = false;
                  }
                  _loc3_ += _loc10_;
               }
               else
               {
                  _loc6_.mClip.gotoAndStop("Closed");
                  _loc6_.setEnabled(false);
               }
            }
            _loc2_++;
         }
         return _loc3_;
      }
      
      private function §&h§(param1:MouseEvent) : void
      {
      }
      
      private function §#9§(param1:int) : §[Q§
      {
         var _loc2_:§#"1§ = null;
         for each(_loc2_ in this.§`!l§)
         {
            if(_loc2_ is §[Q§)
            {
               if((_loc2_ as §[Q§).§9!Y§ == param1)
               {
                  return _loc2_ as §[Q§;
               }
            }
         }
         return null;
      }
      
      private function §,!o§(param1:int) : void
      {
         var _loc2_:int = this.§`!l§.length;
         if(_loc2_ == 1)
         {
            this.§&">§(null);
            this.§1j§(this.§#9§(param1));
            this.§3"3§(null);
         }
         else if(_loc2_ == 2)
         {
            this.§&">§(this.§#9§(1));
            this.§1j§(this.§#9§(2));
            this.§3"3§(null);
         }
         else
         {
            if(_loc2_ <= 2)
            {
               throw new Error("No players in the array!");
            }
            if(param1 >= 3)
            {
               this.§&">§(this.§#9§(1));
               this.§1j§(this.§#9§(param1 - 1));
               this.§3"3§(this.§#9§(param1));
               if(param1 >= 4)
               {
                  if(this.§?n§)
                  {
                     this.§?n§.x = §4!S§;
                  }
                  if(this.§ !§)
                  {
                     this.§ !§.x = §4!S§;
                  }
               }
               else
               {
                  if(this.§?n§)
                  {
                     this.§?n§.x = §+§;
                  }
                  if(this.§ !§)
                  {
                     this.§ !§.x = §+§;
                  }
               }
            }
            else
            {
               this.§&">§(this.§#9§(1));
               this.§1j§(this.§#9§(2));
               this.§3"3§(this.§#9§(3));
            }
         }
      }
      
      protected function §&">§(param1:§[Q§) : void
      {
         if(param1 == null)
         {
            return;
         }
         this.§-!j§ = new §-"<§(param1,1,this.starPillarOwnDefinition,this.starPillarEnemyDefinition);
         §6w§.getItemByName("StarPillarPlaceHolder1").mClip.addChild(this.§-!j§);
      }
      
      protected function §1j§(param1:§[Q§) : void
      {
         if(param1 == null)
         {
            return;
         }
         this.§?n§ = new §-"<§(param1,2,this.starPillarOwnDefinition,this.starPillarEnemyDefinition);
         §6w§.getItemByName("StarPillarPlaceHolder2").mClip.addChild(this.§?n§);
      }
      
      protected function §3"3§(param1:§[Q§) : void
      {
         if(param1 == null)
         {
            return;
         }
         this.§ !§ = new §-"<§(param1,3,this.starPillarOwnDefinition,this.starPillarEnemyDefinition);
         §6w§.getItemByName("StarPillarPlaceHolder3").mClip.addChild(this.§ !§);
      }
      
      protected function get starPillarOwnDefinition() : String
      {
         return "StarpillarOwn";
      }
      
      protected function get starPillarEnemyDefinition() : String
      {
         return "StarpillarEnemy";
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         switch(param2)
         {
            case "BACK":
               mNextState = §?'§.STATE_NAME;
               break;
            case "PREVIOUS_RESULTS":
               mNextState = StateLastWeeksTournamentResults.STATE_NAME;
               break;
            case "LEVEL_1":
               this.§8"'§(this.§92§[0]);
               break;
            case "LEVEL_2":
               this.§8"'§(this.§92§[1]);
               break;
            case "LEVEL_3":
               this.§8"'§(this.§92§[2]);
               break;
            case "LEVEL_4":
               this.§8"'§(this.§92§[3]);
               break;
            case "showCredits":
               mNextState = §9<§.STATE_NAME;
         }
      }
      
      protected function §8"'§(param1:String) : void
      {
         LevelManager.§-!4§(LevelManager.§;!f§(param1.toLowerCase()));
         mNextState = §;+§.STATE_NAME;
      }
      
      protected function §5!H§() : void
      {
         var _loc1_:Array = §,!C§.§;"§.§0!V§();
         §6w§.setText(_loc1_[0],"DaysLeftTextfield");
         var _loc2_:§-"E§ = §6w§.getItemByName("DaysLeftTextfield") as §-"E§;
         _loc2_.§5!=§.textColor = _loc1_[1];
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §1-§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§5!H§();
         if(mNextState.length > 0)
         {
            return §1-§.STATE_STATUS_COMPLETED;
         }
         return §1-§.STATE_STATUS_RUNNING;
      }
   }
}
