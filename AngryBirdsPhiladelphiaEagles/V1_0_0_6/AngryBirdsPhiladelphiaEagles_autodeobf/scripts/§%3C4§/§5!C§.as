package §<4§
{
   import §&b§.§[F§;
   import §3!O§.§?O§;
   import §4!-§.§%o§;
   import §4!-§.§3q§;
   import §4!0§.§#^§;
   import §4!0§.§#v§;
   import §4!0§.§+!,§;
   import §4!0§.§3§;
   import §86§.§?5§;
   import §86§.DisplayObject;
   import §86§.Sprite;
   import §>Y§.§#o§;
   import §[!A§.Texture;
   
   public class §5!C§
   {
      
      public static const §8!H§:int = 0;
      
      public static const §'! §:int = 1;
      
      public static const §7b§:int = 2;
      
      public static const §?!'§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §;J§:String = "Effect_TrailBig_Bird";
      
      public static const §[S§:String = "Effect_Trail_Sparkle";
      
      public static const § N§:String = "Effect_Floating_Score";
      
      public static const §7!N§:String = "Effect_Floating_Text";
      
      public static const §^I§:String = "Effect_Explosion_Particle";
      
      public static const §8!F§:String = "Effect_Explosion_Core";
      
      public static const §]M§:String = "Effect_Pig_Destruction";
      
      public static const §6!9§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §-!E§:String = "Effect_Bird_Destruction";
      
      public static const §,!,§:String = "Effect_Block_Destruction_Particles";
      
      public static const §`W§:String = "Effect_Block_Destruction_Core";
      
      public static const §!E§:int = 0;
      
      public static const §"q§:int = 1;
      
      public static const § use§:int = 2;
      
      public static const §=y§:int = 3;
      
      public static const §2"§:int = 4;
      
      public static const §5!I§:int = 5;
      
      public static const §0!M§:int = 6;
      
      public static const §-V§:int = 7;
      
      public static const §"!0§:int = 8;
      
      public static const §['§:int = 9;
      
      public static const §#%§:int = 10;
      
      public static const §-!7§:int = 11;
      
      public static const §=R§:int = 12;
      
      public static const §-^§:int = 13;
      
      public static const §!!&§:int = 14;
      
      public static const §2@§:int = 15;
      
      public static const §2I§:int = 16;
      
      public static const §-!&§:int = 17;
      
      public static const §'!A§:int = 18;
      
      public static const §]d§:Boolean = true;
       
      
      public var §8!C§:int;
      
      public var §=!3§:int;
      
      public var §5l§:String;
      
      public var §4n§:Number;
      
      public var §"§:Number;
      
      public var §&O§:Number;
      
      public var §1_§:Number;
      
      public var §>;§:Number = 0;
      
      public var §"[§:Number;
      
      public var §%U§:Number;
      
      public var §0b§:String;
      
      public var §-!M§:Number = -1;
      
      public var §`e§:int;
      
      public var §#$§:Number;
      
      public var §do§:Number;
      
      private var §@!7§:Sprite;
      
      private var §<!B§:§3q§;
      
      private var §=6§:int;
      
      protected var §<!2§:int;
      
      protected var §^U§:Boolean;
      
      private var §"h§:§#v§;
      
      private var §]!,§:Boolean;
      
      private var §#!C§:§+!,§;
      
      private var §"P§:§3§;
      
      private var §"W§:§#o§;
      
      public function §5!C§(param1:§+!,§, param2:§3§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§@!7§ = new Sprite();
         super();
         this.§#!C§ = param1;
         this.§"P§ = param2;
         this.§5l§ = param3;
         this.§8!C§ = param5;
         this.§=!3§ = param4;
         this.§`e§ = param10;
         this.§<!2§ = param16;
         this.§^U§ = param17;
         this.§0b§ = param9;
         this.§4n§ = 0;
         this.§%U§ = param8;
         this.§#$§ = param6;
         this.§do§ = param7;
         this.§"[§ = param15;
         this.§&O§ = param11;
         this.§"§ = param12;
         this.§>;§ = param14;
         this.§1_§ = param13;
         this.createVisuals();
         this.§`@§();
         if(this.§8!C§ == §'! §)
         {
            this.§-!M§ = §[F§.§9u§.§=!#§.§,!2§ + this.§@!7§.height * §%o§.§]!?§;
         }
      }
      
      public static function § 4§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §!E§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return § use§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §"q§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §5!I§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §2"§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §=y§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §'!A§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §0!M§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §['§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §-V§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §"!0§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §#%§;
         }
         return §-!7§;
      }
      
      public static function §0L§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §=R§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §!!&§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §-^§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §-!&§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §2I§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §2@§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §2@§;
         }
         return §2I§;
      }
      
      public function get §3P§() : DisplayObject
      {
         return this.§@!7§;
      }
      
      public function §^!A§(param1:Number, param2:Number) : void
      {
      }
      
      protected function createVisuals() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§#v§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§5l§)
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
            case §;J§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §[S§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §]M§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §6!9§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §`W§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §8!F§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §^I§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case § N§:
            case §7!N§:
               if(parseInt(this.§0b§) == 10000 || parseInt(this.§0b§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§`e§)
                  {
                     case §=R§:
                        _loc8_ = 16058683;
                        break;
                     case §-^§:
                        _loc8_ = 55294;
                        break;
                     case §2@§:
                        _loc8_ = 1878602;
                        break;
                     case §-!&§:
                        _loc8_ = 3552822;
                        break;
                     case §2I§:
                        break;
                     case §!!&§:
                        _loc8_ = 16705792;
                  }
                  if(parseInt(this.§0b§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§#!C§.getAnimation("NUMBERS");
                  this.§<!B§ = new §3q§(_loc2_,_loc3_,true);
                  this.§<!B§.§;z§(parseInt(this.§0b§));
                  this.§@!7§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§#!C§.getAnimation("NUMBERS");
               this.§<!B§ = new §3q§(_loc2_,_loc3_);
               this.§<!B§.§;z§(parseInt(this.§0b§));
               this.§@!7§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §,!,§:
               switch(this.§`e§)
               {
                  case §['§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §#%§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §-V§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §"!0§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §-!7§:
                     _loc6_ = 1 + _loc1_ % 3;
               }
               if(this.§@!7§)
               {
                  this.§@!7§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §-!E§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§`e§)
               {
                  case §!E§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §5!I§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §"q§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §=y§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §2"§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case § use§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §'!A§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§@!7§)
               {
                  this.§@!7§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§5l§,null,this.§<!2§,this.§^U§);
         }
      }
      
      protected function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§#^§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§]!,§ = param4;
         var _loc7_:Number = 1;
         this.§"h§ = this.§#!C§.getAnimation(param1);
         if(this.§"h§)
         {
            _loc6_ = (_loc5_ = this.§"h§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            if(!(_loc5_ = this.§"P§.§2L§(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
         }
         this.§=6§ = param3;
         var _loc8_:§?5§ = this.§30§(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§"[§ * _loc7_;
         this.§@!7§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§"[§;
            _loc8_.y = -_loc5_.pivotY * this.§"[§;
         }
         else
         {
            _loc8_.x = -this.§@!7§.width / 2;
            _loc8_.y = -this.§@!7§.height / 2;
         }
      }
      
      protected function §30§(param1:Texture) : §?5§
      {
         return new §?5§(param1,false);
      }
      
      public function §`@§() : void
      {
         if(this.§@!7§)
         {
            this.§@!7§.x = this.§#$§ / §%o§.§]!?§;
            this.§@!7§.y = this.§do§ / §%o§.§]!?§;
         }
      }
      
      public function §`]§(param1:§#o§) : void
      {
         this.§"W§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§#^§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§?5§ = null;
         this.§4n§ += param1;
         var _loc2_:Boolean = false;
         if(this.§"W§)
         {
            if(this.§"W§.sprite == null || this.§"W§.§5p§ == null)
            {
               return false;
            }
            this.§#$§ = this.§"W§.§[5§().GetPosition().x;
            this.§do§ = this.§"W§.§[5§().GetPosition().y;
         }
         if(this.§=6§ > 0 && this.§"h§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§4n§ / 1000 / (1 / _loc3_)) < this.§"h§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§"h§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.§30§(_loc6_);
               this.§@!7§.§`h§(0,-1,true);
               this.§@!7§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§"[§;
               _loc8_.y = -_loc5_.pivotY * this.§"[§;
               _loc8_.scaleX = _loc8_.scaleY = this.§"[§ * _loc7_;
            }
            else if(this.§]!,§)
            {
               this.§@!7§.§`h§(0,-1,true);
            }
         }
         if(this.§8!C§ == §'! §)
         {
            this.§7!C§(param1);
            _loc2_ = this.§<!%§(param1);
            if(this.§-!M§ > 0 && this.§do§ > this.§-!M§)
            {
               return false;
            }
         }
         else
         {
            this.§7!C§(param1);
            _loc2_ = this.§<!%§(param1);
         }
         if(this.§%U§ > 0 && this.§4n§ >= this.§%U§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§`@§();
         }
         return true;
      }
      
      public function §7!C§(param1:Number) : void
      {
         this.§"§ += param1 * this.§1_§ / 1000;
         this.§do§ += this.§"§ * param1 / 1000;
         this.§#$§ += this.§&O§ * param1 / 1000;
         if(this.§>;§ != 0)
         {
            this.§@!7§.rotation += this.§>;§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §<!%§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§8!C§ == §8!H§)
         {
            if(this.§%U§ > 0)
            {
               _loc2_ = 1;
               if(this.§5l§ == §7!N§)
               {
                  if((_loc4_ = this.§4n§ / this.§%U§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§0b§) / 5000);
               }
               this.§@!7§.scaleX = _loc2_;
               this.§@!7§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§8!C§ == §'! §)
         {
            if(this.§5l§ == §^I§)
            {
               this.§@!7§.alpha = Math.max(0,Math.min(1,2 * §?O§.§8h§((this.§%U§ - this.§4n§) / this.§%U§,false)));
               _loc5_ = Math.atan2(-this.§"§,this.§&O§) * (180 / Math.PI);
               this.§@!7§.scaleX = Math.max(0.2,this.§@!7§.alpha);
               this.§@!7§.scaleY = Math.max(0.2,this.§@!7§.alpha);
               this.§@!7§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§5l§ == §-!E§ || this.§5l§ == §`W§)
            {
               this.§@!7§.scaleX = this.§@!7§.scaleY = 0.2 + (this.§%U§ - this.§4n§) / this.§%U§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§<!B§)
         {
            this.§<!B§.clear();
            this.§<!B§ = null;
         }
         if(this.§@!7§)
         {
            this.§@!7§.dispose();
            this.§@!7§ = null;
         }
         if(this.§"W§)
         {
            this.§"W§ = null;
         }
      }
   }
}
