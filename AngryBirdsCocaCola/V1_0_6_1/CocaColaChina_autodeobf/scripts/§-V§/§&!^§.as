package §-V§
{
   import §#B§.§ ]§;
   import §+N§.§%H§;
   import §+N§.§,A§;
   import §+N§.§=!+§;
   import §+N§.§``§;
   import §2!G§.§2!V§;
   import §2!G§.§]=§;
   import §;A§.§7!K§;
   import §<!!§.§ G§;
   import §<!$§.DisplayObject;
   import §<!$§.Sprite;
   import §<!$§.§[!5§;
   import §@'§.Texture;
   
   public class §&!^§
   {
      
      public static const §&!,§:int = 0;
      
      public static const §7!L§:int = 1;
      
      public static const §3T§:int = 2;
      
      public static const §>k§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §7=§:String = "Effect_TrailBig_Bird";
      
      public static const §7!1§:String = "Effect_Trail_Sparkle";
      
      public static const §,K§:String = "Effect_Floating_Score";
      
      public static const §9!+§:String = "Effect_Floating_Text";
      
      public static const §#[§:String = "Effect_Explosion_Particle";
      
      public static const §>d§:String = "Effect_Explosion_Core";
      
      public static const §`!_§:String = "Effect_Pig_Destruction";
      
      public static const §2p§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §+Q§:String = "Effect_Bird_Destruction";
      
      public static const §1L§:String = "Effect_Block_Destruction_Particles";
      
      public static const §!T§:String = "Effect_Block_Destruction_Core";
      
      public static const §%u§:int = 0;
      
      public static const §8H§:int = 1;
      
      public static const §!@§:int = 2;
      
      public static const §8!F§:int = 3;
      
      public static const § A§:int = 4;
      
      public static const §[c§:int = 5;
      
      public static const §%@§:int = 6;
      
      public static const §#!+§:int = 7;
      
      public static const §^-§:int = 8;
      
      public static const §"e§:int = 9;
      
      public static const §`J§:int = 10;
      
      public static const §5#§:int = 11;
      
      public static const §<U§:int = 12;
      
      public static const §3!5§:int = 13;
      
      public static const §^!Y§:int = 14;
      
      public static const §1N§:int = 15;
      
      public static const §[r§:int = 16;
      
      public static const §9!`§:int = 17;
      
      public static const §]l§:int = 18;
      
      public static const §8K§:Boolean = true;
       
      
      public var §-q§:int;
      
      public var §[!<§:int;
      
      public var §-!S§:String;
      
      public var §8!C§:Number;
      
      public var §2!=§:Number;
      
      public var §9'§:Number;
      
      public var §9T§:Number;
      
      public var §33§:Number = 0;
      
      public var §3!T§:Number;
      
      public var §break§:Number;
      
      public var §^!T§:String;
      
      public var §&a§:Number = -1;
      
      public var §%!Z§:int;
      
      public var §;i§:Number;
      
      public var §%i§:Number;
      
      private var §@!?§:Sprite;
      
      private var §5!6§:§]=§;
      
      private var §-!E§:int;
      
      private var §,!`§:int;
      
      private var §['§:Boolean;
      
      private var §=r§:§%H§;
      
      private var §1D§:Boolean;
      
      private var §8U§:§,A§;
      
      private var §!v§:§``§;
      
      private var §>G§:§ ]§;
      
      public function §&!^§(param1:§,A§, param2:§``§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§@!?§ = new Sprite();
         super();
         this.§8U§ = param1;
         this.§!v§ = param2;
         this.§-!S§ = param3;
         this.§-q§ = param5;
         this.§[!<§ = param4;
         this.§%!Z§ = param10;
         this.§,!`§ = param16;
         this.§['§ = param17;
         this.§^!T§ = param9;
         this.§8!C§ = 0;
         this.§break§ = param8;
         this.§;i§ = param6;
         this.§%i§ = param7;
         this.§3!T§ = param15;
         this.§9'§ = param11;
         this.§2!=§ = param12;
         this.§33§ = param14;
         this.§9T§ = param13;
         this.§3!c§();
         this.§'^§();
         if(this.§-q§ == §7!L§)
         {
            this.§&a§ = §7!K§.§=j§.§0D§.§6![§ + this.§@!?§.height * §2!V§.§-!3§;
         }
      }
      
      public static function §5F§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §%u§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §!@§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §8H§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §[c§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return § A§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §8!F§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §]l§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §%@§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §"e§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §#!+§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §^-§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §`J§;
         }
         return §5#§;
      }
      
      public static function §+!F§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §<U§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §^!Y§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §3!5§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §9!`§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §[r§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §1N§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §1N§;
         }
         return §[r§;
      }
      
      public function get §5!4§() : DisplayObject
      {
         return this.§@!?§;
      }
      
      public function §=4§(param1:Number, param2:Number) : void
      {
      }
      
      protected function §3!c§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§%H§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§-!S§)
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
            case §7=§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §7!1§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §`!_§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §2p§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §!T§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §>d§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §#[§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §,K§:
            case §9!+§:
               if(parseInt(this.§^!T§) == 10000 || parseInt(this.§^!T§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§%!Z§)
                  {
                     case §<U§:
                        _loc8_ = 16058683;
                        break;
                     case §3!5§:
                        _loc8_ = 55294;
                        break;
                     case §1N§:
                        _loc8_ = 1878602;
                        break;
                     case §9!`§:
                        _loc8_ = 3552822;
                        break;
                     case §[r§:
                        break;
                     case §^!Y§:
                        _loc8_ = 16705792;
                  }
                  if(parseInt(this.§^!T§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§8U§.§<+§("NUMBERS");
                  this.§5!6§ = new §]=§(_loc2_,_loc3_,true);
                  this.§5!6§.§[!D§(parseInt(this.§^!T§));
                  this.§@!?§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§8U§.§<+§("NUMBERS");
               this.§5!6§ = new §]=§(_loc2_,_loc3_);
               this.§5!6§.§[!D§(parseInt(this.§^!T§));
               this.§@!?§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §1L§:
               switch(this.§%!Z§)
               {
                  case §"e§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §`J§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §#!+§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §^-§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §5#§:
                     _loc6_ = 1 + _loc1_ % 5;
               }
               if(this.§@!?§)
               {
                  this.§@!?§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §+Q§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§%!Z§)
               {
                  case §%u§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §[c§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §8H§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §8!F§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case § A§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §!@§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §]l§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§@!?§)
               {
                  this.§@!?§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§-!S§,null,this.§,!`§,this.§['§);
         }
      }
      
      private function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§=!+§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§=r§ = this.§8U§.§<+§(param1);
         this.§1D§ = param4;
         var _loc7_:Number = 1;
         if(this.§=r§)
         {
            _loc6_ = (_loc5_ = this.§=r§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            _loc6_ = this.§!v§.§-M§();
         }
         this.§-!E§ = param3;
         var _loc8_:§[!5§ = this.createParticleImage(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§3!T§ * _loc7_;
         this.§@!?§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§3!T§;
            _loc8_.y = -_loc5_.pivotY * this.§3!T§;
         }
         else
         {
            _loc8_.x = -this.§@!?§.width / 2;
            _loc8_.y = -this.§@!?§.height / 2;
         }
      }
      
      protected function createParticleImage(param1:Texture) : §[!5§
      {
         return new §[!5§(param1,false);
      }
      
      public function §'^§() : void
      {
         if(this.§@!?§)
         {
            this.§@!?§.x = this.§;i§ / §2!V§.§-!3§;
            this.§@!?§.y = this.§%i§ / §2!V§.§-!3§;
         }
      }
      
      public function §?!9§(param1:§ ]§) : void
      {
         this.§>G§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§=!+§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§[!5§ = null;
         this.§8!C§ += param1;
         var _loc2_:Boolean = false;
         if(this.§>G§)
         {
            if(this.§>G§.sprite == null || this.§>G§.§5K§ == null)
            {
               return false;
            }
            this.§;i§ = this.§>G§.§4g§().GetPosition().x;
            this.§%i§ = this.§>G§.§4g§().GetPosition().y;
         }
         if(this.§-!E§ > 0 && this.§=r§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§8!C§ / 1000 / (1 / _loc3_)) < this.§=r§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§=r§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.createParticleImage(_loc6_);
               this.§@!?§.§4!>§(0,-1,true);
               this.§@!?§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§3!T§;
               _loc8_.y = -_loc5_.pivotY * this.§3!T§;
               _loc8_.scaleX = _loc8_.scaleY = this.§3!T§ * _loc7_;
            }
            else if(this.§1D§)
            {
               this.§@!?§.§4!>§(0,-1,true);
            }
         }
         if(this.§-q§ == §7!L§)
         {
            this.§<&§(param1);
            _loc2_ = this.updateParticles(param1);
            if(this.§&a§ > 0 && this.§%i§ > this.§&a§)
            {
               return false;
            }
         }
         else
         {
            this.§<&§(param1);
            _loc2_ = this.updateParticles(param1);
         }
         if(this.§break§ > 0 && this.§8!C§ >= this.§break§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§'^§();
         }
         return true;
      }
      
      public function §<&§(param1:Number) : void
      {
         this.§2!=§ += param1 * this.§9T§ / 1000;
         this.§%i§ += this.§2!=§ * param1 / 1000;
         this.§;i§ += this.§9'§ * param1 / 1000;
         if(this.§33§ != 0)
         {
            this.§@!?§.rotation += this.§33§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function updateParticles(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§-q§ == §&!,§)
         {
            if(this.§break§ > 0)
            {
               _loc2_ = 1;
               if(this.§-!S§ == §9!+§)
               {
                  if((_loc4_ = this.§8!C§ / this.§break§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§^!T§) / 5000);
               }
               this.§@!?§.scaleX = _loc2_;
               this.§@!?§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§-q§ == §7!L§)
         {
            if(this.§-!S§ == §#[§)
            {
               this.§@!?§.alpha = Math.max(0,Math.min(1,2 * § G§.§'Q§((this.§break§ - this.§8!C§) / this.§break§,false)));
               _loc5_ = Math.atan2(-this.§2!=§,this.§9'§) * (180 / Math.PI);
               this.§@!?§.scaleX = Math.max(0.2,this.§@!?§.alpha);
               this.§@!?§.scaleY = Math.max(0.2,this.§@!?§.alpha);
               this.§@!?§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§-!S§ == §+Q§ || this.§-!S§ == §!T§)
            {
               this.§@!?§.scaleX = this.§@!?§.scaleY = 0.2 + (this.§break§ - this.§8!C§) / this.§break§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§5!6§)
         {
            this.§5!6§.clear();
            this.§5!6§ = null;
         }
         if(this.§@!?§)
         {
            this.§@!?§.dispose();
            this.§@!?§ = null;
         }
         if(this.§>G§)
         {
            this.§>G§ = null;
         }
      }
   }
}
