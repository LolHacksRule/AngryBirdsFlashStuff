package §,!m§
{
   import § "v§.§4$4§;
   import § null§.§5"<§;
   import § null§.§@§;
   import §+!n§.§+!p§;
   import §-"S§.§>#G§;
   import §1!1§.§<#M§;
   import §2$;§.§!"e§;
   import §2$;§.§-$5§;
   import §2$;§.§=!Z§;
   import §3#t§.§-#b§;
   import §3#t§.§51§;
   import §9x§.§ m§;
   import §9x§.§&$<§;
   import §9x§.§6!P§;
   import §9x§.§7",§;
   import §<8§.§6!1§;
   import §>#Y§.§!$$§;
   import §>#Y§.§'#z§;
   import §>#Y§.§1N§;
   import §>#Y§.§3"Q§;
   import §^#?§.§?#,§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §'Z§
   {
      
      private static var §+q§:int = 3;
       
      
      private var §@!D§:§!"e§;
      
      private var §`;§:§51§;
      
      private var §"!O§:§@#5§;
      
      private var §?!6§:§@#5§;
      
      private var §4F§:§ m§;
      
      private var §?$$§:§ m§;
      
      private var §;!h§:Boolean = false;
      
      private var §2#r§:Boolean;
      
      private var §7@§:Boolean;
      
      private var §]#W§:§!$$§;
      
      private var §!D§:int;
      
      private var §1!k§:§!$$§;
      
      private var §^#h§:int = -1;
      
      private var §=!5§:Array;
      
      private var §?#f§:String;
      
      private var §?^§:§!$$§;
      
      private var §%#2§:§3"Q§;
      
      protected var §&a§:§!"e§;
      
      protected var §0"@§:§!"e§;
      
      protected var § $0§:§6!1§;
      
      protected var §@"d§:§=!Z§;
      
      protected var §7!§:§=!Z§;
      
      protected var §&#3§:§=!Z§;
      
      protected var §]"8§:§=!Z§;
      
      protected var §^#<§:§=!Z§;
      
      protected var §7x§:§=!Z§;
      
      protected var §6>§:§-$5§;
      
      protected var §#h§:§-$5§;
      
      protected var §%!Y§:§-$5§;
      
      protected var §%#;§:§-$5§;
      
      protected var §&4§:§-$5§;
      
      protected var §;"M§:§-$5§;
      
      protected var §%7§:Array;
      
      private const §]! §:int = -158;
      
      private const §?#]§:int = -41;
      
      private var §?!8§:Boolean = false;
      
      public function §'Z§(param1:§!"e§)
      {
         this.§=!5§ = [];
         this.§%7§ = [];
         super();
         this.§@!D§ = param1;
         this.§;#e§();
      }
      
      protected static function get userProgress() : §>#G§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §>#G§;
      }
      
      private function §;#e§() : void
      {
         this.§0"@§ = this.§@!D§.getItemByName("Container_VsHero") as §!"e§;
         this.§ $0§ = this.§@!D§.getItemByName("Container_VsEnemy") as §!"e§;
         this.§&a§ = this.§@!D§.getItemByName("Container_Vs") as §!"e§;
         this.§@"d§ = this.§@!D§.getItemByName("MovieClip_VsAnimation") as §=!Z§;
         this.§7!§ = this.§@!D§.getItemByName("MovieClip_Boom") as §=!Z§;
         this.§&#3§ = this.§@!D§.getItemByName("MovieClip_VsProfilePicHero") as §=!Z§;
         this.§]"8§ = this.§@!D§.getItemByName("MovieClip_VsProfilePicEnemy") as §=!Z§;
         this.§^#<§ = this.§@!D§.getItemByName("MovieClip_CrownHero") as §=!Z§;
         this.§7x§ = this.§@!D§.getItemByName("MovieClip_CrownEnemy") as §=!Z§;
         this.§6>§ = this.§@!D§.getItemByName("TextField_VsScore") as §-$5§;
         this.§#h§ = this.§@!D§.getItemByName("TextField_VsScoreEnemy") as §-$5§;
         this.§%!Y§ = this.§@!D§.getItemByName("TextField_NameHero") as §-$5§;
         this.§%#;§ = this.§@!D§.getItemByName("TextField_NameEnemy") as §-$5§;
         this.§&4§ = this.§@!D§.getItemByName("TextField_VsPositionHero") as §-$5§;
         this.§;"M§ = this.§@!D§.getItemByName("TextField_VsPositionEnemy") as §-$5§;
         this.§%7§ = [this.§@"d§,this.§7!§,this.§@"d§];
      }
      
      public function activate() : void
      {
         if(this.§"!O§)
         {
            this.§"!O§.play();
         }
         if(this.§?!6§)
         {
            this.§?!6§.play();
         }
         this.§>!?§();
         if(this.§?^§)
         {
            this.§&#T§(this.§?^§.userName,this.§%#;§,this.§@!D§.getItemByName("EnemyNameMask").mClip);
         }
      }
      
      public function deActivate() : void
      {
         if(this.§"!O§)
         {
            this.§"!O§.pause();
            this.§"!O§.§7!z§ = false;
         }
         if(this.§?!6§)
         {
            this.§?!6§.pause();
            this.§?!6§.§7!z§ = false;
         }
      }
      
      public function levelStarted(param1:§51§, param2:String, param3:Boolean = false) : void
      {
         this.§?#f§ = param2;
         this.§7"H§();
         this.§[!T§();
         this.§ $0§.setVisibility(true);
         this.§&a§.setVisibility(false);
         this.§`;§ = param1;
         this.§;!h§ = false;
         this.§1!k§ = null;
         this.§^#h§ = -1;
         this.§=!5§ = [];
         this.§@"d§.setVisibility(true);
         this.§@"d§.§#"-§("Start");
         this.§@"d§.isPlaying = true;
         if(!this.§2#r§)
         {
            this.§!D§ = -1;
         }
         this.§0"@§.x = this.§]! §;
         this.§ $0§.y = this.§?#]§;
         if(this.§?!6§)
         {
            this.§?!6§.stop();
            this.§?!6§ = null;
         }
         if(this.§"!O§)
         {
            this.§"!O§.stop();
            this.§"!O§ = null;
         }
         this.§ $0§.mClip.VersusComponent_Background.gotoAndStop((§+!p§.§;"-§ as §^"a§).§?"c§.§5!T§());
         this.§0"@§.mClip.VersusComponent_Background.gotoAndStop((§+!p§.§;"-§ as §^"a§).§?"c§.§5!T§());
         this.§?!8§ = param3;
         §?#,§.§3"1§.removeEventListener(§<#M§.§-#4§,this.§;"%§);
         this.§7#B§();
      }
      
      private function initialize() : void
      {
         var _loc1_:int = 0;
         var _loc4_:int = 0;
         this.§>"q§();
         this.§>!?§();
         if(this.§?!6§)
         {
            this.§?!6§.stop();
            this.§?!6§ = null;
         }
         if(this.§"!O§)
         {
            this.§"!O§.stop();
            this.§"!O§ = null;
         }
         this.§0"@§.x = this.§]! §;
         this.§1!k§ = null;
         var _loc2_:int = !!this.§2#r§ ? int(this.§!D§) : int(userProgress.getScoreForLevel(this.§?#f§));
         _loc2_ = userProgress.getScoreForLevel(this.§?#f§);
         this.§]#W§ = this.§`;§.§+!]§();
         if(this.§2#r§)
         {
            while(this.§]#W§ && this.§!D§ > this.§]#W§.§5"1§)
            {
               if((_loc4_ = this.§`;§.data.indexOf(this.§]#W§) - 1) >= 0)
               {
                  this.§]#W§ = this.§`;§.data[_loc4_];
               }
               else
               {
                  this.§]#W§ = null;
               }
            }
         }
         if(this.§]#W§)
         {
            this.§>b§(this.§]#W§);
            _loc1_ = this.§]#W§.rank + 1;
            this.§ $0§.setVisibility(true);
            this.§@"d§.setVisibility(true);
         }
         else
         {
            _loc1_ = 1;
            this.§ $0§.setVisibility(false);
            this.§@"d§.setVisibility(false);
            this.§0"@§.x = this.§ $0§.x;
         }
         this.§&4§.setText(_loc1_.toString());
         if(_loc2_ > 0)
         {
            userProgress.§##D§(this.§?#f§,_loc1_);
         }
         var _loc3_:int = userProgress.getEagleScoreForLevel(this.§?#f§);
         this.§^#<§.setVisibility(_loc1_ <= 3 && (_loc2_ > 0 || _loc3_ > 0) && !this.§?!8§);
         if(_loc1_ > 0 && _loc1_ <= 3 && (_loc2_ > 0 || _loc3_ > 0))
         {
            this.§^#<§.§#"-§(["Gold","Silver","Bronze"][_loc1_ - 1]);
         }
         else
         {
            this.§^#<§.§="M§(1);
         }
         this.§&a§.setVisibility(true);
         §?#,§.§3"1§.addEventListener(§<#M§.§-#4§,this.§;"%§);
         this.§;!h§ = true;
      }
      
      public function run(param1:Number) : Boolean
      {
         if(this.§`;§.§#!?§ || this.§7@§)
         {
            this.§&a§.setVisibility(false);
            return true;
         }
         if(!this.§;!h§)
         {
            this.initialize();
            if(!this.§2#r§)
            {
               this.§2#r§ = true;
            }
         }
         this.updateAnimations(param1);
         return this.§1!k§ == null;
      }
      
      public function §1"M§(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:int = 0;
         if(this.§!D§ == param1)
         {
            return;
         }
         this.§!D§ = param1;
         this.§6>§.setText(this.§<#d§(this.§!D§));
         if(!this.§]#W§)
         {
            return;
         }
         if(this.§`;§.§#!?§ || this.§7@§)
         {
            return;
         }
         while(this.§]#W§ && this.§!D§ > this.§]#W§.§5"1§)
         {
            this.§=!5§.unshift(this.§]#W§);
            if((_loc4_ = this.§`;§.data.indexOf(this.§]#W§) - 1) >= 0)
            {
               this.§]#W§ = this.§`;§.data[_loc4_];
            }
            else
            {
               this.§]#W§ = null;
            }
         }
         while(this.§=!5§.length > §+q§)
         {
            this.§=!5§.pop();
         }
         if(this.§=!5§.length > 0 && !this.§1!k§)
         {
            this.§ !$§();
         }
      }
      
      private function §>b§(param1:§!$$§) : void
      {
         this.§7x§.setVisibility(param1.rank <= 3 && !this.§?!8§);
         if(param1.rank > 0 && param1.rank <= 3)
         {
            this.§7x§.§#"-§(["Gold","Silver","Bronze"][param1.rank - 1]);
         }
         this.§;"M§.setText(param1.rank.toString());
         this.§#h§.setText(this.§<#d§(param1.§5"1§));
         this.§#"G§(param1);
      }
      
      private function updateAnimations(param1:Number) : void
      {
         var _loc2_:§=!Z§ = null;
         for each(_loc2_ in this.§%7§)
         {
            this.§3#9§(_loc2_,param1,true);
         }
      }
      
      private function §#"G§(param1:§!$$§) : void
      {
         var _loc2_:String = §-#b§.§5!K§(param1.userId);
         var _loc3_:String = param1.userId;
         this.§?^§ = param1;
         this.§7"H§();
         var _loc4_:String;
         if(_loc4_ = param1 is §'#z§ ? (param1 as §'#z§).profilePicture : null)
         {
            this.§4F§ = new §&$<§(param1.userId,_loc4_,_loc2_,false,§7",§.NORMAL,§7",§.§>z§);
         }
         else
         {
            this.§4F§ = new §6!P§(_loc3_,"",false,§7",§.NORMAL,false,(param1 as §1N§).profileImageURL);
         }
         this.§7M§(this.§]"8§,this.§4F§);
         this.§&#T§(param1.userName,this.§%#;§,this.§@!D§.getItemByName("EnemyNameMask").mClip);
      }
      
      private function §&#T§(param1:String, param2:§-$5§, param3:MovieClip) : String
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
      
      private function §7M§(param1:§=!Z§, param2:MovieClip) : void
      {
         while(param1.mClip.numChildren > 0)
         {
            param1.mClip.removeChildAt(0);
         }
         param1.mClip.addChild(param2);
      }
      
      private function §7#B§() : void
      {
         var _loc4_:Object = null;
         userProgress.avatarString;
         var _loc2_:String = userProgress.userID;
         if(this.§?!8§)
         {
            this.§%#2§ = this.§`;§.data[this.§`;§.§0!L§] as §3"Q§;
            if(!this.§%#2§)
            {
               _loc4_ = §?#,§.§3"1§.§4"4§();
               _loc4_.ir = _loc4_.i;
               _loc4_.uid = _loc2_;
               if(_loc4_.ir)
               {
                  this.§%#2§ = §3"Q§.§5!I§(_loc4_);
               }
            }
         }
         this.§[!T§();
         var _loc3_:String = this.§%#2§ is §3"Q§ ? (this.§%#2§ as §3"Q§).profilePicture : null;
         if(_loc3_ && this.§?!8§)
         {
            this.§?$$§ = new §&$<§(_loc2_,_loc3_,"",false,§7",§.NORMAL,§7",§.§>z§);
         }
         else
         {
            this.§?$$§ = new §6!P§(_loc2_,"",false,§7",§.NORMAL);
         }
         this.§7M§(this.§&#3§,this.§?$$§);
      }
      
      private function §7"H§() : void
      {
         if(this.§4F§)
         {
            this.§4F§.dispose();
            this.§4F§ = null;
         }
      }
      
      private function §[!T§() : void
      {
         if(this.§?$$§)
         {
            this.§?$$§.dispose();
            this.§?$$§ = null;
         }
      }
      
      public function set §8#!§(param1:Boolean) : void
      {
         this.§7@§ = param1;
         this.§&a§.setVisibility(!this.§7@§);
      }
      
      private function § !$§() : void
      {
         this.§1!k§ = this.§=!5§.pop();
         this.§?!6§ = §5"<§.§3"1§.§3#§(this.§0"@§.mClip,{"x":this.§]! § + 15},{"x":this.§]! §},0.5,§5"<§.§8"z§);
         this.§?!6§.onComplete = this.§'"n§;
         this.§?!6§.play();
         §4$4§.playSound("ui_ingame_scorebox_gain_position","ChannelPowerups");
      }
      
      private function §'"n§() : void
      {
         var _loc2_:int = 0;
         if(!this.§1!k§)
         {
            return;
         }
         this.§?!6§ = null;
         this.§7!§.§#"-§("Start");
         this.§7!§.isPlaying = true;
         this.§7!§.setVisibility(true);
         var _loc1_:§!$$§ = this.§=!5§.length > 0 ? this.§=!5§[this.§=!5§.length - 1] : this.§]#W§;
         if(this.§1!k§.rank == 1 || _loc1_ == null)
         {
            this.§ $0§.setVisibility(false);
            this.§?!6§ = §5"<§.§3"1§.§3#§(this.§0"@§.mClip,{"x":this.§ $0§.mClip.x},null,0.5);
            this.§?!6§.onComplete = this.§,$8§;
            this.§?!6§.play();
            this.§^#<§.§#"-§("Gold");
            this.§&4§.setText("1");
            this.§^#<§.setVisibility(!this.§?!8§);
         }
         else
         {
            this.§?!6§ = §5"<§.§3"1§.§3#§(this.§0"@§.mClip,{"x":this.§]! §},{"x":this.§]! § + 15},0.5);
            this.§?!6§.onComplete = null;
            this.§?!6§.play();
            this.§>b§(_loc1_);
            _loc2_ = _loc1_.rank + 1;
            this.§^#<§.setVisibility(_loc2_ <= 3 && !this.§?!8§);
            if(_loc2_ > 0 && _loc2_ <= 3)
            {
               this.§^#<§.§#"-§(["Gold","Silver","Bronze"][_loc2_ - 1]);
            }
            this.§&4§.setText(_loc2_.toString());
            this.§"!O§ = §5"<§.§3"1§.§3#§(this.§ $0§.mClip,{"y":this.§?#]§},{"y":-150},2,§5"<§.§8"z§);
            this.§"!O§.onComplete = this.§9!Z§;
            this.§"!O§.play();
         }
      }
      
      private function §9!Z§() : void
      {
         this.§"!O§ = null;
         this.§1!k§ = null;
         if(this.§=!5§.length > 0)
         {
            this.§ !$§();
         }
      }
      
      private function §,$8§() : void
      {
         this.§?!6§ = null;
         this.§1!k§ = null;
      }
      
      private function §<#d§(param1:int) : String
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
      
      private function §3#9§(param1:§=!Z§, param2:Number, param3:Boolean = false) : void
      {
         if(param1.isPlaying)
         {
            if(param1.§0"g§(param2) == "End")
            {
               param1.isPlaying = false;
               if(param3)
               {
                  param1.setVisibility(false);
               }
            }
         }
      }
      
      private function §>"q§() : void
      {
         var _loc1_:§1N§ = null;
         var _loc2_:§ m§ = null;
         for each(_loc1_ in this.§`;§.data)
         {
            if(_loc1_ is §!$$§)
            {
               _loc2_ = new § m§(_loc1_.userId,"",false,§7",§.NORMAL,_loc1_.profileImageURL);
               _loc2_.dispose();
            }
         }
      }
      
      private function §>!?§() : void
      {
         var _loc1_:MovieClip = this.§@!D§.getItemByName("PlayerNameMask").mClip;
         var _loc2_:String = userProgress.userName;
         if(this.§?!8§)
         {
            _loc2_ = !!§?#,§.§3"1§.§4"4§().ni ? §?#,§.§3"1§.§4"4§().ni : _loc2_;
         }
         _loc2_ = this.§&#T§(_loc2_,this.§%!Y§,_loc1_);
      }
      
      protected function §;"%§(param1:Event) : void
      {
         this.§7#B§();
         this.§>!?§();
      }
   }
}
