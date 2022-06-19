package §<G§
{
   import §!!t§.§,-§;
   import §"",§.§+§;
   import §"",§.§<?§;
   import §+"§.§'!0§;
   import §+I§.§9!%§;
   import §,"-§.§2!P§;
   import §1"2§.§,!]§;
   import §1k§.§;W§;
   import §1k§.§`!d§;
   import §2!,§.§!"§;
   import §2!,§.§!Q§;
   import §2!,§.§%!j§;
   import §2!,§.§=n§;
   import §7N§.§43§;
   import §7N§.§]@§;
   import §9"%§.§"!n§;
   import §9"%§.§,!S§;
   import §9"%§.§4!J§;
   import §<!e§.§%%§;
   import §<!e§.§[!t§;
   import §>y§.§`"2§;
   import §?"#§.§%!X§;
   import §?"#§.§'@§;
   import §[!K§.§2&§;
   import §[!K§.§=!e§;
   import §[!z§.LevelManager;
   import §]!F§.§"!j§;
   import §]!F§.§1"-§;
   import com.AngryBirds.friendsbar.§2!h§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.Dictionary;
   
   public class §5w§ extends §,-§
   {
      
      public static const STATE_NAME:String = "TournamentState";
      
      private static const §+!t§:int = -20;
      
      private static const §78§:int = 0;
       
      
      private var §%!Y§:Array;
      
      private var §5" §:§%%§;
      
      private var §'">§:§%%§;
      
      private var §;y§:§%%§;
      
      private var § !u§:Array;
      
      private var §7!F§:§,!S§;
      
      protected var §3B§:Array;
      
      public function §5w§(param1:Boolean = false, param2:String = "TournamentState")
      {
         this.§ !u§ = [97,112,112,108,105,99,97,116,105,111,110,47,106,115,111,110];
         super(param1,param2);
      }
      
      public static function §4"9§(param1:*, param2:int = 2, param3:Boolean = false, param4:Boolean = false) : String
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
         §2"-§ = new §"!j§(this);
         §2"-§.init(§1"-§.§ !>§.Views.View_Tournament[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.playThemeMusic();
         (§9!%§.§ !W§ as § W§).§+"#§(§2!h§.§if §);
         § W§.§%!y§.§1!z§("Tournament scores");
         §2"-§.getItemByName("Button_PreviousResults").setVisibility(false);
         this.§8!c§();
      }
      
      protected function playThemeMusic() : void
      {
         var _loc1_:§;W§ = § W§.§%!y§.§1`§();
         _loc1_.§>4§(§`!d§.§90§);
      }
      
      private function §8!c§() : void
      {
         var _loc6_:§<?§ = null;
         var _loc7_:URLRequest = null;
         §2"-§.getItemByName("loadingTournament").setVisibility(true);
         var _loc1_:§<?§ = §2"-§.getItemByName("LevelButton1") as §<?§;
         var _loc2_:§<?§ = §2"-§.getItemByName("LevelButton2") as §<?§;
         var _loc3_:§<?§ = §2"-§.getItemByName("LevelButton3") as §<?§;
         var _loc4_:§<?§ = §2"-§.getItemByName("LevelButton4") as §<?§;
         var _loc5_:Array = [_loc1_,_loc2_,_loc3_,_loc4_];
         for each(_loc6_ in _loc5_)
         {
            _loc6_.setVisibility(false);
         }
         (_loc7_ = §4!J§.§3j§(AngryBirdsFP11.§7!!§ + "/tournamentinit")).method = URLRequestMethod.POST;
         _loc7_.contentType = this.§'G§();
         this.§7!F§ = new §,!S§(null,2);
         this.§7!F§.addEventListener(Event.COMPLETE,this.§+C§);
         this.§7!F§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§7!F§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§7!F§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§7!F§.load(_loc7_);
      }
      
      private function onError(param1:Event) : void
      {
         if(param1.type == §"!n§.§"+§)
         {
            §43§.§ "6§(§]@§.§76§);
         }
         else
         {
            §43§.§ "6§();
         }
      }
      
      private function §'G§() : String
      {
         return this.§0H§(this.§ !u§);
      }
      
      private function §0H§(param1:Array) : String
      {
         var _loc3_:int = 0;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += String.fromCharCode(_loc3_);
         }
         return _loc2_;
      }
      
      private function §+C§(param1:Event) : void
      {
         var _loc4_:Object = null;
         §2"-§.getItemByName("loadingTournament").setVisibility(false);
         if(param1.currentTarget.data)
         {
            _loc4_ = JSON.parse(param1.currentTarget.data);
            §[!t§.§8c§.injectData(_loc4_);
         }
         var _loc2_:Boolean = §`"2§.§7m§();
         if(_loc2_)
         {
            §43§.§4V§();
            § W§.§,2§.§7!G§(§[!t§.§8c§.levels);
            §'!0§.§8c§.§]!f§();
         }
         var _loc3_:* = false;
         if(§[!t§.§8c§.previousTournament)
         {
            _loc3_ = §[!t§.§8c§.previousTournament != null;
         }
         §2"-§.getItemByName("Button_PreviousResults").setVisibility(_loc3_);
         (AngryBirdsFP11.sUserProgress as §2!P§).§?>§(§[!t§.§8c§.levelScores);
         this.injectData();
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§5" §)
         {
            this.§5" §.dispose();
         }
         if(this.§'">§)
         {
            this.§'">§.dispose();
         }
         if(this.§;y§)
         {
            this.§;y§.dispose();
         }
      }
      
      public function injectData() : void
      {
         var _loc2_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:§=n§ = null;
         var _loc8_:§'@§ = null;
         var _loc9_:String = null;
         var _loc10_:§'@§ = null;
         var _loc11_:String = null;
         var _loc3_:int = this.§ §();
         var _loc4_:Array = [];
         this.§%!Y§ = [];
         var _loc5_:Array = §[!t§.§8c§.§0!<§();
         for each(_loc6_ in _loc5_)
         {
            if(_loc8_ = §%!X§.§'E§(_loc6_.u))
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
            if(_loc6_.u == (AngryBirdsFP11.sUserProgress as §2!P§).§!!'§)
            {
               _loc6_.p = _loc3_;
               _loc2_ = _loc6_;
            }
            this.§%!Y§.push(§!Q§.§ N§(_loc6_));
            _loc4_.push(§!Q§.§ N§(_loc6_));
         }
         if(_loc2_ == null)
         {
            _loc9_ = (AngryBirdsFP11.sUserProgress as §2!P§).§!!'§;
            _loc11_ = !!(_loc10_ = §%!X§.§'E§(_loc9_)) ? _loc10_.name : "You";
            _loc2_ = {
               "r":_loc5_.length + 1,
               "u":_loc9_,
               "n":_loc11_
            };
            _loc2_.p = _loc3_;
            this.§%!Y§.push(§!Q§.§ N§(_loc2_));
            _loc4_.push(§!Q§.§ N§(_loc2_));
         }
         for each(_loc7_ in §[!t§.§8c§.§%j§())
         {
            _loc4_.push(_loc7_);
         }
         (§9!%§.§ !W§ as § W§).§[!E§.§09§(_loc4_);
         this.§!4§();
         this.§+"-§(_loc2_.r);
      }
      
      private function §3"6§(param1:Array) : void
      {
         var _loc4_:§'@§ = null;
         var _loc5_:Boolean = false;
         var _loc6_:§!Q§ = null;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc2_:Dictionary = §%!X§.§+X§();
         for each(_loc4_ in _loc2_)
         {
            _loc5_ = false;
            for each(_loc6_ in this.§%!Y§)
            {
               if(_loc4_.§!!'§ == _loc6_.userId)
               {
                  _loc5_ = true;
               }
            }
            if(!_loc5_)
            {
               _loc7_ = "";
               if(_loc4_.§!!'§)
               {
                  _loc7_ = _loc4_.§!!'§;
               }
               _loc8_ = "";
               if(_loc4_.name)
               {
                  _loc8_ = _loc4_.name;
               }
               param1.push(new §%!j§(_loc7_,_loc8_,"",!§!"§.§8c§.§["§(_loc7_)));
            }
         }
      }
      
      private function § §() : int
      {
         var _loc8_:§<?§ = null;
         var _loc9_:String = null;
         var _loc10_:§2!P§ = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         this.§3B§ = §[!t§.§8c§.levels;
         var _loc1_:§<?§ = §2"-§.getItemByName("LevelButton1") as §<?§;
         var _loc2_:§<?§ = §2"-§.getItemByName("LevelButton2") as §<?§;
         var _loc3_:§<?§ = §2"-§.getItemByName("LevelButton3") as §<?§;
         var _loc4_:§<?§ = §2"-§.getItemByName("LevelButton4") as §<?§;
         var _loc5_:Array = [_loc1_,_loc2_,_loc3_,_loc4_];
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         while(_loc7_ < _loc5_.length)
         {
            _loc8_ = _loc5_[_loc7_];
            _loc9_ = this.§3B§[_loc7_];
            _loc8_.mClip.TextField_LevelNum.text.text = _loc7_ + 1 + "";
            _loc8_.setVisibility(true);
            if((_loc11_ = (_loc10_ = AngryBirdsFP11.sUserProgress as §2!P§).§[!l§(_loc9_)) && _loc11_ <= 3)
            {
               _loc8_.mClip.LevelSelection_Crown.gotoAndStop(_loc11_);
            }
            else
            {
               _loc8_.mClip.LevelSelection_Crown.gotoAndStop(4);
            }
            _loc12_ = _loc10_.§8l§(_loc9_);
            _loc8_.mClip.Textfield_LevelScore.text.text = §4"9§(_loc12_);
            _loc13_ = _loc10_.getStarsForLevel(_loc9_,_loc12_);
            _loc8_.mClip.MovieClip_Stars.gotoAndStop(_loc13_.toString() + "_stars");
            if(_loc12_ == 0)
            {
               _loc8_.mClip.MovieClip_Stars.visible = false;
               _loc8_.mClip.Textfield_LevelScore.visible = false;
               _loc8_.mClip.GiftboxMovieclip.visible = true;
            }
            else
            {
               _loc8_.mClip.MovieClip_Stars.visible = true;
               _loc8_.mClip.Textfield_LevelScore.visible = true;
               _loc8_.mClip.GiftboxMovieclip.visible = false;
            }
            _loc6_ += _loc12_;
            _loc7_++;
         }
         return _loc6_;
      }
      
      private function §+T§(param1:int) : §!Q§
      {
         var _loc2_:§=n§ = null;
         for each(_loc2_ in this.§%!Y§)
         {
            if(_loc2_ is §!Q§)
            {
               if((_loc2_ as §!Q§).§]!S§ == param1)
               {
                  return _loc2_ as §!Q§;
               }
            }
         }
         return null;
      }
      
      private function §+"-§(param1:int) : void
      {
         var _loc2_:int = this.§%!Y§.length;
         if(_loc2_ == 1)
         {
            this.§?!u§(null);
            this.§^w§(this.§+T§(param1));
            this.§!h§(null);
         }
         else if(_loc2_ == 2)
         {
            this.§?!u§(this.§+T§(1));
            this.§^w§(this.§+T§(2));
            this.§!h§(null);
         }
         else
         {
            if(_loc2_ <= 2)
            {
               throw new Error("No players in the array!");
            }
            if(param1 >= 3)
            {
               this.§?!u§(this.§+T§(1));
               this.§^w§(this.§+T§(param1 - 1));
               this.§!h§(this.§+T§(param1));
               if(param1 >= 4)
               {
                  if(this.§'">§)
                  {
                     this.§'">§.x = §+!t§;
                  }
                  if(this.§;y§)
                  {
                     this.§;y§.x = §+!t§;
                  }
               }
               else
               {
                  if(this.§'">§)
                  {
                     this.§'">§.x = §78§;
                  }
                  if(this.§;y§)
                  {
                     this.§;y§.x = §78§;
                  }
               }
            }
            else
            {
               this.§?!u§(this.§+T§(1));
               this.§^w§(this.§+T§(2));
               this.§!h§(this.§+T§(3));
            }
         }
      }
      
      private function §?!u§(param1:§!Q§) : void
      {
         if(param1 == null)
         {
            return;
         }
         this.§5" § = new §%%§(param1,1);
         §2"-§.getItemByName("StarPillarPlaceHolder1").mClip.addChild(this.§5" §);
      }
      
      private function §^w§(param1:§!Q§) : void
      {
         if(param1 == null)
         {
            return;
         }
         this.§'">§ = new §%%§(param1,2);
         §2"-§.getItemByName("StarPillarPlaceHolder2").mClip.addChild(this.§'">§);
      }
      
      private function §!h§(param1:§!Q§) : void
      {
         if(param1 == null)
         {
            return;
         }
         this.§;y§ = new §%%§(param1,3);
         §2"-§.getItemByName("StarPillarPlaceHolder3").mClip.addChild(this.§;y§);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!]§) : void
      {
         switch(param2)
         {
            case "BACK":
               mNextState = §=!e§.STATE_NAME;
               break;
            case "PREVIOUS_RESULTS":
               mNextState = StateLastWeeksTournamentResults.STATE_NAME;
               break;
            case "LEVEL_1":
               this.§5!n§(this.§3B§[0]);
               break;
            case "LEVEL_2":
               this.§5!n§(this.§3B§[1]);
               break;
            case "LEVEL_3":
               this.§5!n§(this.§3B§[2]);
               break;
            case "LEVEL_4":
               this.§5!n§(this.§3B§[3]);
               break;
            case "showCredits":
               mNextState = §2&§.STATE_NAME;
         }
      }
      
      private function §5!n§(param1:String) : void
      {
         LevelManager.§'!"§(LevelManager.§?">§(param1.toLowerCase()));
         mNextState = §<i§.STATE_NAME;
      }
      
      private function §!4§() : void
      {
         var _loc1_:Array = §[!t§.§8c§.§@§();
         §2"-§.setText(_loc1_[0],"DaysLeftTextfield");
         var _loc2_:§+§ = §2"-§.getItemByName("DaysLeftTextfield") as §+§;
         _loc2_.§"<§.textColor = _loc1_[1];
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,-§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§!4§();
         if(mNextState.length > 0)
         {
            return §,-§.STATE_STATUS_COMPLETED;
         }
         return §,-§.STATE_STATUS_RUNNING;
      }
   }
}
