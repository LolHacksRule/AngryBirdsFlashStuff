package § !D§
{
   import § O§.§6f§;
   import § O§.§7!S§;
   import §!!T§.§1"9§;
   import §!!t§.§8!k§;
   import §!6§.DisplayObject;
   import §!6§.Sprite;
   import §!L§.§6!<§;
   import §!L§.§@$#§;
   import §"$=§.§'![§;
   import §"$=§.§=$&§;
   import §%A§.§'Y§;
   import §%A§.§>F§;
   import §%A§.§]#e§;
   import §%_§.§9#b§;
   import §%_§.§;l§;
   import §'!O§.§>!Y§;
   import §'!O§.§@P§;
   import §+"u§.§^"C§;
   import §+#B§.§+$A§;
   import §+#B§.§4"[§;
   import §+#B§.§5"w§;
   import §-!!§.§7S§;
   import §-!!§.§8"J§;
   import §-!!§.§`h§;
   import §-#R§.§0!w§;
   import §-#R§.§=!0§;
   import §3!"§.§"!'§;
   import §3!"§.§%"'§;
   import §3!"§.§&!Q§;
   import §<#S§.§'>§;
   import §<#S§.§0"-§;
   import §<#S§.§[!W§;
   import §=!2§.§%"T§;
   import §="l§.§;#f§;
   import §=V§.§,#P§;
   import §?§.§<"J§;
   import §?§.§?!e§;
   import §]"'§.§#$D§;
   import §]"P§.Starling;
   import §^"[§.§&"-§;
   import §^"[§.§&M§;
   import §^"[§.§2"4§;
   import §^"[§.§2§;
   import §^"[§.§=#;§;
   import §^"[§.§^!8§;
   import flash.display.Stage;
   import flash.events.Event;
   
   public class §4B§ extends §0#I§
   {
      
      public static var §3!Y§:Number = 1;
      
      private static var § N§:§4"[§ = new §4"[§();
       
      
      private var §3"i§:§=!0§;
      
      private var §&#B§:Array;
      
      private var §1_§:Array;
      
      private var §,"U§:Boolean;
      
      private var §[#e§:§%"'§;
      
      private var §<t§:§"!'§;
      
      private var §=!r§:§&!Q§;
      
      protected var §##a§:§,#P§;
      
      public function §4B§(param1:Stage, param2:§<"J§, param3:§>!Y§, param4:§'![§)
      {
         super(param1,param2,param3,param4);
         this.§[#e§ = new §%"'§(1024,768);
         this.§[#e§.§'#o§(0.999,0.999,0.999,0);
         this.§[#e§.§1#e§ = true;
         this.§<t§ = new §"!'§();
         this.§<t§.§@$!§ = 0.5;
      }
      
      public static function §8!l§(param1:Number, param2:Number, param3:int, param4:int, param5:int) : void
      {
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc6_:int = param3 + Math.random() * param4;
         var _loc8_:int = 0;
         while(_loc8_ < _loc6_)
         {
            _loc9_ = Math.random() * (Math.PI * 2);
            _loc10_ = 0.5 * param5 + param5 * (Math.random() * 0.5);
            §%"T§.§;`§.particles.addSimpleParticle("STAR_PARTICLE",§'Y§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§>F§.PARTICLE_GROUP_GAME_EFFECTS,§'Y§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,750,"",§'Y§.getParticleMaterialFromEngineMaterial("BIRD_RED"),_loc10_ * Math.cos(_loc9_) * 1,-_loc10_ * Math.sin(_loc9_) * 1,5,_loc10_ * 20,Math.sqrt(1));
            _loc8_++;
         }
      }
      
      public static function §&G§(param1:Number, param2:Number, param3:int, param4:int, param5:int) : void
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
            §%"T§.§;`§.particles.addSimpleParticle("POWERUP_EFFECT_BUBBLE",§'Y§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§>F§.PARTICLE_GROUP_GAME_EFFECTS,§'Y§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,500,"",§'Y§.getParticleMaterialFromEngineMaterial("BIRD_RED"),_loc10_ * Math.cos(_loc9_) * _loc8_,-_loc10_ * Math.sin(_loc9_) * _loc8_,0,0,_loc8_);
            _loc7_++;
         }
      }
      
      public function § #O§() : Array
      {
         if(this.§&#B§)
         {
            return this.§&#B§.concat();
         }
         return null;
      }
      
      public function §4#h§() : Array
      {
         var _loc2_:String = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.§&#B§)
         {
            if(§#$D§.§?q§.§if§(_loc2_) <= 0)
            {
               _loc1_.push(_loc2_);
            }
         }
         for each(_loc2_ in this.§1_§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public function §+#v§(param1:§0$?§) : void
      {
         param1.§,K§ = false;
      }
      
      public function §5"F§() : int
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         if(this.§&#B§)
         {
            _loc1_ = this.§&#B§.length;
            _loc2_ = 0;
            while(_loc2_ < this.§&#B§.length)
            {
               if(§0!w§.§?#D§.indexOf(this.§&#B§[_loc2_]) > -1)
               {
                  _loc1_--;
               }
               _loc2_++;
            }
         }
         return _loc1_;
      }
      
      public function initializeSlingshotObject(param1:§;M§) : void
      {
         var _loc2_:String = null;
         var _loc3_:§^!8§ = null;
         if(this.§@w§)
         {
            _loc2_ = "LIGHT_BIRD";
            _loc3_ = §=#;§.§?q§.getTexture(_loc2_);
            if(_loc3_)
            {
               param1.§+Q§();
               param1.backgroundSprite.addChild(_loc3_.§4!d§());
               objects.backgroundSprite.addChild(param1.backgroundSprite);
            }
         }
      }
      
      protected function get §@w§() : Boolean
      {
         return false;
      }
      
      override protected function addBackgroundSpritesToDisplayList() : void
      {
         super.addBackgroundSpritesToDisplayList();
         if(this.§@w§)
         {
            §]!'§.backgroundSprite.filter = this.§<t§;
            §]!'§.backgroundSprite.ownsFilter = false;
         }
      }
      
      override protected function addGameSpritesToDisplayList() : void
      {
         this.§=!r§ = null;
         if(this.§@w§)
         {
            this.§=!r§ = this.§[#e§;
         }
         if(§]!'§ is §`h§)
         {
            this.addItemToDisplayList((§]!'§ as §`h§).§^"T§);
         }
         super.addGameSpritesToDisplayList();
         this.§=!r§ = null;
      }
      
      override protected function addItemToDisplayList(param1:DisplayObject) : void
      {
         super.addItemToDisplayList(param1);
         param1.filter = this.§=!r§;
         param1.ownsFilter = false;
      }
      
      public function §1#W§(param1:String) : Boolean
      {
         if(!this.§&#B§)
         {
            return false;
         }
         return this.§&#B§.indexOf(param1) >= 0;
      }
      
      public function §?z§(param1:String) : void
      {
         if(param1 != "MightyEagle")
         {
            return;
         }
         if(!this.§&#B§)
         {
            this.§&#B§ = [];
         }
         if(param1 == §0!w§.§%#p§.§]'§)
         {
            if(this.§##a§)
            {
               this.§##a§.§"!G§(false);
            }
         }
         this.§&#B§.push(param1);
      }
      
      public function §97§(param1:String) : void
      {
         if(!this.§1_§)
         {
            this.§1_§ = [];
         }
         if(this.§1_§.indexOf(param1) == -1)
         {
            this.§1_§.push(param1);
         }
      }
      
      override public function init(param1:§=$&§) : void
      {
         super.init(param1);
         this.§&#B§ = [];
         this.§3"i§ = this.§<!2§();
         this.§1_§ = [];
         if(mLevelManager.getCurrentEpisodeModel().isTournament)
         {
            this.§##a§ = §1"9§.§?q§.§[!8§() as §,#P§;
         }
         else
         {
            this.§##a§ = null;
         }
      }
      
      protected function §<!2§() : §=!0§
      {
         return new §=!0§(mLevelManager);
      }
      
      override public function setController(param1:§@$#§) : void
      {
         super.setController(param1);
         if(param1 is §6!<§)
         {
            this.§3"i§.setController(param1 as §6!<§);
         }
      }
      
      override public function clearLevel() : void
      {
         super.clearLevel();
         if(this.§3"i§)
         {
            this.§3"i§.dispose();
            this.§3"i§ = null;
         }
      }
      
      override protected function stabilizeWorld() : void
      {
         §]!W§(20,1 / 30);
      }
      
      protected function §<!a§(param1:Number) : void
      {
         if(this.§[#e§)
         {
            this.§[#e§.§;!5§ = param1 < 20;
            this.§[#e§.§-$$§(0.02,0.08 + 0.05 * Math.sin(§ # § / 250),0.02,0);
            if(§]!'§.backgroundSprite.numChildren > 0)
            {
               this.§[#e§.§%@§ = this.§<t§;
            }
            else
            {
               this.§[#e§.§%@§ = null;
            }
         }
      }
      
      override protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         this.§3"i§.run(param1,§]!'§);
         if(this.§@w§)
         {
            this.§<!a§(param1);
         }
         return super.updateWithTime(param1,param2,param3);
      }
      
      override public function handleEngineUpdateStep(param1:Number) : void
      {
         super.handleEngineUpdateStep(param1);
         this.§3"i§.update(param1);
      }
      
      override protected function initThemeGraphicsManager() : §&"-§
      {
         var _loc1_:String = §'"a§.§!!8§.§^#3§();
         return new §2"4§(_loc1_,"",mLevelManager,§?!e§(§`!2§));
      }
      
      override protected function initThemeSoundsManager() : §&"-§
      {
         var _loc1_:String = §'"a§.§!!8§.§^#3§();
         return new §2"4§(_loc1_,"",mLevelManager,§?!e§(§`!2§),false);
      }
      
      override protected function initCutSceneManager() : §&"-§
      {
         var _loc1_:String = §'"a§.§!!8§.§^#3§();
         return new §2"4§(_loc1_,"",mLevelManager,§?!e§(§`!2§));
      }
      
      override public function get backgroundTextureManager() : §=#;§
      {
         if(§[#K§)
         {
            return §[#K§.textureManager;
         }
         return null;
      }
      
      override protected function initAnimationManager(param1:§=#;§) : §2#6§
      {
         return new §&M§(param1);
      }
      
      override protected function initializeLevelBackground(param1:String, param2:Number, param3:§=#;§, param4:Number) : §[!W§
      {
         var _loc5_:§@P§;
         if((_loc5_ = §&"%§.getBackground(param1)) && param1 == "BACKGROUND_FB_MOUNTAINS" && !Starling.§^$?§)
         {
            return new §'>§(this,_loc5_,param2,param3,param4);
         }
         if(_loc5_ && param1 == "BACKGROUND_FB_ROCK_IN_RIO")
         {
            return new §0"-§(this,_loc5_,param2,param3,param4);
         }
         return super.initializeLevelBackground(param1,param2,param3,param4);
      }
      
      override protected function initializeLevelSlingshot(param1:§=$&§) : §"b§
      {
         var _loc2_:§0$?§ = new §0$?§(this,param1,new Sprite());
         this.§+#v§(_loc2_);
         return _loc2_;
      }
      
      override protected function initializeLevelObjectManager(param1:§=$&§) : §7S§
      {
         var _loc2_:String = §@P§.§-$0§;
         return new §`h§(this,mLevelManager,param1,new Sprite(),_loc2_);
      }
      
      override protected function initializeParticleManager(param1:§2#6§, param2:§=#;§) : §>F§
      {
         return new §]#e§(param1,param2);
      }
      
      public function get §##`§() : §=!0§
      {
         return this.§3"i§;
      }
      
      override protected function initializeLevelCamera(param1:§=$&§) : §;l§
      {
         return new §9#b§(this,param1);
      }
      
      override protected function getSpriteSheetGroup(param1:§;#f§) : int
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
         if(§ N§[param1])
         {
            param1 = §8"x§.theme = §8!k§.§"!"§;
         }
         this.§,"U§ = false;
         super.loadTheme(param1);
      }
      
      override protected function onThemeGraphicsNotAvailable(param1:Event) : void
      {
         if(!this.§,"U§ && §^"C§.§?q§.tournamentRules && §^"C§.§?q§.tournamentRules.background == §8"x§.theme && §8"x§.theme != §8!k§.§"!"§)
         {
            § N§[§8"x§.theme] = §8"x§.theme;
            this.§,"U§ = true;
            §8"x§.theme = §8!k§.§"!"§;
            §1M§(§8!k§.§"!"§);
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
      
      public function §9k§(param1:String) : void
      {
         §]#§ = param1;
      }
      
      override public function shootBird(param1:§;M§, param2:Number, param3:Number) : §8"J§
      {
         var _loc9_:Array = null;
         var _loc15_:Object = null;
         var _loc16_:int = 0;
         var _loc4_:String = §7!S§.§#"x§.§]'§;
         var _loc5_:§6f§;
         if(_loc5_ = (param1 as § !§).§=#d§)
         {
            _loc4_ = _loc5_.§]'§;
         }
         var _loc6_:§8"J§;
         (_loc6_ = super.shootBird(param1,param2,param3)).§+"l§("slingShotAbility",(param1 as § !§).§=#d§);
         if(_loc5_)
         {
            if((_loc15_ = _loc5_.§^#'§(param1.name))[§6f§.§&W§])
            {
               _loc6_.§0!D§(_loc15_[§6f§.§&W§]);
            }
            if(_loc15_[§6f§.§-9§])
            {
               _loc6_.§"#p§(_loc15_[§6f§.§-9§]);
            }
            if(_loc15_[§6f§.§]#W§])
            {
               _loc6_.§="C§(_loc15_[§6f§.§]#W§]);
            }
            _loc6_.§&"X§ = _loc5_.§`#j§();
            _loc6_.§1!E§(_loc5_.§-O§());
         }
         var _loc7_:String = "Level" + §%"T§.§;`§.currentLevel.name;
         var _loc8_:int = 1 + §%"T§.§;`§.slingshot.§@$B§() - §%"T§.§;`§.slingshot.§17§();
         var _loc10_:* = (_loc9_ = (§%"T§.§;`§ as §4B§).§ #O§()).indexOf(§0!w§.§ #;§.§]'§) > -1;
         var _loc11_:* = _loc9_.indexOf(§0!w§.§,"w§.§]'§) > -1;
         var _loc12_:* = _loc9_.indexOf(§0!w§.§3#D§.§]'§) > -1;
         var _loc13_:* = _loc6_.itemName == "BIRD_WINGMAN";
         §5"w§.§2"1§(_loc4_,_loc7_,_loc8_,_loc10_,_loc11_,_loc12_,_loc13_);
         §+$A§.§@"i§().§9!c§(currentLevel.name,_loc4_,_loc10_,_loc11_,_loc12_,_loc13_);
         var _loc14_:int = 0;
         if(_loc10_)
         {
            _loc6_.§[#<§("STAR_PARTICLE");
            _loc14_ = §8"J§.§5I§;
         }
         if((param1 as § !§).§^'§)
         {
            _loc6_.§<#r§ = §'Y§.§5!K§;
            _loc6_.§[#<§("POWERUP_POWERPOTION_TRAIL");
            _loc14_ = §8"J§.§5I§;
            _loc6_.§3##§(true);
         }
         else
         {
            _loc6_.§<#r§ = §'Y§.§?#B§;
            _loc6_.§3##§(false);
         }
         if(_loc5_)
         {
            _loc16_ = 1;
            while(_loc16_ <= _loc5_.§2"=§)
            {
               _loc6_.§[#<§(_loc5_.particleName + _loc16_);
               _loc16_++;
            }
            _loc14_ = _loc5_.§6q§ > _loc14_ ? int(_loc5_.§6q§) : int(_loc14_);
            _loc6_.§<"X§(_loc14_);
         }
         if(this.§##a§)
         {
            this.§##a§.§"!G§(_loc6_.itemName == this.§##a§.§';§());
         }
         return _loc6_;
      }
      
      public function §7#,§() : Boolean
      {
         var _loc1_:Boolean = false;
         if(this.§3"i§)
         {
            Boolean(objects.isWorldAtSleep());
            if(this.§3"i§.§-"M§())
            {
               _loc1_ = true;
            }
            else if(this.§3"i§.§@$8§())
            {
               _loc1_ = true;
            }
         }
         return _loc1_;
      }
      
      override public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999, param7:String = null) : void
      {
         if(this.§##a§ && this.§##a§.§0A§)
         {
            param1 = Math.floor(param1 * this.§##a§.§5!5§());
            this.§##a§.§2J§(true);
         }
         super.addScore(param1,param2,param3,param4,param5,param6,param7);
      }
   }
}
