package §,M§
{
   import §+!S§.Texture;
   import §,!Q§.§%^§;
   import §,!Q§.DisplayObject;
   import §,!Q§.Sprite;
   import §-v§.§,!1§;
   import §2l§.§%i§;
   import §2l§.§4!Q§;
   import §2l§.§63§;
   import §2l§.§]O§;
   import §4A§.§&_§;
   import §4A§.§^w§;
   import §9C§.§4!G§;
   import §?@§.§^k§;
   
   public class §,!;§
   {
      
      public static const §+T§:int = 0;
      
      public static const §7s§:int = 1;
      
      public static const §`e§:int = 2;
      
      public static const §;q§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §4!P§:String = "Effect_TrailBig_Bird";
      
      public static const §-U§:String = "Effect_Trail_Sparkle";
      
      public static const §<v§:String = "Effect_Floating_Score";
      
      public static const §;!Q§:String = "Effect_Floating_Text";
      
      public static const §[e§:String = "Effect_Explosion_Particle";
      
      public static const §+V§:String = "Effect_Explosion_Core";
      
      public static const §>!H§:String = "Effect_Pig_Destruction";
      
      public static const §=!c§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §<!6§:String = "Effect_Bird_Destruction";
      
      public static const §[7§:String = "Effect_Block_Destruction_Particles";
      
      public static const §^V§:String = "Effect_Block_Destruction_Core";
      
      public static const §@E§:int = 0;
      
      public static const §&p§:int = 1;
      
      public static const §function§:int = 2;
      
      public static const §%#§:int = 3;
      
      public static const §0C§:int = 4;
      
      public static const §=!L§:int = 5;
      
      public static const §8+§:int = 6;
      
      public static const §#]§:int = 7;
      
      public static const §%!B§:int = 8;
      
      public static const §`E§:int = 9;
      
      public static const §%e§:int = 10;
      
      public static const §]!U§:int = 11;
      
      public static const §#!U§:int = 12;
      
      public static const §5!>§:int = 13;
      
      public static const §]=§:int = 14;
      
      public static const §^]§:int = 15;
      
      public static const §4!N§:int = 16;
      
      public static const §"!b§:int = 17;
      
      public static const §<!^§:int = 18;
      
      public static const §+P§:Boolean = true;
       
      
      public var §&!T§:int;
      
      public var §-Z§:int;
      
      public var § !I§:String;
      
      public var §var§:Number;
      
      public var §6!O§:Number;
      
      public var §9!F§:Number;
      
      public var §?n§:Number;
      
      public var §1Q§:Number = 0;
      
      public var §^!Y§:Number;
      
      public var §#N§:Number;
      
      public var §;G§:String;
      
      public var §;Z§:Number = -1;
      
      public var §7J§:int;
      
      public var §03§:Number;
      
      public var §5,§:Number;
      
      private var §8!8§:Sprite;
      
      private var §3b§:§^w§;
      
      private var §3k§:int;
      
      protected var §%O§:int;
      
      protected var §!w§:Boolean;
      
      private var §2!F§:§63§;
      
      private var §6?§:Boolean;
      
      private var §]S§:§%i§;
      
      private var §!!@§:§]O§;
      
      private var §@3§:§4!G§;
      
      public function §,!;§(param1:§%i§, param2:§]O§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§8!8§ = new Sprite();
         super();
         this.§]S§ = param1;
         this.§!!@§ = param2;
         this.§ !I§ = param3;
         this.§&!T§ = param5;
         this.§-Z§ = param4;
         this.§7J§ = param10;
         this.§%O§ = param16;
         this.§!w§ = param17;
         this.§;G§ = param9;
         this.§var§ = 0;
         this.§#N§ = param8;
         this.§03§ = param6;
         this.§5,§ = param7;
         this.§^!Y§ = param15;
         this.§9!F§ = param11;
         this.§6!O§ = param12;
         this.§1Q§ = param14;
         this.§?n§ = param13;
         this.createVisuals();
         this.§]Z§();
         if(this.§&!T§ == §7s§)
         {
            this.§;Z§ = §,!1§.§2T§.§@I§.§?!K§ + this.§8!8§.height * §&_§.§5-§;
         }
      }
      
      public static function §%!$§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §@E§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §function§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §&p§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §=!L§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §0C§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §%#§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §<!^§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §8+§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §`E§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §#]§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §%!B§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §%e§;
         }
         return §]!U§;
      }
      
      public static function §%?§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §#!U§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §]=§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §5!>§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §"!b§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §4!N§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §^]§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §^]§;
         }
         return §4!N§;
      }
      
      public function get §3!U§() : DisplayObject
      {
         return this.§8!8§;
      }
      
      public function §'!U§(param1:Number, param2:Number) : void
      {
      }
      
      protected function createVisuals() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§63§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§ !I§)
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
            case §4!P§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §-U§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §>!H§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §=!c§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §^V§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §+V§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §[e§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §<v§:
            case §;!Q§:
               if(parseInt(this.§;G§) == 10000 || parseInt(this.§;G§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§7J§)
                  {
                     case §#!U§:
                        _loc8_ = 16058683;
                        break;
                     case §5!>§:
                        _loc8_ = 55294;
                        break;
                     case §^]§:
                        _loc8_ = 1878602;
                        break;
                     case §"!b§:
                        _loc8_ = 3552822;
                        break;
                     case §4!N§:
                        break;
                     case §]=§:
                        _loc8_ = 16705792;
                  }
                  if(parseInt(this.§;G§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§]S§.§set §("NUMBERS");
                  this.§3b§ = new §^w§(_loc2_,_loc3_,true);
                  this.§3b§.§47§(parseInt(this.§;G§));
                  this.§8!8§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§]S§.§set §("NUMBERS");
               this.§3b§ = new §^w§(_loc2_,_loc3_);
               this.§3b§.§47§(parseInt(this.§;G§));
               this.§8!8§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §[7§:
               switch(this.§7J§)
               {
                  case §`E§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §%e§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §#]§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §%!B§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §]!U§:
                     _loc6_ = 1 + _loc1_ % 3;
               }
               if(this.§8!8§)
               {
                  this.§8!8§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §<!6§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§7J§)
               {
                  case §@E§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §=!L§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §&p§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §%#§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §0C§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §function§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §<!^§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§8!8§)
               {
                  this.§8!8§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§ !I§,null,this.§%O§,this.§!w§);
         }
      }
      
      protected function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§4!Q§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§6?§ = param4;
         var _loc7_:Number = 1;
         this.§2!F§ = this.§]S§.§set §(param1);
         if(this.§2!F§)
         {
            _loc6_ = (_loc5_ = this.§2!F§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            if(!(_loc5_ = this.§!!@§.§!v§(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
         }
         this.§3k§ = param3;
         var _loc8_:§%^§ = this.createParticleImage(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§^!Y§ * _loc7_;
         this.§8!8§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§^!Y§;
            _loc8_.y = -_loc5_.pivotY * this.§^!Y§;
         }
         else
         {
            _loc8_.x = -this.§8!8§.width / 2;
            _loc8_.y = -this.§8!8§.height / 2;
         }
      }
      
      protected function createParticleImage(param1:Texture) : §%^§
      {
         return new §%^§(param1,false);
      }
      
      public function §]Z§() : void
      {
         if(this.§8!8§)
         {
            this.§8!8§.x = this.§03§ / §&_§.§5-§;
            this.§8!8§.y = this.§5,§ / §&_§.§5-§;
         }
      }
      
      public function §29§(param1:§4!G§) : void
      {
         this.§@3§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§4!Q§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§%^§ = null;
         this.§var§ += param1;
         var _loc2_:Boolean = false;
         if(this.§@3§)
         {
            if(this.§@3§.sprite == null || this.§@3§.§4!%§ == null)
            {
               return false;
            }
            this.§03§ = this.§@3§.§@!?§().GetPosition().x;
            this.§5,§ = this.§@3§.§@!?§().GetPosition().y;
         }
         if(this.§3k§ > 0 && this.§2!F§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§var§ / 1000 / (1 / _loc3_)) < this.§2!F§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§2!F§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.createParticleImage(_loc6_);
               this.§8!8§.§^Y§(0,-1,true);
               this.§8!8§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§^!Y§;
               _loc8_.y = -_loc5_.pivotY * this.§^!Y§;
               _loc8_.scaleX = _loc8_.scaleY = this.§^!Y§ * _loc7_;
            }
            else if(this.§6?§)
            {
               this.§8!8§.§^Y§(0,-1,true);
            }
         }
         if(this.§&!T§ == §7s§)
         {
            this.§0?§(param1);
            _loc2_ = this.updateParticles(param1);
            if(this.§;Z§ > 0 && this.§5,§ > this.§;Z§)
            {
               return false;
            }
         }
         else
         {
            this.§0?§(param1);
            _loc2_ = this.updateParticles(param1);
         }
         if(this.§#N§ > 0 && this.§var§ >= this.§#N§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§]Z§();
         }
         return true;
      }
      
      public function §0?§(param1:Number) : void
      {
         this.§6!O§ += param1 * this.§?n§ / 1000;
         this.§5,§ += this.§6!O§ * param1 / 1000;
         this.§03§ += this.§9!F§ * param1 / 1000;
         if(this.§1Q§ != 0)
         {
            this.§8!8§.rotation += this.§1Q§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function updateParticles(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§&!T§ == §+T§)
         {
            if(this.§#N§ > 0)
            {
               _loc2_ = 1;
               if(this.§ !I§ == §;!Q§)
               {
                  if((_loc4_ = this.§var§ / this.§#N§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§;G§) / 5000);
               }
               this.§8!8§.scaleX = _loc2_;
               this.§8!8§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§&!T§ == §7s§)
         {
            if(this.§ !I§ == §[e§)
            {
               this.§8!8§.alpha = Math.max(0,Math.min(1,2 * §^k§.§5V§((this.§#N§ - this.§var§) / this.§#N§,false)));
               _loc5_ = Math.atan2(-this.§6!O§,this.§9!F§) * (180 / Math.PI);
               this.§8!8§.scaleX = Math.max(0.2,this.§8!8§.alpha);
               this.§8!8§.scaleY = Math.max(0.2,this.§8!8§.alpha);
               this.§8!8§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§ !I§ == §<!6§ || this.§ !I§ == §^V§)
            {
               this.§8!8§.scaleX = this.§8!8§.scaleY = 0.2 + (this.§#N§ - this.§var§) / this.§#N§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§3b§)
         {
            this.§3b§.clear();
            this.§3b§ = null;
         }
         if(this.§8!8§)
         {
            this.§8!8§.dispose();
            this.§8!8§ = null;
         }
         if(this.§@3§)
         {
            this.§@3§ = null;
         }
      }
   }
}
