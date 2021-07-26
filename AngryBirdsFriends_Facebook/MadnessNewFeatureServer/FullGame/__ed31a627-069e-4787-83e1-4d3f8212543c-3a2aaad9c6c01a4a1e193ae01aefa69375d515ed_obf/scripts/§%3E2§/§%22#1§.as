package §>2§
{
   import §!!P§.§,!e§;
   import §!!P§.§?!_§;
   import §!#C§.§ $?§;
   import §&!_§.§!!K§;
   import §&!_§.§0I§;
   import §&!_§.§[!j§;
   import §'!j§.Starling;
   import §'G§.§2!F§;
   import §'G§.§2#n§;
   import §'G§.§3$§;
   import §'G§.§3$B§;
   import §'G§.§=g§;
   import §'G§.§^"[§;
   import §+#A§.§`y§;
   import §,"v§.§7!J§;
   import §,"v§.§;"n§;
   import §-$!§.§ $<§;
   import §-$!§.§0$@§;
   import §-;§.§+"d§;
   import §-;§.§^=§;
   import §-<§.§'"v§;
   import §-<§.§4[§;
   import §1#u§.§6"s§;
   import §1#u§.§;"Q§;
   import §1#v§.§;!Y§;
   import §3+§.§+">§;
   import §4§.§;!X§;
   import §4§.§="r§;
   import §6!3§.§'!§;
   import §6!3§.§4!o§;
   import §6!3§.§;!U§;
   import §6#H§.DisplayObject;
   import §6#H§.Sprite;
   import §7"p§.§%6§;
   import §7"p§.§6!9§;
   import §7"p§.§<#]§;
   import §9$2§.§7"L§;
   import §;$<§.§%#w§;
   import §<!r§.§'##§;
   import §?$%§.§&"@§;
   import §?$%§.§3§;
   import §?$%§.§]!=§;
   import §?$<§.§2#W§;
   import §?$<§.§]#A§;
   import §?$<§.§^§;
   import §`#@§.§7n§;
   import flash.display.Stage;
   import flash.events.Event;
   
   public class §"#1§ extends §&" §
   {
      
      public static var §#"%§:Number = 1;
      
      private static var §4`§:§[!j§ = new §[!j§();
       
      
      private var §6#B§:§^=§;
      
      private var §1T§:Array;
      
      private var §,"R§:Array;
      
      private var §]!k§:Boolean;
      
      private var §<A§:§]!=§;
      
      private var §"#!§:§3#5§;
      
      private var §-"Q§:§&"@§;
      
      protected var §,!K§:§`y§;
      
      public function §"#1§(param1:Stage, param2:§2#W§, param3:§4[§, param4:§;"n§)
      {
         super(param1,param2,param3,param4);
         this.§<A§ = new §]!=§(1024,768);
         this.§<A§.§=!s§(0.999,0.999,0.999,0);
         this.§<A§.§=1§ = true;
         this.§"#!§ = new §3#5§();
         this.§"#!§.§6!v§ = 0.5;
      }
      
      public static function §2!X§(param1:Number, param2:Number, param3:int, param4:int, param5:int) : void
      {
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc6_:int = param3 + Math.random() * param4;
         var _loc8_:int = 0;
         while(_loc8_ < _loc6_)
         {
            _loc9_ = Math.random() * (Math.PI * 2);
            _loc10_ = 0.5 * param5 + param5 * (Math.random() * 0.5);
            §7n§.§6#K§.particles.addSimpleParticle("STAR_PARTICLE",§6!9§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§<#]§.PARTICLE_GROUP_GAME_EFFECTS,§6!9§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,750,"",§6!9§.getParticleMaterialFromEngineMaterial("BIRD_RED"),_loc10_ * Math.cos(_loc9_) * 1,-_loc10_ * Math.sin(_loc9_) * 1,5,_loc10_ * 20,Math.sqrt(1));
            _loc8_++;
         }
      }
      
      public static function §>!E§(param1:Number, param2:Number, param3:int, param4:int, param5:int) : void
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
            §7n§.§6#K§.particles.addSimpleParticle("POWERUP_EFFECT_BUBBLE",§6!9§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§<#]§.PARTICLE_GROUP_GAME_EFFECTS,§6!9§.PARTICLE_TYPE_KINETIC_PARTICLE,param1,param2,500,"",§6!9§.getParticleMaterialFromEngineMaterial("BIRD_RED"),_loc10_ * Math.cos(_loc9_) * _loc8_,-_loc10_ * Math.sin(_loc9_) * _loc8_,0,0,_loc8_);
            _loc7_++;
         }
      }
      
      public function §7$7§() : Array
      {
         if(this.§1T§)
         {
            return this.§1T§.concat();
         }
         return null;
      }
      
      public function §7"Z§() : Array
      {
         var _loc2_:String = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.§1T§)
         {
            if(§ $?§.§`"H§.§2"g§(_loc2_) <= 0)
            {
               _loc1_.push(_loc2_);
            }
         }
         for each(_loc2_ in this.§,"R§)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public function §4#8§(param1:§7#;§) : void
      {
         param1.§]#;§ = false;
      }
      
      public function §'E§() : int
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         if(this.§1T§)
         {
            _loc1_ = this.§1T§.length;
            _loc2_ = 0;
            while(_loc2_ < this.§1T§.length)
            {
               if(§+"d§.§="q§.indexOf(this.§1T§[_loc2_]) > -1)
               {
                  _loc1_--;
               }
               _loc2_++;
            }
         }
         return _loc1_;
      }
      
      public function initializeSlingshotObject(param1:§>#!§) : void
      {
         var _loc2_:String = null;
         var _loc3_:§3$B§ = null;
         if(this.§7"u§)
         {
            _loc2_ = "LIGHT_BIRD";
            _loc3_ = §3$§.§`"H§.getTexture(_loc2_);
            if(_loc3_)
            {
               param1.§@"u§();
               param1.backgroundSprite.addChild(_loc3_.§"$ §());
               objects.backgroundSprite.addChild(param1.backgroundSprite);
            }
         }
      }
      
      protected function get §7"u§() : Boolean
      {
         return false;
      }
      
      override protected function addBackgroundSpritesToDisplayList() : void
      {
         super.addBackgroundSpritesToDisplayList();
         if(this.§7"u§)
         {
            §@"]§.backgroundSprite.filter = this.§"#!§;
            §@"]§.backgroundSprite.ownsFilter = false;
         }
      }
      
      override protected function addGameSpritesToDisplayList() : void
      {
         this.§-"Q§ = null;
         if(this.§7"u§)
         {
            this.§-"Q§ = this.§<A§;
         }
         if(§@"]§ is §4!o§)
         {
            this.addItemToDisplayList((§@"]§ as §4!o§).§?I§);
         }
         super.addGameSpritesToDisplayList();
         this.§-"Q§ = null;
      }
      
      override protected function addItemToDisplayList(param1:DisplayObject) : void
      {
         super.addItemToDisplayList(param1);
         param1.filter = this.§-"Q§;
         param1.ownsFilter = false;
      }
      
      public function §5#3§(param1:String) : Boolean
      {
         if(!this.§1T§)
         {
            return false;
         }
         return this.§1T§.indexOf(param1) >= 0;
      }
      
      public function §@!c§(param1:String) : void
      {
         if(!this.§1T§)
         {
            this.§1T§ = [];
         }
         if(param1 == §+"d§.§&!w§.§1#7§)
         {
            if(this.§,!K§)
            {
               this.§,!K§.§&d§(false);
            }
         }
         this.§1T§.push(param1);
      }
      
      public function §5$§(param1:String) : void
      {
         if(!this.§,"R§)
         {
            this.§,"R§ = [];
         }
         if(this.§,"R§.indexOf(param1) == -1)
         {
            this.§,"R§.push(param1);
         }
      }
      
      override public function init(param1:§7!J§) : void
      {
         super.init(param1);
         this.§1T§ = [];
         this.§6#B§ = this.§ #t§();
         this.§,"R§ = [];
         if(mLevelManager.getCurrentEpisodeModel().isTournament)
         {
            this.§,!K§ = §7"L§.§`"H§.§9'§() as §`y§;
         }
         else
         {
            this.§,!K§ = null;
         }
      }
      
      protected function § #t§() : §^=§
      {
         return new §^=§(mLevelManager);
      }
      
      override public function setController(param1:§="r§) : void
      {
         super.setController(param1);
         if(param1 is §;!X§)
         {
            this.§6#B§.setController(param1 as §;!X§);
         }
      }
      
      override public function clearLevel() : void
      {
         super.clearLevel();
         if(this.§6#B§)
         {
            this.§6#B§.dispose();
            this.§6#B§ = null;
         }
      }
      
      override protected function stabilizeWorld() : void
      {
         §+$B§(20,1 / 30);
      }
      
      protected function §1#G§(param1:Number) : void
      {
         if(this.§<A§)
         {
            this.§<A§.§#X§ = param1 < 20;
            this.§<A§.§>!6§(0.02,0.08 + 0.05 * Math.sin(§'m§ / 250),0.02,0);
            if(§@"]§.backgroundSprite.numChildren > 0)
            {
               this.§<A§.§5#A§ = this.§"#!§;
            }
            else
            {
               this.§<A§.§5#A§ = null;
            }
         }
      }
      
      override protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         this.§6#B§.run(param1,§@"]§);
         if(this.§7"u§)
         {
            this.§1#G§(param1);
         }
         return super.updateWithTime(param1,param2,param3);
      }
      
      override public function handleEngineUpdateStep(param1:Number) : void
      {
         super.handleEngineUpdateStep(param1);
         this.§6#B§.update(param1);
      }
      
      override protected function initThemeGraphicsManager() : §2#n§
      {
         var _loc1_:String = § #v§.§1!!§.§2$&§();
         return new §2!F§(_loc1_,"",mLevelManager,§]#A§(§!#J§));
      }
      
      override protected function initThemeSoundsManager() : §2#n§
      {
         var _loc1_:String = § #v§.§1!!§.§2$&§();
         return new §2!F§(_loc1_,"",mLevelManager,§]#A§(§!#J§),false);
      }
      
      override protected function initCutSceneManager() : §2#n§
      {
         var _loc1_:String = § #v§.§1!!§.§2$&§();
         return new §2!F§(_loc1_,"",mLevelManager,§]#A§(§!#J§));
      }
      
      override public function get backgroundTextureManager() : §3$§
      {
         if(§=!R§)
         {
            return §=!R§.textureManager;
         }
         return null;
      }
      
      override protected function initAnimationManager(param1:§3$§) : §^"[§
      {
         return new §=g§(param1);
      }
      
      override protected function initializeLevelBackground(param1:String, param2:Number, param3:§3$§, param4:Number) : §,!e§
      {
         var _loc5_:§'"v§;
         if((_loc5_ = §]!9§.getBackground(param1)) == null)
         {
            §;!Y§.log("UNKNOWN LEVEL THEME! " + param1);
            param1 = §7!J§.§&[§;
            _loc5_ = §]!9§.getBackground(param1);
         }
         var _loc6_:§^#1§ = null;
         if(§@#`§)
         {
            _loc6_ = §@#`§.soundManager;
         }
         return new §?!_§(this,_loc5_,param2,param3,param4,_loc6_,!Starling.§&"f§);
      }
      
      override protected function initializeLevelSlingshot(param1:§7!J§) : §6#t§
      {
         var _loc2_:§7#;§ = new §7#;§(this,param1,new Sprite());
         this.§4#8§(_loc2_);
         return _loc2_;
      }
      
      override protected function initializeLevelObjectManager(param1:§7!J§) : §'!§
      {
         var _loc2_:String = §'"v§.§"!B§;
         return new §4!o§(this,mLevelManager,param1,new Sprite(),_loc2_);
      }
      
      override protected function initializeParticleManager(param1:§^"[§, param2:§3$§) : §<#]§
      {
         return new §%6§(param1,param2);
      }
      
      public function get §=!G§() : §^=§
      {
         return this.§6#B§;
      }
      
      override protected function initializeLevelCamera(param1:§7!J§) : §;"Q§
      {
         return new §6"s§(this,param1);
      }
      
      override protected function getSpriteSheetGroup(param1:§%#w§) : int
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
         if(§4`§[param1])
         {
            param1 = §[##§.theme = §+">§.§#!T§;
         }
         this.§]!k§ = false;
         super.loadTheme(param1);
      }
      
      override protected function onThemeGraphicsNotAvailable(param1:Event) : void
      {
         if(!this.§]!k§ && §'##§.§`"H§.tournamentRules && §'##§.§`"H§.tournamentRules.background == §[##§.theme && §[##§.theme != §+">§.§#!T§)
         {
            §4`§[§[##§.theme] = §[##§.theme;
            this.§]!k§ = true;
            §[##§.theme = §+">§.§#!T§;
            §1"Q§(§+">§.§#!T§);
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
      
      public function §%"5§(param1:String) : void
      {
         §9"$§ = param1;
      }
      
      override public function shootBird(param1:§>#!§, param2:Number, param3:Number) : §;!U§
      {
         var _loc9_:Array = null;
         var _loc15_:Object = null;
         var _loc16_:int = 0;
         var _loc4_:String = §0$@§.§&D§.§1#7§;
         var _loc5_:§ $<§;
         if(_loc5_ = (param1 as §&!T§).§<!c§)
         {
            _loc4_ = _loc5_.§1#7§;
         }
         var _loc6_:§;!U§;
         (_loc6_ = super.shootBird(param1,param2,param3)).§]y§("slingShotAbility",(param1 as §&!T§).§<!c§);
         if(_loc5_)
         {
            if((_loc15_ = _loc5_.§&c§(param1.name))[§ $<§.§!B§])
            {
               _loc6_.§,"I§(_loc15_[§ $<§.§!B§]);
            }
            if(_loc15_[§ $<§.§`e§])
            {
               _loc6_.§>!5§(_loc15_[§ $<§.§`e§]);
            }
            if(_loc15_[§ $<§.§["h§])
            {
               _loc6_.§,r§(_loc15_[§ $<§.§["h§]);
            }
            _loc6_.§3!F§ = _loc5_.§?"O§();
            _loc6_.§]#6§(_loc5_.§=#L§());
         }
         var _loc7_:String = "Level" + §7n§.§6#K§.currentLevel.name;
         var _loc8_:int = 1 + §7n§.§6#K§.slingshot.§=!q§() - §7n§.§6#K§.slingshot.§;O§();
         var _loc10_:* = (_loc9_ = (§7n§.§6#K§ as §"#1§).§7$7§()).indexOf(§+"d§.§[p§.§1#7§) > -1;
         var _loc11_:* = _loc9_.indexOf(§+"d§.§#T§.§1#7§) > -1;
         var _loc12_:* = _loc9_.indexOf(§+"d§.§1J§.§1#7§) > -1;
         var _loc13_:* = _loc6_.itemName == "BIRD_WINGMAN";
         §0I§.§0i§(_loc4_,_loc7_,_loc8_,_loc10_,_loc11_,_loc12_,_loc13_);
         §!!K§.§%#S§().§'!^§(currentLevel.name,_loc4_,_loc10_,_loc11_,_loc12_,_loc13_);
         var _loc14_:int = 0;
         if(_loc10_)
         {
            _loc6_.§%!1§("STAR_PARTICLE");
            _loc14_ = §;!U§.§?!"§;
         }
         if((param1 as §&!T§).§+#'§)
         {
            _loc6_.§[#5§ = §6!9§.§3!$§;
            _loc6_.§%!1§("POWERUP_POWERPOTION_TRAIL");
            _loc14_ = §;!U§.§?!"§;
            _loc6_.§-"7§(true);
         }
         else
         {
            _loc6_.§[#5§ = §6!9§.§"B§;
            _loc6_.§-"7§(false);
         }
         if(_loc5_)
         {
            _loc16_ = 1;
            while(_loc16_ <= _loc5_.§=#6§)
            {
               _loc6_.§%!1§(_loc5_.particleName + _loc16_);
               _loc16_++;
            }
            _loc14_ = _loc5_.§2S§ > _loc14_ ? int(_loc5_.§2S§) : int(_loc14_);
            _loc6_.§4_§(_loc14_);
         }
         if(this.§,!K§)
         {
            this.§,!K§.§&d§(_loc6_.itemName == this.§,!K§.§^##§());
         }
         return _loc6_;
      }
      
      public function §-#g§() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc1_:Boolean = false;
         if(this.§6#B§)
         {
            _loc2_ = objects.isWorldAtSleep();
            if(this.§6#B§.§?!2§())
            {
               _loc1_ = true;
            }
            else if(this.§6#B§.§%#y§())
            {
               _loc1_ = true;
            }
         }
         return _loc1_;
      }
      
      override public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999, param7:String = null) : void
      {
         if(this.§,!K§ && this.§,!K§.§'!n§)
         {
            param1 = Math.floor(param1 * this.§,!K§.§&"k§());
            this.§,!K§.§2#E§(true);
         }
         super.addScore(param1,param2,param3,param4,param5,param6,param7);
      }
   }
}
