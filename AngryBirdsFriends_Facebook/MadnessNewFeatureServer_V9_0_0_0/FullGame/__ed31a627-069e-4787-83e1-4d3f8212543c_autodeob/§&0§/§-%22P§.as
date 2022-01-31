package §&0§
{
   import §!#C§.§0#;§;
   import §!#C§.§;!$§;
   import §!#C§.§;s§;
   import §!#C§.§[§;
   import §"",§.§4#Q§;
   import §##Z§.§<$2§;
   import §#,§.§'!`§;
   import §#,§.§]$+§;
   import §#,§.§`"$§;
   import §&$3§.§"!&§;
   import §&$3§.§7$C§;
   import §,!Q§.§8#=§;
   import §0"B§.§ #W§;
   import §0"B§.§##G§;
   import §7R§.§ #`§;
   import §8#K§.§3Z§;
   import §?!a§.§-=§;
   import §?!a§.§4" §;
   import §?!a§.§6#b§;
   import §?!a§.§;!"§;
   import §`#@§.§7n§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §-"P§
   {
      
      private static var §5-§:int = 3;
       
      
      private var §[$5§:§]$+§;
      
      private var §"#[§:§##G§;
      
      private var §>!t§:§7$C§;
      
      private var §;"L§:§7$C§;
      
      private var §'#H§:§-=§;
      
      private var §>$A§:§-=§;
      
      private var §?#^§:Boolean = false;
      
      private var §2#V§:Boolean;
      
      private var §5$#§:Boolean;
      
      private var §?!1§:§;!$§;
      
      private var §##8§:int;
      
      private var §1#9§:§;!$§;
      
      private var §1!>§:int = -1;
      
      private var §>!n§:Array;
      
      private var §7!3§:String;
      
      private var §#4§:§;!$§;
      
      private var §["J§:§[#8§;
      
      protected var §=#>§:§]$+§;
      
      protected var §04§:§]$+§;
      
      protected var §5"j§:§8#=§;
      
      protected var §#!w§:§'!`§;
      
      protected var §]"@§:§'!`§;
      
      protected var §8"$§:§'!`§;
      
      protected var §]"L§:§'!`§;
      
      protected var §>W§:§'!`§;
      
      protected var §?!r§:§'!`§;
      
      protected var §9!z§:§`"$§;
      
      protected var §"!q§:§`"$§;
      
      protected var §!#K§:§`"$§;
      
      protected var §9#m§:§`"$§;
      
      protected var §6^§:§`"$§;
      
      protected var §0!F§:§`"$§;
      
      protected var §7#c§:Array;
      
      private const §<!V§:int = -158;
      
      private const §0"4§:int = -41;
      
      private var §8$%§:Boolean = false;
      
      public function §-"P§(param1:§]$+§)
      {
         this.§>!n§ = [];
         this.§7#c§ = [];
         super();
         this.§[$5§ = param1;
         this.§+$,§();
      }
      
      protected static function get userProgress() : § #`§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as § #`§;
      }
      
      private function §+$,§() : void
      {
         this.§04§ = this.§[$5§.getItemByName("Container_VsHero") as §]$+§;
         this.§5"j§ = this.§[$5§.getItemByName("Container_VsEnemy") as §]$+§;
         this.§=#>§ = this.§[$5§.getItemByName("Container_Vs") as §]$+§;
         this.§#!w§ = this.§[$5§.getItemByName("MovieClip_VsAnimation") as §'!`§;
         this.§]"@§ = this.§[$5§.getItemByName("MovieClip_Boom") as §'!`§;
         this.§8"$§ = this.§[$5§.getItemByName("MovieClip_VsProfilePicHero") as §'!`§;
         this.§]"L§ = this.§[$5§.getItemByName("MovieClip_VsProfilePicEnemy") as §'!`§;
         this.§>W§ = this.§[$5§.getItemByName("MovieClip_CrownHero") as §'!`§;
         this.§?!r§ = this.§[$5§.getItemByName("MovieClip_CrownEnemy") as §'!`§;
         this.§9!z§ = this.§[$5§.getItemByName("TextField_VsScore") as §`"$§;
         this.§"!q§ = this.§[$5§.getItemByName("TextField_VsScoreEnemy") as §`"$§;
         this.§!#K§ = this.§[$5§.getItemByName("TextField_NameHero") as §`"$§;
         this.§9#m§ = this.§[$5§.getItemByName("TextField_NameEnemy") as §`"$§;
         this.§6^§ = this.§[$5§.getItemByName("TextField_VsPositionHero") as §`"$§;
         this.§0!F§ = this.§[$5§.getItemByName("TextField_VsPositionEnemy") as §`"$§;
         this.§7#c§ = [this.§#!w§,this.§]"@§,this.§#!w§];
      }
      
      public function activate() : void
      {
         if(this.§>!t§)
         {
            this.§>!t§.play();
         }
         if(this.§;"L§)
         {
            this.§;"L§.play();
         }
         this.§[#x§();
         if(this.§#4§)
         {
            this.§'$%§(this.§#4§.userName,this.§9#m§,this.§[$5§.getItemByName("EnemyNameMask").mClip);
         }
      }
      
      public function deActivate() : void
      {
         if(this.§>!t§)
         {
            this.§>!t§.pause();
            this.§>!t§.§=F§ = false;
         }
         if(this.§;"L§)
         {
            this.§;"L§.pause();
            this.§;"L§.§=F§ = false;
         }
      }
      
      public function levelStarted(param1:§##G§, param2:String, param3:Boolean = false) : void
      {
         this.§7!3§ = param2;
         this.§?g§();
         this.§=";§();
         this.§5"j§.setVisibility(true);
         this.§=#>§.setVisibility(false);
         this.§"#[§ = param1;
         this.§?#^§ = false;
         this.§1#9§ = null;
         this.§1!>§ = -1;
         this.§>!n§ = [];
         this.§#!w§.setVisibility(true);
         this.§#!w§.§!!q§("Start");
         this.§#!w§.isPlaying = true;
         if(!this.§2#V§)
         {
            this.§##8§ = -1;
         }
         this.§04§.x = this.§<!V§;
         this.§5"j§.y = this.§0"4§;
         if(this.§;"L§)
         {
            this.§;"L§.stop();
            this.§;"L§ = null;
         }
         if(this.§>!t§)
         {
            this.§>!t§.stop();
            this.§>!t§ = null;
         }
         this.§5"j§.mClip.VersusComponent_Background.gotoAndStop((§7n§.§-$<§ as § #v§).§=#+§.§;#Y§());
         this.§04§.mClip.VersusComponent_Background.gotoAndStop((§7n§.§-$<§ as § #v§).§=#+§.§;#Y§());
         this.§8$%§ = param3;
         §<$2§.§`"H§.removeEventListener(§4#Q§.§>#n§,this.§[8§);
         this.§"#-§();
      }
      
      private function initialize() : void
      {
         var _loc1_:int = 0;
         var _loc4_:int = 0;
         this.§##v§();
         this.§[#x§();
         if(this.§;"L§)
         {
            this.§;"L§.stop();
            this.§;"L§ = null;
         }
         if(this.§>!t§)
         {
            this.§>!t§.stop();
            this.§>!t§ = null;
         }
         this.§04§.x = this.§<!V§;
         this.§1#9§ = null;
         var _loc2_:int = !!this.§2#V§ ? int(this.§##8§) : int(userProgress.getScoreForLevel(this.§7!3§));
         _loc2_ = userProgress.getScoreForLevel(this.§7!3§);
         this.§?!1§ = this.§"#[§.§"#t§();
         if(this.§2#V§)
         {
            while(this.§?!1§ && this.§##8§ > this.§?!1§.§,$&§)
            {
               if((_loc4_ = this.§"#[§.data.indexOf(this.§?!1§) - 1) >= 0)
               {
                  this.§?!1§ = this.§"#[§.data[_loc4_];
               }
               else
               {
                  this.§?!1§ = null;
               }
            }
         }
         if(this.§?!1§)
         {
            this.§!#`§(this.§?!1§);
            _loc1_ = this.§?!1§.rank + 1;
            this.§5"j§.setVisibility(true);
            this.§#!w§.setVisibility(true);
         }
         else
         {
            _loc1_ = 1;
            this.§5"j§.setVisibility(false);
            this.§#!w§.setVisibility(false);
            this.§04§.x = this.§5"j§.x;
         }
         this.§6^§.setText(_loc1_.toString());
         if(_loc2_ > 0)
         {
            userProgress.§5"=§(this.§7!3§,_loc1_);
         }
         var _loc3_:int = userProgress.getEagleScoreForLevel(this.§7!3§);
         this.§>W§.setVisibility(_loc1_ <= 3 && (_loc2_ > 0 || _loc3_ > 0) && !this.§8$%§);
         if(_loc1_ > 0 && _loc1_ <= 3 && (_loc2_ > 0 || _loc3_ > 0))
         {
            this.§>W§.§!!q§(["Gold","Silver","Bronze"][_loc1_ - 1]);
         }
         else
         {
            this.§>W§.§>#I§(1);
         }
         this.§=#>§.setVisibility(true);
         §<$2§.§`"H§.addEventListener(§4#Q§.§>#n§,this.§[8§);
         this.§?#^§ = true;
      }
      
      public function run(param1:Number) : Boolean
      {
         if(this.§"#[§.§6#J§ || this.§5$#§)
         {
            this.§=#>§.setVisibility(false);
            return true;
         }
         if(!this.§?#^§)
         {
            this.initialize();
            if(!this.§2#V§)
            {
               this.§2#V§ = true;
            }
         }
         this.updateAnimations(param1);
         return this.§1#9§ == null;
      }
      
      public function §<$#§(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:int = 0;
         if(this.§##8§ == param1)
         {
            return;
         }
         this.§##8§ = param1;
         this.§9!z§.setText(this.§%#r§(this.§##8§));
         if(!this.§?!1§)
         {
            return;
         }
         if(this.§"#[§.§6#J§ || this.§5$#§)
         {
            return;
         }
         while(this.§?!1§ && this.§##8§ > this.§?!1§.§,$&§)
         {
            this.§>!n§.unshift(this.§?!1§);
            if((_loc4_ = this.§"#[§.data.indexOf(this.§?!1§) - 1) >= 0)
            {
               this.§?!1§ = this.§"#[§.data[_loc4_];
            }
            else
            {
               this.§?!1§ = null;
            }
         }
         while(this.§>!n§.length > §5-§)
         {
            this.§>!n§.pop();
         }
         if(this.§>!n§.length > 0 && !this.§1#9§)
         {
            this.§="5§();
         }
      }
      
      private function §!#`§(param1:§;!$§) : void
      {
         this.§?!r§.setVisibility(param1.rank <= 3 && !this.§8$%§);
         if(param1.rank > 0 && param1.rank <= 3)
         {
            this.§?!r§.§!!q§(["Gold","Silver","Bronze"][param1.rank - 1]);
         }
         this.§0!F§.setText(param1.rank.toString());
         this.§"!q§.setText(this.§%#r§(param1.§,$&§));
         this.§0$>§(param1);
      }
      
      private function updateAnimations(param1:Number) : void
      {
         var _loc2_:§'!`§ = null;
         for each(_loc2_ in this.§7#c§)
         {
            this.§#$6§(_loc2_,param1,true);
         }
      }
      
      private function §0$>§(param1:§;!$§) : void
      {
         var _loc2_:String = § #W§.§[#e§(param1.userId);
         var _loc3_:String = param1.userId;
         this.§#4§ = param1;
         this.§?g§();
         if(param1 is §;s§ ? (param1 as §;s§).profilePicture : null)
         {
            this.§'#H§ = new §4" §(param1.userId,null,_loc2_,false,§6#b§.NORMAL,§6#b§.§""b§);
         }
         else
         {
            this.§'#H§ = new §;!"§(_loc3_,"",false,§6#b§.NORMAL,false,(param1 as §0#;§).profileImageURL);
         }
         this.§]">§(this.§]"L§,this.§'#H§);
         this.§'$%§(param1.userName,this.§9#m§,this.§[$5§.getItemByName("EnemyNameMask").mClip);
      }
      
      private function §'$%§(param1:String, param2:§`"$§, param3:MovieClip) : String
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
      
      private function §]">§(param1:§'!`§, param2:MovieClip) : void
      {
         while(param1.mClip.numChildren > 0)
         {
            param1.mClip.removeChildAt(0);
         }
         param1.mClip.addChild(param2);
      }
      
      private function §"#-§() : void
      {
         var _loc4_:Object = null;
         var _loc1_:String = userProgress.avatarString;
         var _loc2_:String = userProgress.userID;
         if(this.§8$%§)
         {
            this.§["J§ = this.§"#[§.data[this.§"#[§.§3'§] as §[#8§;
            if(!this.§["J§)
            {
               _loc4_ = §<$2§.§`"H§.§1>§();
               _loc4_.ir = _loc4_.i;
               _loc4_.uid = _loc2_;
               if(_loc4_.ir)
               {
                  this.§["J§ = §[#8§.§5+§(_loc4_);
               }
            }
         }
         this.§=";§();
         var _loc3_:String = this.§["J§ is §[#8§ ? (this.§["J§ as §[#8§).profilePicture : null;
         if(_loc3_ && this.§8$%§)
         {
            this.§>$A§ = new §4" §(_loc2_,_loc3_,"",false,§6#b§.NORMAL,§6#b§.§""b§);
         }
         else
         {
            this.§>$A§ = new §;!"§(_loc2_,"",false,§6#b§.NORMAL);
         }
         this.§]">§(this.§8"$§,this.§>$A§);
      }
      
      private function §?g§() : void
      {
         if(this.§'#H§)
         {
            this.§'#H§.dispose();
            this.§'#H§ = null;
         }
      }
      
      private function §=";§() : void
      {
         if(this.§>$A§)
         {
            this.§>$A§.dispose();
            this.§>$A§ = null;
         }
      }
      
      public function set §]#Z§(param1:Boolean) : void
      {
         this.§5$#§ = param1;
         this.§=#>§.setVisibility(!this.§5$#§);
      }
      
      private function §="5§() : void
      {
         this.§1#9§ = this.§>!n§.pop();
         this.§;"L§ = §"!&§.§`"H§.§1"W§(this.§04§.mClip,{"x":this.§<!V§ + 15},{"x":this.§<!V§},0.5,§"!&§.§1!6§);
         this.§;"L§.onComplete = this.§6"S§;
         this.§;"L§.play();
         §3Z§.playSound("ui_ingame_scorebox_gain_position","ChannelPowerups");
      }
      
      private function §6"S§() : void
      {
         var _loc2_:int = 0;
         if(!this.§1#9§)
         {
            return;
         }
         this.§;"L§ = null;
         this.§]"@§.§!!q§("Start");
         this.§]"@§.isPlaying = true;
         this.§]"@§.setVisibility(true);
         var _loc1_:§;!$§ = this.§>!n§.length > 0 ? this.§>!n§[this.§>!n§.length - 1] : this.§?!1§;
         if(this.§1#9§.rank == 1 || _loc1_ == null)
         {
            this.§5"j§.setVisibility(false);
            this.§;"L§ = §"!&§.§`"H§.§1"W§(this.§04§.mClip,{"x":this.§5"j§.mClip.x},null,0.5);
            this.§;"L§.onComplete = this.§@"J§;
            this.§;"L§.play();
            this.§>W§.§!!q§("Gold");
            this.§6^§.setText("1");
            this.§>W§.setVisibility(!this.§8$%§);
         }
         else
         {
            this.§;"L§ = §"!&§.§`"H§.§1"W§(this.§04§.mClip,{"x":this.§<!V§},{"x":this.§<!V§ + 15},0.5);
            this.§;"L§.onComplete = null;
            this.§;"L§.play();
            this.§!#`§(_loc1_);
            _loc2_ = _loc1_.rank + 1;
            this.§>W§.setVisibility(_loc2_ <= 3 && !this.§8$%§);
            if(_loc2_ > 0 && _loc2_ <= 3)
            {
               this.§>W§.§!!q§(["Gold","Silver","Bronze"][_loc2_ - 1]);
            }
            this.§6^§.setText(_loc2_.toString());
            this.§>!t§ = §"!&§.§`"H§.§1"W§(this.§5"j§.mClip,{"y":this.§0"4§},{"y":-150},2,§"!&§.§1!6§);
            this.§>!t§.onComplete = this.§[i§;
            this.§>!t§.play();
         }
      }
      
      private function §[i§() : void
      {
         this.§>!t§ = null;
         this.§1#9§ = null;
         if(this.§>!n§.length > 0)
         {
            this.§="5§();
         }
      }
      
      private function §@"J§() : void
      {
         this.§;"L§ = null;
         this.§1#9§ = null;
      }
      
      private function §%#r§(param1:int) : String
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
      
      private function §#$6§(param1:§'!`§, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:String = null;
         if(param1.isPlaying)
         {
            if((_loc4_ = param1.§1"d§(param2)) == "End")
            {
               param1.isPlaying = false;
               if(param3)
               {
                  param1.setVisibility(false);
               }
            }
         }
      }
      
      private function §##v§() : void
      {
         var _loc1_:§0#;§ = null;
         var _loc2_:§-=§ = null;
         for each(_loc1_ in this.§"#[§.data)
         {
            if(_loc1_ is §;!$§)
            {
               _loc2_ = new §-=§(_loc1_.userId,"",false,§6#b§.NORMAL,_loc1_.profileImageURL);
               _loc2_.dispose();
            }
         }
      }
      
      private function §[#x§() : void
      {
         var _loc1_:MovieClip = this.§[$5§.getItemByName("PlayerNameMask").mClip;
         var _loc2_:String = userProgress.userName;
         if(this.§8$%§)
         {
            _loc2_ = !!§<$2§.§`"H§.§1>§().ni ? §<$2§.§`"H§.§1>§().ni : _loc2_;
         }
         _loc2_ = this.§'$%§(_loc2_,this.§!#K§,_loc1_);
      }
      
      protected function §[8§(param1:Event) : void
      {
         this.§"#-§();
         this.§[#x§();
      }
   }
}
