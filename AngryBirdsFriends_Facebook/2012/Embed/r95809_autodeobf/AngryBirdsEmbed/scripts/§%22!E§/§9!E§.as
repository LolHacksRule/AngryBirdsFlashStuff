package §"!E§
{
   import §&!7§.Texture;
   import §+!%§.§%w§;
   import §+!%§.§'!"§;
   import §->§.§2! §;
   import §->§.DisplayObject;
   import §->§.Sprite;
   import §-l§.§?'§;
   import §2x§.§9!9§;
   import §<[§.§>!4§;
   import §[!$§.§"!%§;
   import §[!$§.§2!%§;
   import §[!$§.§89§;
   import §[!$§.§`d§;
   
   public class §9!E§
   {
      
      public static const §=n§:int = 0;
      
      public static const §9u§:int = 1;
      
      public static const §`V§:int = 2;
      
      public static const §3l§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §5k§:String = "Effect_TrailBig_Bird";
      
      public static const §@!+§:String = "Effect_Trail_Sparkle";
      
      public static const §9E§:String = "Effect_Floating_Score";
      
      public static const §%;§:String = "Effect_Floating_Text";
      
      public static const §>!2§:String = "Effect_Explosion_Particle";
      
      public static const §#!!§:String = "Effect_Explosion_Core";
      
      public static const §0u§:String = "Effect_Pig_Destruction";
      
      public static const §6S§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §!M§:String = "Effect_Bird_Destruction";
      
      public static const §`!3§:String = "Effect_Block_Destruction_Particles";
      
      public static const §0p§:String = "Effect_Block_Destruction_Core";
      
      public static const §28§:int = 0;
      
      public static const §@I§:int = 1;
      
      public static const § L§:int = 2;
      
      public static const §^y§:int = 3;
      
      public static const §;!,§:int = 4;
      
      public static const §;!7§:int = 5;
      
      public static const §>Y§:int = 6;
      
      public static const §2_§:int = 7;
      
      public static const §=?§:int = 8;
      
      public static const §9@§:int = 9;
      
      public static const §2!'§:int = 10;
      
      public static const §]k§:int = 11;
      
      public static const § >§:int = 12;
      
      public static const §3d§:int = 13;
      
      public static const §7!0§:int = 14;
      
      public static const §`!4§:int = 15;
      
      public static const §6!E§:int = 16;
      
      public static const §]3§:int = 17;
      
      public static const §8H§:int = 18;
      
      public static const §function§:Boolean = true;
       
      
      public var §;!&§:int;
      
      public var §-J§:int;
      
      public var §9!?§:String;
      
      public var §,?§:Number;
      
      public var §6B§:Number;
      
      public var §'B§:Number;
      
      public var §+B§:Number;
      
      public var §9a§:Number = 0;
      
      public var §?!C§:Number;
      
      public var §@+§:Number;
      
      public var §`!E§:String;
      
      public var §!s§:Number = -1;
      
      public var §=!E§:int;
      
      public var §#d§:Number;
      
      public var §7^§:Number;
      
      private var §??§:Sprite;
      
      private var §9B§:§%w§;
      
      private var §79§:int;
      
      private var §%!'§:int;
      
      private var §7m§:Boolean;
      
      private var § d§:§2!%§;
      
      private var §3w§:Boolean;
      
      private var §,l§:§`d§;
      
      private var §7K§:§"!%§;
      
      private var §]E§:§>!4§;
      
      public function §9!E§(param1:§`d§, param2:§"!%§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§??§ = new Sprite();
         super();
         this.§,l§ = param1;
         this.§7K§ = param2;
         this.§9!?§ = param3;
         this.§;!&§ = param5;
         this.§-J§ = param4;
         this.§=!E§ = param10;
         this.§%!'§ = param16;
         this.§7m§ = param17;
         this.§`!E§ = param9;
         this.§,?§ = 0;
         this.§@+§ = param8;
         this.§#d§ = param6;
         this.§7^§ = param7;
         this.§?!C§ = param15;
         this.§'B§ = param11;
         this.§6B§ = param12;
         this.§9a§ = param14;
         this.§+B§ = param13;
         this.§?!3§();
         this.§!m§();
         if(this.§;!&§ == §9u§)
         {
            this.§!s§ = §?'§.§5!§.§6s§.§'>§ + this.§??§.height * §'!"§.§%!8§;
         }
      }
      
      public static function §2b§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §28§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return § L§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §@I§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §;!7§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §;!,§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §^y§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §8H§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §>Y§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §9@§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §2_§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §=?§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §2!'§;
         }
         return §]k§;
      }
      
      public static function §>$§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return § >§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §7!0§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §3d§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §]3§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §6!E§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §`!4§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §`!4§;
         }
         return §6!E§;
      }
      
      public function get §[M§() : DisplayObject
      {
         return this.§??§;
      }
      
      public function §[L§(param1:Number, param2:Number) : void
      {
      }
      
      protected function §?!3§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§2!%§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§9!?§)
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
            case §5k§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §@!+§:
               this.createParticle("??");
               break;
            case §0u§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §6S§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §0p§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §#!!§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §>!2§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §9E§:
            case §%;§:
               if(parseInt(this.§`!E§) == 10000 || parseInt(this.§`!E§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§=!E§)
                  {
                     case § >§:
                        _loc8_ = 16058683;
                        break;
                     case §3d§:
                        _loc8_ = 55294;
                        break;
                     case §`!4§:
                        _loc8_ = 1878602;
                        break;
                     case §]3§:
                        _loc8_ = 3552822;
                        break;
                     case §6!E§:
                        break;
                     case §7!0§:
                        _loc8_ = 16705792;
                  }
                  if(parseInt(this.§`!E§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§,l§.§`!-§("NUMBERS");
                  this.§9B§ = new §%w§(_loc2_,_loc3_,true);
                  this.§9B§.§5X§(parseInt(this.§`!E§));
                  this.§??§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§,l§.§`!-§("NUMBERS");
               this.§9B§ = new §%w§(_loc2_,_loc3_);
               this.§9B§.§5X§(parseInt(this.§`!E§));
               this.§??§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §`!3§:
               switch(this.§=!E§)
               {
                  case §9@§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §2!'§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §2_§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §=?§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §]k§:
                     _loc6_ = 1 + _loc1_ % 5;
               }
               if(this.§??§)
               {
                  this.§??§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            case §!M§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§=!E§)
               {
                  case §28§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §;!7§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §@I§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §^y§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §;!,§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case § L§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §8H§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§??§)
               {
                  this.§??§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§9!?§,null,this.§%!'§,this.§7m§);
         }
      }
      
      private function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§89§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§ d§ = this.§,l§.§`!-§(param1);
         this.§3w§ = param4;
         var _loc7_:Number = 1;
         if(this.§ d§)
         {
            _loc6_ = (_loc5_ = this.§ d§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            _loc6_ = this.§7K§.§!L§();
         }
         this.§79§ = param3;
         var _loc8_:§2! § = this.§8!F§(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§?!C§ * _loc7_;
         this.§??§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§?!C§;
            _loc8_.y = -_loc5_.pivotY * this.§?!C§;
         }
         else
         {
            _loc8_.x = -this.§??§.width / 2;
            _loc8_.y = -this.§??§.height / 2;
         }
      }
      
      protected function §8!F§(param1:Texture) : §2! §
      {
         return new §2! §(param1,false);
      }
      
      public function §!m§() : void
      {
         if(this.§??§)
         {
            this.§??§.x = this.§#d§ / §'!"§.§%!8§;
            this.§??§.y = this.§7^§ / §'!"§.§%!8§;
         }
      }
      
      public function §^'§(param1:§>!4§) : void
      {
         this.§]E§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§89§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§2! § = null;
         this.§,?§ += param1;
         var _loc2_:Boolean = false;
         if(this.§]E§)
         {
            if(this.§]E§.sprite == null || this.§]E§.§super§ == null)
            {
               return false;
            }
            this.§#d§ = this.§]E§.§27§().GetPosition().x;
            this.§7^§ = this.§]E§.§27§().GetPosition().y;
         }
         if(this.§79§ > 0 && this.§ d§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§,?§ / 1000 / (1 / _loc3_)) < this.§ d§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§ d§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.§8!F§(_loc6_);
               this.§??§.§'! §(0,-1,true);
               this.§??§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§?!C§;
               _loc8_.y = -_loc5_.pivotY * this.§?!C§;
               _loc8_.scaleX = _loc8_.scaleY = this.§?!C§ * _loc7_;
            }
            else if(this.§3w§)
            {
               this.§??§.§'! §(0,-1,true);
            }
         }
         if(this.§;!&§ == §9u§)
         {
            this.§=§(param1);
            _loc2_ = this.§3L§(param1);
            if(this.§!s§ > 0 && this.§7^§ > this.§!s§)
            {
               return false;
            }
         }
         else
         {
            this.§=§(param1);
            _loc2_ = this.§3L§(param1);
         }
         if(this.§@+§ > 0 && this.§,?§ >= this.§@+§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§!m§();
         }
         return true;
      }
      
      public function §=§(param1:Number) : void
      {
         this.§6B§ += param1 * this.§+B§ / 1000;
         this.§7^§ += this.§6B§ * param1 / 1000;
         this.§#d§ += this.§'B§ * param1 / 1000;
         if(this.§9a§ != 0)
         {
            this.§??§.rotation += this.§9a§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §3L§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§;!&§ == §=n§)
         {
            if(this.§@+§ > 0)
            {
               _loc2_ = 1;
               if(this.§9!?§ == §%;§)
               {
                  if((_loc4_ = this.§,?§ / this.§@+§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§`!E§) / 5000);
               }
               this.§??§.scaleX = _loc2_;
               this.§??§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§;!&§ == §9u§)
         {
            if(this.§9!?§ == §>!2§)
            {
               this.§??§.alpha = Math.max(0,Math.min(1,2 * §9!9§.§7r§((this.§@+§ - this.§,?§) / this.§@+§,false)));
               _loc5_ = Math.atan2(-this.§6B§,this.§'B§) * (180 / Math.PI);
               this.§??§.scaleX = Math.max(0.2,this.§??§.alpha);
               this.§??§.scaleY = Math.max(0.2,this.§??§.alpha);
               this.§??§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§9!?§ == §!M§ || this.§9!?§ == §0p§)
            {
               this.§??§.scaleX = this.§??§.scaleY = 0.2 + (this.§@+§ - this.§,?§) / this.§@+§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§9B§)
         {
            this.§9B§.clear();
            this.§9B§ = null;
         }
         if(this.§??§)
         {
            this.§??§.dispose();
            this.§??§ = null;
         }
         if(this.§]E§)
         {
            this.§]E§ = null;
         }
      }
   }
}
