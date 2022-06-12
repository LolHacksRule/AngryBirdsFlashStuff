package §%!I§
{
   import §%i§.§4"9§;
   import §%i§.§7"0§;
   import §,l§.§ !Q§;
   import §,l§.§#!>§;
   import §,l§.§1U§;
   import §,l§.§4"7§;
   import §0D§.§ +§;
   import §0D§.§3!R§;
   import §1!t§.§""B§;
   import §2"4§.§&k§;
   import §2"4§.§@"E§;
   import §2<§.§3d§;
   import §2<§.§9!7§;
   import §2<§.§9G§;
   import §5!Y§.§9"6§;
   import §5!Y§.§]!I§;
   import §8";§.§+d§;
   import §8m§.§6!n§;
   import §8m§.§;!e§;
   import §9!n§.LevelManager;
   import §;u§.§&"[§;
   import §;u§.§9!V§;
   import §@!"§.§?l§;
   import §@!%§.§#!$§;
   import §["6§.§ var§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import com.AngryBirds.friendsbar.§]a§;
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
   
   public class §]!M§ extends §+d§
   {
      
      public static const STATE_NAME:String = "TournamentState";
      
      private static const §>"A§:int = -20;
      
      private static const §6F§:int = 0;
       
      
      private var §-#§:Array;
      
      protected var §>j§:§ +§;
      
      protected var §^!&§:§ +§;
      
      protected var §4!j§:§ +§;
      
      private var §!]§:Array;
      
      private var §7K§:§3d§;
      
      protected var §1"§:Array;
      
      protected var §9T§:int = 0;
      
      private var §+";§:Boolean = false;
      
      public function §]!M§(param1:Boolean = false, param2:String = "TournamentState")
      {
         this.§!]§ = [97,112,112,108,105,99,97,116,105,111,110,47,106,115,111,110];
         super(param1,param2);
      }
      
      public static function §<Y§(param1:*, param2:int = 2, param3:Boolean = false, param4:Boolean = false) : String
      {
         var _loc11_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Number = Math.pow(10,param2);
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
         §2"@§ = new §`_§(this);
         §2"@§.init(§ "<§.§%I§.Views.View_Tournament[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.playThemeMusic();
         (§?l§.§ "G§ as §%"S§).§ b§(§]a§.§^!r§);
         §%"S§.§!C§.§]"Y§("Tournament scores");
         §2"@§.getItemByName("Button_PreviousResults").setVisibility(false);
         this.requestTournamentInfo();
      }
      
      protected function playThemeMusic() : void
      {
         var _loc1_:§6!n§ = §%"S§.§!C§.§#"C§();
         _loc1_.§3%§(§;!e§.§^a§);
      }
      
      protected function requestTournamentInfo() : void
      {
         var _loc8_:§7"0§ = null;
         var _loc9_:URLRequest = null;
         §2"@§.getItemByName("loadingTournament").setVisibility(true);
         var _loc1_:§7"0§ = §2"@§.getItemByName("LevelButton1") as §7"0§;
         var _loc2_:§7"0§ = §2"@§.getItemByName("LevelButton2") as §7"0§;
         var _loc3_:§7"0§ = §2"@§.getItemByName("LevelButton3") as §7"0§;
         var _loc4_:§7"0§ = §2"@§.getItemByName("LevelButton4") as §7"0§;
         var _loc5_:§7"0§ = §2"@§.getItemByName("LevelButton5") as §7"0§;
         var _loc6_:§7"0§ = §2"@§.getItemByName("LevelButton6") as §7"0§;
         var _loc7_:Array = [_loc1_,_loc2_,_loc3_,_loc4_,_loc5_,_loc6_];
         for each(_loc8_ in _loc7_)
         {
            _loc8_.setVisibility(false);
         }
         (_loc9_ = §9!7§.§,!l§(AngryBirdsFP11.§?8§ + "/tournamentinit")).method = URLRequestMethod.POST;
         _loc9_.contentType = this.§ G§();
         this.§7K§ = new §3d§(null,2);
         this.§7K§.addEventListener(Event.COMPLETE,this.§9I§);
         this.§7K§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§7K§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§7K§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§7K§.load(_loc9_);
      }
      
      private function onError(param1:Event) : void
      {
         if(param1.type == §9G§.§33§)
         {
            §9"6§.§>_§(§]!I§.§`'§);
         }
         else
         {
            §9"6§.§>_§();
         }
      }
      
      private function § G§() : String
      {
         return this.§ do§(this.§!]§);
      }
      
      private function § do§(param1:Array) : String
      {
         var _loc3_:int = 0;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += String.fromCharCode(_loc3_);
         }
         return _loc2_;
      }
      
      private function §9I§(param1:Event) : void
      {
         var _loc4_:Object = null;
         §2"@§.getItemByName("loadingTournament").setVisibility(false);
         if(param1.currentTarget.data)
         {
            _loc4_ = JSON.parse(param1.currentTarget.data);
            §3!R§.§&"5§.injectData(_loc4_);
         }
         var _loc2_:Boolean = § var§.§`";§();
         if(_loc2_)
         {
            §%"S§.§%P§.§4!f§(§3!R§.§&"5§.§8I§);
         }
         var _loc3_:* = false;
         if(§3!R§.§&"5§.previousTournament)
         {
            _loc3_ = §3!R§.§&"5§.previousTournament != null;
         }
         §2"@§.getItemByName("Button_PreviousResults").setVisibility(_loc3_);
         (AngryBirdsFP11.sUserProgress as §#!$§).§"r§(§3!R§.§&"5§.levelScores);
         if(_loc2_)
         {
            this.§3"=§();
         }
         this.injectData();
      }
      
      private function §3"=§() : void
      {
         if(§3!R§.§&"5§.§%!^§ && §3!R§.§&"5§.§%!^§.§%B§)
         {
            §9"6§.§<"T§(§3!R§.§&"5§.§%!^§.§%B§);
         }
         else
         {
            §9"6§.§["#§(false);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc2_:§7"0§ = null;
         super.deActivate();
         if(this.§>j§)
         {
            this.§>j§.dispose();
         }
         if(this.§^!&§)
         {
            this.§^!&§.dispose();
         }
         if(this.§4!j§)
         {
            this.§4!j§.dispose();
         }
         this.§1"§ = §3!R§.§&"5§.§8I§;
         var _loc1_:int = 0;
         while(_loc1_ < this.§1"§.length)
         {
            _loc2_ = §2"@§.getItemByName("LevelButton" + (_loc1_ + 1)) as §7"0§;
            if(_loc2_ && (_loc2_.mClip as MovieClip).currentFrameLabel == "Closed")
            {
               (_loc2_.mClip as MovieClip).removeEventListener(MouseEvent.MOUSE_UP,this.§0"$§);
               break;
            }
            _loc1_++;
         }
         LevelManager.§&"V§ = null;
      }
      
      public function injectData() : void
      {
         var _loc2_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:§#!>§ = null;
         var _loc8_:§@"E§ = null;
         var _loc9_:String = null;
         var _loc10_:§@"E§ = null;
         var _loc11_:String = null;
         this.§9T§ = getTimer();
         var _loc3_:int = this.setLevelButtons();
         var _loc4_:Array = [];
         this.§-#§ = [];
         var _loc5_:Array = §3!R§.§&"5§.§^E§();
         for each(_loc6_ in _loc5_)
         {
            if(_loc8_ = §&k§.§`!]§(_loc6_.u))
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
            if(_loc6_.u == (AngryBirdsFP11.sUserProgress as §#!$§).§5!0§)
            {
               _loc6_.p = _loc3_;
               _loc2_ = _loc6_;
            }
            this.§-#§.push(§1U§.§?$§(_loc6_));
            _loc4_.push(§1U§.§?$§(_loc6_));
         }
         if(_loc2_ == null)
         {
            _loc9_ = (AngryBirdsFP11.sUserProgress as §#!$§).§5!0§;
            _loc11_ = !!(_loc10_ = §&k§.§`!]§(_loc9_)) ? _loc10_.name : "You";
            _loc2_ = {
               "r":_loc5_.length + 1,
               "u":_loc9_,
               "n":_loc11_
            };
            _loc2_.p = _loc3_;
            this.§-#§.push(§1U§.§?$§(_loc2_));
            _loc4_.push(§1U§.§?$§(_loc2_));
         }
         for each(_loc7_ in §3!R§.§&"5§.§@!X§())
         {
            _loc4_.push(_loc7_);
         }
         (§?l§.§ "G§ as §%"S§).§'u§.§]"+§(_loc4_);
         this.§9?§();
         this.§8P§(_loc2_.r);
      }
      
      private function §,V§(param1:Array) : void
      {
         var _loc4_:§@"E§ = null;
         var _loc5_:Boolean = false;
         var _loc6_:§1U§ = null;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc2_:Dictionary = §&k§.§]v§();
         for each(_loc4_ in _loc2_)
         {
            _loc5_ = false;
            for each(_loc6_ in this.§-#§)
            {
               if(_loc4_.§5!0§ == _loc6_.userId)
               {
                  _loc5_ = true;
               }
            }
            if(!_loc5_)
            {
               _loc7_ = "";
               if(_loc4_.§5!0§)
               {
                  _loc7_ = _loc4_.§5!0§;
               }
               _loc8_ = "";
               if(_loc4_.name)
               {
                  _loc8_ = _loc4_.name;
               }
               param1.push(new § !Q§(_loc7_,_loc8_,"",!§4"7§.§&"5§.§>!Z§(_loc7_)));
            }
         }
      }
      
      protected function setLevelButtons() : int
      {
         var _loc5_:§7"0§ = null;
         var _loc6_:§7"0§ = null;
         var _loc7_:String = null;
         var _loc8_:§#!$§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:Number = NaN;
         this.§1"§ = §3!R§.§&"5§.§8I§;
         var _loc1_:Array = [];
         var _loc2_:int = 0;
         while(_loc2_ < this.§1"§.length)
         {
            _loc5_ = §2"@§.getItemByName("LevelButton" + (_loc2_ + 1)) as §7"0§;
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
               _loc7_ = this.§1"§[_loc2_];
               if(§3!R§.§&"5§.isLevelOpen(_loc7_))
               {
                  _loc6_.mClip.gotoAndStop("Open");
                  _loc6_.setEnabled(true);
                  _loc6_.mClip.TextField_LevelNum.text.text = _loc2_ + 1 + "";
                  if((_loc9_ = (_loc8_ = AngryBirdsFP11.sUserProgress as §#!$§).§3"4§(_loc7_)) && _loc9_ <= 3)
                  {
                     _loc6_.mClip.LevelSelection_Crown.gotoAndStop(_loc9_);
                  }
                  else
                  {
                     _loc6_.mClip.LevelSelection_Crown.gotoAndStop(4);
                  }
                  _loc10_ = _loc8_.§="&§(_loc7_);
                  _loc6_.mClip.Textfield_LevelScore.text.text = §<Y§(_loc10_);
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
      
      private function §0"$§(param1:MouseEvent) : void
      {
      }
      
      private function §8!@§(param1:int) : §1U§
      {
         var _loc2_:§#!>§ = null;
         for each(_loc2_ in this.§-#§)
         {
            if(_loc2_ is §1U§)
            {
               if((_loc2_ as §1U§).§'Q§ == param1)
               {
                  return _loc2_ as §1U§;
               }
            }
         }
         return null;
      }
      
      private function §8P§(param1:int) : void
      {
         var _loc2_:int = this.§-#§.length;
         if(_loc2_ == 1)
         {
            this.§!R§(null);
            this.§5"[§(this.§8!@§(param1));
            this.§!"4§(null);
         }
         else if(_loc2_ == 2)
         {
            this.§!R§(this.§8!@§(1));
            this.§5"[§(this.§8!@§(2));
            this.§!"4§(null);
         }
         else
         {
            if(_loc2_ <= 2)
            {
               throw new Error("No players in the array!");
            }
            if(param1 >= 3)
            {
               this.§!R§(this.§8!@§(1));
               this.§5"[§(this.§8!@§(param1 - 1));
               this.§!"4§(this.§8!@§(param1));
               if(param1 >= 4)
               {
                  if(this.§^!&§)
                  {
                     this.§^!&§.x = §>"A§;
                  }
                  if(this.§4!j§)
                  {
                     this.§4!j§.x = §>"A§;
                  }
               }
               else
               {
                  if(this.§^!&§)
                  {
                     this.§^!&§.x = §6F§;
                  }
                  if(this.§4!j§)
                  {
                     this.§4!j§.x = §6F§;
                  }
               }
            }
            else
            {
               this.§!R§(this.§8!@§(1));
               this.§5"[§(this.§8!@§(2));
               this.§!"4§(this.§8!@§(3));
            }
         }
      }
      
      protected function §!R§(param1:§1U§) : void
      {
         if(param1 == null)
         {
            return;
         }
         this.§>j§ = new § +§(param1,1,this.§[O§,this.§?"G§);
         §2"@§.getItemByName("StarPillarPlaceHolder1").mClip.addChild(this.§>j§);
      }
      
      protected function §5"[§(param1:§1U§) : void
      {
         if(param1 == null)
         {
            return;
         }
         this.§^!&§ = new § +§(param1,2,this.§[O§,this.§?"G§);
         §2"@§.getItemByName("StarPillarPlaceHolder2").mClip.addChild(this.§^!&§);
      }
      
      protected function §!"4§(param1:§1U§) : void
      {
         if(param1 == null)
         {
            return;
         }
         this.§4!j§ = new § +§(param1,3,this.§[O§,this.§?"G§);
         §2"@§.getItemByName("StarPillarPlaceHolder3").mClip.addChild(this.§4!j§);
      }
      
      protected function get §[O§() : String
      {
         return "StarpillarOwn";
      }
      
      protected function get §?"G§() : String
      {
         return "StarpillarEnemy";
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§""B§) : void
      {
         switch(param2)
         {
            case "BACK":
               mNextState = §9!V§.STATE_NAME;
               break;
            case "PREVIOUS_RESULTS":
               mNextState = StateLastWeeksTournamentResults.STATE_NAME;
               break;
            case "LEVEL_1":
               this.§8?§(this.§1"§[0]);
               break;
            case "LEVEL_2":
               this.§8?§(this.§1"§[1]);
               break;
            case "LEVEL_3":
               this.§8?§(this.§1"§[2]);
               break;
            case "LEVEL_4":
               this.§8?§(this.§1"§[3]);
               break;
            case "LEVEL_5":
               this.§8?§(this.§1"§[4]);
               break;
            case "LEVEL_6":
               this.§8?§(this.§1"§[5]);
               break;
            case "showCredits":
               mNextState = §&"[§.STATE_NAME;
         }
      }
      
      protected function §8?§(param1:String) : void
      {
         LevelManager.§,!m§(LevelManager.§["S§(param1.toLowerCase()));
         mNextState = §5S§.STATE_NAME;
      }
      
      protected function §9?§() : void
      {
         var _loc1_:Array = §3!R§.§&"5§.§^!y§();
         §2"@§.setText(_loc1_[0],"DaysLeftTextfield");
         var _loc2_:§4"9§ = §2"@§.getItemByName("DaysLeftTextfield") as §4"9§;
         _loc2_.§-" §.textColor = _loc1_[1];
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §+d§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§9?§();
         if(mNextState.length > 0)
         {
            return §+d§.STATE_STATUS_COMPLETED;
         }
         return §+d§.STATE_STATUS_RUNNING;
      }
   }
}
