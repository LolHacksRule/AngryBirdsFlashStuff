package §@0§
{
   import §!$3§.§,$§;
   import §!'§.§7#c§;
   import §!'§.§@>§;
   import §!'§.§[p§;
   import §%!P§.§-#i§;
   import §%!P§.§4#u§;
   import §&$!§.§"!"§;
   import §&$!§.§%#k§;
   import §2G§.§-#+§;
   import §4"R§.§'#v§;
   import §4"R§.§4"c§;
   import §6$8§.§'!W§;
   import §6$8§.§]§;
   import §8"L§.§8W§;
   import §8"L§.§[t§;
   import §8#!§.§5`§;
   import §8§.§!#L§;
   import §8§.§4!y§;
   import §8§.§;Y§;
   import §9!<§.§-!_§;
   import §9!<§.§5$@§;
   import §9!<§.§^",§;
   import §9#B§.§+y§;
   import §;#D§.§3#U§;
   import §;$3§.§8=§;
   import §;$3§.§>f§;
   import §="h§.§`"O§;
   import §=#G§.§;3§;
   import §=#G§.§<#Z§;
   import §=§.§'"z§;
   import §=§.§8!I§;
   import §=§.§>!o§;
   import §?"#§.§=!I§;
   import §?"e§.Starling;
   import §^"S§.DisplayObject;
   import §^"S§.Sprite;
   import §`"8§.§34§;
   import §`"8§.§8$3§;
   import §`"8§.§[!5§;
   import §`"8§.§`"X§;
   import §`"8§.§`#+§;
   import §`"8§.§`§;
   import §`7§.§ try§;
   import §`7§.§0t§;
   import §`7§.§`"x§;
   import flash.display.Stage;
   import flash.events.Event;
   
   public class §2$2§ extends §!#Y§
   {
      
      public static var §@"C§:Number = 1;
      
      private static var §%!a§:§0t§ = new §0t§();
       
      
      private var §9!i§:§"!"§;
      
      private var §!!S§:Array;
      
      private var §+"d§:Array;
      
      private var §0A§:Boolean;
      
      private var §?! §:§^",§;
      
      private var §="0§:§5$@§;
      
      private var §9#u§:§-!_§;
      
      protected var §,>§:§,$§;
      
      public function §2$2§(param1:Stage, param2:§8W§, param3:§'!W§, param4:§8=§)
      {
         super(param1,param2,param3,param4);
         this.§?! § = new §^",§(1024,768);
         this.§?! §.§ $,§(0.999,0.999,0.999,0);
         this.§?! §.§9";§ = true;
         this.§="0§ = new §5$@§();
         this.§="0§.§+#C§ = 0.5;
      }
      
      public static function §2!8§(param1:Number, param2:Number, param3:int, param4:int, param5:int) : void
      {
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc6_:int = param3 + Math.random() * param4;
         var _loc8_:int = 0;
         while(_loc8_ < _loc6_)
         {
            _loc9_ = Math.random() * (Math.PI * 2);
            _loc10_ = 0.5 * param5 + param5 * (Math.random() * 0.5);
            §3#U§.§#$4§.particles.addSimpleParticle("STAR_PARTICLE",§@>§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§[p§.PARTICLE_GROUP_GAME_EFFECTS,§@>§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,750,"",§@>§.getParticleMaterialFromEngineMaterial("BIRD_RED"),_loc10_ * Math.cos(_loc9_) * 1,-_loc10_ * Math.sin(_loc9_) * 1,5,_loc10_ * 20,Math.sqrt(1));
            _loc8_++;
         }
      }
      
      public static function §?"9§(param1:Number, param2:Number, param3:int, param4:int, param5:int) : void
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
            §3#U§.§#$4§.particles.addSimpleParticle("POWERUP_EFFECT_BUBBLE",§@>§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§[p§.PARTICLE_GROUP_GAME_EFFECTS,§@>§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,500,"",§@>§.getParticleMaterialFromEngineMaterial("BIRD_RED"),_loc10_ * Math.cos(_loc9_) * _loc8_,-_loc10_ * Math.sin(_loc9_) * _loc8_,0,0,_loc8_);
            _loc7_++;
         }
      }
      
      public function §<Q§() : Array
      {
         if(this.§!!S§)
         {
            return this.§!!S§.concat();
         }
         return null;
      }
      
      public function §;&§() : Array
      {
         var _loc2_:String = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.§!!S§)
         {
            if(§-#+§.§6!§.§+o§(_loc2_) <= 0)
            {
               _loc1_.push(_loc2_);
            }
         }
         for each(_loc2_ in this.§+"d§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public function §'k§(param1:§9"^§) : void
      {
         param1.§'!^§ = false;
      }
      
      public function §7!'§() : int
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         if(this.§!!S§)
         {
            _loc1_ = this.§!!S§.length;
            _loc2_ = 0;
            while(_loc2_ < this.§!!S§.length)
            {
               if(§%#k§.§7"i§.indexOf(this.§!!S§[_loc2_]) > -1)
               {
                  _loc1_--;
               }
               _loc2_++;
            }
         }
         return _loc1_;
      }
      
      public function initializeSlingshotObject(param1:§4!_§) : void
      {
         var _loc2_:String = null;
         var _loc3_:§`"X§ = null;
         if(this.§7#S§)
         {
            _loc2_ = "LIGHT_BIRD";
            _loc3_ = §34§.§6!§.getTexture(_loc2_);
            if(_loc3_)
            {
               param1.§&##§();
               param1.backgroundSprite.addChild(_loc3_.§5#w§());
               objects.backgroundSprite.addChild(param1.backgroundSprite);
            }
         }
      }
      
      protected function get §7#S§() : Boolean
      {
         return false;
      }
      
      override protected function addBackgroundSpritesToDisplayList() : void
      {
         super.addBackgroundSpritesToDisplayList();
         if(this.§7#S§)
         {
            §"#[§.backgroundSprite.filter = this.§="0§;
            §"#[§.backgroundSprite.ownsFilter = false;
         }
      }
      
      override protected function addGameSpritesToDisplayList() : void
      {
         this.§9#u§ = null;
         if(this.§7#S§)
         {
            this.§9#u§ = this.§?! §;
         }
         if(§"#[§ is §;Y§)
         {
            this.addItemToDisplayList((§"#[§ as §;Y§).§[$>§);
         }
         super.addGameSpritesToDisplayList();
         this.§9#u§ = null;
      }
      
      override protected function addItemToDisplayList(param1:DisplayObject) : void
      {
         super.addItemToDisplayList(param1);
         param1.filter = this.§9#u§;
         param1.ownsFilter = false;
      }
      
      public function §;R§(param1:String) : Boolean
      {
         if(!this.§!!S§)
         {
            return false;
         }
         return this.§!!S§.indexOf(param1) >= 0;
      }
      
      public function §"t§(param1:String) : void
      {
         if(!this.§!!S§)
         {
            this.§!!S§ = [];
         }
         if(param1 == §%#k§.§6`§.§5"g§)
         {
            if(this.§,>§)
            {
               this.§,>§.§-b§(false);
            }
         }
         this.§!!S§.push(param1);
      }
      
      public function §;$@§(param1:String) : void
      {
         if(!this.§+"d§)
         {
            this.§+"d§ = [];
         }
         if(this.§+"d§.indexOf(param1) == -1)
         {
            this.§+"d§.push(param1);
         }
      }
      
      override public function init(param1:§>f§) : void
      {
         super.init(param1);
         this.§!!S§ = [];
         this.§9!i§ = this.§8#"§();
         this.§+"d§ = [];
         if(mLevelManager.getCurrentEpisodeModel().isTournament)
         {
            this.§,>§ = §`"O§.§6!§.§!!I§() as §,$§;
         }
         else
         {
            this.§,>§ = null;
         }
      }
      
      protected function §8#"§() : §"!"§
      {
         return new §"!"§(mLevelManager);
      }
      
      override public function setController(param1:§;3§) : void
      {
         super.setController(param1);
         if(param1 is §<#Z§)
         {
            this.§9!i§.setController(param1 as §<#Z§);
         }
      }
      
      override public function clearLevel() : void
      {
         super.clearLevel();
         if(this.§9!i§)
         {
            this.§9!i§.dispose();
            this.§9!i§ = null;
         }
      }
      
      override protected function stabilizeWorld() : void
      {
         §^"^§(20,1 / 30);
      }
      
      protected function §[#d§(param1:Number) : void
      {
         if(this.§?! §)
         {
            this.§?! §.§;!+§ = param1 < 20;
            this.§?! §.§6"K§(0.02,0.08 + 0.05 * Math.sin(§&!§ / 250),0.02,0);
            if(§"#[§.backgroundSprite.numChildren > 0)
            {
               this.§?! §.§-"Q§ = this.§="0§;
            }
            else
            {
               this.§?! §.§-"Q§ = null;
            }
         }
      }
      
      override protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         this.§9!i§.run(param1,§"#[§);
         if(this.§7#S§)
         {
            this.§[#d§(param1);
         }
         return super.updateWithTime(param1,param2,param3);
      }
      
      override public function handleEngineUpdateStep(param1:Number) : void
      {
         super.handleEngineUpdateStep(param1);
         this.§9!i§.update(param1);
      }
      
      override protected function initThemeGraphicsManager() : §8$3§
      {
         var _loc1_:String = §,A§.§2#O§.§[I§();
         return new §[!5§(_loc1_,"",mLevelManager,§[t§(§<"a§));
      }
      
      override protected function initThemeSoundsManager() : §8$3§
      {
         var _loc1_:String = §,A§.§2#O§.§[I§();
         return new §[!5§(_loc1_,"",mLevelManager,§[t§(§<"a§),false);
      }
      
      override protected function initCutSceneManager() : §8$3§
      {
         var _loc1_:String = §,A§.§2#O§.§[I§();
         return new §[!5§(_loc1_,"",mLevelManager,§[t§(§<"a§));
      }
      
      override public function get backgroundTextureManager() : §34§
      {
         if(§'!t§)
         {
            return §'!t§.textureManager;
         }
         return null;
      }
      
      override protected function initAnimationManager(param1:§34§) : §`#+§
      {
         return new §`#6§(param1);
      }
      
      override protected function initializeLevelBackground(param1:String, param2:Number, param3:§34§, param4:Number) : §>!o§
      {
         var _loc5_:§]§;
         if((_loc5_ = §5m§.getBackground(param1)) && param1 == "BACKGROUND_FB_MOUNTAINS" && !Starling.§`"J§)
         {
            return new §8!I§(this,_loc5_,param2,param3,param4);
         }
         if(_loc5_ && param1 == "BACKGROUND_FB_ROCK_IN_RIO")
         {
            return new §'"z§(this,_loc5_,param2,param3,param4);
         }
         return super.initializeLevelBackground(param1,param2,param3,param4);
      }
      
      override protected function initializeLevelSlingshot(param1:§>f§) : § !o§
      {
         var _loc2_:§9"^§ = new §9"^§(this,param1,new Sprite());
         this.§'k§(_loc2_);
         return _loc2_;
      }
      
      override protected function initializeLevelObjectManager(param1:§>f§) : §!#L§
      {
         var _loc2_:String = §]§.§-k§;
         return new §;Y§(this,mLevelManager,param1,new Sprite(),_loc2_);
      }
      
      override protected function initializeParticleManager(param1:§`#+§, param2:§34§) : §[p§
      {
         return new §7#c§(param1,param2);
      }
      
      public function get §2"P§() : §"!"§
      {
         return this.§9!i§;
      }
      
      override protected function initializeLevelCamera(param1:§>f§) : §4#u§
      {
         return new §-#i§(this,param1);
      }
      
      override protected function getSpriteSheetGroup(param1:§=!I§) : int
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
         if(§%!a§[param1])
         {
            param1 = §<4§.theme = §+y§.§;"2§;
         }
         this.§0A§ = false;
         super.loadTheme(param1);
      }
      
      override protected function onThemeGraphicsNotAvailable(param1:Event) : void
      {
         if(!this.§0A§ && §5`§.§6!§.tournamentRules && §5`§.§6!§.tournamentRules.background == §<4§.theme && §<4§.theme != §+y§.§;"2§)
         {
            §%!a§[§<4§.theme] = §<4§.theme;
            this.§0A§ = true;
            §<4§.theme = §+y§.§;"2§;
            §51§(§+y§.§;"2§);
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
      
      public function §2#@§(param1:String) : void
      {
         §7S§ = param1;
      }
      
      override public function shootBird(param1:§4!_§, param2:Number, param3:Number) : §4!y§
      {
         var _loc9_:Array = null;
         var _loc15_:Object = null;
         var _loc16_:int = 0;
         var _loc4_:String = §4"c§.§"V§.§5"g§;
         var _loc5_:§'#v§;
         if(_loc5_ = (param1 as §6"+§).§+"C§)
         {
            _loc4_ = _loc5_.§5"g§;
         }
         var _loc6_:§4!y§;
         (_loc6_ = super.shootBird(param1,param2,param3)).§""h§("slingShotAbility",(param1 as §6"+§).§+"C§);
         if(_loc5_)
         {
            if((_loc15_ = _loc5_.§5!M§(param1.name))[§'#v§.§,"^§])
            {
               _loc6_.§8!f§(_loc15_[§'#v§.§,"^§]);
            }
            if(_loc15_[§'#v§.§^"[§])
            {
               _loc6_.§-">§(_loc15_[§'#v§.§^"[§]);
            }
            if(_loc15_[§'#v§.§=#P§])
            {
               _loc6_.§ !W§(_loc15_[§'#v§.§=#P§]);
            }
            _loc6_.§>"H§ = _loc5_.§7"x§();
            _loc6_.§3!u§(_loc5_.§;!N§());
         }
         var _loc7_:String = "Level" + §3#U§.§#$4§.currentLevel.name;
         var _loc8_:int = 1 + §3#U§.§#$4§.slingshot.§`!R§() - §3#U§.§#$4§.slingshot.§]$>§();
         var _loc10_:* = (_loc9_ = (§3#U§.§#$4§ as §2$2§).§<Q§()).indexOf(§%#k§.§'"!§.§5"g§) > -1;
         var _loc11_:* = _loc9_.indexOf(§%#k§.§0"W§.§5"g§) > -1;
         var _loc12_:* = _loc9_.indexOf(§%#k§.§""z§.§5"g§) > -1;
         var _loc13_:* = _loc6_.itemName == "BIRD_WINGMAN";
         §`"x§.§ 1§(_loc4_,_loc7_,_loc8_,_loc10_,_loc11_,_loc12_,_loc13_);
         § try§.§!!t§().§8"a§(currentLevel.name,_loc4_,_loc10_,_loc11_,_loc12_,_loc13_);
         var _loc14_:int = 0;
         if(_loc10_)
         {
            _loc6_.§=1§("STAR_PARTICLE");
            _loc14_ = §4!y§.§[c§;
         }
         if((param1 as §6"+§).§,"§)
         {
            _loc6_.§&"g§ = §@>§.§5X§;
            _loc6_.§=1§("POWERUP_POWERPOTION_TRAIL");
            _loc14_ = §4!y§.§[c§;
            _loc6_.§!"7§(true);
         }
         else
         {
            _loc6_.§&"g§ = §@>§.§5#;§;
            _loc6_.§!"7§(false);
         }
         if(_loc5_)
         {
            _loc16_ = 1;
            while(_loc16_ <= _loc5_.§%!§)
            {
               _loc6_.§=1§(_loc5_.§>"S§ + _loc16_);
               _loc16_++;
            }
            _loc14_ = _loc5_.§+$A§ > _loc14_ ? int(_loc5_.§+$A§) : int(_loc14_);
            _loc6_.§1@§(_loc14_);
         }
         if(this.§,>§)
         {
            this.§,>§.§-b§(_loc6_.itemName == this.§,>§.§4#+§());
         }
         return _loc6_;
      }
      
      public function § !#§() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc1_:Boolean = false;
         if(this.§9!i§)
         {
            _loc2_ = objects.isWorldAtSleep();
            if(this.§9!i§.§]#=§())
            {
               _loc1_ = true;
            }
            else if(this.§9!i§.§^#E§())
            {
               _loc1_ = true;
            }
         }
         return _loc1_;
      }
      
      override public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999, param7:String = null) : void
      {
         if(this.§,>§ && this.§,>§.§5#3§)
         {
            param1 = Math.floor(param1 * this.§,>§.§ var§());
            this.§,>§.§+?§(true);
         }
         super.addScore(param1,param2,param3,param4,param5,param6,param7);
      }
   }
}
