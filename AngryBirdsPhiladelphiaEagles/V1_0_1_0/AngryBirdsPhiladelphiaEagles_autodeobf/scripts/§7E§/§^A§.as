package §7E§
{
   import § !N§.§6!§;
   import § !N§.§=_§;
   import § !N§.§]!P§;
   import § !N§.§`v§;
   import §-!5§.§3!I§;
   import §0l§.Texture;
   import §3F§.§2!3§;
   import §3H§.DisplayObject;
   import §3H§.Sprite;
   import §3H§.§`!@§;
   import §>2§.§4h§;
   import §>2§.§6q§;
   import §@w§.§2G§;
   
   public class §^A§
   {
      
      public static const §3!B§:int = 0;
      
      public static const §<!$§:int = 1;
      
      public static const §9!O§:int = 2;
      
      public static const §@!J§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §@!N§:String = "Effect_TrailBig_Bird";
      
      public static const § var§:String = "Effect_Trail_Sparkle";
      
      public static const §&x§:String = "Effect_Floating_Score";
      
      public static const §&S§:String = "Effect_Floating_Text";
      
      public static const §9<§:String = "Effect_Explosion_Particle";
      
      public static const §7!1§:String = "Effect_Explosion_Core";
      
      public static const §7!C§:String = "Effect_Pig_Destruction";
      
      public static const §8[§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §1!B§:String = "Effect_Bird_Destruction";
      
      public static const §1E§:String = "Effect_Block_Destruction_Particles";
      
      public static const §,O§:String = "Effect_Block_Destruction_Core";
      
      public static const §;!5§:int = 0;
      
      public static const §6L§:int = 1;
      
      public static const §<&§:int = 2;
      
      public static const §#d§:int = 3;
      
      public static const §5S§:int = 4;
      
      public static const §&M§:int = 5;
      
      public static const §]!7§:int = 6;
      
      public static const § `§:int = 7;
      
      public static const §[!G§:int = 8;
      
      public static const §8i§:int = 9;
      
      public static const §2d§:int = 10;
      
      public static const §'!§:int = 11;
      
      public static const §5K§:int = 12;
      
      public static const §!!B§:int = 13;
      
      public static const §0$§:int = 14;
      
      public static const §&!5§:int = 15;
      
      public static const §-I§:int = 16;
      
      public static const §7r§:int = 17;
      
      public static const §!2§:int = 18;
      
      public static const §3E§:Boolean = true;
       
      
      public var §?]§:int;
      
      public var §1M§:int;
      
      public var §<!?§:String;
      
      public var §]!,§:Number;
      
      public var §`z§:Number;
      
      public var §%z§:Number;
      
      public var §+!$§:Number;
      
      public var §%3§:Number = 0;
      
      public var §&;§:Number;
      
      public var §'@§:Number;
      
      public var §,@§:String;
      
      public var §+!@§:Number = -1;
      
      public var §5_§:int;
      
      public var §,R§:Number;
      
      public var §=! §:Number;
      
      private var §6!N§:Sprite;
      
      private var §;!G§:§6q§;
      
      private var §!!Q§:int;
      
      protected var §-b§:int;
      
      protected var §+"§:Boolean;
      
      private var §3A§:§=_§;
      
      private var §!O§:Boolean;
      
      private var §8s§:§]!P§;
      
      private var §<!-§:§`v§;
      
      private var §]!F§:§2!3§;
      
      public function §^A§(param1:§]!P§, param2:§`v§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§6!N§ = new Sprite();
         super();
         this.§8s§ = param1;
         this.§<!-§ = param2;
         this.§<!?§ = param3;
         this.§?]§ = param5;
         this.§1M§ = param4;
         this.§5_§ = param10;
         this.§-b§ = param16;
         this.§+"§ = param17;
         this.§,@§ = param9;
         this.§]!,§ = 0;
         this.§'@§ = param8;
         this.§,R§ = param6;
         this.§=! § = param7;
         this.§&;§ = param15;
         this.§%z§ = param11;
         this.§`z§ = param12;
         this.§%3§ = param14;
         this.§+!$§ = param13;
         this.createVisuals();
         this.§]!0§();
         if(this.§?]§ == §<!$§)
         {
            this.§+!@§ = §2G§.§7!,§.§ !9§.§ h§ + this.§6!N§.height * §4h§.§-9§;
         }
      }
      
      public static function §,_§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §;!5§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §<&§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §6L§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §&M§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §5S§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §#d§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §!2§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §]!7§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §8i§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return § `§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §[!G§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §2d§;
         }
         return §'!§;
      }
      
      public static function §]!<§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §5K§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §0$§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §!!B§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §7r§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §-I§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §&!5§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §&!5§;
         }
         return §-I§;
      }
      
      public function get §'"§() : DisplayObject
      {
         return this.§6!N§;
      }
      
      public function §<!P§(param1:Number, param2:Number) : void
      {
      }
      
      protected function createVisuals() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§=_§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§<!?§)
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
            case §@!N§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case § var§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §7!C§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §8[§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §,O§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §7!1§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §9<§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §&x§:
            case §&S§:
               if(parseInt(this.§,@§) == 10000 || parseInt(this.§,@§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§5_§)
                  {
                     case §5K§:
                        _loc8_ = 16058683;
                        break;
                     case §!!B§:
                        _loc8_ = 55294;
                        break;
                     case §&!5§:
                        _loc8_ = 1878602;
                        break;
                     case §7r§:
                        _loc8_ = 3552822;
                        break;
                     case §-I§:
                        break;
                     case §0$§:
                        _loc8_ = 16705792;
                  }
                  if(parseInt(this.§,@§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§8s§.getAnimation("NUMBERS");
                  this.§;!G§ = new §6q§(_loc2_,_loc3_,true);
                  this.§;!G§.§0Y§(parseInt(this.§,@§));
                  this.§6!N§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§8s§.getAnimation("NUMBERS");
               this.§;!G§ = new §6q§(_loc2_,_loc3_);
               this.§;!G§.§0Y§(parseInt(this.§,@§));
               this.§6!N§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §1E§:
               switch(this.§5_§)
               {
                  case §8i§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §2d§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case § `§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §[!G§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §'!§:
                     _loc6_ = 1 + _loc1_ % 3;
               }
               if(this.§6!N§)
               {
                  this.§6!N§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §1!B§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§5_§)
               {
                  case §;!5§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §&M§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §6L§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §#d§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §5S§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §<&§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §!2§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§6!N§)
               {
                  this.§6!N§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§<!?§,null,this.§-b§,this.§+"§);
         }
      }
      
      protected function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§6!§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§!O§ = param4;
         var _loc7_:Number = 1;
         this.§3A§ = this.§8s§.getAnimation(param1);
         if(this.§3A§)
         {
            _loc6_ = (_loc5_ = this.§3A§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            if(!(_loc5_ = this.§<!-§.§?2§(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
         }
         this.§!!Q§ = param3;
         var _loc8_:§`!@§ = this.§'!5§(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§&;§ * _loc7_;
         this.§6!N§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§&;§;
            _loc8_.y = -_loc5_.pivotY * this.§&;§;
         }
         else
         {
            _loc8_.x = -this.§6!N§.width / 2;
            _loc8_.y = -this.§6!N§.height / 2;
         }
      }
      
      protected function §'!5§(param1:Texture) : §`!@§
      {
         return new §`!@§(param1,false);
      }
      
      public function §]!0§() : void
      {
         if(this.§6!N§)
         {
            this.§6!N§.x = this.§,R§ / §4h§.§-9§;
            this.§6!N§.y = this.§=! § / §4h§.§-9§;
         }
      }
      
      public function §2§(param1:§2!3§) : void
      {
         this.§]!F§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§6!§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§`!@§ = null;
         this.§]!,§ += param1;
         var _loc2_:Boolean = false;
         if(this.§]!F§)
         {
            if(this.§]!F§.sprite == null || this.§]!F§.§5k§ == null)
            {
               return false;
            }
            this.§,R§ = this.§]!F§.§?!M§().GetPosition().x;
            this.§=! § = this.§]!F§.§?!M§().GetPosition().y;
         }
         if(this.§!!Q§ > 0 && this.§3A§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§]!,§ / 1000 / (1 / _loc3_)) < this.§3A§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§3A§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.§'!5§(_loc6_);
               this.§6!N§.§+K§(0,-1,true);
               this.§6!N§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§&;§;
               _loc8_.y = -_loc5_.pivotY * this.§&;§;
               _loc8_.scaleX = _loc8_.scaleY = this.§&;§ * _loc7_;
            }
            else if(this.§!O§)
            {
               this.§6!N§.§+K§(0,-1,true);
            }
         }
         if(this.§?]§ == §<!$§)
         {
            this.§@f§(param1);
            _loc2_ = this.§0!B§(param1);
            if(this.§+!@§ > 0 && this.§=! § > this.§+!@§)
            {
               return false;
            }
         }
         else
         {
            this.§@f§(param1);
            _loc2_ = this.§0!B§(param1);
         }
         if(this.§'@§ > 0 && this.§]!,§ >= this.§'@§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§]!0§();
         }
         return true;
      }
      
      public function §@f§(param1:Number) : void
      {
         this.§`z§ += param1 * this.§+!$§ / 1000;
         this.§=! § += this.§`z§ * param1 / 1000;
         this.§,R§ += this.§%z§ * param1 / 1000;
         if(this.§%3§ != 0)
         {
            this.§6!N§.rotation += this.§%3§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §0!B§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§?]§ == §3!B§)
         {
            if(this.§'@§ > 0)
            {
               _loc2_ = 1;
               if(this.§<!?§ == §&S§)
               {
                  if((_loc4_ = this.§]!,§ / this.§'@§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§,@§) / 5000);
               }
               this.§6!N§.scaleX = _loc2_;
               this.§6!N§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§?]§ == §<!$§)
         {
            if(this.§<!?§ == §9<§)
            {
               this.§6!N§.alpha = Math.max(0,Math.min(1,2 * §3!I§.§>P§((this.§'@§ - this.§]!,§) / this.§'@§,false)));
               _loc5_ = Math.atan2(-this.§`z§,this.§%z§) * (180 / Math.PI);
               this.§6!N§.scaleX = Math.max(0.2,this.§6!N§.alpha);
               this.§6!N§.scaleY = Math.max(0.2,this.§6!N§.alpha);
               this.§6!N§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§<!?§ == §1!B§ || this.§<!?§ == §,O§)
            {
               this.§6!N§.scaleX = this.§6!N§.scaleY = 0.2 + (this.§'@§ - this.§]!,§) / this.§'@§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§;!G§)
         {
            this.§;!G§.clear();
            this.§;!G§ = null;
         }
         if(this.§6!N§)
         {
            this.§6!N§.dispose();
            this.§6!N§ = null;
         }
         if(this.§]!F§)
         {
            this.§]!F§ = null;
         }
      }
   }
}
