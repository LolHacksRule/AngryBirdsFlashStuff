package §^"f§
{
   import §%#A§.§'=§;
   import §%#A§.§]!_§;
   import §%#A§.§^!4§;
   import §&"J§.§2#<§;
   import §&"J§.§3!3§;
   import §&"J§.§4"n§;
   import §&"J§.§?$6§;
   import §+#t§.§!"l§;
   import §+#t§.§#"D§;
   import §+#t§.§-"3§;
   import §+#t§.§5V§;
   import §1#W§.§!#&§;
   import §5"?§.§4"-§;
   import §6"r§.§!#A§;
   import §8Z§.§-#C§;
   import §8Z§.§6"w§;
   import §9"1§.§+!x§;
   import §<"1§.§[!K§;
   import §[0§.§;$-§;
   import §[G§.§4!0§;
   import §[G§.§8A§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §^d§
   {
      
      private static var §6#o§:int = 3;
       
      
      private var §?Q§:§]!_§;
      
      private var §"!#§:§4!0§;
      
      private var §&C§:§-#C§;
      
      private var §%#Y§:§-#C§;
      
      private var §'#6§:§-"3§;
      
      private var §9'§:§-"3§;
      
      private var §=#§:Boolean = false;
      
      private var § #6§:Boolean;
      
      private var §["m§:Boolean;
      
      private var §<!O§:§4"n§;
      
      private var §7!C§:int;
      
      private var §%'§:§4"n§;
      
      private var §6s§:int = -1;
      
      private var §@"7§:Array;
      
      private var §7!v§:String;
      
      private var §6#<§:§4"n§;
      
      private var §`!D§:§?$6§;
      
      protected var §0!g§:§]!_§;
      
      protected var §5!o§:§]!_§;
      
      protected var §%"8§:§[!K§;
      
      protected var §=e§:§'=§;
      
      protected var §#?§:§'=§;
      
      protected var §0"U§:§'=§;
      
      protected var §`">§:§'=§;
      
      protected var §["+§:§'=§;
      
      protected var §'@§:§'=§;
      
      protected var §=!`§:§^!4§;
      
      protected var § $3§:§^!4§;
      
      protected var §;#J§:§^!4§;
      
      protected var §!!%§:§^!4§;
      
      protected var §;e§:§^!4§;
      
      protected var §0$6§:§^!4§;
      
      protected var §,#f§:Array;
      
      private const §3"5§:int = -158;
      
      private const §0"[§:int = -41;
      
      private var §-#j§:Boolean = false;
      
      public function §^d§(param1:§]!_§)
      {
         this.§@"7§ = [];
         this.§,#f§ = [];
         super();
         this.§?Q§ = param1;
         this.§5"o§();
      }
      
      protected static function get userProgress() : §4"-§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §4"-§;
      }
      
      private function §5"o§() : void
      {
         this.§5!o§ = this.§?Q§.getItemByName("Container_VsHero") as §]!_§;
         this.§%"8§ = this.§?Q§.getItemByName("Container_VsEnemy") as §]!_§;
         this.§0!g§ = this.§?Q§.getItemByName("Container_Vs") as §]!_§;
         this.§=e§ = this.§?Q§.getItemByName("MovieClip_VsAnimation") as §'=§;
         this.§#?§ = this.§?Q§.getItemByName("MovieClip_Boom") as §'=§;
         this.§0"U§ = this.§?Q§.getItemByName("MovieClip_VsProfilePicHero") as §'=§;
         this.§`">§ = this.§?Q§.getItemByName("MovieClip_VsProfilePicEnemy") as §'=§;
         this.§["+§ = this.§?Q§.getItemByName("MovieClip_CrownHero") as §'=§;
         this.§'@§ = this.§?Q§.getItemByName("MovieClip_CrownEnemy") as §'=§;
         this.§=!`§ = this.§?Q§.getItemByName("TextField_VsScore") as §^!4§;
         this.§ $3§ = this.§?Q§.getItemByName("TextField_VsScoreEnemy") as §^!4§;
         this.§;#J§ = this.§?Q§.getItemByName("TextField_NameHero") as §^!4§;
         this.§!!%§ = this.§?Q§.getItemByName("TextField_NameEnemy") as §^!4§;
         this.§;e§ = this.§?Q§.getItemByName("TextField_VsPositionHero") as §^!4§;
         this.§0$6§ = this.§?Q§.getItemByName("TextField_VsPositionEnemy") as §^!4§;
         this.§,#f§ = [this.§=e§,this.§#?§,this.§=e§];
      }
      
      public function activate() : void
      {
         if(this.§&C§)
         {
            this.§&C§.play();
         }
         if(this.§%#Y§)
         {
            this.§%#Y§.play();
         }
         this.§<!I§();
         if(this.§6#<§)
         {
            this.§5#,§(this.§6#<§.userName,this.§!!%§,this.§?Q§.getItemByName("EnemyNameMask").mClip);
         }
      }
      
      public function deActivate() : void
      {
         if(this.§&C§)
         {
            this.§&C§.pause();
            this.§&C§.§+"+§ = false;
         }
         if(this.§%#Y§)
         {
            this.§%#Y§.pause();
            this.§%#Y§.§+"+§ = false;
         }
      }
      
      public function levelStarted(param1:§4!0§, param2:String, param3:Boolean = false) : void
      {
         this.§7!v§ = param2;
         this.§;#P§();
         this.§>c§();
         this.§%"8§.setVisibility(true);
         this.§0!g§.setVisibility(false);
         this.§"!#§ = param1;
         this.§=#§ = false;
         this.§%'§ = null;
         this.§6s§ = -1;
         this.§@"7§ = [];
         this.§=e§.setVisibility(true);
         this.§=e§.§&"X§("Start");
         this.§=e§.isPlaying = true;
         if(!this.§ #6§)
         {
            this.§7!C§ = -1;
         }
         this.§5!o§.x = this.§3"5§;
         this.§%"8§.y = this.§0"[§;
         if(this.§%#Y§)
         {
            this.§%#Y§.stop();
            this.§%#Y§ = null;
         }
         if(this.§&C§)
         {
            this.§&C§.stop();
            this.§&C§ = null;
         }
         this.§%"8§.mClip.VersusComponent_Background.gotoAndStop((§!#A§.§>q§ as §-#+§).§'M§.§&!§());
         this.§5!o§.mClip.VersusComponent_Background.gotoAndStop((§!#A§.§>q§ as §-#+§).§'M§.§&!§());
         this.§-#j§ = param3;
         §;$-§.§ "D§.removeEventListener(§+!x§.§<!J§,this.§0#;§);
         this.§]![§();
      }
      
      private function initialize() : void
      {
         var _loc1_:int = 0;
         var _loc4_:int = 0;
         this.§,"@§();
         this.§<!I§();
         if(this.§%#Y§)
         {
            this.§%#Y§.stop();
            this.§%#Y§ = null;
         }
         if(this.§&C§)
         {
            this.§&C§.stop();
            this.§&C§ = null;
         }
         this.§5!o§.x = this.§3"5§;
         this.§%'§ = null;
         var _loc2_:int = !!this.§ #6§ ? int(this.§7!C§) : int(userProgress.getScoreForLevel(this.§7!v§));
         _loc2_ = userProgress.getScoreForLevel(this.§7!v§);
         this.§<!O§ = this.§"!#§.§`#q§();
         if(this.§ #6§)
         {
            while(this.§<!O§ && this.§7!C§ > this.§<!O§.levelScore)
            {
               if((_loc4_ = this.§"!#§.data.indexOf(this.§<!O§) - 1) >= 0)
               {
                  this.§<!O§ = this.§"!#§.data[_loc4_];
               }
               else
               {
                  this.§<!O§ = null;
               }
            }
         }
         if(this.§<!O§)
         {
            this.§ #D§(this.§<!O§);
            _loc1_ = this.§<!O§.rank + 1;
            this.§%"8§.setVisibility(true);
            this.§=e§.setVisibility(true);
         }
         else
         {
            _loc1_ = 1;
            this.§%"8§.setVisibility(false);
            this.§=e§.setVisibility(false);
            this.§5!o§.x = this.§%"8§.x;
         }
         this.§;e§.setText(_loc1_.toString());
         if(_loc2_ > 0)
         {
            userProgress.§&#@§(this.§7!v§,_loc1_);
         }
         var _loc3_:int = userProgress.getEagleScoreForLevel(this.§7!v§);
         this.§["+§.setVisibility(_loc1_ <= 3 && (_loc2_ > 0 || _loc3_ > 0) && !this.§-#j§);
         if(_loc1_ > 0 && _loc1_ <= 3 && (_loc2_ > 0 || _loc3_ > 0))
         {
            this.§["+§.§&"X§(["Gold","Silver","Bronze"][_loc1_ - 1]);
         }
         else
         {
            this.§["+§.§&!r§(1);
         }
         this.§0!g§.setVisibility(true);
         §;$-§.§ "D§.addEventListener(§+!x§.§<!J§,this.§0#;§);
         this.§=#§ = true;
      }
      
      public function run(param1:Number) : Boolean
      {
         if(this.§"!#§.§"$1§ || this.§["m§)
         {
            this.§0!g§.setVisibility(false);
            return true;
         }
         if(!this.§=#§)
         {
            this.initialize();
            if(!this.§ #6§)
            {
               this.§ #6§ = true;
            }
         }
         this.updateAnimations(param1);
         return this.§%'§ == null;
      }
      
      public function §'"G§(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:int = 0;
         if(this.§7!C§ == param1)
         {
            return;
         }
         this.§7!C§ = param1;
         this.§=!`§.setText(this.§2#4§(this.§7!C§));
         if(!this.§<!O§)
         {
            return;
         }
         if(this.§"!#§.§"$1§ || this.§["m§)
         {
            return;
         }
         while(this.§<!O§ && this.§7!C§ > this.§<!O§.levelScore)
         {
            this.§@"7§.unshift(this.§<!O§);
            if((_loc4_ = this.§"!#§.data.indexOf(this.§<!O§) - 1) >= 0)
            {
               this.§<!O§ = this.§"!#§.data[_loc4_];
            }
            else
            {
               this.§<!O§ = null;
            }
         }
         while(this.§@"7§.length > §6#o§)
         {
            this.§@"7§.pop();
         }
         if(this.§@"7§.length > 0 && !this.§%'§)
         {
            this.§0"A§();
         }
      }
      
      private function § #D§(param1:§4"n§) : void
      {
         this.§'@§.setVisibility(param1.rank <= 3 && !this.§-#j§);
         if(param1.rank > 0 && param1.rank <= 3)
         {
            this.§'@§.§&"X§(["Gold","Silver","Bronze"][param1.rank - 1]);
         }
         this.§0$6§.setText(param1.rank.toString());
         this.§ $3§.setText(this.§2#4§(param1.levelScore));
         this.§#"#§(param1);
      }
      
      private function updateAnimations(param1:Number) : void
      {
         var _loc2_:§'=§ = null;
         for each(_loc2_ in this.§,#f§)
         {
            this.§&#§(_loc2_,param1,true);
         }
      }
      
      private function §#"#§(param1:§4"n§) : void
      {
         var _loc2_:String = §8A§.§&i§(param1.userId);
         var _loc3_:String = param1.userId;
         this.§6#<§ = param1;
         this.§;#P§();
         if(param1 is §2#<§ ? (param1 as §2#<§).profilePicture : null)
         {
            this.§'#6§ = new §!"l§(param1.userId,null,_loc2_,false,§5V§.NORMAL,§5V§.§?!S§);
         }
         else
         {
            this.§'#6§ = new §#"D§(_loc3_,"",false,§5V§.NORMAL,false,(param1 as §3!3§).profileImageURL);
         }
         this.§%-§(this.§`">§,this.§'#6§);
         this.§5#,§(param1.userName,this.§!!%§,this.§?Q§.getItemByName("EnemyNameMask").mClip);
      }
      
      private function §5#,§(param1:String, param2:§^!4§, param3:MovieClip) : String
      {
         if(param1.length > 6)
         {
            param2.mClip.mask = param3;
            param3.visible = true;
         }
         else
         {
            param2.mClip.mask = null;
            param3.visible = false;
         }
         param2.setText(param1);
         return param1;
      }
      
      private function §%-§(param1:§'=§, param2:MovieClip) : void
      {
         while(param1.mClip.numChildren > 0)
         {
            param1.mClip.removeChildAt(0);
         }
         param1.mClip.addChild(param2);
      }
      
      private function §]![§() : void
      {
         var _loc4_:Object = null;
         var _loc1_:String = userProgress.avatarString;
         var _loc2_:String = userProgress.userID;
         if(this.§-#j§)
         {
            this.§`!D§ = this.§"!#§.data[this.§"!#§.§[" §] as §?$6§;
            if(!this.§`!D§)
            {
               _loc4_ = §;$-§.§ "D§.§!"E§();
               _loc4_.ir = _loc4_.i;
               _loc4_.uid = _loc2_;
               if(_loc4_.ir)
               {
                  this.§`!D§ = §?$6§.§2u§(_loc4_);
               }
            }
         }
         this.§>c§();
         var _loc3_:String = this.§`!D§ is §?$6§ ? (this.§`!D§ as §?$6§).profilePicture : null;
         if(_loc3_ && this.§-#j§)
         {
            this.§9'§ = new §!"l§(_loc2_,_loc3_,"",false,§5V§.NORMAL,§5V§.§?!S§);
         }
         else
         {
            this.§9'§ = new §#"D§(_loc2_,"",false,§5V§.NORMAL);
         }
         this.§%-§(this.§0"U§,this.§9'§);
      }
      
      private function §;#P§() : void
      {
         if(this.§'#6§)
         {
            this.§'#6§.dispose();
            this.§'#6§ = null;
         }
      }
      
      private function §>c§() : void
      {
         if(this.§9'§)
         {
            this.§9'§.dispose();
            this.§9'§ = null;
         }
      }
      
      public function set §2m§(param1:Boolean) : void
      {
         this.§["m§ = param1;
         this.§0!g§.setVisibility(!this.§["m§);
      }
      
      private function §0"A§() : void
      {
         this.§%'§ = this.§@"7§.pop();
         this.§%#Y§ = §6"w§.§ "D§.§""3§(this.§5!o§.mClip,{"x":this.§3"5§ + 15},{"x":this.§3"5§},0.5,§6"w§.§@"!§);
         this.§%#Y§.onComplete = this.§]m§;
         this.§%#Y§.play();
         §!#&§.playSound("ui_ingame_scorebox_gain_position","ChannelPowerups");
      }
      
      private function §]m§() : void
      {
         var _loc2_:int = 0;
         if(!this.§%'§)
         {
            return;
         }
         this.§%#Y§ = null;
         this.§#?§.§&"X§("Start");
         this.§#?§.isPlaying = true;
         this.§#?§.setVisibility(true);
         var _loc1_:§4"n§ = this.§@"7§.length > 0 ? this.§@"7§[this.§@"7§.length - 1] : this.§<!O§;
         if(this.§%'§.rank == 1 || _loc1_ == null)
         {
            this.§%"8§.setVisibility(false);
            this.§%#Y§ = §6"w§.§ "D§.§""3§(this.§5!o§.mClip,{"x":this.§%"8§.mClip.x},null,0.5);
            this.§%#Y§.onComplete = this.§'!+§;
            this.§%#Y§.play();
            this.§["+§.§&"X§("Gold");
            this.§;e§.setText("1");
            this.§["+§.setVisibility(!this.§-#j§);
         }
         else
         {
            this.§%#Y§ = §6"w§.§ "D§.§""3§(this.§5!o§.mClip,{"x":this.§3"5§},{"x":this.§3"5§ + 15},0.5);
            this.§%#Y§.onComplete = null;
            this.§%#Y§.play();
            this.§ #D§(_loc1_);
            _loc2_ = _loc1_.rank + 1;
            this.§["+§.setVisibility(_loc2_ <= 3 && !this.§-#j§);
            if(_loc2_ > 0 && _loc2_ <= 3)
            {
               this.§["+§.§&"X§(["Gold","Silver","Bronze"][_loc2_ - 1]);
            }
            this.§;e§.setText(_loc2_.toString());
            this.§&C§ = §6"w§.§ "D§.§""3§(this.§%"8§.mClip,{"y":this.§0"[§},{"y":-150},2,§6"w§.§@"!§);
            this.§&C§.onComplete = this.§%"k§;
            this.§&C§.play();
         }
      }
      
      private function §%"k§() : void
      {
         this.§&C§ = null;
         this.§%'§ = null;
         if(this.§@"7§.length > 0)
         {
            this.§0"A§();
         }
      }
      
      private function §'!+§() : void
      {
         this.§%#Y§ = null;
         this.§%'§ = null;
      }
      
      private function §2#4§(param1:int) : String
      {
         var _loc4_:String = null;
         var _loc2_:String = param1.toString();
         var _loc3_:Array = [];
         if(_loc2_.length % 3 > 0)
         {
            _loc3_.push(_loc2_.substr(0,_loc2_.length % 3));
            _loc2_ = _loc2_.slice(_loc2_.length % 3);
         }
         while(_loc2_.length > 0)
         {
            _loc3_.push(_loc2_.substr(0,3));
            _loc2_ = _loc2_.substr(3);
         }
         for each(_loc4_ in _loc3_)
         {
            _loc2_ += _loc4_ + ",";
         }
         return _loc2_.substr(0,_loc2_.length - 1);
      }
      
      private function §&#§(param1:§'=§, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:String = null;
         if(param1.isPlaying)
         {
            if((_loc4_ = param1.§8#i§(param2)) == "End")
            {
               param1.isPlaying = false;
               if(param3)
               {
                  param1.setVisibility(false);
               }
            }
         }
      }
      
      private function §,"@§() : void
      {
         var _loc1_:§3!3§ = null;
         var _loc2_:§-"3§ = null;
         for each(_loc1_ in this.§"!#§.data)
         {
            if(_loc1_ is §4"n§)
            {
               _loc2_ = new §-"3§(_loc1_.userId,"",false,§5V§.NORMAL,_loc1_.profileImageURL);
               _loc2_.dispose();
            }
         }
      }
      
      private function §<!I§() : void
      {
         var _loc1_:MovieClip = this.§?Q§.getItemByName("PlayerNameMask").mClip;
         var _loc2_:String = userProgress.userName;
         if(this.§-#j§)
         {
            _loc2_ = !!§;$-§.§ "D§.§!"E§().ni ? §;$-§.§ "D§.§!"E§().ni : _loc2_;
         }
         _loc2_ = this.§5#,§(_loc2_,this.§;#J§,_loc1_);
      }
      
      protected function §0#;§(param1:Event) : void
      {
         this.§]![§();
         this.§<!I§();
      }
   }
}
