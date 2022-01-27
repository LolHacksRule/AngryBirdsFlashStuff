package §"§
{
   import § 0§.Texture;
   import § d§.§'!"§;
   import § d§.§5!A§;
   import §"W§.§;N§;
   import §#!f§.§9!,§;
   import §#!f§.DisplayObject;
   import §#!f§.Sprite;
   import §0i§.§5h§;
   import §3!§.§-e§;
   import §3!§.§2!$§;
   import §3!§.§3!W§;
   import §3!§.§9i§;
   import §>!F§.§9!Z§;
   
   public class §2z§
   {
      
      public static const §,L§:int = 0;
      
      public static const §<A§:int = 1;
      
      public static const §34§:int = 2;
      
      public static const §?!@§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §&!J§:String = "Effect_TrailBig_Bird";
      
      public static const §"L§:String = "Effect_Trail_Sparkle";
      
      public static const §0!U§:String = "Effect_Floating_Score";
      
      public static const §7X§:String = "Effect_Floating_Text";
      
      public static const §0L§:String = "Effect_Explosion_Particle";
      
      public static const §8T§:String = "Effect_Explosion_Core";
      
      public static const §'f§:String = "Effect_Pig_Destruction";
      
      public static const §"j§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §?^§:String = "Effect_Bird_Destruction";
      
      public static const §]-§:String = "Effect_Block_Destruction_Particles";
      
      public static const §]!`§:String = "Effect_Block_Destruction_Core";
      
      public static const §&_§:int = 0;
      
      public static const §>!7§:int = 1;
      
      public static const §`S§:int = 2;
      
      public static const §"c§:int = 3;
      
      public static const §2!`§:int = 4;
      
      public static const §`9§:int = 5;
      
      public static const §;Y§:int = 6;
      
      public static const §?!Z§:int = 7;
      
      public static const §'!$§:int = 8;
      
      public static const §[l§:int = 9;
      
      public static const §@N§:int = 10;
      
      public static const §]!U§:int = 11;
      
      public static const §;!D§:int = 12;
      
      public static const §4!K§:int = 13;
      
      public static const §#U§:int = 14;
      
      public static const §%3§:int = 15;
      
      public static const §6!Z§:int = 16;
      
      public static const §<M§:int = 17;
      
      public static const §<!0§:int = 18;
      
      public static const §@_§:Boolean = true;
       
      
      public var §%!&§:int;
      
      public var § !3§:int;
      
      public var §^R§:String;
      
      public var §4!I§:Number;
      
      public var §>!3§:Number;
      
      public var §1!F§:Number;
      
      public var §^!?§:Number;
      
      public var §=$§:Number = 0;
      
      public var §0!^§:Number;
      
      public var §`4§:Number;
      
      public var §7]§:String;
      
      public var §>!5§:Number = -1;
      
      public var §1,§:int;
      
      public var §`B§:Number;
      
      public var §,!9§:Number;
      
      private var §5!<§:Sprite;
      
      private var §3!L§:§5!A§;
      
      private var §<4§:int;
      
      protected var §!!A§:int;
      
      protected var §9A§:Boolean;
      
      private var §;+§:§3!W§;
      
      private var §3!H§:Boolean;
      
      private var §#!=§:§9i§;
      
      private var §-!<§:§-e§;
      
      private var §8^§:§;N§;
      
      public function §2z§(param1:§9i§, param2:§-e§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§5!<§ = new Sprite();
         super();
         this.§#!=§ = param1;
         this.§-!<§ = param2;
         this.§^R§ = param3;
         this.§%!&§ = param5;
         this.§ !3§ = param4;
         this.§1,§ = param10;
         this.§!!A§ = param16;
         this.§9A§ = param17;
         this.§7]§ = param9;
         this.§4!I§ = 0;
         this.§`4§ = param8;
         this.§`B§ = param6;
         this.§,!9§ = param7;
         this.§0!^§ = param15;
         this.§1!F§ = param11;
         this.§>!3§ = param12;
         this.§=$§ = param14;
         this.§^!?§ = param13;
         this.createVisuals();
         this.§[F§();
         if(this.§%!&§ == §<A§)
         {
            this.§>!5§ = §9!Z§.§5!$§.§=!E§.§9%§ + this.§5!<§.height * §'!"§.§#3§;
         }
      }
      
      public static function §?1§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §&_§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §`S§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §>!7§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §`9§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §2!`§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §"c§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §<!0§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §;Y§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §[l§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §?!Z§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §'!$§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §@N§;
         }
         return §]!U§;
      }
      
      public static function §=6§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §;!D§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §#U§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §4!K§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §<M§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §6!Z§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §%3§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §%3§;
         }
         return §6!Z§;
      }
      
      public function get §%2§() : DisplayObject
      {
         return this.§5!<§;
      }
      
      public function §'!Y§(param1:Number, param2:Number) : void
      {
      }
      
      protected function createVisuals() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§3!W§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§^R§)
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
            case §&!J§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §"L§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §'f§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §"j§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §]!`§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §8T§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §0L§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §0!U§:
            case §7X§:
               if(parseInt(this.§7]§) == 10000 || parseInt(this.§7]§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§1,§)
                  {
                     case §;!D§:
                        _loc8_ = 16058683;
                        break;
                     case §4!K§:
                        _loc8_ = 55294;
                        break;
                     case §%3§:
                        _loc8_ = 1878602;
                        break;
                     case §<M§:
                        _loc8_ = 3552822;
                        break;
                     case §6!Z§:
                        break;
                     case §#U§:
                        _loc8_ = 16705792;
                  }
                  if(parseInt(this.§7]§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§#!=§.§'k§("NUMBERS");
                  this.§3!L§ = new §5!A§(_loc2_,_loc3_,true);
                  this.§3!L§.§5a§(parseInt(this.§7]§));
                  this.§5!<§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§#!=§.§'k§("NUMBERS");
               this.§3!L§ = new §5!A§(_loc2_,_loc3_);
               this.§3!L§.§5a§(parseInt(this.§7]§));
               this.§5!<§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §]-§:
               switch(this.§1,§)
               {
                  case §[l§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §@N§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §?!Z§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §'!$§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §]!U§:
                     _loc6_ = 1 + _loc1_ % 3;
               }
               if(this.§5!<§)
               {
                  this.§5!<§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §?^§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§1,§)
               {
                  case §&_§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §`9§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §>!7§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §"c§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §2!`§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §`S§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §<!0§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§5!<§)
               {
                  this.§5!<§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§^R§,null,this.§!!A§,this.§9A§);
         }
      }
      
      protected function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§2!$§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§3!H§ = param4;
         var _loc7_:Number = 1;
         this.§;+§ = this.§#!=§.§'k§(param1);
         if(this.§;+§)
         {
            _loc6_ = (_loc5_ = this.§;+§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            if(!(_loc5_ = this.§-!<§.§1%§(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
         }
         this.§<4§ = param3;
         var _loc8_:§9!,§ = this.createParticleImage(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§0!^§ * _loc7_;
         this.§5!<§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§0!^§;
            _loc8_.y = -_loc5_.pivotY * this.§0!^§;
         }
         else
         {
            _loc8_.x = -this.§5!<§.width / 2;
            _loc8_.y = -this.§5!<§.height / 2;
         }
      }
      
      protected function createParticleImage(param1:Texture) : §9!,§
      {
         return new §9!,§(param1,false);
      }
      
      public function §[F§() : void
      {
         if(this.§5!<§)
         {
            this.§5!<§.x = this.§`B§ / §'!"§.§#3§;
            this.§5!<§.y = this.§,!9§ / §'!"§.§#3§;
         }
      }
      
      public function §7Z§(param1:§;N§) : void
      {
         this.§8^§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§2!$§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§9!,§ = null;
         this.§4!I§ += param1;
         var _loc2_:Boolean = false;
         if(this.§8^§)
         {
            if(this.§8^§.sprite == null || this.§8^§.§6J§ == null)
            {
               return false;
            }
            this.§`B§ = this.§8^§.§"!H§().GetPosition().x;
            this.§,!9§ = this.§8^§.§"!H§().GetPosition().y;
         }
         if(this.§<4§ > 0 && this.§;+§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§4!I§ / 1000 / (1 / _loc3_)) < this.§;+§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§;+§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.createParticleImage(_loc6_);
               this.§5!<§.§2V§(0,-1,true);
               this.§5!<§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§0!^§;
               _loc8_.y = -_loc5_.pivotY * this.§0!^§;
               _loc8_.scaleX = _loc8_.scaleY = this.§0!^§ * _loc7_;
            }
            else if(this.§3!H§)
            {
               this.§5!<§.§2V§(0,-1,true);
            }
         }
         if(this.§%!&§ == §<A§)
         {
            this.§9=§(param1);
            _loc2_ = this.updateParticles(param1);
            if(this.§>!5§ > 0 && this.§,!9§ > this.§>!5§)
            {
               return false;
            }
         }
         else
         {
            this.§9=§(param1);
            _loc2_ = this.updateParticles(param1);
         }
         if(this.§`4§ > 0 && this.§4!I§ >= this.§`4§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§[F§();
         }
         return true;
      }
      
      public function §9=§(param1:Number) : void
      {
         this.§>!3§ += param1 * this.§^!?§ / 1000;
         this.§,!9§ += this.§>!3§ * param1 / 1000;
         this.§`B§ += this.§1!F§ * param1 / 1000;
         if(this.§=$§ != 0)
         {
            this.§5!<§.rotation += this.§=$§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function updateParticles(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§%!&§ == §,L§)
         {
            if(this.§`4§ > 0)
            {
               _loc2_ = 1;
               if(this.§^R§ == §7X§)
               {
                  if((_loc4_ = this.§4!I§ / this.§`4§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§7]§) / 5000);
               }
               this.§5!<§.scaleX = _loc2_;
               this.§5!<§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§%!&§ == §<A§)
         {
            if(this.§^R§ == §0L§)
            {
               this.§5!<§.alpha = Math.max(0,Math.min(1,2 * §5h§.§`!a§((this.§`4§ - this.§4!I§) / this.§`4§,false)));
               _loc5_ = Math.atan2(-this.§>!3§,this.§1!F§) * (180 / Math.PI);
               this.§5!<§.scaleX = Math.max(0.2,this.§5!<§.alpha);
               this.§5!<§.scaleY = Math.max(0.2,this.§5!<§.alpha);
               this.§5!<§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§^R§ == §?^§ || this.§^R§ == §]!`§)
            {
               this.§5!<§.scaleX = this.§5!<§.scaleY = 0.2 + (this.§`4§ - this.§4!I§) / this.§`4§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§3!L§)
         {
            this.§3!L§.clear();
            this.§3!L§ = null;
         }
         if(this.§5!<§)
         {
            this.§5!<§.dispose();
            this.§5!<§ = null;
         }
         if(this.§8^§)
         {
            this.§8^§ = null;
         }
      }
   }
}
