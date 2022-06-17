package §?$#§
{
   import §#!S§.§[!s§;
   import §#!S§.§`"B§;
   import §#"3§.§4!h§;
   import §#Z§.DisplayObject;
   import §#Z§.Sprite;
   import §%$0§.§0E§;
   import §%$0§.§2#Z§;
   import §%$0§.§`#I§;
   import §&§.Starling;
   import §+!n§.§+!p§;
   import §-!j§.§#"+§;
   import §-!j§.§,"!§;
   import §-!j§.§4"-§;
   import §-"e§.§[9§;
   import §-"e§.§^#i§;
   import §0!>§.§ !b§;
   import §0!>§.§^$D§;
   import §2E§.§&#a§;
   import §2E§.§'@§;
   import §2E§.§]!P§;
   import §4#$§.§5"L§;
   import §8!M§.§&"5§;
   import §8!M§.§'!%§;
   import §8!M§.§07§;
   import §8"h§.§9!a§;
   import §8"h§.§]n§;
   import §9#M§.§!!]§;
   import §9#M§.§%"=§;
   import §9#M§.§'!-§;
   import §9#M§.§-!q§;
   import §9#M§.§0#^§;
   import §9#M§.§8§;
   import §<"I§.§1!z§;
   import §<"I§.§<$B§;
   import §>#Y§.§!",§;
   import §?!<§.§5!M§;
   import §?o§.§ ^§;
   import §?o§.§4#?§;
   import §[!&§.§`#D§;
   import §[#v§.§'"b§;
   import §]M§.§=!a§;
   import §^0§.§%"^§;
   import §^0§.§3!U§;
   import §^0§.§=Q§;
   import §`$=§.§5$E§;
   import §`$=§.§<Q§;
   import flash.display.Stage;
   import flash.events.Event;
   
   public class §^#j§ extends §<"Y§
   {
      
      public static var §^!"§:Number = 1;
      
      private static var §6"l§:§&#a§ = new §&#a§();
       
      
      private var §&#R§:§1!z§;
      
      private var §3!w§:Array;
      
      private var §^!>§:Array;
      
      private var §-$A§:Boolean;
      
      private var §"$A§:§&"5§;
      
      private var §!$6§:§'!%§;
      
      private var §'$D§:§07§;
      
      protected var §,#5§:§5!M§;
      
      public function §^#j§(param1:Stage, param2:§#"+§, param3:§[!s§, param4:§4#?§)
      {
         super(param1,param2,param3,param4);
         this.§"$A§ = new §&"5§(1024,768);
         this.§"$A§.§<#_§(0.999,0.999,0.999,0);
         this.§"$A§.§<">§ = true;
         this.§!$6§ = new §'!%§();
         this.§!$6§.§7!'§ = 0.5;
      }
      
      public static function §0g§(param1:Number, param2:Number, param3:int, param4:int, param5:int) : void
      {
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc6_:int = param3 + Math.random() * param4;
         var _loc8_:int = 0;
         while(_loc8_ < _loc6_)
         {
            _loc9_ = Math.random() * (Math.PI * 2);
            _loc10_ = 0.5 * param5 + param5 * (Math.random() * 0.5);
            §+!p§.§`?§.particles.addSimpleParticle("STAR_PARTICLE",§`#I§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§2#Z§.PARTICLE_GROUP_GAME_EFFECTS,§`#I§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,750,"",§`#I§.getParticleMaterialFromEngineMaterial("BIRD_RED"),_loc10_ * Math.cos(_loc9_) * 1,-_loc10_ * Math.sin(_loc9_) * 1,5,_loc10_ * 20,Math.sqrt(1));
            _loc8_++;
         }
      }
      
      public static function §#!^§(param1:Number, param2:Number, param3:int, param4:int, param5:int) : void
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
            §+!p§.§`?§.particles.addSimpleParticle("POWERUP_EFFECT_BUBBLE",§`#I§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§2#Z§.PARTICLE_GROUP_GAME_EFFECTS,§`#I§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,500,"",§`#I§.getParticleMaterialFromEngineMaterial("BIRD_RED"),_loc10_ * Math.cos(_loc9_) * _loc8_,-_loc10_ * Math.sin(_loc9_) * _loc8_,0,0,_loc8_);
            _loc7_++;
         }
      }
      
      public function §"C§() : Array
      {
         if(this.§3!w§)
         {
            return this.§3!w§.concat();
         }
         return null;
      }
      
      public function §7#j§() : Array
      {
         var _loc2_:String = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.§3!w§)
         {
            if(§!",§.§3"1§.§4#<§(_loc2_) <= 0)
            {
               _loc1_.push(_loc2_);
            }
         }
         for each(_loc2_ in this.§^!>§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public function §@">§(param1:§]"]§) : void
      {
         param1.§-#§ = false;
      }
      
      public function §="[§() : int
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         if(this.§3!w§)
         {
            _loc1_ = this.§3!w§.length;
            _loc2_ = 0;
            while(_loc2_ < this.§3!w§.length)
            {
               if(§<$B§.§,#j§.indexOf(this.§3!w§[_loc2_]) > -1)
               {
                  _loc1_--;
               }
               _loc2_++;
            }
         }
         return _loc1_;
      }
      
      public function initializeSlingshotObject(param1:§;![§) : void
      {
         var _loc2_:String = null;
         var _loc3_:§'!-§ = null;
         if(this.§16§)
         {
            _loc2_ = "LIGHT_BIRD";
            _loc3_ = §%"=§.§3"1§.getTexture(_loc2_);
            if(_loc3_)
            {
               param1.§;"q§();
               param1.backgroundSprite.addChild(_loc3_.§<!U§());
               objects.backgroundSprite.addChild(param1.backgroundSprite);
            }
         }
      }
      
      protected function get §16§() : Boolean
      {
         return false;
      }
      
      override protected function addBackgroundSpritesToDisplayList() : void
      {
         super.addBackgroundSpritesToDisplayList();
         if(this.§16§)
         {
            §>"6§.backgroundSprite.filter = this.§!$6§;
            §>"6§.backgroundSprite.ownsFilter = false;
         }
      }
      
      override protected function addGameSpritesToDisplayList() : void
      {
         this.§'$D§ = null;
         if(this.§16§)
         {
            this.§'$D§ = this.§"$A§;
         }
         if(§>"6§ is §3!U§)
         {
            this.addItemToDisplayList((§>"6§ as §3!U§).§]#L§);
         }
         super.addGameSpritesToDisplayList();
         this.§'$D§ = null;
      }
      
      override protected function addItemToDisplayList(param1:DisplayObject) : void
      {
         super.addItemToDisplayList(param1);
         param1.filter = this.§'$D§;
         param1.ownsFilter = false;
      }
      
      public function §[!d§(param1:String) : Boolean
      {
         if(!this.§3!w§)
         {
            return false;
         }
         return this.§3!w§.indexOf(param1) >= 0;
      }
      
      public function §,"9§(param1:String) : void
      {
         if(param1 != "MightyEagle")
         {
            return;
         }
         if(!this.§3!w§)
         {
            this.§3!w§ = [];
         }
         if(param1 == §<$B§.§5#J§.§=#@§)
         {
            if(this.§,#5§)
            {
               this.§,#5§.§[g§(false);
            }
         }
         this.§3!w§.push(param1);
      }
      
      public function §;!c§(param1:String) : void
      {
         if(!this.§^!>§)
         {
            this.§^!>§ = [];
         }
         if(this.§^!>§.indexOf(param1) == -1)
         {
            this.§^!>§.push(param1);
         }
      }
      
      override public function init(param1:§ ^§) : void
      {
         super.init(param1);
         this.§3!w§ = [];
         this.§&#R§ = this.§,#E§();
         this.§^!>§ = [];
         if(mLevelManager.getCurrentEpisodeModel().isTournament)
         {
            this.§,#5§ = §=!a§.§3"1§.§>"Q§() as §5!M§;
         }
         else
         {
            this.§,#5§ = null;
         }
      }
      
      protected function §,#E§() : §1!z§
      {
         return new §1!z§(mLevelManager);
      }
      
      override public function setController(param1:§^$D§) : void
      {
         super.setController(param1);
         if(param1 is § !b§)
         {
            this.§&#R§.setController(param1 as § !b§);
         }
      }
      
      override public function clearLevel() : void
      {
         super.clearLevel();
         if(this.§&#R§)
         {
            this.§&#R§.dispose();
            this.§&#R§ = null;
         }
      }
      
      override protected function stabilizeWorld() : void
      {
         §-#R§(20,1 / 30);
      }
      
      protected function §'#L§(param1:Number) : void
      {
         if(this.§"$A§)
         {
            this.§"$A§.§>$3§ = param1 < 20;
            this.§"$A§.§2!5§(0.02,0.08 + 0.05 * Math.sin(§4#k§ / 250),0.02,0);
            if(§>"6§.backgroundSprite.numChildren > 0)
            {
               this.§"$A§.§5#9§ = this.§!$6§;
            }
            else
            {
               this.§"$A§.§5#9§ = null;
            }
         }
      }
      
      override protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         this.§&#R§.run(param1,§>"6§);
         if(this.§16§)
         {
            this.§'#L§(param1);
         }
         return super.updateWithTime(param1,param2,param3);
      }
      
      override public function handleEngineUpdateStep(param1:Number) : void
      {
         super.handleEngineUpdateStep(param1);
         this.§&#R§.update(param1);
      }
      
      override protected function initThemeGraphicsManager() : §8#0§
      {
         var _loc1_:String = §^"a§.§9!h§.§4#%§();
         return new §-!q§(_loc1_,"",mLevelManager,§,"!§(§+#D§));
      }
      
      override protected function initThemeSoundsManager() : §8#0§
      {
         var _loc1_:String = §^"a§.§9!h§.§4#%§();
         return new §-!q§(_loc1_,"",mLevelManager,§,"!§(§+#D§),false);
      }
      
      override protected function initCutSceneManager() : §8#0§
      {
         var _loc1_:String = §^"a§.§9!h§.§4#%§();
         return new §-!q§(_loc1_,"",mLevelManager,§,"!§(§+#D§));
      }
      
      override public function get backgroundTextureManager() : §%"=§
      {
         if(§3"§)
         {
            return §3"§.textureManager;
         }
         return null;
      }
      
      override protected function initAnimationManager(param1:§%"=§) : §!!]§
      {
         return new §0#^§(param1);
      }
      
      override protected function initializeLevelBackground(param1:String, param2:Number, param3:§%"=§, param4:Number) : §]n§
      {
         var _loc5_:§`"B§;
         if((_loc5_ = §8$;§.getBackground(param1)) == null)
         {
            §4!h§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = § ^§.§,!t§;
            _loc5_ = §8$;§.getBackground(param1);
         }
         var _loc6_:§4"-§ = null;
         if(§@0§)
         {
            _loc6_ = §@0§.soundManager;
         }
         return new §9!a§(this,_loc5_,param2,param3,param4,_loc6_,!Starling.§," §);
      }
      
      override protected function initializeLevelSlingshot(param1:§ ^§) : §2!"§
      {
         var _loc2_:§]"]§ = new §]"]§(this,param1,new Sprite());
         this.§@">§(_loc2_);
         return _loc2_;
      }
      
      override protected function initializeLevelObjectManager(param1:§ ^§) : §%"^§
      {
         var _loc2_:String = §`"B§.§8#f§;
         return new §3!U§(this,mLevelManager,param1,new Sprite(),_loc2_);
      }
      
      override protected function initializeParticleManager(param1:§!!]§, param2:§%"=§) : §2#Z§
      {
         return new §0E§(param1,param2);
      }
      
      public function get §'#>§() : §1!z§
      {
         return this.§&#R§;
      }
      
      override protected function initializeLevelCamera(param1:§ ^§) : §5$E§
      {
         return new §<Q§(this,param1);
      }
      
      override protected function getSpriteSheetGroup(param1:§`#D§) : int
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
         if(§6"l§[param1])
         {
            param1 = §=!h§.theme = §'"b§.§,!n§;
         }
         this.§-$A§ = false;
         super.loadTheme(param1);
      }
      
      override protected function onThemeGraphicsNotAvailable(param1:Event) : void
      {
         if(!this.§-$A§ && §5"L§.§3"1§.tournamentRules && §5"L§.§3"1§.tournamentRules.background == §=!h§.theme && §=!h§.theme != §'"b§.§,!n§)
         {
            §6"l§[§=!h§.theme] = §=!h§.theme;
            this.§-$A§ = true;
            §=!h§.theme = §'"b§.§,!n§;
            § set§(§'"b§.§,!n§);
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
      
      public function §1[§(param1:String) : void
      {
         §3!T§ = param1;
      }
      
      override public function shootBird(param1:§;![§, param2:Number, param3:Number) : §=Q§
      {
         var _loc9_:Array = null;
         var _loc15_:Object = null;
         var _loc16_:int = 0;
         var _loc4_:String = §[9§.§&#H§.§=#@§;
         var _loc5_:§^#i§;
         if(_loc5_ = (param1 as §7!<§).§,'§)
         {
            _loc4_ = _loc5_.§=#@§;
         }
         var _loc6_:§=Q§;
         (_loc6_ = super.shootBird(param1,param2,param3)).§5$3§("slingShotAbility",(param1 as §7!<§).§,'§);
         if(_loc5_)
         {
            if((_loc15_ = _loc5_.§+"[§(param1.name))[§^#i§.§,"Y§])
            {
               _loc6_.§["@§(_loc15_[§^#i§.§,"Y§]);
            }
            if(_loc15_[§^#i§.§<!-§])
            {
               _loc6_.§"#i§(_loc15_[§^#i§.§<!-§]);
            }
            if(_loc15_[§^#i§.§^#t§])
            {
               _loc6_.§]!L§(_loc15_[§^#i§.§^#t§]);
            }
            _loc6_.§<!x§ = _loc5_.§83§();
            _loc6_.§5#W§(_loc5_.§"F§());
         }
         var _loc7_:String = "Level" + §+!p§.§`?§.currentLevel.name;
         var _loc8_:int = 1 + §+!p§.§`?§.slingshot.§?#&§() - §+!p§.§`?§.slingshot.§,"j§();
         var _loc10_:* = (_loc9_ = (§+!p§.§`?§ as §^#j§).§"C§()).indexOf(§<$B§.§<$§.§=#@§) > -1;
         var _loc11_:* = _loc9_.indexOf(§<$B§.§ !n§.§=#@§) > -1;
         var _loc12_:* = _loc9_.indexOf(§<$B§.§+"4§.§=#@§) > -1;
         var _loc13_:* = _loc6_.itemName == "BIRD_WINGMAN";
         §'@§.§<=§(_loc4_,_loc7_,_loc8_,_loc10_,_loc11_,_loc12_,_loc13_);
         §]!P§.§1!7§().§;"F§(currentLevel.name,_loc4_,_loc10_,_loc11_,_loc12_,_loc13_);
         var _loc14_:int = 0;
         if(_loc10_)
         {
            _loc6_.§]#=§("STAR_PARTICLE");
            _loc14_ = §=Q§.§,"o§;
         }
         if((param1 as §7!<§).§;!u§)
         {
            _loc6_.§##M§ = §`#I§.§`"6§;
            _loc6_.§]#=§("POWERUP_POWERPOTION_TRAIL");
            _loc14_ = §=Q§.§,"o§;
            _loc6_.§<#u§(true);
         }
         else
         {
            _loc6_.§##M§ = §`#I§.§"!S§;
            _loc6_.§<#u§(false);
         }
         if(_loc5_)
         {
            _loc16_ = 1;
            while(_loc16_ <= _loc5_.§^!y§)
            {
               _loc6_.§]#=§(_loc5_.particleName + _loc16_);
               _loc16_++;
            }
            _loc14_ = _loc5_.§-!$§ > _loc14_ ? int(_loc5_.§-!$§) : int(_loc14_);
            _loc6_.§%"x§(_loc14_);
         }
         if(this.§,#5§)
         {
            this.§,#5§.§[g§(_loc6_.itemName == this.§,#5§.§^$4§());
         }
         return _loc6_;
      }
      
      public function §'"Z§() : Boolean
      {
         var _loc1_:Boolean = false;
         if(this.§&#R§)
         {
            Boolean(objects.isWorldAtSleep());
            if(this.§&#R§.§,!>§())
            {
               _loc1_ = true;
            }
            else if(this.§&#R§.§>n§())
            {
               _loc1_ = true;
            }
         }
         return _loc1_;
      }
      
      override public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999, param7:String = null) : void
      {
         if(this.§,#5§ && this.§,#5§.§;^§)
         {
            param1 = Math.floor(param1 * this.§,#5§.§4!^§());
            this.§,#5§.§@"G§(true);
         }
         super.addScore(param1,param2,param3,param4,param5,param6,param7);
      }
   }
}
