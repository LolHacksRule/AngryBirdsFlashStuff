package §^$1§
{
   import §&!v§.DisplayObject;
   import §&!v§.Image;
   import §&!v§.Sprite;
   import §+!C§.§!!S§;
   import §+!C§.§[%§;
   import §-"+§.Texture;
   import §6"r§.§!#A§;
   import §7!j§.§"I§;
   import §7!j§.§'#'§;
   import §7!j§.§'0§;
   import §7!j§.§8#B§;
   import §<"p§.§;8§;
   import §>!5§.§^"9§;
   
   public class §2"^§
   {
      
      public static const §8"0§:int = 0;
      
      public static const PARTICLE_TYPE_KINETIC_PARTICLE:int = 1;
      
      public static const PARTICLE_TYPE_STATIC_PARTICLE:int = 2;
      
      public static const §""'§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §'!Z§:String = "Effect_TrailBig_Bird";
      
      public static const §1$3§:String = "Effect_Trail_Sparkle";
      
      public static const §1#O§:String = "Effect_Floating_Score";
      
      public static const §&# §:String = "Effect_Floating_Text";
      
      public static const §`#,§:String = "Effect_Explosion_Particle";
      
      public static const §0#!§:String = "Effect_Explosion_Core";
      
      public static const §<$+§:String = "Effect_Pig_Destruction";
      
      public static const §[[§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §?w§:String = "Effect_Bird_Destruction";
      
      public static const PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES:String = "Effect_Block_Destruction_Particles";
      
      public static const §7"§:String = "Effect_Block_Destruction_Core";
      
      public static const §0!J§:String = "Effect_TrailBig_Bird_Rebel";
      
      public static const §9"M§:String = "Effect_Block_Destruction_Powerup";
      
      public static const §9#d§:int = -1;
      
      public static const §;"%§:int = 0;
      
      public static const § !9§:int = 1;
      
      public static const §!"[§:int = 2;
      
      public static const §`"8§:int = 3;
      
      public static const §3Y§:int = 4;
      
      public static const §'!k§:int = 5;
      
      public static const §9Z§:int = 6;
      
      public static const §9!P§:int = 7;
      
      public static const §?"'§:int = 8;
      
      public static const §"-§:int = 9;
      
      public static const §`#o§:int = 10;
      
      public static const §5#y§:int = 11;
      
      public static const §-#3§:int = 12;
      
      public static const §3$6§:int = 13;
      
      public static const §5!R§:int = 14;
      
      public static const §'""§:int = 15;
      
      public static const §&"`§:int = 16;
      
      public static const §;!Q§:int = 17;
      
      public static const §0!1§:int = 18;
      
      public static const §@A§:int = 19;
      
      public static const § #A§:int = 20;
       
      
      public var §4m§:int;
      
      public var §0,§:int;
      
      public var §<P§:String;
      
      public var §`#^§:Number;
      
      public var §^#@§:Number;
      
      public var §6! §:Number;
      
      public var §+]§:Number;
      
      public var §,!H§:Number = 0;
      
      public var § "A§:Number;
      
      public var §"",§:String;
      
      public var §+_§:Number;
      
      public var §0"]§:String;
      
      public var §]9§:Number = -1;
      
      public var §4#C§:int;
      
      public var §?!l§:Number;
      
      public var §`"T§:Number;
      
      protected var §;"6§:Sprite;
      
      private var §<F§:§[%§;
      
      private var §6a§:Number;
      
      private var §`g§:Number;
      
      private var §-f§:Boolean;
      
      private var § @§:§8#B§;
      
      private var §]#$§:Boolean;
      
      private var §@!u§:§"I§;
      
      private var §>!4§:§'0§;
      
      private var §3$#§:§^"9§;
      
      public function §2"^§(param1:§"I§, param2:§'0§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:Number = -1, param17:Boolean = false, param18:String = null)
      {
         this.§;"6§ = new Sprite();
         super();
         this.§@!u§ = param1;
         this.§>!4§ = param2;
         this.§<P§ = param3;
         this.§4m§ = param5;
         this.§0,§ = param4;
         this.§4#C§ = param10;
         this.§`g§ = param16;
         this.§-f§ = param17;
         this.§0"]§ = param9;
         this.§`#^§ = 0;
         this.§+_§ = param8;
         this.§?!l§ = param6;
         this.§`"T§ = param7;
         this.§ "A§ = param15;
         this.§6! § = param11;
         this.§^#@§ = param12;
         this.§,!H§ = param14;
         this.§+]§ = param13;
         this.§"",§ = param18;
         this.§5$8§();
         this.updateRenderer();
         if(this.§4m§ == PARTICLE_TYPE_KINETIC_PARTICLE)
         {
            this.§]9§ = §!#A§.§#F§.§>$$§.ground + this.§;"6§.height * §!!S§.§,"3§;
         }
      }
      
      public static function getParticleMaterialFromEngineMaterial(param1:String) : int
      {
         param1 = param1.toUpperCase();
         if(param1.indexOf("BIRD_RED") >= 0)
         {
            return §;"%§;
         }
         if(param1.indexOf("BIRD_YELLOW") >= 0)
         {
            return §!"[§;
         }
         if(param1.indexOf("BIRD_BLUE") >= 0)
         {
            return § !9§;
         }
         if(param1.indexOf("BIRD_BLACK") >= 0)
         {
            return §'!k§;
         }
         if(param1.indexOf("BIRD_WHITE") >= 0)
         {
            return §3Y§;
         }
         if(param1.indexOf("BIRD_GREEN") >= 0)
         {
            return §`"8§;
         }
         if(param1.indexOf("BIRD_WINGMAN") >= 0)
         {
            return §;"%§;
         }
         if(param1.indexOf("BIRD_ORANGE") >= 0)
         {
            return §!"[§;
         }
         if(param1.indexOf("MIGHTY_EAGLE") >= 0)
         {
            return § #A§;
         }
         if(param1.indexOf("PIG") >= 0)
         {
            return §9Z§;
         }
         if(param1.indexOf("ICE") >= 0)
         {
            return §"-§;
         }
         if(param1.indexOf("WOOD") >= 0)
         {
            return §9!P§;
         }
         if(param1.indexOf("STONE") >= 0)
         {
            return §?"'§;
         }
         if(param1.indexOf("SNOW") >= 0)
         {
            return §`#o§;
         }
         if(param1.indexOf("INVISIBLE") >= 0)
         {
            return §9#d§;
         }
         return §5#y§;
      }
      
      public static function §9!O§(param1:String, param2:Boolean = false) : int
      {
         if(param2)
         {
            return §&"`§;
         }
         param1 = param1.toUpperCase();
         if(param1.indexOf("BIRD_RED") >= 0 || param1 == "BIRD_WINGMAN")
         {
            return §-#3§;
         }
         if(param1.indexOf("BIRD_YELLOW") >= 0)
         {
            return §5!R§;
         }
         if(param1.indexOf("BIRD_BLUE") >= 0)
         {
            return §3$6§;
         }
         if(param1.indexOf("BIRD_BLACK") >= 0)
         {
            return §0!1§;
         }
         if(param1.indexOf("BIRD_WHITE") >= 0)
         {
            return §;!Q§;
         }
         if(param1.indexOf("BIRD_GREEN") >= 0)
         {
            return §'""§;
         }
         if(param1.indexOf("BIRD_ORANGE") >= 0)
         {
            return §@A§;
         }
         return §;!Q§;
      }
      
      public function get displayObject() : DisplayObject
      {
         return this.§;"6§;
      }
      
      public function §8#s§(param1:Number, param2:Number) : void
      {
      }
      
      protected function getParticleType() : String
      {
         return this.§<P§;
      }
      
      protected function §5$8§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§8#B§ = null;
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
            case §'!Z§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §0!J§:
               this.createParticle("SMOKE_BUFF_SMALL",null,15,false);
               break;
            case §1$3§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §<$+§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §[[§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §7"§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §9"M§:
               this.createParticle("POWERUP_EFFECT_POTIONCLOUD",null,15,false);
               break;
            case §0#!§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §`#,§:
               _loc5_ = 1 + _loc1_ % 5;
               _loc6_ = "particle" + _loc5_;
               break;
            case §1#O§:
            case §&# §:
               _loc7_ = 16777215;
               if(this.§"",§)
               {
                  switch(this.§"",§)
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
                  switch(this.§4#C§)
                  {
                     case §-#3§:
                        _loc7_ = 16058683;
                        break;
                     case §3$6§:
                        _loc7_ = 55294;
                        break;
                     case §'""§:
                        _loc7_ = 1878602;
                        break;
                     case §&"`§:
                        _loc7_ = 7201353;
                        break;
                     case §0!1§:
                        _loc7_ = 3552822;
                        break;
                     case §;!Q§:
                        break;
                     case §5!R§:
                        _loc7_ = 16705792;
                        break;
                     case §@A§:
                        _loc7_ = 16763136;
                  }
               }
               _loc2_ = new Sprite();
               _loc8_ = _loc7_ != 16777215;
               _loc3_ = this.§@!u§.getAnimation("NUMBERS");
               this.§<F§ = new §[%§(_loc2_,_loc3_,_loc8_);
               this.§<F§.§+7§(parseInt(this.§0"]§));
               this.§;"6§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               if(_loc8_)
               {
                  _loc2_.color = _loc7_;
                  _loc2_.flatten();
               }
               break;
            case PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES:
               switch(this.§4#C§)
               {
                  case §"-§:
                     _loc9_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc9_);
                     break;
                  case §`#o§:
                     _loc9_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §9!P§:
                     _loc9_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc9_);
                     break;
                  case §?"'§:
                     _loc9_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc9_);
                     break;
                  case §5#y§:
                     this.createParticle("SMOKE_BIG",null,20,true);
               }
               if(this.§;"6§)
               {
                  this.§;"6§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §?w§:
               _loc10_ = 1 + _loc1_ % 3;
               switch(this.§4#C§)
               {
                  case §;"%§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc10_);
                     break;
                  case §'!k§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc10_);
                     break;
                  case § !9§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc10_);
                     break;
                  case §`"8§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc10_);
                     break;
                  case §3Y§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc10_);
                     break;
                  case §!"[§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc10_);
                     break;
                  case § #A§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc10_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc10_);
               }
               if(this.§;"6§)
               {
                  this.§;"6§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(_loc4_,null,this.§`g§,this.§-f§);
         }
      }
      
      private function createParticle(param1:String, param2:String = null, param3:Number = -1, param4:Boolean = false) : void
      {
         var _loc5_:§'#'§ = null;
         var _loc6_:Texture = null;
         var _loc8_:DisplayObject = null;
         if(param1 == "??")
         {
            return;
         }
         this.§]#$§ = param4;
         var _loc7_:Number = 1;
         this.§ @§ = this.§@!u§.getAnimation(param1);
         this.§]#$§ = param4;
         if(this.§ @§)
         {
            _loc8_ = this.§ @§.getFrame(0);
         }
         else
         {
            if(!(_loc5_ = this.§>!4§.getTexture(param1)))
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
         this.§6a§ = param3;
         _loc8_.scaleX *= this.§ "A§;
         _loc8_.scaleY *= this.§ "A§;
         this.§;"6§.addChild(_loc8_);
         _loc8_.x = -this.§;"6§.width / 2;
         _loc8_.y = -this.§;"6§.height / 2;
      }
      
      public function updateRenderer() : void
      {
         if(this.§;"6§)
         {
            this.§;"6§.x = this.§?!l§ / §!!S§.§,"3§;
            this.§;"6§.y = this.§`"T§ / §!!S§.§,"3§;
         }
      }
      
      public function §="2§(param1:§^"9§) : void
      {
         this.§3$#§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:DisplayObject = null;
         this.§`#^§ += param1;
         var _loc2_:Boolean = false;
         if(this.§3$#§)
         {
            if(this.§3$#§.sprite == null || this.§3$#§.levelItem == null)
            {
               return false;
            }
            this.§?!l§ = this.§3$#§.getBody().GetPosition().x;
            this.§`"T§ = this.§3$#§.getBody().GetPosition().y;
         }
         if(this.§6a§ > 0 && this.§ @§)
         {
            _loc3_ = this.§`#^§ / 1000 / (1 / this.§6a§);
            if(_loc3_ < this.§ @§.frameCount)
            {
               _loc4_ = this.§ @§.getFrame(_loc3_);
               this.§;"6§.removeChildren(0,-1,true);
               this.§;"6§.addChild(_loc4_);
               _loc4_.scaleX *= this.§ "A§;
               _loc4_.scaleY *= this.§ "A§;
            }
            else if(this.§]#$§)
            {
               this.§;"6§.removeChildren(0,-1,true);
            }
         }
         if(this.§4m§ == PARTICLE_TYPE_KINETIC_PARTICLE)
         {
            this.§ !w§(param1);
            _loc2_ = this.updateParticles(param1);
            if(this.§]9§ > 0 && this.§`"T§ > this.§]9§)
            {
               return false;
            }
         }
         else
         {
            this.§ !w§(param1);
            _loc2_ = this.updateParticles(param1);
         }
         if(this.§+_§ > 0 && this.§`#^§ >= this.§+_§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.updateRenderer();
         }
         return true;
      }
      
      public function § !w§(param1:Number) : void
      {
         this.§^#@§ += param1 * this.§+]§ / 1000;
         this.§`"T§ += this.§^#@§ * param1 / 1000;
         this.§?!l§ += this.§6! § * param1 / 1000;
         if(this.§,!H§ != 0)
         {
            this.§;"6§.rotation += this.§,!H§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function updateParticles(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§4m§ == §8"0§)
         {
            if(this.§+_§ > 0)
            {
               _loc2_ = 1;
               if(this.§<P§ == §&# §)
               {
                  if((_loc4_ = this.§`#^§ / this.§+_§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§0"]§) / 5000);
                  if(_loc2_ < -3)
                  {
                     _loc2_ = -3;
                  }
                  else if(_loc2_ > 3)
                  {
                     _loc2_ = 3;
                  }
               }
               this.§;"6§.scaleX = _loc2_;
               this.§;"6§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§4m§ == PARTICLE_TYPE_KINETIC_PARTICLE)
         {
            if(this.§<P§ == §`#,§)
            {
               this.§;"6§.alpha = Math.max(0,Math.min(1,2 * §;8§.§5!C§((this.§+_§ - this.§`#^§) / this.§+_§,false)));
               _loc5_ = Math.atan2(-this.§^#@§,this.§6! §) * (180 / Math.PI);
               this.§;"6§.scaleX = Math.max(0.2,this.§;"6§.alpha);
               this.§;"6§.scaleY = Math.max(0.2,this.§;"6§.alpha);
               this.§;"6§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§<P§ == §?w§ || this.§<P§ == §7"§)
            {
               this.§;"6§.scaleX = this.§;"6§.scaleY = 0.2 + (this.§+_§ - this.§`#^§) / this.§+_§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§<F§)
         {
            this.§<F§.clear();
            this.§<F§ = null;
         }
         if(this.§;"6§)
         {
            this.§;"6§.dispose();
            this.§;"6§ = null;
         }
         if(this.§3$#§)
         {
            this.§3$#§ = null;
         }
      }
   }
}
