package §"!,§
{
   import §"x§.§+!b§;
   import §2_§.§'k§;
   import §2_§.§'u§;
   import §4>§.Texture;
   import §7!B§.§-§;
   import §7!B§.DisplayObject;
   import §7!B§.Sprite;
   import §=b§.§`!_§;
   import §>! §.§^!c§;
   import §^!Y§.§'R§;
   import §^!Y§.§1C§;
   import §^!Y§.§4!f§;
   import §^!Y§.§else §;
   
   public class §9!B§
   {
      
      public static const § x§:int = 0;
      
      public static const §5!G§:int = 1;
      
      public static const §6I§:int = 2;
      
      public static const §4!o§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §%-§:String = "Effect_TrailBig_Bird";
      
      public static const § 9§:String = "Effect_Trail_Sparkle";
      
      public static const §3w§:String = "Effect_Floating_Score";
      
      public static const §?!1§:String = "Effect_Floating_Text";
      
      public static const §53§:String = "Effect_Explosion_Particle";
      
      public static const §5+§:String = "Effect_Explosion_Core";
      
      public static const §]!$§:String = "Effect_Pig_Destruction";
      
      public static const §^8§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §8v§:String = "Effect_Bird_Destruction";
      
      public static const §+-§:String = "Effect_Block_Destruction_Particles";
      
      public static const §?P§:String = "Effect_Block_Destruction_Core";
      
      public static const §!L§:int = 0;
      
      public static const §+!O§:int = 1;
      
      public static const §-!L§:int = 2;
      
      public static const §>s§:int = 3;
      
      public static const §-<§:int = 4;
      
      public static const §[F§:int = 5;
      
      public static const §2#§:int = 6;
      
      public static const §'!S§:int = 7;
      
      public static const §"!#§:int = 8;
      
      public static const §8!l§:int = 9;
      
      public static const §?!v§:int = 10;
      
      public static const §!!S§:int = 11;
      
      public static const §"!Y§:int = 12;
      
      public static const §1!i§:int = 13;
      
      public static const §2!,§:int = 14;
      
      public static const §4!H§:int = 15;
      
      public static const §3=§:int = 16;
      
      public static const §[!p§:int = 17;
      
      public static const §>"§:int = 18;
      
      public static const § in§:Boolean = true;
       
      
      public var §4![§:int;
      
      public var §%@§:int;
      
      public var §=&§:String;
      
      public var §^[§:Number;
      
      public var §>,§:Number;
      
      public var §;K§:Number;
      
      public var §[1§:Number;
      
      public var §`!j§:Number = 0;
      
      public var §'!I§:Number;
      
      public var §09§:Number;
      
      public var §@!i§:String;
      
      public var §6!k§:Number = -1;
      
      public var §!N§:int;
      
      public var §#!u§:Number;
      
      public var §<h§:Number;
      
      private var §in§:Sprite;
      
      private var § !k§:§'k§;
      
      private var §?$§:int;
      
      protected var §@!]§:int;
      
      protected var §8F§:Boolean;
      
      private var §'P§:§4!f§;
      
      private var §,!a§:Boolean;
      
      private var §5P§:§else §;
      
      private var §+]§:§'R§;
      
      private var §2F§:§`!_§;
      
      public function §9!B§(param1:§else §, param2:§'R§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§in§ = new Sprite();
         super();
         this.§5P§ = param1;
         this.§+]§ = param2;
         this.§=&§ = param3;
         this.§4![§ = param5;
         this.§%@§ = param4;
         this.§!N§ = param10;
         this.§@!]§ = param16;
         this.§8F§ = param17;
         this.§@!i§ = param9;
         this.§^[§ = 0;
         this.§09§ = param8;
         this.§#!u§ = param6;
         this.§<h§ = param7;
         this.§'!I§ = param15;
         this.§;K§ = param11;
         this.§>,§ = param12;
         this.§`!j§ = param14;
         this.§[1§ = param13;
         this.createVisuals();
         this.§'!2§();
         if(this.§4![§ == §5!G§)
         {
            this.§6!k§ = §^!c§.§5!Y§.§!!"§.§%!^§ + this.§in§.height * §'u§.§18§;
         }
      }
      
      public static function §'!4§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §!L§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §-!L§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §+!O§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §[F§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §-<§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §>s§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §>"§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §2#§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §8!l§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §'!S§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §"!#§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §?!v§;
         }
         return §!!S§;
      }
      
      public static function §%!d§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §"!Y§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §2!,§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §1!i§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §[!p§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §3=§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §4!H§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §4!H§;
         }
         return §3=§;
      }
      
      public function get §[!s§() : DisplayObject
      {
         return this.§in§;
      }
      
      public function §+H§(param1:Number, param2:Number) : void
      {
      }
      
      protected function createVisuals() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§4!f§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§=&§)
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
            case §%-§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case § 9§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §]!$§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §^8§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §?P§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §5+§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §53§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §3w§:
            case §?!1§:
               if(parseInt(this.§@!i§) == 10000 || parseInt(this.§@!i§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§!N§)
                  {
                     case §"!Y§:
                        _loc8_ = 16058683;
                        break;
                     case §1!i§:
                        _loc8_ = 55294;
                        break;
                     case §4!H§:
                        _loc8_ = 1878602;
                        break;
                     case §[!p§:
                        _loc8_ = 3552822;
                        break;
                     case §3=§:
                        break;
                     case §2!,§:
                        _loc8_ = 16705792;
                  }
                  if(parseInt(this.§@!i§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§5P§.getAnimation("NUMBERS");
                  this.§ !k§ = new §'k§(_loc2_,_loc3_,true);
                  this.§ !k§.§6%§(parseInt(this.§@!i§));
                  this.§in§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§5P§.getAnimation("NUMBERS");
               this.§ !k§ = new §'k§(_loc2_,_loc3_);
               this.§ !k§.§6%§(parseInt(this.§@!i§));
               this.§in§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §+-§:
               switch(this.§!N§)
               {
                  case §8!l§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §?!v§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §'!S§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §"!#§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §!!S§:
                     _loc6_ = 1 + _loc1_ % 3;
               }
               if(this.§in§)
               {
                  this.§in§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §8v§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§!N§)
               {
                  case §!L§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §[F§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §+!O§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §>s§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §-<§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §-!L§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §>"§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§in§)
               {
                  this.§in§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§=&§,null,this.§@!]§,this.§8F§);
         }
      }
      
      protected function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§1C§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§,!a§ = param4;
         var _loc7_:Number = 1;
         this.§'P§ = this.§5P§.getAnimation(param1);
         if(this.§'P§)
         {
            _loc6_ = (_loc5_ = this.§'P§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            if(!(_loc5_ = this.§+]§.§2+§(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
         }
         this.§?$§ = param3;
         var _loc8_:§-§ = this.§;r§(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§'!I§ * _loc7_;
         this.§in§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§'!I§;
            _loc8_.y = -_loc5_.pivotY * this.§'!I§;
         }
         else
         {
            _loc8_.x = -this.§in§.width / 2;
            _loc8_.y = -this.§in§.height / 2;
         }
      }
      
      protected function §;r§(param1:Texture) : §-§
      {
         return new §-§(param1,false);
      }
      
      public function §'!2§() : void
      {
         if(this.§in§)
         {
            this.§in§.x = this.§#!u§ / §'u§.§18§;
            this.§in§.y = this.§<h§ / §'u§.§18§;
         }
      }
      
      public function §+A§(param1:§`!_§) : void
      {
         this.§2F§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§1C§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§-§ = null;
         this.§^[§ += param1;
         var _loc2_:Boolean = false;
         if(this.§2F§)
         {
            if(this.§2F§.sprite == null || this.§2F§.§'!-§ == null)
            {
               return false;
            }
            this.§#!u§ = this.§2F§.§3J§().GetPosition().x;
            this.§<h§ = this.§2F§.§3J§().GetPosition().y;
         }
         if(this.§?$§ > 0 && this.§'P§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§^[§ / 1000 / (1 / _loc3_)) < this.§'P§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§'P§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.§;r§(_loc6_);
               this.§in§.§?!z§(0,-1,true);
               this.§in§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§'!I§;
               _loc8_.y = -_loc5_.pivotY * this.§'!I§;
               _loc8_.scaleX = _loc8_.scaleY = this.§'!I§ * _loc7_;
            }
            else if(this.§,!a§)
            {
               this.§in§.§?!z§(0,-1,true);
            }
         }
         if(this.§4![§ == §5!G§)
         {
            this.§#Y§(param1);
            _loc2_ = this.§28§(param1);
            if(this.§6!k§ > 0 && this.§<h§ > this.§6!k§)
            {
               return false;
            }
         }
         else
         {
            this.§#Y§(param1);
            _loc2_ = this.§28§(param1);
         }
         if(this.§09§ > 0 && this.§^[§ >= this.§09§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§'!2§();
         }
         return true;
      }
      
      public function §#Y§(param1:Number) : void
      {
         this.§>,§ += param1 * this.§[1§ / 1000;
         this.§<h§ += this.§>,§ * param1 / 1000;
         this.§#!u§ += this.§;K§ * param1 / 1000;
         if(this.§`!j§ != 0)
         {
            this.§in§.rotation += this.§`!j§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §28§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§4![§ == § x§)
         {
            if(this.§09§ > 0)
            {
               _loc2_ = 1;
               if(this.§=&§ == §?!1§)
               {
                  if((_loc4_ = this.§^[§ / this.§09§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§@!i§) / 5000);
               }
               this.§in§.scaleX = _loc2_;
               this.§in§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§4![§ == §5!G§)
         {
            if(this.§=&§ == §53§)
            {
               this.§in§.alpha = Math.max(0,Math.min(1,2 * §+!b§.§@!@§((this.§09§ - this.§^[§) / this.§09§,false)));
               _loc5_ = Math.atan2(-this.§>,§,this.§;K§) * (180 / Math.PI);
               this.§in§.scaleX = Math.max(0.2,this.§in§.alpha);
               this.§in§.scaleY = Math.max(0.2,this.§in§.alpha);
               this.§in§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§=&§ == §8v§ || this.§=&§ == §?P§)
            {
               this.§in§.scaleX = this.§in§.scaleY = 0.2 + (this.§09§ - this.§^[§) / this.§09§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§ !k§)
         {
            this.§ !k§.clear();
            this.§ !k§ = null;
         }
         if(this.§in§)
         {
            this.§in§.dispose();
            this.§in§ = null;
         }
         if(this.§2F§)
         {
            this.§2F§ = null;
         }
      }
   }
}
