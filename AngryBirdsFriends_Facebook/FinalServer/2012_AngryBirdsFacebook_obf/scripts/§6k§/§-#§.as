package §6k§
{
   import §#!^§.§1!1§;
   import §#!^§.§2t§;
   import §#M§.§%^§;
   import §#M§.§^0§;
   import §&!"§.§5"§;
   import §&!"§.§`B§;
   import §-B§.§#p§;
   import §-B§.§]!<§;
   import §2!6§.§`"J§;
   import §5!G§.§&2§;
   import §;n§.§^!;§;
   import §<";§.§'y§;
   import §=#§.§5!S§;
   import §>s§.§;"&§;
   import §>s§.§@c§;
   import §?"§.§'T§;
   import §@",§.§6!B§;
   import §@",§.§`f§;
   import §[!-§.§9!S§;
   import §[!-§.§="B§;
   import §[!-§.§?x§;
   import §^!U§.§,J§;
   import §^!U§.§2!M§;
   import §^!U§.§39§;
   import §^!U§.§7@§;
   import §^!o§.§ T§;
   import §^!o§.§=1§;
   import §`!n§.LevelManager;
   import com.AngryBirds.friendsbar.§=!7§;
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
   
   public class §-#§ extends §5!S§
   {
      
      public static const STATE_NAME:String = "TournamentState";
      
      private static const §@!2§:int = -20;
      
      private static const §9f§:int = 0;
       
      
      private var §!!w§:Array;
      
      protected var §<!n§:§ T§;
      
      protected var §3O§:§ T§;
      
      protected var §>!q§:§ T§;
      
      private var §["'§:Array;
      
      private var §>!§:§9!S§;
      
      protected var §]!d§:Array;
      
      protected var §?!p§:int = 0;
      
      private var §>W§:Boolean = false;
      
      public function §-#§(param1:Boolean = false, param2:String = "TournamentState")
      {
         this.§["'§ = [97,112,112,108,105,99,97,116,105,111,110,47,106,115,111,110];
         super(param1,param2);
      }
      
      public static function §!U§(param1:*, param2:int = 2, param3:Boolean = false, param4:Boolean = false) : String
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
         §2!K§ = new §^0§(this);
         §2!K§.init(§%^§.§?>§.Views.View_Tournament[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.playThemeMusic();
         (§&2§.§5!k§ as §,"I§).§'!e§(§=!7§.§&"5§);
         §,"I§.§&q§.§ h§("Tournament scores");
         §2!K§.getItemByName("Button_PreviousResults").setVisibility(false);
         this.requestTournamentInfo();
      }
      
      protected function playThemeMusic() : void
      {
         var _loc1_:§;"&§ = §,"I§.§&q§.§1H§();
         _loc1_.§ 7§(§@c§.§?!M§);
      }
      
      protected function requestTournamentInfo() : void
      {
         var _loc6_:§]!<§ = null;
         var _loc7_:URLRequest = null;
         §2!K§.getItemByName("loadingTournament").setVisibility(true);
         var _loc1_:§]!<§ = §2!K§.getItemByName("LevelButton1") as §]!<§;
         var _loc2_:§]!<§ = §2!K§.getItemByName("LevelButton2") as §]!<§;
         var _loc3_:§]!<§ = §2!K§.getItemByName("LevelButton3") as §]!<§;
         var _loc4_:§]!<§ = §2!K§.getItemByName("LevelButton4") as §]!<§;
         var _loc5_:Array = [_loc1_,_loc2_,_loc3_,_loc4_];
         for each(_loc6_ in _loc5_)
         {
            _loc6_.setVisibility(false);
         }
         (_loc7_ = §?x§.§>t§(AngryBirdsFP11.§#"@§ + "/tournamentinit")).method = URLRequestMethod.POST;
         _loc7_.contentType = this.§""I§();
         this.§>!§ = new §9!S§(null,2);
         this.§>!§.addEventListener(Event.COMPLETE,this.§6[§);
         this.§>!§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§>!§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§>!§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§>!§.load(_loc7_);
      }
      
      private function onError(param1:Event) : void
      {
         if(param1.type == §="B§.§2"B§)
         {
            §`B§.§#!i§(§5"§.§;s§);
         }
         else
         {
            §`B§.§#!i§();
         }
      }
      
      private function §""I§() : String
      {
         return this.§%m§(this.§["'§);
      }
      
      private function §%m§(param1:Array) : String
      {
         var _loc3_:int = 0;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += String.fromCharCode(_loc3_);
         }
         return _loc2_;
      }
      
      private function §6[§(param1:Event) : void
      {
         var _loc4_:Object = null;
         §2!K§.getItemByName("loadingTournament").setVisibility(false);
         if(param1.currentTarget.data)
         {
            _loc4_ = JSON.parse(param1.currentTarget.data);
            §=1§.§1[§.injectData(_loc4_);
         }
         var _loc2_:Boolean = §'T§.§;6§();
         if(_loc2_)
         {
            §,"I§.§?!v§.§4"&§(§=1§.§1[§.§;9§);
            §`"J§.§1[§.§'!p§();
         }
         var _loc3_:* = false;
         if(§=1§.§1[§.previousTournament)
         {
            _loc3_ = §=1§.§1[§.previousTournament != null;
         }
         §2!K§.getItemByName("Button_PreviousResults").setVisibility(_loc3_);
         (AngryBirdsFP11.sUserProgress as §'y§).§7!s§(§=1§.§1[§.levelScores);
         if(_loc2_)
         {
            this.§"1§();
         }
         this.injectData();
      }
      
      private function §"1§() : void
      {
         if(§=1§.§1[§.§,!X§.§8!Z§)
         {
            §`B§.§`]§(§=1§.§1[§.§,!X§.§8!Z§);
         }
         else
         {
            §`B§.§'"5§();
         }
         var _loc1_:String = §'y§.§-O§ + "_" + §=1§.§1[§.§,!X§.§!">§;
         if(§=1§.§1[§.§,!X§.§!">§ == §=1§.§8V§)
         {
            _loc1_ = §'y§.§8!+§;
         }
      }
      
      override public function deActivate() : void
      {
         var _loc2_:§]!<§ = null;
         super.deActivate();
         if(this.§<!n§)
         {
            this.§<!n§.dispose();
         }
         if(this.§3O§)
         {
            this.§3O§.dispose();
         }
         if(this.§>!q§)
         {
            this.§>!q§.dispose();
         }
         this.§]!d§ = §=1§.§1[§.§;9§;
         var _loc1_:int = 0;
         while(_loc1_ < this.§]!d§.length)
         {
            _loc2_ = §2!K§.getItemByName("LevelButton" + (_loc1_ + 1)) as §]!<§;
            if(_loc2_ && (_loc2_.mClip as MovieClip).currentFrameLabel == "Closed")
            {
               (_loc2_.mClip as MovieClip).removeEventListener(MouseEvent.MOUSE_UP,this.§1" §);
               break;
            }
            _loc1_++;
         }
         LevelManager.§]!5§ = null;
      }
      
      public function injectData() : void
      {
         var _loc2_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:§2!M§ = null;
         var _loc8_:§2t§ = null;
         var _loc9_:String = null;
         var _loc10_:§2t§ = null;
         var _loc11_:String = null;
         this.§?!p§ = getTimer();
         var _loc3_:int = this.setLevelButtons();
         var _loc4_:Array = [];
         this.§!!w§ = [];
         var _loc5_:Array = §=1§.§1[§.§3!N§();
         for each(_loc6_ in _loc5_)
         {
            if(_loc8_ = §1!1§.§7"8§(_loc6_.u))
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
            if(_loc6_.u == (AngryBirdsFP11.sUserProgress as §'y§).§;#§)
            {
               _loc6_.p = _loc3_;
               _loc2_ = _loc6_;
            }
            this.§!!w§.push(§,J§.§@6§(_loc6_));
            _loc4_.push(§,J§.§@6§(_loc6_));
         }
         if(_loc2_ == null)
         {
            _loc9_ = (AngryBirdsFP11.sUserProgress as §'y§).§;#§;
            _loc11_ = !!(_loc10_ = §1!1§.§7"8§(_loc9_)) ? _loc10_.name : "You";
            _loc2_ = {
               "r":_loc5_.length + 1,
               "u":_loc9_,
               "n":_loc11_
            };
            _loc2_.p = _loc3_;
            this.§!!w§.push(§,J§.§@6§(_loc2_));
            _loc4_.push(§,J§.§@6§(_loc2_));
         }
         for each(_loc7_ in §=1§.§1[§.§^!6§())
         {
            _loc4_.push(_loc7_);
         }
         (§&2§.§5!k§ as §,"I§).§6!b§.§5#§(_loc4_);
         this.§;!f§();
         this.§ !Y§(_loc2_.r);
      }
      
      private function §[!=§(param1:Array) : void
      {
         var _loc4_:§2t§ = null;
         var _loc5_:Boolean = false;
         var _loc6_:§,J§ = null;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc2_:Dictionary = §1!1§.§27§();
         for each(_loc4_ in _loc2_)
         {
            _loc5_ = false;
            for each(_loc6_ in this.§!!w§)
            {
               if(_loc4_.§;#§ == _loc6_.userId)
               {
                  _loc5_ = true;
               }
            }
            if(!_loc5_)
            {
               _loc7_ = "";
               if(_loc4_.§;#§)
               {
                  _loc7_ = _loc4_.§;#§;
               }
               _loc8_ = "";
               if(_loc4_.name)
               {
                  _loc8_ = _loc4_.name;
               }
               param1.push(new §39§(_loc7_,_loc8_,"",!§7@§.§1[§.§["A§(_loc7_)));
            }
         }
      }
      
      protected function setLevelButtons() : int
      {
         var _loc5_:§]!<§ = null;
         var _loc6_:§]!<§ = null;
         var _loc7_:String = null;
         var _loc8_:§'y§ = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:Number = NaN;
         this.§]!d§ = §=1§.§1[§.§;9§;
         var _loc1_:Array = [];
         var _loc2_:int = 0;
         while(_loc2_ < this.§]!d§.length)
         {
            _loc5_ = §2!K§.getItemByName("LevelButton" + (_loc2_ + 1)) as §]!<§;
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
               _loc7_ = this.§]!d§[_loc2_];
               if(§=1§.§1[§.isLevelOpen(_loc7_))
               {
                  _loc6_.mClip.gotoAndStop("Open");
                  _loc6_.setEnabled(true);
                  _loc6_.mClip.TextField_LevelNum.text.text = _loc2_ + 1 + "";
                  if((_loc9_ = (_loc8_ = AngryBirdsFP11.sUserProgress as §'y§).§']§(_loc7_)) && _loc9_ <= 3)
                  {
                     _loc6_.mClip.LevelSelection_Crown.gotoAndStop(_loc9_);
                  }
                  else
                  {
                     _loc6_.mClip.LevelSelection_Crown.gotoAndStop(4);
                  }
                  _loc10_ = _loc8_.§6!C§(_loc7_);
                  _loc6_.mClip.Textfield_LevelScore.text.text = §!U§(_loc10_);
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
      
      private function §1" §(param1:MouseEvent) : void
      {
      }
      
      private function §<"9§(param1:int) : §,J§
      {
         var _loc2_:§2!M§ = null;
         for each(_loc2_ in this.§!!w§)
         {
            if(_loc2_ is §,J§)
            {
               if((_loc2_ as §,J§).§+!r§ == param1)
               {
                  return _loc2_ as §,J§;
               }
            }
         }
         return null;
      }
      
      private function § !Y§(param1:int) : void
      {
         var _loc2_:int = this.§!!w§.length;
         if(_loc2_ == 1)
         {
            this.§!z§(null);
            this.§5n§(this.§<"9§(param1));
            this.§`!8§(null);
         }
         else if(_loc2_ == 2)
         {
            this.§!z§(this.§<"9§(1));
            this.§5n§(this.§<"9§(2));
            this.§`!8§(null);
         }
         else
         {
            if(_loc2_ <= 2)
            {
               throw new Error("No players in the array!");
            }
            if(param1 >= 3)
            {
               this.§!z§(this.§<"9§(1));
               this.§5n§(this.§<"9§(param1 - 1));
               this.§`!8§(this.§<"9§(param1));
               if(param1 >= 4)
               {
                  if(this.§3O§)
                  {
                     this.§3O§.x = §@!2§;
                  }
                  if(this.§>!q§)
                  {
                     this.§>!q§.x = §@!2§;
                  }
               }
               else
               {
                  if(this.§3O§)
                  {
                     this.§3O§.x = §9f§;
                  }
                  if(this.§>!q§)
                  {
                     this.§>!q§.x = §9f§;
                  }
               }
            }
            else
            {
               this.§!z§(this.§<"9§(1));
               this.§5n§(this.§<"9§(2));
               this.§`!8§(this.§<"9§(3));
            }
         }
      }
      
      protected function §!z§(param1:§,J§) : void
      {
         if(param1 == null)
         {
            return;
         }
         this.§<!n§ = new § T§(param1,1,this.starPillarOwnDefinition,this.starPillarEnemyDefinition);
         §2!K§.getItemByName("StarPillarPlaceHolder1").mClip.addChild(this.§<!n§);
      }
      
      protected function §5n§(param1:§,J§) : void
      {
         if(param1 == null)
         {
            return;
         }
         this.§3O§ = new § T§(param1,2,this.starPillarOwnDefinition,this.starPillarEnemyDefinition);
         §2!K§.getItemByName("StarPillarPlaceHolder2").mClip.addChild(this.§3O§);
      }
      
      protected function §`!8§(param1:§,J§) : void
      {
         if(param1 == null)
         {
            return;
         }
         this.§>!q§ = new § T§(param1,3,this.starPillarOwnDefinition,this.starPillarEnemyDefinition);
         §2!K§.getItemByName("StarPillarPlaceHolder3").mClip.addChild(this.§>!q§);
      }
      
      protected function get starPillarOwnDefinition() : String
      {
         return "StarpillarOwn";
      }
      
      protected function get starPillarEnemyDefinition() : String
      {
         return "StarpillarEnemy";
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^!;§) : void
      {
         switch(param2)
         {
            case "BACK":
               mNextState = §6!B§.STATE_NAME;
               break;
            case "PREVIOUS_RESULTS":
               mNextState = StateLastWeeksTournamentResults.STATE_NAME;
               break;
            case "LEVEL_1":
               this.§>Y§(this.§]!d§[0]);
               break;
            case "LEVEL_2":
               this.§>Y§(this.§]!d§[1]);
               break;
            case "LEVEL_3":
               this.§>Y§(this.§]!d§[2]);
               break;
            case "LEVEL_4":
               this.§>Y§(this.§]!d§[3]);
               break;
            case "showCredits":
               mNextState = §`f§.STATE_NAME;
         }
      }
      
      protected function §>Y§(param1:String) : void
      {
         LevelManager.§^p§(LevelManager.§&!1§(param1.toLowerCase()));
         mNextState = §0§.STATE_NAME;
      }
      
      protected function §;!f§() : void
      {
         var _loc1_:Array = §=1§.§1[§.§&">§();
         §2!K§.setText(_loc1_[0],"DaysLeftTextfield");
         var _loc2_:§#p§ = §2!K§.getItemByName("DaysLeftTextfield") as §#p§;
         _loc2_.§`E§.textColor = _loc1_[1];
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §5!S§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§;!f§();
         if(mNextState.length > 0)
         {
            return §5!S§.STATE_STATUS_COMPLETED;
         }
         return §5!S§.STATE_STATUS_RUNNING;
      }
   }
}
