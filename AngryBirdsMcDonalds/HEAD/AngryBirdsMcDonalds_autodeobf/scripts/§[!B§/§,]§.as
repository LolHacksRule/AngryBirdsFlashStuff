package §[!B§
{
   import § !J§.§%M§;
   import § !J§.§75§;
   import §&7§.Texture;
   import §'+§.§<!%§;
   import §4j§.§9M§;
   import §7F§.§2M§;
   import §9`§.§#U§;
   import §9`§.§+!D§;
   import §9`§.§3f§;
   import §9`§.§8!P§;
   import §`!n§.§+i§;
   import §`!n§.DisplayObject;
   import §`!n§.Sprite;
   
   public class §,]§
   {
      
      public static const §[!§:int = 0;
      
      public static const §in §:int = 1;
      
      public static const §%0§:int = 2;
      
      public static const §#r§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §@C§:String = "Effect_TrailBig_Bird";
      
      public static const §'!4§:String = "Effect_Trail_Sparkle";
      
      public static const §;!k§:String = "Effect_Floating_Score";
      
      public static const §-!O§:String = "Effect_Floating_Text";
      
      public static const §"!E§:String = "Effect_Explosion_Particle";
      
      public static const §`O§:String = "Effect_Explosion_Core";
      
      public static const §6h§:String = "Effect_Pig_Destruction";
      
      public static const §,!M§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §"@§:String = "Effect_Bird_Destruction";
      
      public static const §&!§:String = "Effect_Block_Destruction_Particles";
      
      public static const §3#§:String = "Effect_Block_Destruction_Core";
      
      public static const §!o§:int = 0;
      
      public static const §3B§:int = 1;
      
      public static const §[S§:int = 2;
      
      public static const §"!7§:int = 3;
      
      public static const §6!M§:int = 4;
      
      public static const §^%§:int = 5;
      
      public static const §>J§:int = 6;
      
      public static const §1&§:int = 7;
      
      public static const §,!e§:int = 8;
      
      public static const §[C§:int = 9;
      
      public static const §#g§:int = 10;
      
      public static const §7![§:int = 11;
      
      public static const §88§:int = 12;
      
      public static const §-J§:int = 13;
      
      public static const §]!+§:int = 14;
      
      public static const §<!7§:int = 15;
      
      public static const §&!E§:int = 16;
      
      public static const §!!i§:int = 17;
      
      public static const §^!i§:int = 18;
      
      public static const §,W§:int = 19;
      
      public static const §2P§:Boolean = true;
       
      
      public var §`D§:int;
      
      public var §1!P§:int;
      
      public var §+!@§:String;
      
      public var §^j§:Number;
      
      public var §5d§:Number;
      
      public var §7!A§:Number;
      
      public var §`!]§:Number;
      
      public var §#!g§:Number = 0;
      
      public var §'W§:Number;
      
      public var §[!3§:Number;
      
      public var §<I§:String;
      
      public var §"!2§:Number = -1;
      
      public var §]F§:int;
      
      public var §=y§:Number;
      
      public var §#J§:Number;
      
      protected var §5!S§:Sprite;
      
      private var §&S§:§75§;
      
      private var §<r§:int;
      
      protected var §?k§:int;
      
      protected var §?Q§:Boolean;
      
      private var §"!"§:§+!D§;
      
      private var §&!F§:Boolean;
      
      private var §;,§:§3f§;
      
      private var §9k§:§#U§;
      
      private var § Y§:§9M§;
      
      public function §,]§(param1:§3f§, param2:§#U§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§5!S§ = new Sprite();
         super();
         this.§;,§ = param1;
         this.§9k§ = param2;
         this.§+!@§ = param3;
         this.§`D§ = param5;
         this.§1!P§ = param4;
         this.§]F§ = param10;
         this.§?k§ = param16;
         this.§?Q§ = param17;
         this.§<I§ = param9;
         this.§^j§ = 0;
         this.§[!3§ = param8;
         this.§=y§ = param6;
         this.§#J§ = param7;
         this.§'W§ = param15;
         this.§7!A§ = param11;
         this.§5d§ = param12;
         this.§#!g§ = param14;
         this.§`!]§ = param13;
         this.createVisuals();
         this.§`[§();
         if(this.§`D§ == §in §)
         {
            this.§"!2§ = §2M§.§1?§.§"6§.§[! § + this.§5!S§.height * §%M§.§'!Y§;
         }
      }
      
      public static function §0!l§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §!o§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §[S§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §3B§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §^%§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §6!M§;
         }
         if(param1.toUpperCase().indexOf("BIRD_ORANGE") >= 0)
         {
            return §[S§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §"!7§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §^!i§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §>J§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §[C§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §1&§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §,!e§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §#g§;
         }
         return §7![§;
      }
      
      public static function § N§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §88§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §]!+§;
         }
         if(param1.toUpperCase().indexOf("BIRD_ORANGE") >= 0)
         {
            return §,W§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §-J§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §!!i§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §&!E§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §<!7§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §<!7§;
         }
         return §&!E§;
      }
      
      public function get §&r§() : DisplayObject
      {
         return this.§5!S§;
      }
      
      public function §`!N§(param1:Number, param2:Number) : void
      {
      }
      
      protected function createVisuals() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§+!D§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§+!@§)
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
            case §@C§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §'!4§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §6h§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §,!M§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §3#§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §`O§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §"!E§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §;!k§:
            case §-!O§:
               if(parseInt(this.§<I§) == 10000 || parseInt(this.§<I§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§]F§)
                  {
                     case §88§:
                        _loc8_ = 16058683;
                        break;
                     case §-J§:
                        _loc8_ = 55294;
                        break;
                     case §<!7§:
                        _loc8_ = 1878602;
                        break;
                     case §!!i§:
                        _loc8_ = 3552822;
                        break;
                     case §&!E§:
                        break;
                     case §]!+§:
                        _loc8_ = 16705792;
                        break;
                     case §,W§:
                        _loc8_ = 16753152;
                  }
                  if(parseInt(this.§<I§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§;,§.getAnimation("NUMBERS");
                  this.§&S§ = new §75§(_loc2_,_loc3_,true);
                  this.§&S§.§5V§(parseInt(this.§<I§));
                  this.§5!S§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§;,§.getAnimation("NUMBERS");
               this.§&S§ = new §75§(_loc2_,_loc3_);
               this.§&S§.§5V§(parseInt(this.§<I§));
               this.§5!S§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §&!§:
               switch(this.§]F§)
               {
                  case §[C§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §#g§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §1&§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §,!e§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §7![§:
                     _loc6_ = 1 + _loc1_ % 3;
               }
               if(this.§5!S§)
               {
                  this.§5!S§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §"@§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§]F§)
               {
                  case §!o§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §^%§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §3B§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §"!7§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §6!M§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §[S§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §^!i§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§5!S§)
               {
                  this.§5!S§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§+!@§,null,this.§?k§,this.§?Q§);
         }
      }
      
      protected function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§8!P§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§&!F§ = param4;
         var _loc7_:Number = 1;
         this.§"!"§ = this.§;,§.getAnimation(param1);
         if(this.§"!"§)
         {
            _loc6_ = (_loc5_ = this.§"!"§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            if(!(_loc5_ = this.§9k§.§#P§(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
         }
         this.§<r§ = param3;
         var _loc8_:§+i§ = this.createParticleImage(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§'W§ * _loc7_;
         this.§5!S§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§'W§;
            _loc8_.y = -_loc5_.pivotY * this.§'W§;
         }
         else
         {
            _loc8_.x = -this.§5!S§.width / 2;
            _loc8_.y = -this.§5!S§.height / 2;
         }
      }
      
      protected function createParticleImage(param1:Texture) : §+i§
      {
         return new §+i§(param1,false);
      }
      
      public function §`[§() : void
      {
         if(this.§5!S§)
         {
            this.§5!S§.x = this.§=y§ / §%M§.§'!Y§;
            this.§5!S§.y = this.§#J§ / §%M§.§'!Y§;
         }
      }
      
      public function §4v§(param1:§9M§) : void
      {
         this.§ Y§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§8!P§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§+i§ = null;
         this.§^j§ += param1;
         var _loc2_:Boolean = false;
         if(this.§ Y§)
         {
            if(this.§ Y§.sprite == null || this.§ Y§.§?!D§ == null)
            {
               return false;
            }
            this.§=y§ = this.§ Y§.§3H§().GetPosition().x;
            this.§#J§ = this.§ Y§.§3H§().GetPosition().y;
         }
         if(this.§<r§ > 0 && this.§"!"§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§^j§ / 1000 / (1 / _loc3_)) < this.§"!"§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§"!"§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.createParticleImage(_loc6_);
               this.§5!S§.§&x§(0,-1,true);
               this.§5!S§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§'W§;
               _loc8_.y = -_loc5_.pivotY * this.§'W§;
               _loc8_.scaleX = _loc8_.scaleY = this.§'W§ * _loc7_;
            }
            else if(this.§&!F§)
            {
               this.§5!S§.§&x§(0,-1,true);
            }
         }
         if(this.§`D§ == §in §)
         {
            this.§`o§(param1);
            _loc2_ = this.updateParticles(param1);
            if(this.§"!2§ > 0 && this.§#J§ > this.§"!2§)
            {
               return false;
            }
         }
         else
         {
            this.§`o§(param1);
            _loc2_ = this.updateParticles(param1);
         }
         if(this.§[!3§ > 0 && this.§^j§ >= this.§[!3§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§`[§();
         }
         return true;
      }
      
      public function §`o§(param1:Number) : void
      {
         this.§5d§ += param1 * this.§`!]§ / 1000;
         this.§#J§ += this.§5d§ * param1 / 1000;
         this.§=y§ += this.§7!A§ * param1 / 1000;
         if(this.§#!g§ != 0)
         {
            this.§5!S§.rotation += this.§#!g§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function updateParticles(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§`D§ == §[!§)
         {
            if(this.§[!3§ > 0)
            {
               _loc2_ = 1;
               if(this.§+!@§ == §-!O§)
               {
                  if((_loc4_ = this.§^j§ / this.§[!3§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§<I§) / 5000);
               }
               this.§5!S§.scaleX = _loc2_;
               this.§5!S§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§`D§ == §in §)
         {
            if(this.§+!@§ == §"!E§)
            {
               this.§5!S§.alpha = Math.max(0,Math.min(1,2 * §<!%§.§6!o§((this.§[!3§ - this.§^j§) / this.§[!3§,false)));
               _loc5_ = Math.atan2(-this.§5d§,this.§7!A§) * (180 / Math.PI);
               this.§5!S§.scaleX = Math.max(0.2,this.§5!S§.alpha);
               this.§5!S§.scaleY = Math.max(0.2,this.§5!S§.alpha);
               this.§5!S§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§+!@§ == §"@§ || this.§+!@§ == §3#§)
            {
               this.§5!S§.scaleX = this.§5!S§.scaleY = 0.2 + (this.§[!3§ - this.§^j§) / this.§[!3§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§&S§)
         {
            this.§&S§.clear();
            this.§&S§ = null;
         }
         if(this.§5!S§)
         {
            this.§5!S§.dispose();
            this.§5!S§ = null;
         }
         if(this.§ Y§)
         {
            this.§ Y§ = null;
         }
      }
   }
}
