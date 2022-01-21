package §&!K§
{
   import §&[§.§&!m§;
   import §&[§.§'!$§;
   import §&[§.§,!"§;
   import §&[§.§0!I§;
   import §2!g§.§<7§;
   import §2!g§.DisplayObject;
   import §2!g§.Sprite;
   import §2o§.§<H§;
   import §5!G§.§6!Y§;
   import §@!b§.§&;§;
   import §@!b§.§@!k§;
   import §@j§.Texture;
   import §`!W§.§=,§;
   
   public class §^!3§
   {
      
      public static const §86§:int = 0;
      
      public static const §@<§:int = 1;
      
      public static const §,Q§:int = 2;
      
      public static const §6§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §^g§:String = "Effect_TrailBig_Bird";
      
      public static const §7$§:String = "Effect_Trail_Sparkle";
      
      public static const §<D§:String = "Effect_Floating_Score";
      
      public static const §]S§:String = "Effect_Floating_Text";
      
      public static const §,!Y§:String = "Effect_Explosion_Particle";
      
      public static const §<![§:String = "Effect_Explosion_Core";
      
      public static const §#![§:String = "Effect_Pig_Destruction";
      
      public static const §0!`§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §!!d§:String = "Effect_Bird_Destruction";
      
      public static const §21§:String = "Effect_Block_Destruction_Particles";
      
      public static const §=X§:String = "Effect_Block_Destruction_Core";
      
      public static const §4g§:int = 0;
      
      public static const §]!%§:int = 1;
      
      public static const §5!E§:int = 2;
      
      public static const §;!S§:int = 3;
      
      public static const § I§:int = 4;
      
      public static const §^3§:int = 5;
      
      public static const §]5§:int = 6;
      
      public static const §^!S§:int = 7;
      
      public static const §5!"§:int = 8;
      
      public static const §%![§:int = 9;
      
      public static const §7[§:int = 10;
      
      public static const §!l§:int = 11;
      
      public static const §=f§:int = 12;
      
      public static const §'!M§:int = 13;
      
      public static const §#h§:int = 14;
      
      public static const §8#§:int = 15;
      
      public static const §3[§:int = 16;
      
      public static const §5!c§:int = 17;
      
      public static const §9!d§:int = 18;
      
      public static const §5>§:Boolean = true;
       
      
      public var §^!B§:int;
      
      public var §1§:int;
      
      public var §^!T§:String;
      
      public var §+!"§:Number;
      
      public var §@!I§:Number;
      
      public var §3!#§:Number;
      
      public var §<!-§:Number;
      
      public var §^!$§:Number = 0;
      
      public var §&!U§:Number;
      
      public var § !l§:Number;
      
      public var §^;§:String;
      
      public var §`Y§:Number = -1;
      
      public var §"!W§:int;
      
      public var §;b§:Number;
      
      public var §[!5§:Number;
      
      private var §4A§:Sprite;
      
      private var §2A§:§&;§;
      
      private var §7n§:int;
      
      protected var §!b§:int;
      
      protected var §+d§:Boolean;
      
      private var §2!6§:§'!$§;
      
      private var §]W§:Boolean;
      
      private var §@]§:§0!I§;
      
      private var §`k§:§&!m§;
      
      private var §;B§:§6!Y§;
      
      public function §^!3§(param1:§0!I§, param2:§&!m§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§4A§ = new Sprite();
         super();
         this.§@]§ = param1;
         this.§`k§ = param2;
         this.§^!T§ = param3;
         this.§^!B§ = param5;
         this.§1§ = param4;
         this.§"!W§ = param10;
         this.§!b§ = param16;
         this.§+d§ = param17;
         this.§^;§ = param9;
         this.§+!"§ = 0;
         this.§ !l§ = param8;
         this.§;b§ = param6;
         this.§[!5§ = param7;
         this.§&!U§ = param15;
         this.§3!#§ = param11;
         this.§@!I§ = param12;
         this.§^!$§ = param14;
         this.§<!-§ = param13;
         this.createVisuals();
         this.§-!+§();
         if(this.§^!B§ == §@<§)
         {
            this.§`Y§ = §<H§.§=3§.§5H§.§4R§ + this.§4A§.height * §@!k§.§2!J§;
         }
      }
      
      public static function § !N§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §4g§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §5!E§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §]!%§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §^3§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return § I§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §;!S§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §9!d§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §]5§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §%![§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §^!S§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §5!"§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §7[§;
         }
         return §!l§;
      }
      
      public static function §6O§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §=f§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §#h§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §'!M§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §5!c§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §3[§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §8#§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §8#§;
         }
         return §3[§;
      }
      
      public function get §7%§() : DisplayObject
      {
         return this.§4A§;
      }
      
      public function §%!`§(param1:Number, param2:Number) : void
      {
      }
      
      protected function createVisuals() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§'!$§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§^!T§)
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
            case §^g§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §7$§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §#![§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §0!`§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §=X§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §<![§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §,!Y§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §<D§:
            case §]S§:
               if(parseInt(this.§^;§) == 10000 || parseInt(this.§^;§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§"!W§)
                  {
                     case §=f§:
                        _loc8_ = 16058683;
                        break;
                     case §'!M§:
                        _loc8_ = 55294;
                        break;
                     case §8#§:
                        _loc8_ = 1878602;
                        break;
                     case §5!c§:
                        _loc8_ = 3552822;
                        break;
                     case §3[§:
                        break;
                     case §#h§:
                        _loc8_ = 16705792;
                  }
                  if(parseInt(this.§^;§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§@]§.getAnimation("NUMBERS");
                  this.§2A§ = new §&;§(_loc2_,_loc3_,true);
                  this.§2A§.§"R§(parseInt(this.§^;§));
                  this.§4A§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§@]§.getAnimation("NUMBERS");
               this.§2A§ = new §&;§(_loc2_,_loc3_);
               this.§2A§.§"R§(parseInt(this.§^;§));
               this.§4A§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §21§:
               switch(this.§"!W§)
               {
                  case §%![§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §7[§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §^!S§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §5!"§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §!l§:
                     _loc6_ = 1 + _loc1_ % 3;
               }
               if(this.§4A§)
               {
                  this.§4A§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §!!d§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§"!W§)
               {
                  case §4g§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §^3§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §]!%§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §;!S§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case § I§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §5!E§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §9!d§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§4A§)
               {
                  this.§4A§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§^!T§,null,this.§!b§,this.§+d§);
         }
      }
      
      protected function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§,!"§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§]W§ = param4;
         var _loc7_:Number = 1;
         this.§2!6§ = this.§@]§.getAnimation(param1);
         if(this.§2!6§)
         {
            _loc6_ = (_loc5_ = this.§2!6§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            if(!(_loc5_ = this.§`k§.§4!0§(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
         }
         this.§7n§ = param3;
         var _loc8_:§<7§ = this.createParticleImage(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§&!U§ * _loc7_;
         this.§4A§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§&!U§;
            _loc8_.y = -_loc5_.pivotY * this.§&!U§;
         }
         else
         {
            _loc8_.x = -this.§4A§.width / 2;
            _loc8_.y = -this.§4A§.height / 2;
         }
      }
      
      protected function createParticleImage(param1:Texture) : §<7§
      {
         return new §<7§(param1,false);
      }
      
      public function §-!+§() : void
      {
         if(this.§4A§)
         {
            this.§4A§.x = this.§;b§ / §@!k§.§2!J§;
            this.§4A§.y = this.§[!5§ / §@!k§.§2!J§;
         }
      }
      
      public function §6!T§(param1:§6!Y§) : void
      {
         this.§;B§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§,!"§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§<7§ = null;
         this.§+!"§ += param1;
         var _loc2_:Boolean = false;
         if(this.§;B§)
         {
            if(this.§;B§.sprite == null || this.§;B§.§-e§ == null)
            {
               return false;
            }
            this.§;b§ = this.§;B§.§>j§().GetPosition().x;
            this.§[!5§ = this.§;B§.§>j§().GetPosition().y;
         }
         if(this.§7n§ > 0 && this.§2!6§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§+!"§ / 1000 / (1 / _loc3_)) < this.§2!6§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§2!6§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.createParticleImage(_loc6_);
               this.§4A§.§2!m§(0,-1,true);
               this.§4A§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§&!U§;
               _loc8_.y = -_loc5_.pivotY * this.§&!U§;
               _loc8_.scaleX = _loc8_.scaleY = this.§&!U§ * _loc7_;
            }
            else if(this.§]W§)
            {
               this.§4A§.§2!m§(0,-1,true);
            }
         }
         if(this.§^!B§ == §@<§)
         {
            this.§?M§(param1);
            _loc2_ = this.updateParticles(param1);
            if(this.§`Y§ > 0 && this.§[!5§ > this.§`Y§)
            {
               return false;
            }
         }
         else
         {
            this.§?M§(param1);
            _loc2_ = this.updateParticles(param1);
         }
         if(this.§ !l§ > 0 && this.§+!"§ >= this.§ !l§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§-!+§();
         }
         return true;
      }
      
      public function §?M§(param1:Number) : void
      {
         this.§@!I§ += param1 * this.§<!-§ / 1000;
         this.§[!5§ += this.§@!I§ * param1 / 1000;
         this.§;b§ += this.§3!#§ * param1 / 1000;
         if(this.§^!$§ != 0)
         {
            this.§4A§.rotation += this.§^!$§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function updateParticles(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§^!B§ == §86§)
         {
            if(this.§ !l§ > 0)
            {
               _loc2_ = 1;
               if(this.§^!T§ == §]S§)
               {
                  if((_loc4_ = this.§+!"§ / this.§ !l§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§^;§) / 5000);
               }
               this.§4A§.scaleX = _loc2_;
               this.§4A§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§^!B§ == §@<§)
         {
            if(this.§^!T§ == §,!Y§)
            {
               this.§4A§.alpha = Math.max(0,Math.min(1,2 * §=,§.§!!6§((this.§ !l§ - this.§+!"§) / this.§ !l§,false)));
               _loc5_ = Math.atan2(-this.§@!I§,this.§3!#§) * (180 / Math.PI);
               this.§4A§.scaleX = Math.max(0.2,this.§4A§.alpha);
               this.§4A§.scaleY = Math.max(0.2,this.§4A§.alpha);
               this.§4A§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§^!T§ == §!!d§ || this.§^!T§ == §=X§)
            {
               this.§4A§.scaleX = this.§4A§.scaleY = 0.2 + (this.§ !l§ - this.§+!"§) / this.§ !l§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§2A§)
         {
            this.§2A§.clear();
            this.§2A§ = null;
         }
         if(this.§4A§)
         {
            this.§4A§.dispose();
            this.§4A§ = null;
         }
         if(this.§;B§)
         {
            this.§;B§ = null;
         }
      }
   }
}
