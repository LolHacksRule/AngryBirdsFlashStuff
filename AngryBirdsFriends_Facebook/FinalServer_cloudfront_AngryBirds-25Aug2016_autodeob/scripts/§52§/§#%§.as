package §52§
{
   import §#v§.§#!?§;
   import §#v§.§-"R§;
   import §'"-§.§8"p§;
   import §'"-§.§`j§;
   import §'z§.§4!x§;
   import §'z§.§]!T§;
   import §+!d§.§&b§;
   import §+!d§.§3§;
   import §+#m§.§=#S§;
   import §-"i§.§;"§;
   import §5"$§.§]!m§;
   import §8$1§.§ #u§;
   import §8$1§.§-!e§;
   import §8$1§.§<"G§;
   import §8$1§.§]#i§;
   import §9$§.DisplayObject;
   import §9$§.Sprite;
   import §<#l§.§+"i§;
   import §<#l§.§0!l§;
   import §<#l§.§>!T§;
   import §=!7§.§ #f§;
   import §=!7§.§5"6§;
   import §=!7§.§=$4§;
   import §>!#§.§'"R§;
   import §>!#§.§,"W§;
   import §>!#§.§-#A§;
   import §?§.§>"$§;
   import §@"§.§##V§;
   import §@"§.§&!=§;
   import §@"§.§+!3§;
   import §@"§.§+$#§;
   import §@"§.§,"A§;
   import §@"§.§]!-§;
   import §["Q§.§0$,§;
   import §["Q§.§2";§;
   import §[#a§.§-k§;
   import §[#a§.§6"[§;
   import §[#a§.§7#]§;
   import §[#a§.§=#]§;
   import §^§.§1!9§;
   import §^§.§[>§;
   import §^a§.Starling;
   import §`#C§.§3Z§;
   import §`#C§.§9#s§;
   import flash.display.Stage;
   import flash.events.Event;
   
   public class §#%§ extends §-!N§
   {
      
      public static var §`"=§:Number = 1;
      
      private static var §0!B§:§'"R§ = new §'"R§();
       
      
      private var §>A§:Stage;
      
      private var §,!C§:§8"p§;
      
      private var §`B§:Array;
      
      private var §@"6§:Array;
      
      private var §;#b§:Boolean;
      
      private var §]##§:§>!T§;
      
      private var §5!7§:§0!l§;
      
      private var §6$#§:§+"i§;
      
      public function §#%§(param1:Stage, param2:§9#s§, param3:§1!9§, param4:§#!?§)
      {
         this.§>A§ = param1;
         super(param1,param2,param3,param4);
         this.§]##§ = new §>!T§(1024,768);
         this.§]##§.§"#t§(0.999,0.999,0.999,0);
         this.§]##§.§!!7§ = true;
         this.§5!7§ = new §0!l§();
         this.§5!7§.§>"=§ = 0.5;
      }
      
      public static function §&"y§(param1:Number, param2:Number, param3:int, param4:int, param5:int) : void
      {
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc6_:int = param3 + Math.random() * param4;
         var _loc8_:int = 0;
         while(_loc8_ < _loc6_)
         {
            _loc9_ = Math.random() * (Math.PI * 2);
            _loc10_ = 0.5 * param5 + param5 * (Math.random() * 0.5);
            §>"$§.§3#'§.particles.addSimpleParticle("STAR_PARTICLE",§=$4§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§5"6§.PARTICLE_GROUP_GAME_EFFECTS,§=$4§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,750,"",§=$4§.getParticleMaterialFromEngineMaterial("BIRD_RED"),_loc10_ * Math.cos(_loc9_) * 1,-_loc10_ * Math.sin(_loc9_) * 1,5,_loc10_ * 20,Math.sqrt(1));
            _loc8_++;
         }
      }
      
      public static function §'!3§(param1:Number, param2:Number, param3:int, param4:int, param5:int) : void
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
            §>"$§.§3#'§.particles.addSimpleParticle("POWERUP_EFFECT_BUBBLE",§=$4§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§5"6§.PARTICLE_GROUP_GAME_EFFECTS,§=$4§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,500,"",§=$4§.getParticleMaterialFromEngineMaterial("BIRD_RED"),_loc10_ * Math.cos(_loc9_) * _loc8_,-_loc10_ * Math.sin(_loc9_) * _loc8_,0,0,_loc8_);
            _loc7_++;
         }
      }
      
      public function §[5§() : Array
      {
         if(this.§`B§)
         {
            return this.§`B§.concat();
         }
         return null;
      }
      
      public function §?#A§() : Array
      {
         var _loc2_:String = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.§`B§)
         {
            _loc1_.push(_loc2_);
         }
         for each(_loc2_ in this.§@"6§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public function §8#"§(param1:§&#q§) : void
      {
         param1.§3"s§ = false;
      }
      
      public function §-#k§() : int
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         if(this.§`B§)
         {
            _loc1_ = this.§`B§.length;
            _loc2_ = 0;
            while(_loc2_ < this.§`B§.length)
            {
               if(§`j§.§3"I§.indexOf(this.§`B§[_loc2_]) > -1)
               {
                  _loc1_--;
               }
               _loc2_++;
            }
         }
         return _loc1_;
      }
      
      public function initializeSlingshotObject(param1:§5!&§) : void
      {
         var _loc2_:String = null;
         var _loc3_:§+!3§ = null;
         if(this.§@!5§)
         {
            _loc2_ = "LIGHT_BIRD";
            _loc3_ = §&!=§.§3!]§.getTexture(_loc2_);
            if(_loc3_)
            {
               param1.§6y§();
               param1.backgroundSprite.addChild(_loc3_.§]$1§());
               objects.backgroundSprite.addChild(param1.backgroundSprite);
            }
         }
      }
      
      protected function get §@!5§() : Boolean
      {
         return false;
      }
      
      override protected function addBackgroundSpritesToDisplayList() : void
      {
         super.addBackgroundSpritesToDisplayList();
         if(this.§@!5§)
         {
            §@#y§.backgroundSprite.filter = this.§5!7§;
            §@#y§.backgroundSprite.ownsFilter = false;
         }
      }
      
      override protected function addGameSpritesToDisplayList() : void
      {
         this.§6$#§ = null;
         if(this.§@!5§)
         {
            this.§6$#§ = this.§]##§;
         }
         if(§@#y§ is §=#]§)
         {
            this.addItemToDisplayList((§@#y§ as §=#]§).§'n§);
         }
         super.addGameSpritesToDisplayList();
         this.§6$#§ = null;
      }
      
      override protected function addItemToDisplayList(param1:DisplayObject) : void
      {
         super.addItemToDisplayList(param1);
         param1.filter = this.§6$#§;
         param1.ownsFilter = false;
      }
      
      public function §!9§(param1:String) : Boolean
      {
         if(!this.§`B§)
         {
            return false;
         }
         return this.§`B§.indexOf(param1) >= 0;
      }
      
      public function §?!r§(param1:String) : void
      {
         if(param1 != "MightyEagle")
         {
            return;
         }
         if(!this.§`B§)
         {
            this.§`B§ = [];
         }
         this.§`B§.push(param1);
      }
      
      public function §@"<§(param1:String) : void
      {
         if(!this.§@"6§)
         {
            this.§@"6§ = [];
         }
         if(this.§@"6§.indexOf(param1) == -1)
         {
            this.§@"6§.push(param1);
         }
      }
      
      override public function init(param1:§-"R§) : void
      {
         super.init(param1);
         this.§`B§ = [];
         this.§,!C§ = this.§7"V§();
         this.§@"6§ = [];
      }
      
      protected function §7"V§() : §8"p§
      {
         return new §8"p§(mLevelManager);
      }
      
      override public function setController(param1:§]!T§) : void
      {
         super.setController(param1);
         if(param1 is §4!x§)
         {
            this.§,!C§.setController(param1 as §4!x§);
         }
      }
      
      override public function clearLevel() : void
      {
         super.clearLevel();
         if(this.§,!C§)
         {
            this.§,!C§.dispose();
            this.§,!C§ = null;
         }
      }
      
      override protected function stabilizeWorld() : void
      {
         §&"I§(20,1 / 30);
      }
      
      protected function §%M§(param1:Number) : void
      {
         if(this.§]##§)
         {
            this.§]##§.§%"0§ = param1 < 20;
            this.§]##§.§;q§(0.02,0.08 + 0.05 * Math.sin(§?#W§ / 250),0.02,0);
            if(§@#y§.backgroundSprite.numChildren > 0)
            {
               this.§]##§.§]"v§ = this.§5!7§;
            }
            else
            {
               this.§]##§.§]"v§ = null;
            }
         }
      }
      
      override protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         this.§,!C§.run(param1,§@#y§);
         if(this.§@!5§)
         {
            this.§%M§(param1);
         }
         return super.updateWithTime(param1,param2,param3);
      }
      
      override public function handleEngineUpdateStep(param1:Number) : void
      {
         super.handleEngineUpdateStep(param1);
         this.§,!C§.update(param1);
      }
      
      override protected function initThemeGraphicsManager() : §,"A§
      {
         var _loc1_:String = §8G§.§%#S§.§^!G§();
         return new §+$#§(_loc1_,"",mLevelManager,§3Z§(§#o§));
      }
      
      override protected function initThemeSoundsManager() : §,"A§
      {
         var _loc1_:String = §8G§.§%#S§.§^!G§();
         return new §+$#§(_loc1_,"",mLevelManager,§3Z§(§#o§),false);
      }
      
      override protected function initCutSceneManager() : §,"A§
      {
         var _loc1_:String = §8G§.§%#S§.§^!G§();
         return new §+$#§(_loc1_,"",mLevelManager,§3Z§(§#o§));
      }
      
      override public function get backgroundTextureManager() : §&!=§
      {
         if(§8"R§)
         {
            return §8"R§.textureManager;
         }
         return null;
      }
      
      override protected function initAnimationManager(param1:§&!=§) : §]!-§
      {
         return new §##V§(param1);
      }
      
      override protected function initializeLevelBackground(param1:String, param2:Number, param3:§&!=§, param4:Number) : §<"G§
      {
         var _loc6_:Number = NaN;
         var _loc5_:§[>§;
         if((_loc5_ = §]$ §.getBackground(param1)) && param1 == "BACKGROUND_FB_MOUNTAINS" && !Starling.§ #4§)
         {
            return new § #u§(this,_loc5_,param2,param3,param4);
         }
         if(_loc5_ && param1 == "BACKGROUND_FB_ROCK_IN_RIO")
         {
            return new §]#i§(this,_loc5_,param2,param3,param4);
         }
         if(_loc5_ && param1 == "BACKGROUND_FB_XMAS_2013")
         {
            _loc6_ = 0.5;
            return new §-!e§(this,_loc5_,param2,param3,param4,true,_loc6_);
         }
         return super.initializeLevelBackground(param1,param2,param3,param4);
      }
      
      override protected function initializeLevelSlingshot(param1:§-"R§) : §@M§
      {
         var _loc2_:§&#q§ = new §&#q§(this,param1,new Sprite());
         this.§8#"§(_loc2_);
         return _loc2_;
      }
      
      override protected function initializeLevelObjectManager(param1:§-"R§) : §6"[§
      {
         var _loc2_:String = §[>§.§1"r§;
         return new §=#]§(this,mLevelManager,param1,new Sprite(),_loc2_);
      }
      
      override protected function initializeParticleManager(param1:§]!-§, param2:§&!=§) : §5"6§
      {
         return new § #f§(param1,param2);
      }
      
      public function get §4"w§() : §8"p§
      {
         return this.§,!C§;
      }
      
      override protected function initializeLevelCamera(param1:§-"R§) : §0$,§
      {
         return new §2";§(this,param1);
      }
      
      override protected function getSpriteSheetGroup(param1:§=#S§) : int
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
         if(§0!B§[param1])
         {
            param1 = §0#L§.theme = §;"§.§[#E§;
         }
         this.§;#b§ = false;
         super.loadTheme(param1);
      }
      
      override protected function onThemeGraphicsNotAvailable(param1:Event) : void
      {
         if(!this.§;#b§ && §]!m§.§3!]§.§,"K§ && §]!m§.§3!]§.§,"K§.background == §0#L§.theme && §0#L§.theme != §;"§.§[#E§)
         {
            §0!B§[§0#L§.theme] = §0#L§.theme;
            this.§;#b§ = true;
            §0#L§.theme = §;"§.§[#E§;
            §"$!§(§;"§.§[#E§);
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
      
      public function §=!f§(param1:String) : void
      {
         §#S§ = param1;
      }
      
      override public function shootBird(param1:§5!&§, param2:Number, param3:Number) : §-k§
      {
         var _loc9_:Array = null;
         var _loc15_:Object = null;
         var _loc16_:int = 0;
         var _loc4_:String = §3#8§.§0"&§.§"!E§;
         var _loc5_:§&b§;
         if(_loc5_ = (param1 as §1!X§).§^#H§)
         {
            _loc4_ = _loc5_.§"!E§;
            if(_loc5_.§2#a§() == §7#]§.§^#-§)
            {
               param3--;
            }
         }
         var _loc6_:§-k§;
         (_loc6_ = super.shootBird(param1,param2,param3)).§^u§("slingShotAbility",(param1 as §1!X§).§^#H§);
         if((param1 as §1!X§).§%8§)
         {
            _loc6_.§ #J§ = §=$4§.§2O§;
         }
         else
         {
            _loc6_.§ #J§ = §=$4§.§=!_§;
         }
         if(_loc5_)
         {
            if((_loc15_ = _loc5_.§'B§(param1.name))[§&b§.§8$0§])
            {
               _loc6_.§,!b§(_loc15_[§&b§.§8$0§]);
            }
            if(_loc15_[§&b§.§7#m§])
            {
               _loc6_.§5"a§(_loc15_[§&b§.§7#m§]);
            }
            if(_loc15_[§&b§.§+#;§])
            {
               _loc6_.§`"9§(_loc15_[§&b§.§+#;§]);
            }
            _loc6_.§9"P§ = _loc5_.§2#a§();
            _loc6_.§'!t§(_loc5_.§^!l§());
         }
         var _loc7_:String = "Level" + §>"$§.§3#'§.currentLevel.name;
         var _loc8_:int = 1 + §>"$§.§3#'§.slingshot.§`b§() - §>"$§.§3#'§.slingshot.§3!4§();
         var _loc10_:* = (_loc9_ = (§>"$§.§3#'§ as §#%§).§[5§()).indexOf(§`j§.§-"f§.§"!E§) > -1;
         var _loc11_:* = _loc9_.indexOf(§`j§.§-"5§.§"!E§) > -1;
         var _loc12_:* = _loc9_.indexOf(§`j§.§6#z§.§"!E§) > -1;
         var _loc13_:* = _loc6_.itemName == "BIRD_WINGMAN";
         §,"W§.§0!K§(_loc4_,_loc7_,_loc8_,_loc10_,_loc11_,_loc12_,_loc13_);
         §-#A§.§6$2§().§^#;§(currentLevel.name,_loc4_,_loc10_,_loc11_,_loc12_,_loc13_);
         var _loc14_:int = 0;
         if(_loc10_)
         {
            _loc6_.§0!n§("STAR_PARTICLE");
            _loc14_ = §-k§.§4#4§;
         }
         if((param1 as §1!X§).§%8§)
         {
            _loc6_.§0!n§("POWERUP_POWERPOTION_TRAIL");
            _loc14_ = §-k§.§4#4§;
         }
         if(_loc5_)
         {
            _loc16_ = 1;
            while(_loc16_ <= _loc5_.§4N§)
            {
               _loc6_.§0!n§(_loc5_.§%#x§ + _loc16_);
               _loc16_++;
            }
            _loc14_ = _loc5_.§""E§ > _loc14_ ? int(_loc5_.§""E§) : int(_loc14_);
            _loc6_.§2u§(_loc14_);
         }
         return _loc6_;
      }
      
      public function §6!g§() : Boolean
      {
         var _loc1_:Boolean = false;
         if(this.§,!C§)
         {
            Boolean(objects.isWorldAtSleep());
            if(this.§,!C§.§87§())
            {
               _loc1_ = true;
            }
            else if(this.§,!C§.§'!0§())
            {
               _loc1_ = true;
            }
         }
         return _loc1_;
      }
   }
}
