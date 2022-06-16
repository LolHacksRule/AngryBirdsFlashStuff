package §!'§
{
   import §8§.§4!y§;
   import §9$;§.Texture;
   import §;#D§.§3#U§;
   import §@0§.§"f§;
   import §@0§.§%!q§;
   import §]!6§.§9!9§;
   import §^"S§.DisplayObject;
   import §^"S§.Image;
   import §^"S§.Sprite;
   import §`"8§.§0$2§;
   import §`"8§.§34§;
   import §`"8§.§`"X§;
   import §`"8§.§`#+§;
   
   public class §@>§
   {
      
      public static const §%7§:int = 0;
      
      public static const PARTICLE_TYPE_KINETIC_PARTICLE:int = 1;
      
      public static const PARTICLE_TYPE_STATIC_PARTICLE:int = 2;
      
      public static const §3!E§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §4T§:String = "Effect_TrailBig_Bird";
      
      public static const §'!7§:String = "Effect_Trail_Sparkle";
      
      public static const §2$>§:String = "Effect_Floating_Score";
      
      public static const §[!9§:String = "Effect_Floating_Text";
      
      public static const §!#4§:String = "Effect_Explosion_Particle";
      
      public static const §>L§:String = "Effect_Explosion_Core";
      
      public static const §2c§:String = "Effect_Pig_Destruction";
      
      public static const § 7§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §5Y§:String = "Effect_Bird_Destruction";
      
      public static const PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES:String = "Effect_Block_Destruction_Particles";
      
      public static const §5#;§:String = "Effect_Block_Destruction_Core";
      
      public static const §]"§:String = "Effect_TrailBig_Bird_Rebel";
      
      public static const §5X§:String = "Effect_Block_Destruction_Powerup";
      
      public static const §'#_§:int = -1;
      
      public static const §%#5§:int = 0;
      
      public static const §9b§:int = 1;
      
      public static const §>#^§:int = 2;
      
      public static const §=!4§:int = 3;
      
      public static const §%!E§:int = 4;
      
      public static const §9#,§:int = 5;
      
      public static const §&_§:int = 6;
      
      public static const §'g§:int = 7;
      
      public static const §<"l§:int = 8;
      
      public static const §[""§:int = 9;
      
      public static const §?!;§:int = 10;
      
      public static const §9#9§:int = 11;
      
      public static const §+!§:int = 12;
      
      public static const §]!y§:int = 13;
      
      public static const §;!R§:int = 14;
      
      public static const §>t§:int = 15;
      
      public static const §0!h§:int = 16;
      
      public static const §^#J§:int = 17;
      
      public static const §'!]§:int = 18;
      
      public static const §1"9§:int = 19;
      
      public static const §;#U§:int = 20;
      
      public static const §&"O§:int = 21;
      
      public static const §#X§:int = 22;
       
      
      public var §8!T§:int;
      
      public var §<R§:int;
      
      public var §?"1§:String;
      
      public var §each §:Number;
      
      public var §%$"§:Number;
      
      public var §@q§:Number;
      
      public var §@"%§:Number;
      
      public var §]#8§:Number = 0;
      
      public var §^#5§:Number;
      
      public var §+#s§:String;
      
      public var §"!>§:Number;
      
      public var §'7§:String;
      
      public var §@$-§:Number = -1;
      
      public var §^"`§:int;
      
      public var §8u§:Number;
      
      public var §!#§:Number;
      
      protected var § $9§:Sprite;
      
      private var §'#]§:§"f§;
      
      private var §>#z§:Number;
      
      private var §,";§:Number;
      
      private var §8!g§:Boolean;
      
      private var §&n§:§0$2§;
      
      private var §]#v§:Boolean;
      
      private var §##i§:§`#+§;
      
      private var §4Z§:§34§;
      
      private var §'!Q§:§4!y§;
      
      public function §@>§(param1:§`#+§, param2:§34§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:Number = -1, param17:Boolean = false, param18:String = null)
      {
         this.§ $9§ = new Sprite();
         super();
         this.§##i§ = param1;
         this.§4Z§ = param2;
         this.§?"1§ = param3;
         this.§8!T§ = param5;
         this.§<R§ = param4;
         this.§^"`§ = param10;
         this.§,";§ = param16;
         this.§8!g§ = param17;
         this.§'7§ = param9;
         this.§each § = 0;
         this.§"!>§ = param8;
         this.§8u§ = param6;
         this.§!#§ = param7;
         this.§^#5§ = param15;
         this.§@q§ = param11;
         this.§%$"§ = param12;
         this.§]#8§ = param14;
         this.§@"%§ = param13;
         this.§+#s§ = param18;
         this.§#!M§();
         this.updateRenderer();
         if(this.§8!T§ == PARTICLE_TYPE_KINETIC_PARTICLE)
         {
            this.§@$-§ = §3#U§.§#$4§.§^n§.ground + this.§ $9§.height * §%!q§.§6q§;
         }
      }
      
      public static function getParticleMaterialFromEngineMaterial(param1:String) : int
      {
         param1 = param1.toUpperCase();
         if(param1.indexOf("BIRD_RED") >= 0)
         {
            return §%#5§;
         }
         if(param1.indexOf("BIRD_YELLOW") >= 0)
         {
            return §>#^§;
         }
         if(param1.indexOf("BIRD_BLUE") >= 0)
         {
            return §9b§;
         }
         if(param1.indexOf("BIRD_BLACK") >= 0)
         {
            return §9#,§;
         }
         if(param1.indexOf("BIRD_WHITE") >= 0)
         {
            return §%!E§;
         }
         if(param1.indexOf("BIRD_GREEN") >= 0)
         {
            return §=!4§;
         }
         if(param1.indexOf("BIRD_WINGMAN") >= 0)
         {
            return §%#5§;
         }
         if(param1.indexOf("BIRD_ORANGE") >= 0)
         {
            return §>#^§;
         }
         if(param1.indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §&"O§;
         }
         if(param1.indexOf("BIRD_PINK") >= 0)
         {
            return §#X§;
         }
         if(param1.indexOf("PIG") >= 0)
         {
            return §&_§;
         }
         if(param1.indexOf("ICE") >= 0)
         {
            return §[""§;
         }
         if(param1.indexOf("WOOD") >= 0)
         {
            return §'g§;
         }
         if(param1.indexOf("STONE") >= 0)
         {
            return §<"l§;
         }
         if(param1.indexOf("SNOW") >= 0)
         {
            return §?!;§;
         }
         if(param1.indexOf("INVISIBLE") >= 0)
         {
            return §'#_§;
         }
         return §9#9§;
      }
      
      public static function §9#N§(param1:String, param2:Boolean = false) : int
      {
         if(param2)
         {
            return §0!h§;
         }
         param1 = param1.toUpperCase();
         if(param1.indexOf("BIRD_RED") >= 0 || param1 == "BIRD_WINGMAN")
         {
            return §+!§;
         }
         if(param1.indexOf("BIRD_YELLOW") >= 0 || param1 == "POWERUP_BOOMBOX")
         {
            return §;!R§;
         }
         if(param1.indexOf("BIRD_BLUE") >= 0)
         {
            return §]!y§;
         }
         if(param1.indexOf("BIRD_BLACK") >= 0)
         {
            return §'!]§;
         }
         if(param1.indexOf("BIRD_WHITE") >= 0)
         {
            return §^#J§;
         }
         if(param1.indexOf("BIRD_GREEN") >= 0)
         {
            return §>t§;
         }
         if(param1.indexOf("BIRD_ORANGE") >= 0)
         {
            return §1"9§;
         }
         if(param1.indexOf("BIRD_PINK") >= 0)
         {
            return §;#U§;
         }
         return §^#J§;
      }
      
      public function get displayObject() : DisplayObject
      {
         return this.§ $9§;
      }
      
      public function §@$9§(param1:Number, param2:Number) : void
      {
      }
      
      protected function getParticleType() : String
      {
         return this.§?"1§;
      }
      
      protected function §#!M§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§0$2§ = null;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc7_:int = 0;
         var _loc8_:* = false;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         _loc1_ = Math.random() * 100;
         var _loc4_:String = this.getParticleType();
         switch(_loc4_)
         {
            case PARTICLE_NAME_BIRD_TRAIL1:
               this.createParticle("TRAIL_1");
               break;
            case PARTICLE_NAME_BIRD_TRAIL2:
               this.createParticle("TRAIL_2");
               break;
            case PARTICLE_NAME_BIRD_TRAIL3:
               this.createParticle("TRAIL_3");
               break;
            case §4T§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §]"§:
               this.createParticle("SMOKE_BUFF_SMALL",null,15,false);
               break;
            case §'!7§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §2c§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case § 7§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §5#;§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §5X§:
               this.createParticle("POWERUP_EFFECT_POTIONCLOUD",null,15,false);
               break;
            case §>L§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §!#4§:
               _loc5_ = 1 + _loc1_ % 5;
               _loc6_ = "particle" + _loc5_;
               break;
            case §2$>§:
            case §[!9§:
               _loc7_ = 16777215;
               if(this.§+#s§)
               {
                  switch(this.§+#s§)
                  {
                     case "FONT_INGAME_MULTIP_SCORE_1":
                        _loc7_ = 16705792;
                        break;
                     case "FONT_INGAME_MULTIP_SCORE_2":
                        _loc7_ = 11806719;
                        break;
                     case "FONT_INGAME_MULTIP_SCORE_3":
                        _loc7_ = 7201353;
                        break;
                     case "FONT_INGAME_MULTIP_SCORE_4":
                        _loc7_ = 5692155;
                  }
               }
               else
               {
                  switch(this.§^"`§)
                  {
                     case §+!§:
                        _loc7_ = 16058683;
                        break;
                     case §]!y§:
                        _loc7_ = 55294;
                        break;
                     case §>t§:
                        _loc7_ = 1878602;
                        break;
                     case §0!h§:
                        _loc7_ = 7201353;
                        break;
                     case §'!]§:
                        _loc7_ = 3552822;
                        break;
                     case §^#J§:
                        break;
                     case §;!R§:
                        _loc7_ = 16705792;
                        break;
                     case §1"9§:
                        _loc7_ = 16763136;
                        break;
                     case §;#U§:
                        _loc7_ = 16168904;
                  }
               }
               _loc2_ = new Sprite();
               _loc8_ = _loc7_ != 16777215;
               _loc3_ = this.§##i§.getAnimation("NUMBERS");
               this.§'#]§ = new §"f§(_loc2_,_loc3_,_loc8_);
               this.§'#]§.§8"]§(parseInt(this.§'7§));
               this.§ $9§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               if(_loc8_)
               {
                  _loc2_.color = _loc7_;
                  _loc2_.flatten();
               }
               break;
            case PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES:
               switch(this.§^"`§)
               {
                  case §[""§:
                     _loc9_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc9_);
                     break;
                  case §?!;§:
                     _loc9_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §'g§:
                     _loc9_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc9_);
                     break;
                  case §<"l§:
                     _loc9_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc9_);
                     break;
                  case §9#9§:
                     this.createParticle("SMOKE_BIG",null,20,true);
               }
               if(this.§ $9§)
               {
                  this.§ $9§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §5Y§:
               _loc10_ = 1 + _loc1_ % 3;
               switch(this.§^"`§)
               {
                  case §%#5§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc10_);
                     break;
                  case §9#,§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc10_);
                     break;
                  case §9b§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc10_);
                     break;
                  case §=!4§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc10_);
                     break;
                  case §%!E§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc10_);
                     break;
                  case §>#^§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc10_);
                     break;
                  case §&"O§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc10_);
                     break;
                  case §#X§:
                     this.createParticle("PARTICLE_BIRDPINK_" + _loc10_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc10_);
               }
               if(this.§ $9§)
               {
                  this.§ $9§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            default:
               this.createParticle(_loc4_,null,this.§,";§,this.§8!g§);
         }
      }
      
      private function createParticle(param1:String, param2:String = null, param3:Number = -1, param4:Boolean = false) : void
      {
         var _loc5_:§`"X§ = null;
         var _loc6_:Texture = null;
         var _loc8_:DisplayObject = null;
         if(param1 == "??")
         {
            return;
         }
         this.§]#v§ = param4;
         var _loc7_:Number = 1;
         this.§&n§ = this.§##i§.getAnimation(param1);
         this.§]#v§ = param4;
         if(this.§&n§)
         {
            _loc8_ = this.§&n§.getFrame(0);
         }
         else
         {
            if(!(_loc5_ = this.§4Z§.getTexture(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
            _loc8_ = new Image(_loc6_,false);
         }
         if(!_loc8_)
         {
            return;
         }
         this.§>#z§ = param3;
         _loc8_.scaleX *= this.§^#5§;
         _loc8_.scaleY *= this.§^#5§;
         this.§ $9§.addChild(_loc8_);
         _loc8_.x = -this.§ $9§.width / 2;
         _loc8_.y = -this.§ $9§.height / 2;
      }
      
      public function updateRenderer() : void
      {
         if(this.§ $9§)
         {
            this.§ $9§.x = this.§8u§ / §%!q§.§6q§;
            this.§ $9§.y = this.§!#§ / §%!q§.§6q§;
         }
      }
      
      public function §>"#§(param1:§4!y§) : void
      {
         this.§'!Q§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:DisplayObject = null;
         this.§each § += param1;
         var _loc2_:Boolean = false;
         if(this.§'!Q§)
         {
            if(this.§'!Q§.sprite == null || this.§'!Q§.levelItem == null)
            {
               return false;
            }
            this.§8u§ = this.§'!Q§.getBody().GetPosition().x;
            this.§!#§ = this.§'!Q§.getBody().GetPosition().y;
         }
         if(this.§>#z§ > 0 && this.§&n§)
         {
            _loc3_ = this.§each § / 1000 / (1 / this.§>#z§);
            if(_loc3_ < this.§&n§.frameCount)
            {
               _loc4_ = this.§&n§.getFrame(_loc3_);
               this.§ $9§.removeChildren(0,-1,true);
               this.§ $9§.addChild(_loc4_);
               _loc4_.scaleX *= this.§^#5§;
               _loc4_.scaleY *= this.§^#5§;
            }
            else if(this.§]#v§)
            {
               this.§ $9§.removeChildren(0,-1,true);
            }
         }
         if(this.§8!T§ == PARTICLE_TYPE_KINETIC_PARTICLE)
         {
            this.§`!W§(param1);
            _loc2_ = this.updateParticles(param1);
            if(this.§@$-§ > 0 && this.§!#§ > this.§@$-§)
            {
               return false;
            }
         }
         else
         {
            this.§`!W§(param1);
            _loc2_ = this.updateParticles(param1);
         }
         if(this.§"!>§ > 0 && this.§each § >= this.§"!>§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.updateRenderer();
         }
         return true;
      }
      
      public function §`!W§(param1:Number) : void
      {
         this.§%$"§ += param1 * this.§@"%§ / 1000;
         this.§!#§ += this.§%$"§ * param1 / 1000;
         this.§8u§ += this.§@q§ * param1 / 1000;
         if(this.§]#8§ != 0)
         {
            this.§ $9§.rotation += this.§]#8§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function updateParticles(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§8!T§ == §%7§)
         {
            if(this.§"!>§ > 0)
            {
               _loc2_ = 1;
               if(this.§?"1§ == §[!9§)
               {
                  if((_loc4_ = this.§each § / this.§"!>§) <= 0.2)
                  {
                     _loc3_ = _loc4_ / 0.2;
                  }
                  else if(_loc4_ >= 0.8)
                  {
                     _loc3_ = 1 - (_loc4_ - 0.8) / 0.2;
                  }
                  else
                  {
                     _loc3_ = 1;
                  }
                  _loc2_ = _loc3_ * (0.5 + int(this.§'7§) / 5000);
                  if(_loc2_ < -3)
                  {
                     _loc2_ = -3;
                  }
                  else if(_loc2_ > 3)
                  {
                     _loc2_ = 3;
                  }
               }
               this.§ $9§.scaleX = _loc2_;
               this.§ $9§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§8!T§ == PARTICLE_TYPE_KINETIC_PARTICLE)
         {
            if(this.§?"1§ == §!#4§)
            {
               this.§ $9§.alpha = Math.max(0,Math.min(1,2 * §9!9§.§0#K§((this.§"!>§ - this.§each §) / this.§"!>§,false)));
               _loc5_ = Math.atan2(-this.§%$"§,this.§@q§) * (180 / Math.PI);
               this.§ $9§.scaleX = Math.max(0.2,this.§ $9§.alpha);
               this.§ $9§.scaleY = Math.max(0.2,this.§ $9§.alpha);
               this.§ $9§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§?"1§ == §5Y§ || this.§?"1§ == §5#;§)
            {
               this.§ $9§.scaleX = this.§ $9§.scaleY = 0.2 + (this.§"!>§ - this.§each §) / this.§"!>§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§'#]§)
         {
            this.§'#]§.clear();
            this.§'#]§ = null;
         }
         if(this.§ $9§)
         {
            this.§ $9§.dispose();
            this.§ $9§ = null;
         }
         if(this.§'!Q§)
         {
            this.§'!Q§ = null;
         }
      }
   }
}
