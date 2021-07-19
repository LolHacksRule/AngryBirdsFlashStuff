package §-!<§
{
   import § N§.§1!A§;
   import § N§.DisplayObject;
   import § N§.Sprite;
   import §#e§.§'?§;
   import §#e§.§4^§;
   import §#e§.§@!+§;
   import §#e§.§`!9§;
   import §-!&§.§3!,§;
   import §8!B§.§#! §;
   import §8z§.Texture;
   import §9T§.§'!?§;
   import §9T§.§1r§;
   import §`K§.§^F§;
   
   public class §8R§
   {
      
      public static const §@2§:int = 0;
      
      public static const §`R§:int = 1;
      
      public static const §0f§:int = 2;
      
      public static const §!J§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §[!$§:String = "Effect_TrailBig_Bird";
      
      public static const §3G§:String = "Effect_Trail_Sparkle";
      
      public static const §'5§:String = "Effect_Floating_Score";
      
      public static const §<T§:String = "Effect_Floating_Text";
      
      public static const §=6§:String = "Effect_Explosion_Particle";
      
      public static const §1d§:String = "Effect_Explosion_Core";
      
      public static const §!H§:String = "Effect_Pig_Destruction";
      
      public static const §,!B§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §#'§:String = "Effect_Bird_Destruction";
      
      public static const §+`§:String = "Effect_Block_Destruction_Particles";
      
      public static const §-!'§:String = "Effect_Block_Destruction_Core";
      
      public static const §0k§:int = 0;
      
      public static const §"G§:int = 1;
      
      public static const §#§:int = 2;
      
      public static const §7$§:int = 3;
      
      public static const §2!§:int = 4;
      
      public static const §2!=§:int = 5;
      
      public static const §!!J§:int = 6;
      
      public static const §"!8§:int = 7;
      
      public static const §%3§:int = 8;
      
      public static const §@! §:int = 9;
      
      public static const §=!;§:int = 10;
      
      public static const §^!M§:int = 11;
      
      public static const §>5§:int = 12;
      
      public static const §2!!§:int = 13;
      
      public static const §>!#§:int = 14;
      
      public static const §6!P§:int = 15;
      
      public static const §"h§:int = 16;
      
      public static const §+0§:int = 17;
      
      public static const §-1§:int = 18;
      
      public static const §?J§:Boolean = true;
       
      
      public var §#!2§:int;
      
      public var §[!6§:int;
      
      public var §6f§:String;
      
      public var §5!N§:Number;
      
      public var §<Q§:Number;
      
      public var §%A§:Number;
      
      public var §5K§:Number;
      
      public var § !'§:Number = 0;
      
      public var §6-§:Number;
      
      public var §+t§:Number;
      
      public var §"!3§:String;
      
      public var §[K§:Number = -1;
      
      public var §^Q§:int;
      
      public var §]!B§:Number;
      
      public var §5G§:Number;
      
      private var §-8§:Sprite;
      
      private var §=f§:§'!?§;
      
      private var §%!+§:int;
      
      protected var §[!#§:int;
      
      protected var §5!C§:Boolean;
      
      private var §3!Q§:§4^§;
      
      private var §0M§:Boolean;
      
      private var §'_§:§@!+§;
      
      private var §2"§:§'?§;
      
      private var §'!0§:§3!,§;
      
      public function §8R§(param1:§@!+§, param2:§'?§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§-8§ = new Sprite();
         super();
         this.§'_§ = param1;
         this.§2"§ = param2;
         this.§6f§ = param3;
         this.§#!2§ = param5;
         this.§[!6§ = param4;
         this.§^Q§ = param10;
         this.§[!#§ = param16;
         this.§5!C§ = param17;
         this.§"!3§ = param9;
         this.§5!N§ = 0;
         this.§+t§ = param8;
         this.§]!B§ = param6;
         this.§5G§ = param7;
         this.§6-§ = param15;
         this.§%A§ = param11;
         this.§<Q§ = param12;
         this.§ !'§ = param14;
         this.§5K§ = param13;
         this.createVisuals();
         this.§%!8§();
         if(this.§#!2§ == §`R§)
         {
            this.§[K§ = §#! §.§`'§.§9!>§.§^!O§ + this.§-8§.height * §1r§.§[M§;
         }
      }
      
      public static function §[q§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §0k§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §#§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §"G§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §2!=§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §2!§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §7$§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §-1§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §!!J§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §@! §;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §"!8§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §%3§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §=!;§;
         }
         return §^!M§;
      }
      
      public static function §4!§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §>5§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §>!#§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §2!!§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §+0§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §"h§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §6!P§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §6!P§;
         }
         return §"h§;
      }
      
      public function get §-!-§() : DisplayObject
      {
         return this.§-8§;
      }
      
      public function §!'§(param1:Number, param2:Number) : void
      {
      }
      
      protected function createVisuals() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§4^§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§6f§)
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
            case §[!$§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §3G§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §!H§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §,!B§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §-!'§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §1d§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §=6§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §'5§:
            case §<T§:
               if(parseInt(this.§"!3§) == 10000 || parseInt(this.§"!3§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§^Q§)
                  {
                     case §>5§:
                        _loc8_ = 16058683;
                        break;
                     case §2!!§:
                        _loc8_ = 55294;
                        break;
                     case §6!P§:
                        _loc8_ = 1878602;
                        break;
                     case §+0§:
                        _loc8_ = 3552822;
                        break;
                     case §"h§:
                        break;
                     case §>!#§:
                        _loc8_ = 16705792;
                  }
                  if(parseInt(this.§"!3§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§'_§.getAnimation("NUMBERS");
                  this.§=f§ = new §'!?§(_loc2_,_loc3_,true);
                  this.§=f§.§1M§(parseInt(this.§"!3§));
                  this.§-8§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
               }
               else
               {
                  _loc2_ = new Sprite();
                  _loc3_ = this.§'_§.getAnimation("NUMBERS");
                  this.§=f§ = new §'!?§(_loc2_,_loc3_);
                  this.§=f§.§1M§(parseInt(this.§"!3§));
                  this.§-8§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
               }
               break;
            case §+`§:
               switch(this.§^Q§)
               {
                  case §@! §:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §=!;§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §"!8§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §%3§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §^!M§:
                     _loc6_ = 1 + _loc1_ % 3;
               }
               if(this.§-8§)
               {
                  this.§-8§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §#'§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§^Q§)
               {
                  case §0k§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §2!=§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §"G§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §7$§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §2!§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §#§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §-1§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§-8§)
               {
                  this.§-8§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            default:
               this.createParticle(this.§6f§,null,this.§[!#§,this.§5!C§);
         }
      }
      
      protected function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§`!9§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§0M§ = param4;
         var _loc7_:Number = 1;
         this.§3!Q§ = this.§'_§.getAnimation(param1);
         if(this.§3!Q§)
         {
            _loc6_ = (_loc5_ = this.§3!Q§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            if(!(_loc5_ = this.§2"§.§&! §(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
         }
         this.§%!+§ = param3;
         var _loc8_:§1!A§ = this.§;N§(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§6-§ * _loc7_;
         this.§-8§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§6-§;
            _loc8_.y = -_loc5_.pivotY * this.§6-§;
         }
         else
         {
            _loc8_.x = -this.§-8§.width / 2;
            _loc8_.y = -this.§-8§.height / 2;
         }
      }
      
      protected function §;N§(param1:Texture) : §1!A§
      {
         return new §1!A§(param1,false);
      }
      
      public function §%!8§() : void
      {
         if(this.§-8§)
         {
            this.§-8§.x = this.§]!B§ / §1r§.§[M§;
            this.§-8§.y = this.§5G§ / §1r§.§[M§;
         }
      }
      
      public function §<F§(param1:§3!,§) : void
      {
         this.§'!0§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§`!9§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§1!A§ = null;
         this.§5!N§ += param1;
         var _loc2_:Boolean = false;
         if(this.§'!0§)
         {
            if(this.§'!0§.sprite == null || this.§'!0§.§+!?§ == null)
            {
               return false;
            }
            this.§]!B§ = this.§'!0§.§`%§().GetPosition().x;
            this.§5G§ = this.§'!0§.§`%§().GetPosition().y;
         }
         if(this.§%!+§ > 0 && this.§3!Q§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§5!N§ / 1000 / (1 / _loc3_)) < this.§3!Q§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§3!Q§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.§;N§(_loc6_);
               this.§-8§.§5a§(0,-1,true);
               this.§-8§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§6-§;
               _loc8_.y = -_loc5_.pivotY * this.§6-§;
               _loc8_.scaleX = _loc8_.scaleY = this.§6-§ * _loc7_;
            }
            else if(this.§0M§)
            {
               this.§-8§.§5a§(0,-1,true);
            }
         }
         if(this.§#!2§ == §`R§)
         {
            this.§9O§(param1);
            _loc2_ = this.§?!$§(param1);
            if(this.§[K§ > 0 && this.§5G§ > this.§[K§)
            {
               return false;
            }
         }
         else
         {
            this.§9O§(param1);
            _loc2_ = this.§?!$§(param1);
         }
         if(this.§+t§ > 0 && this.§5!N§ >= this.§+t§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§%!8§();
         }
         return true;
      }
      
      public function §9O§(param1:Number) : void
      {
         this.§<Q§ += param1 * this.§5K§ / 1000;
         this.§5G§ += this.§<Q§ * param1 / 1000;
         this.§]!B§ += this.§%A§ * param1 / 1000;
         if(this.§ !'§ != 0)
         {
            this.§-8§.rotation += this.§ !'§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §?!$§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§#!2§ == §@2§)
         {
            if(this.§+t§ > 0)
            {
               _loc2_ = 1;
               if(this.§6f§ == §<T§)
               {
                  if((_loc4_ = this.§5!N§ / this.§+t§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§"!3§) / 5000);
               }
               this.§-8§.scaleX = _loc2_;
               this.§-8§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§#!2§ == §`R§)
         {
            if(this.§6f§ == §=6§)
            {
               this.§-8§.alpha = Math.max(0,Math.min(1,2 * §^F§.§1g§((this.§+t§ - this.§5!N§) / this.§+t§,false)));
               _loc5_ = Math.atan2(-this.§<Q§,this.§%A§) * (180 / Math.PI);
               this.§-8§.scaleX = Math.max(0.2,this.§-8§.alpha);
               this.§-8§.scaleY = Math.max(0.2,this.§-8§.alpha);
               this.§-8§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§6f§ == §#'§ || this.§6f§ == §-!'§)
            {
               this.§-8§.scaleX = this.§-8§.scaleY = 0.2 + (this.§+t§ - this.§5!N§) / this.§+t§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§=f§)
         {
            this.§=f§.clear();
            this.§=f§ = null;
         }
         if(this.§-8§)
         {
            this.§-8§.dispose();
            this.§-8§ = null;
         }
         if(this.§'!0§)
         {
            this.§'!0§ = null;
         }
      }
   }
}
