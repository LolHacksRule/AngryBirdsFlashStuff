package §#g§
{
   import §!!L§.§=$3§;
   import §"#k§.Starling;
   import §#"4§.§&r§;
   import §#"4§.§3";§;
   import §#"4§.§<"G§;
   import §'"b§.§ #F§;
   import §+!Y§.§3!B§;
   import §+!Y§.§[@§;
   import §,#,§.§]§;
   import §,#e§.DisplayObject;
   import §,#e§.Sprite;
   import §4"Y§.§+!q§;
   import §4"Y§.§-!`§;
   import §4§.§<!`§;
   import §4§.§`3§;
   import §6"p§.§^"t§;
   import §6#h§.§5#&§;
   import §6#h§.§]!d§;
   import §7"T§.§#"^§;
   import §7"T§.§+#U§;
   import §7"T§.§4!L§;
   import §7"T§.§4#[§;
   import §7"T§.§6!G§;
   import §7"T§.§@"T§;
   import §7"o§.§##P§;
   import §7"o§.§=,§;
   import §7"o§.§>"r§;
   import §7#$§.§?# §;
   import §7#$§.§]#q§;
   import §8#K§.§ !q§;
   import §8#K§.§'#_§;
   import §8#K§.§2§;
   import §9!o§.§;"v§;
   import §9#-§.§]!N§;
   import §9T§.§ "T§;
   import §9T§.§2T§;
   import §;!=§.§ !i§;
   import §;!=§.§&"^§;
   import §;!=§.§>"G§;
   import §?#z§.§]$?§;
   import §@#b§.§1_§;
   import §@#b§.§8!I§;
   import §[!_§.§2" §;
   import §[!_§.§[#?§;
   import §[!_§.§`#!§;
   import §`,§.§7!$§;
   import flash.display.Stage;
   import flash.events.Event;
   
   public class §!P§ extends §""[§
   {
      
      public static var §!!#§:Number = 1;
      
      private static var § X§:§&r§ = new §&r§();
       
      
      private var §!y§:§2T§;
      
      private var §1"?§:Array;
      
      private var §@^§:Array;
      
      private var §%"t§:Boolean;
      
      private var §5!u§:§[#?§;
      
      private var §[#3§:§2" §;
      
      private var §+$9§:§`#!§;
      
      protected var §9#_§:§]!N§;
      
      public function §!P§(param1:Stage, param2:§2#3§, param3:§-!`§, param4:§]#q§)
      {
         super(param1,param2,param3,param4);
         this.§5!u§ = new §[#?§(1024,768);
         this.§5!u§.§<_§(0.999,0.999,0.999,0);
         this.§5!u§.§'5§ = true;
         this.§[#3§ = new §2" §();
         this.§[#3§.§7"I§ = 0.5;
      }
      
      public static function §%!0§(param1:Number, param2:Number, param3:int, param4:int, param5:int) : void
      {
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc6_:int = param3 + Math.random() * param4;
         var _loc8_:int = 0;
         while(_loc8_ < _loc6_)
         {
            _loc9_ = Math.random() * (Math.PI * 2);
            _loc10_ = 0.5 * param5 + param5 * (Math.random() * 0.5);
            §]$?§.§2#§.particles.addSimpleParticle("STAR_PARTICLE",§=,§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§##P§.PARTICLE_GROUP_GAME_EFFECTS,§=,§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,750,"",§=,§.getParticleMaterialFromEngineMaterial("BIRD_RED"),_loc10_ * Math.cos(_loc9_) * 1,-_loc10_ * Math.sin(_loc9_) * 1,5,_loc10_ * 20,Math.sqrt(1));
            _loc8_++;
         }
      }
      
      public static function §?",§(param1:Number, param2:Number, param3:int, param4:int, param5:int) : void
      {
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc6_:int = param3 + Math.random() * param4;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            _loc8_ = 0.2 + Math.random() * 0.2;
            _loc9_ = Math.random() * (Math.PI * 2);
            _loc10_ = 0.5 * param5 + param5 * (Math.random() * 0.5);
            §]$?§.§2#§.particles.addSimpleParticle("POWERUP_EFFECT_BUBBLE",§=,§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§##P§.PARTICLE_GROUP_GAME_EFFECTS,§=,§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,500,"",§=,§.getParticleMaterialFromEngineMaterial("BIRD_RED"),_loc10_ * Math.cos(_loc9_) * _loc8_,-_loc10_ * Math.sin(_loc9_) * _loc8_,0,0,_loc8_);
            _loc7_++;
         }
      }
      
      public function §-!3§() : Array
      {
         if(this.§1"?§)
         {
            return this.§1"?§.concat();
         }
         return null;
      }
      
      public function §with§() : Array
      {
         var _loc2_:String = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.§1"?§)
         {
            if(§]#0§.§+!,§.§9n§(_loc2_) <= 0)
            {
               _loc1_.push(_loc2_);
            }
         }
         for each(_loc2_ in this.§@^§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public function §`"'§(param1:§+!C§) : void
      {
         param1.§9U§ = false;
      }
      
      public function §"#@§() : int
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         if(this.§1"?§)
         {
            _loc1_ = this.§1"?§.length;
            _loc2_ = 0;
            while(_loc2_ < this.§1"?§.length)
            {
               if(§ "T§.§'#U§.indexOf(this.§1"?§[_loc2_]) > -1)
               {
                  _loc1_--;
               }
               _loc2_++;
            }
         }
         return _loc1_;
      }
      
      public function initializeSlingshotObject(param1:§1#0§) : void
      {
         var _loc2_:String = null;
         var _loc3_:§4!L§ = null;
         if(this.§7"J§)
         {
            _loc2_ = "LIGHT_BIRD";
            _loc3_ = §#"^§.§+!,§.getTexture(_loc2_);
            if(_loc3_)
            {
               param1.§"<§();
               param1.backgroundSprite.addChild(_loc3_.§="'§());
               objects.backgroundSprite.addChild(param1.backgroundSprite);
            }
         }
      }
      
      protected function get §7"J§() : Boolean
      {
         return false;
      }
      
      override protected function addBackgroundSpritesToDisplayList() : void
      {
         super.addBackgroundSpritesToDisplayList();
         if(this.§7"J§)
         {
            §&!h§.backgroundSprite.filter = this.§[#3§;
            §&!h§.backgroundSprite.ownsFilter = false;
         }
      }
      
      override protected function addGameSpritesToDisplayList() : void
      {
         this.§+$9§ = null;
         if(this.§7"J§)
         {
            this.§+$9§ = this.§5!u§;
         }
         if(§&!h§ is §&"^§)
         {
            this.addItemToDisplayList((§&!h§ as §&"^§).§1!o§);
         }
         super.addGameSpritesToDisplayList();
         this.§+$9§ = null;
      }
      
      override protected function addItemToDisplayList(param1:DisplayObject) : void
      {
         super.addItemToDisplayList(param1);
         param1.filter = this.§+$9§;
         param1.ownsFilter = false;
      }
      
      public function §&R§(param1:String) : Boolean
      {
         if(!this.§1"?§)
         {
            return false;
         }
         return this.§1"?§.indexOf(param1) >= 0;
      }
      
      public function §"#u§(param1:String) : void
      {
         if(!this.§1"?§)
         {
            this.§1"?§ = [];
         }
         if(param1 == § "T§.§8"8§.§8t§)
         {
            if(this.§9#_§)
            {
               this.§9#_§.§]!h§(false);
            }
         }
         this.§1"?§.push(param1);
      }
      
      public function §`!r§(param1:String) : void
      {
         if(!this.§@^§)
         {
            this.§@^§ = [];
         }
         if(this.§@^§.indexOf(param1) == -1)
         {
            this.§@^§.push(param1);
         }
      }
      
      override public function init(param1:§?# §) : void
      {
         super.init(param1);
         this.§1"?§ = [];
         this.§!y§ = this.§;"D§();
         this.§@^§ = [];
         if(mLevelManager.getCurrentEpisodeModel().isTournament)
         {
            this.§9#_§ = § #F§.§+!,§.§4#P§() as §]!N§;
         }
         else
         {
            this.§9#_§ = null;
         }
      }
      
      protected function §;"D§() : §2T§
      {
         return new §2T§(mLevelManager);
      }
      
      override public function setController(param1:§]!d§) : void
      {
         super.setController(param1);
         if(param1 is §5#&§)
         {
            this.§!y§.setController(param1 as §5#&§);
         }
      }
      
      override public function clearLevel() : void
      {
         super.clearLevel();
         if(this.§!y§)
         {
            this.§!y§.dispose();
            this.§!y§ = null;
         }
      }
      
      override protected function stabilizeWorld() : void
      {
         §[!x§(20,1 / 30);
      }
      
      protected function §in§(param1:Number) : void
      {
         if(this.§5!u§)
         {
            this.§5!u§.§,"^§ = param1 < 20;
            this.§5!u§.§<$§(0.02,0.08 + 0.05 * Math.sin(§>e§ / 250),0.02,0);
            if(§&!h§.backgroundSprite.numChildren > 0)
            {
               this.§5!u§.§5;§ = this.§[#3§;
            }
            else
            {
               this.§5!u§.§5;§ = null;
            }
         }
      }
      
      override protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         this.§!y§.run(param1,§&!h§);
         if(this.§7"J§)
         {
            this.§in§(param1);
         }
         return super.updateWithTime(param1,param2,param3);
      }
      
      override public function handleEngineUpdateStep(param1:Number) : void
      {
         super.handleEngineUpdateStep(param1);
         this.§!y§.update(param1);
      }
      
      override protected function initThemeGraphicsManager() : §6!G§
      {
         var _loc1_:String = §@z§.§ !D§.§'#f§();
         return new §+#U§(_loc1_,"",mLevelManager,§'#_§(§7"Z§));
      }
      
      override protected function initThemeSoundsManager() : §6!G§
      {
         var _loc1_:String = §@z§.§ !D§.§'#f§();
         return new §+#U§(_loc1_,"",mLevelManager,§'#_§(§7"Z§),false);
      }
      
      override protected function initCutSceneManager() : §6!G§
      {
         var _loc1_:String = §@z§.§ !D§.§'#f§();
         return new §+#U§(_loc1_,"",mLevelManager,§'#_§(§7"Z§));
      }
      
      override public function get backgroundTextureManager() : §#"^§
      {
         if(§;#O§)
         {
            return §;#O§.textureManager;
         }
         return null;
      }
      
      override protected function initAnimationManager(param1:§#"^§) : §4#[§
      {
         return new §@"T§(param1);
      }
      
      override protected function initializeLevelBackground(param1:String, param2:Number, param3:§#"^§, param4:Number) : §1_§
      {
         var _loc5_:§+!q§;
         if((_loc5_ = §%!,§.getBackground(param1)) == null)
         {
            §^"t§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §?# §.§8#v§;
            _loc5_ = §%!,§.getBackground(param1);
         }
         var _loc6_:§ !q§ = null;
         if(§+$E§)
         {
            _loc6_ = §+$E§.soundManager;
         }
         return new §8!I§(this,_loc5_,param2,param3,param4,_loc6_,!Starling.§1""§);
      }
      
      override protected function initializeLevelSlingshot(param1:§?# §) : §^"R§
      {
         var _loc2_:§+!C§ = new §+!C§(this,param1,new Sprite());
         this.§`"'§(_loc2_);
         return _loc2_;
      }
      
      override protected function initializeLevelObjectManager(param1:§?# §) : § !i§
      {
         var _loc2_:String = §+!q§.§6!q§;
         return new §&"^§(this,mLevelManager,param1,new Sprite(),_loc2_);
      }
      
      override protected function initializeParticleManager(param1:§4#[§, param2:§#"^§) : §##P§
      {
         return new §>"r§(param1,param2);
      }
      
      public function get §]!_§() : §2T§
      {
         return this.§!y§;
      }
      
      override protected function initializeLevelCamera(param1:§?# §) : §`3§
      {
         return new §<!`§(this,param1);
      }
      
      override protected function getSpriteSheetGroup(param1:§;"v§) : int
      {
         var _loc2_:String = param1.name.toLowerCase();
         if(_loc2_.indexOf("bird") >= 0 || _loc2_.indexOf("pig") >= 0 || _loc2_.indexOf("blocks") >= 0)
         {
            return 0;
         }
         if(_loc2_.indexOf("tutorial") >= 0)
         {
            return 2;
         }
         return 1;
      }
      
      override protected function loadTheme(param1:String) : void
      {
         if(§ X§[param1])
         {
            param1 = §5"s§.theme = §=$3§.§6#W§;
         }
         this.§%"t§ = false;
         super.loadTheme(param1);
      }
      
      override protected function onThemeGraphicsNotAvailable(param1:Event) : void
      {
         if(!this.§%"t§ && §7!$§.§+!,§.tournamentRules && §7!$§.§+!,§.tournamentRules.background == §5"s§.theme && §5"s§.theme != §=$3§.§6#W§)
         {
            § X§[§5"s§.theme] = §5"s§.theme;
            this.§%"t§ = true;
            §5"s§.theme = §=$3§.§6#W§;
            §]!w§(§=$3§.§6#W§);
         }
         else
         {
            super.onThemeGraphicsNotAvailable(param1);
         }
      }
      
      override protected function updateAimingLine() : void
      {
      }
      
      override protected function initializeAimingLine() : void
      {
      }
      
      public function §8!k§(param1:String) : void
      {
         §,'§ = param1;
      }
      
      override public function shootBird(param1:§1#0§, param2:Number, param3:Number) : §>"G§
      {
         var _loc9_:Array = null;
         var _loc15_:Object = null;
         var _loc16_:int = 0;
         var _loc4_:String = §[@§.§9"=§.§8t§;
         var _loc5_:§3!B§;
         if(_loc5_ = (param1 as §?'§).§+"s§)
         {
            _loc4_ = _loc5_.§8t§;
         }
         var _loc6_:§>"G§;
         (_loc6_ = super.shootBird(param1,param2,param3)).§%#j§("slingShotAbility",(param1 as §?'§).§+"s§);
         if(_loc5_)
         {
            if((_loc15_ = _loc5_.§8$D§(param1.name))[§3!B§.§4"M§])
            {
               _loc6_.§7"+§(_loc15_[§3!B§.§4"M§]);
            }
            if(_loc15_[§3!B§.§;!_§])
            {
               _loc6_.§9!F§(_loc15_[§3!B§.§;!_§]);
            }
            if(_loc15_[§3!B§.§&!2§])
            {
               _loc6_.§6#$§(_loc15_[§3!B§.§&!2§]);
            }
            _loc6_.§@#z§ = _loc5_.§&F§();
            _loc6_.§9&§(_loc5_.§2#H§());
         }
         var _loc7_:String = "Level" + §]$?§.§2#§.currentLevel.name;
         var _loc8_:int = 1 + §]$?§.§2#§.slingshot.§^"]§() - §]$?§.§2#§.slingshot.§4#$§();
         var _loc10_:* = (_loc9_ = (§]$?§.§2#§ as §!P§).§-!3§()).indexOf(§ "T§.§=#x§.§8t§) > -1;
         var _loc11_:* = _loc9_.indexOf(§ "T§.§4@§.§8t§) > -1;
         var _loc12_:* = _loc9_.indexOf(§ "T§.§&!C§.§8t§) > -1;
         var _loc13_:* = _loc6_.itemName == "BIRD_WINGMAN";
         §<"G§.§?"J§(_loc4_,_loc7_,_loc8_,_loc10_,_loc11_,_loc12_,_loc13_);
         §3";§.§#"'§().§5#n§(currentLevel.name,_loc4_,_loc10_,_loc11_,_loc12_,_loc13_);
         var _loc14_:int = 0;
         if(_loc10_)
         {
            _loc6_.§'#o§("STAR_PARTICLE");
            _loc14_ = §>"G§.§8$,§;
         }
         if((param1 as §?'§).§=!'§)
         {
            _loc6_.§?#r§ = §=,§.§0N§;
            _loc6_.§'#o§("POWERUP_POWERPOTION_TRAIL");
            _loc14_ = §>"G§.§8$,§;
            _loc6_.§,!F§(true);
         }
         else
         {
            _loc6_.§?#r§ = §=,§.§,$?§;
            _loc6_.§,!F§(false);
         }
         if(_loc5_)
         {
            _loc16_ = 1;
            while(_loc16_ <= _loc5_.§3_§)
            {
               _loc6_.§'#o§(_loc5_.particleName + _loc16_);
               _loc16_++;
            }
            _loc14_ = _loc5_.§="3§ > _loc14_ ? int(_loc5_.§="3§) : int(_loc14_);
            _loc6_.§6!>§(_loc14_);
         }
         if(this.§9#_§)
         {
            this.§9#_§.§]!h§(_loc6_.itemName == this.§9#_§.§##a§());
         }
         return _loc6_;
      }
      
      public function §#"z§() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc1_:Boolean = false;
         if(this.§!y§)
         {
            _loc2_ = objects.isWorldAtSleep();
            if(this.§!y§.§9#X§())
            {
               _loc1_ = true;
            }
            else if(this.§!y§.§@#Z§())
            {
               _loc1_ = true;
            }
         }
         return _loc1_;
      }
      
      override public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999, param7:String = null) : void
      {
         if(this.§9#_§ && this.§9#_§.§]#9§)
         {
            param1 = Math.floor(param1 * this.§9#_§.§>!d§());
            this.§9#_§.§ !G§(true);
         }
         super.addScore(param1,param2,param3,param4,param5,param6,param7);
      }
   }
}
