package §+!C§
{
   import §&!v§.DisplayObject;
   import §&!v§.Sprite;
   import §&"J§.§4"W§;
   import §,k§.§!=§;
   import §,k§.§13§;
   import §,k§.§9"!§;
   import §6!6§.§6!r§;
   import §6!6§.§[k§;
   import §6"r§.§!#A§;
   import §6V§.§&"g§;
   import §6V§.§?!=§;
   import §6V§.§`"5§;
   import §7!j§.§!!^§;
   import §7!j§.§!"J§;
   import §7!j§.§"I§;
   import §7!j§.§'#'§;
   import §7!j§.§'0§;
   import §7!j§.§,"d§;
   import §7"&§.§&"T§;
   import §7"&§.§2>§;
   import §8"X§.§`$>§;
   import §9$<§.§-t§;
   import §9$<§.§4p§;
   import §9+§.Starling;
   import §;P§.§0!E§;
   import §;P§.§super§;
   import §<u§.§ "a§;
   import §=#C§.§6!u§;
   import §=#C§.§7"G§;
   import §>!5§.§"7§;
   import §>!5§.§4@§;
   import §>!5§.§6#-§;
   import §>!5§.§<j§;
   import §?$9§.§7"H§;
   import §@#§.§]#B§;
   import §@#§.§^#Q§;
   import §["-§.§#R§;
   import §["-§.§3"<§;
   import §["C§.§0§;
   import §]#m§.§"!m§;
   import §]#m§.§0!^§;
   import §]#m§.§?#q§;
   import §];§.§-!t§;
   import §^$1§.§2"^§;
   import §^$1§.§6#J§;
   import §^$1§.§7"6§;
   import flash.display.Stage;
   import flash.events.Event;
   
   public class §#!L§ extends §4"M§
   {
      
      public static var §!"?§:Number = 1;
      
      private static var §1"B§:§&"g§ = new §&"g§();
       
      
      private var §4"3§:§0!E§;
      
      private var §`"'§:Array;
      
      private var §0"k§:Array;
      
      private var §#"V§:Boolean;
      
      private var §&!f§:§13§;
      
      private var §0"^§:§9"!§;
      
      private var §7$8§:§!=§;
      
      protected var §5"%§:§0#9§;
      
      public function §#!L§(param1:Stage, param2:§&"T§, param3:§[k§, param4:§^#Q§)
      {
         super(param1,param2,param3,param4);
         this.§&!f§ = new §13§(1024,768);
         this.§&!f§.§4"H§(0.999,0.999,0.999,0);
         this.§&!f§.§"A§ = true;
         this.§0"^§ = new §9"!§();
         this.§0"^§.§>#@§ = 0.5;
      }
      
      public static function §1G§(param1:Number, param2:Number, param3:int, param4:int, param5:int) : void
      {
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc6_:int = param3 + Math.random() * param4;
         var _loc8_:int = 0;
         while(_loc8_ < _loc6_)
         {
            _loc9_ = Math.random() * (Math.PI * 2);
            _loc10_ = 0.5 * param5 + param5 * (Math.random() * 0.5);
            §!#A§.§#F§.particles.addSimpleParticle("STAR_PARTICLE",§2"^§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§7"6§.PARTICLE_GROUP_GAME_EFFECTS,§2"^§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,750,"",§2"^§.getParticleMaterialFromEngineMaterial("BIRD_RED"),_loc10_ * Math.cos(_loc9_) * 1,-_loc10_ * Math.sin(_loc9_) * 1,5,_loc10_ * 20,Math.sqrt(1));
            _loc8_++;
         }
      }
      
      public static function §@9§(param1:Number, param2:Number, param3:int, param4:int, param5:int) : void
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
            §!#A§.§#F§.particles.addSimpleParticle("POWERUP_EFFECT_BUBBLE",§2"^§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§7"6§.PARTICLE_GROUP_GAME_EFFECTS,§2"^§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,500,"",§2"^§.getParticleMaterialFromEngineMaterial("BIRD_RED"),_loc10_ * Math.cos(_loc9_) * _loc8_,-_loc10_ * Math.sin(_loc9_) * _loc8_,0,0,_loc8_);
            _loc7_++;
         }
      }
      
      public function §>#Z§() : Array
      {
         if(this.§`"'§)
         {
            return this.§`"'§.concat();
         }
         return null;
      }
      
      public function §-$1§() : Array
      {
         var _loc2_:String = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.§`"'§)
         {
            if(§4"W§.§ "D§.§@^§(_loc2_) <= 0)
            {
               _loc1_.push(_loc2_);
            }
         }
         for each(_loc2_ in this.§0"k§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public function §^#e§(param1:§9!b§) : void
      {
         param1.§4u§ = false;
      }
      
      public function §'n§() : int
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         if(this.§`"'§)
         {
            _loc1_ = this.§`"'§.length;
            _loc2_ = 0;
            while(_loc2_ < this.§`"'§.length)
            {
               if(§super§.§9!h§.indexOf(this.§`"'§[_loc2_]) > -1)
               {
                  _loc1_--;
               }
               _loc2_++;
            }
         }
         return _loc1_;
      }
      
      public function initializeSlingshotObject(param1:§@"@§) : void
      {
         var _loc2_:String = null;
         var _loc3_:§'#'§ = null;
         if(this.§]!1§)
         {
            _loc2_ = "LIGHT_BIRD";
            _loc3_ = §'0§.§ "D§.getTexture(_loc2_);
            if(_loc3_)
            {
               param1.§`#d§();
               param1.backgroundSprite.addChild(_loc3_.§6"#§());
               objects.backgroundSprite.addChild(param1.backgroundSprite);
            }
         }
      }
      
      protected function get §]!1§() : Boolean
      {
         return false;
      }
      
      override protected function addBackgroundSpritesToDisplayList() : void
      {
         super.addBackgroundSpritesToDisplayList();
         if(this.§]!1§)
         {
            §!Y§.backgroundSprite.filter = this.§0"^§;
            §!Y§.backgroundSprite.ownsFilter = false;
         }
      }
      
      override protected function addGameSpritesToDisplayList() : void
      {
         this.§7$8§ = null;
         if(this.§]!1§)
         {
            this.§7$8§ = this.§&!f§;
         }
         if(§!Y§ is §<j§)
         {
            this.addItemToDisplayList((§!Y§ as §<j§).§,"i§);
         }
         super.addGameSpritesToDisplayList();
         this.§7$8§ = null;
      }
      
      override protected function addItemToDisplayList(param1:DisplayObject) : void
      {
         super.addItemToDisplayList(param1);
         param1.filter = this.§7$8§;
         param1.ownsFilter = false;
      }
      
      public function §2$$§(param1:String) : Boolean
      {
         if(!this.§`"'§)
         {
            return false;
         }
         return this.§`"'§.indexOf(param1) >= 0;
      }
      
      public function §>$7§(param1:String) : void
      {
         if(!this.§`"'§)
         {
            this.§`"'§ = [];
         }
         if(param1 == §super§.§+!d§.§?"9§)
         {
            if(this.§5"%§)
            {
               this.§5"%§.§^#3§(false);
            }
         }
         this.§`"'§.push(param1);
      }
      
      public function §[!%§(param1:String) : void
      {
         if(!this.§0"k§)
         {
            this.§0"k§ = [];
         }
         if(this.§0"k§.indexOf(param1) == -1)
         {
            this.§0"k§.push(param1);
         }
      }
      
      override public function init(param1:§]#B§) : void
      {
         super.init(param1);
         this.§`"'§ = [];
         this.§4"3§ = this.§'$0§();
         this.§0"k§ = [];
         if(mLevelManager.getCurrentEpisodeModel().isTournament)
         {
            this.§5"%§ = § "a§.§ "D§.§^W§() as §0#9§;
         }
         else
         {
            this.§5"%§ = null;
         }
      }
      
      protected function §'$0§() : §0!E§
      {
         return new §0!E§(mLevelManager);
      }
      
      override public function setController(param1:§#R§) : void
      {
         super.setController(param1);
         if(param1 is §3"<§)
         {
            this.§4"3§.setController(param1 as §3"<§);
         }
      }
      
      override public function clearLevel() : void
      {
         super.clearLevel();
         if(this.§4"3§)
         {
            this.§4"3§.dispose();
            this.§4"3§ = null;
         }
      }
      
      override protected function stabilizeWorld() : void
      {
         §;#6§(20,1 / 30);
      }
      
      protected function §9"_§(param1:Number) : void
      {
         if(this.§&!f§)
         {
            this.§&!f§.§'"y§ = param1 < 20;
            this.§&!f§.§`#z§(0.02,0.08 + 0.05 * Math.sin(§^'§ / 250),0.02,0);
            if(§!Y§.backgroundSprite.numChildren > 0)
            {
               this.§&!f§.§^!d§ = this.§0"^§;
            }
            else
            {
               this.§&!f§.§^!d§ = null;
            }
         }
      }
      
      override protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         this.§4"3§.run(param1,§!Y§);
         if(this.§]!1§)
         {
            this.§9"_§(param1);
         }
         return super.updateWithTime(param1,param2,param3);
      }
      
      override public function handleEngineUpdateStep(param1:Number) : void
      {
         super.handleEngineUpdateStep(param1);
         this.§4"3§.update(param1);
      }
      
      override protected function initThemeGraphicsManager() : §,"d§
      {
         var _loc1_:String = §-#+§.§;!$§.§!!B§();
         return new §!!^§(_loc1_,"",mLevelManager,§2>§(§ "G§));
      }
      
      override protected function initThemeSoundsManager() : §,"d§
      {
         var _loc1_:String = §-#+§.§;!$§.§!!B§();
         return new §!!^§(_loc1_,"",mLevelManager,§2>§(§ "G§),false);
      }
      
      override protected function initCutSceneManager() : §,"d§
      {
         var _loc1_:String = §-#+§.§;!$§.§!!B§();
         return new §!!^§(_loc1_,"",mLevelManager,§2>§(§ "G§));
      }
      
      override public function get backgroundTextureManager() : §'0§
      {
         if(§3T§)
         {
            return §3T§.textureManager;
         }
         return null;
      }
      
      override protected function initAnimationManager(param1:§'0§) : §"I§
      {
         return new §!"J§(param1);
      }
      
      override protected function initializeLevelBackground(param1:String, param2:Number, param3:§'0§, param4:Number) : §0!^§
      {
         var _loc5_:§6!r§;
         if((_loc5_ = §7"h§.getBackground(param1)) && param1 == "BACKGROUND_FB_MOUNTAINS" && !Starling.§-m§)
         {
            return new §"!m§(this,_loc5_,param2,param3,param4);
         }
         if(_loc5_ && param1 == "BACKGROUND_FB_ROCK_IN_RIO")
         {
            return new §?#q§(this,_loc5_,param2,param3,param4);
         }
         return super.initializeLevelBackground(param1,param2,param3,param4);
      }
      
      override protected function initializeLevelSlingshot(param1:§]#B§) : §]#b§
      {
         var _loc2_:§9!b§ = new §9!b§(this,param1,new Sprite());
         this.§^#e§(_loc2_);
         return _loc2_;
      }
      
      override protected function initializeLevelObjectManager(param1:§]#B§) : §6#-§
      {
         var _loc2_:String = §6!r§.§9#&§;
         return new §<j§(this,mLevelManager,param1,new Sprite(),_loc2_);
      }
      
      override protected function initializeParticleManager(param1:§"I§, param2:§'0§) : §7"6§
      {
         return new §6#J§(param1,param2);
      }
      
      public function get §1"-§() : §0!E§
      {
         return this.§4"3§;
      }
      
      override protected function initializeLevelCamera(param1:§]#B§) : §-t§
      {
         return new §4p§(this,param1);
      }
      
      override protected function getSpriteSheetGroup(param1:§7"H§) : int
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
         if(§1"B§[param1])
         {
            param1 = §1#p§.theme = §`$>§.§74§;
         }
         this.§#"V§ = false;
         super.loadTheme(param1);
      }
      
      override protected function onThemeGraphicsNotAvailable(param1:Event) : void
      {
         if(!this.§#"V§ && §-!t§.§ "D§.tournamentRules && §-!t§.§ "D§.tournamentRules.background == §1#p§.theme && §1#p§.theme != §`$>§.§74§)
         {
            §1"B§[§1#p§.theme] = §1#p§.theme;
            this.§#"V§ = true;
            §1#p§.theme = §`$>§.§74§;
            §+"I§(§`$>§.§74§);
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
      
      public function §^B§(param1:String) : void
      {
         §5r§ = param1;
      }
      
      override public function shootBird(param1:§@"@§, param2:Number, param3:Number) : §"7§
      {
         var _loc9_:Array = null;
         var _loc15_:Object = null;
         var _loc16_:int = 0;
         var _loc4_:String = §7"G§.§!k§.§?"9§;
         var _loc5_:§6!u§;
         if(_loc5_ = (param1 as §@#]§).§0"4§)
         {
            _loc4_ = _loc5_.§?"9§;
            if(_loc5_.§,#l§() == §4@§.§=§)
            {
               param3--;
            }
         }
         var _loc6_:§"7§;
         (_loc6_ = super.shootBird(param1,param2,param3)).§+!>§("slingShotAbility",(param1 as §@#]§).§0"4§);
         if((param1 as §@#]§).§8#o§)
         {
            _loc6_.§7##§ = §2"^§.§9"M§;
         }
         else
         {
            _loc6_.§7##§ = §2"^§.§7"§;
         }
         if(_loc5_)
         {
            if((_loc15_ = _loc5_.§5!>§(param1.name))[§6!u§.§1"P§])
            {
               _loc6_.§+$ §(_loc15_[§6!u§.§1"P§]);
            }
            if(_loc15_[§6!u§.§`!I§])
            {
               _loc6_.§5"'§(_loc15_[§6!u§.§`!I§]);
            }
            if(_loc15_[§6!u§.§ "H§])
            {
               _loc6_.§4#=§(_loc15_[§6!u§.§ "H§]);
            }
            _loc6_.§>#j§ = _loc5_.§,#l§();
            _loc6_.§,!N§(_loc5_.§?#[§());
         }
         var _loc7_:String = "Level" + §!#A§.§#F§.currentLevel.name;
         var _loc8_:int = 1 + §!#A§.§#F§.slingshot.§ "+§() - §!#A§.§#F§.slingshot.§%a§();
         var _loc10_:* = (_loc9_ = (§!#A§.§#F§ as §#!L§).§>#Z§()).indexOf(§super§.§&"l§.§?"9§) > -1;
         var _loc11_:* = _loc9_.indexOf(§super§.§!!y§.§?"9§) > -1;
         var _loc12_:* = _loc9_.indexOf(§super§.§@"B§.§?"9§) > -1;
         var _loc13_:* = _loc6_.itemName == "BIRD_WINGMAN";
         §`"5§.§`7§(_loc4_,_loc7_,_loc8_,_loc10_,_loc11_,_loc12_,_loc13_);
         §?!=§.§3!q§().§8!F§(currentLevel.name,_loc4_,_loc10_,_loc11_,_loc12_,_loc13_);
         var _loc14_:int = 0;
         if(_loc10_)
         {
            _loc6_.§@`§("STAR_PARTICLE");
            _loc14_ = §"7§.§%!x§;
         }
         if((param1 as §@#]§).§8#o§)
         {
            _loc6_.§@`§("POWERUP_POWERPOTION_TRAIL");
            _loc14_ = §"7§.§%!x§;
         }
         if(_loc5_)
         {
            _loc16_ = 1;
            while(_loc16_ <= _loc5_.§2&§)
            {
               _loc6_.§@`§(_loc5_.§'"<§ + _loc16_);
               _loc16_++;
            }
            _loc14_ = _loc5_.§<!i§ > _loc14_ ? int(_loc5_.§<!i§) : int(_loc14_);
            _loc6_.§="A§(_loc14_);
         }
         if(this.§5"%§)
         {
            this.§5"%§.§^#3§(_loc6_.itemName == this.§5"%§.§5!i§());
         }
         return _loc6_;
      }
      
      public function §7"Y§() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc1_:Boolean = false;
         if(this.§4"3§)
         {
            _loc2_ = objects.isWorldAtSleep();
            if(this.§4"3§.§4"!§())
            {
               _loc1_ = true;
            }
            else if(this.§4"3§.§6L§())
            {
               _loc1_ = true;
            }
         }
         return _loc1_;
      }
      
      override public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999, param7:String = null) : void
      {
         if(this.§5"%§ && this.§5"%§.§<!,§)
         {
            param1 = Math.floor(param1 * this.§5"%§.§9"G§());
            this.§5"%§.§]"=§(true);
         }
         super.addScore(param1,param2,param3,param4,param5,param6,param7);
      }
   }
}
