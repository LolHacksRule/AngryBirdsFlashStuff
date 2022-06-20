package §3!Z§
{
   import §'_§.§9V§;
   import §+I§.§9!%§;
   import §0!?§.§-m§;
   import §3,§.§4!d§;
   import §3,§.§[!;§;
   import §<L§.Texture;
   import §?"<§.§"d§;
   import §?"<§.§&!B§;
   import §?"<§.§<"!§;
   import §?"<§.§?n§;
   import §]&§.§-§;
   import §]&§.DisplayObject;
   import §]&§.Sprite;
   
   public class §5!$§
   {
      
      public static const §6!=§:int = 0;
      
      public static const §2!&§:int = 1;
      
      public static const §3!G§:int = 2;
      
      public static const §`"1§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §]!'§:String = "Effect_TrailBig_Bird";
      
      public static const §%Q§:String = "Effect_Trail_Sparkle";
      
      public static const §91§:String = "Effect_Floating_Score";
      
      public static const §]M§:String = "Effect_Floating_Text";
      
      public static const §8@§:String = "Effect_Explosion_Particle";
      
      public static const §'"B§:String = "Effect_Explosion_Core";
      
      public static const §]^§:String = "Effect_Pig_Destruction";
      
      public static const §@!L§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §2M§:String = "Effect_Bird_Destruction";
      
      public static const §5%§:String = "Effect_Block_Destruction_Particles";
      
      public static const §>!z§:String = "Effect_Block_Destruction_Core";
      
      public static const §6!'§:int = 0;
      
      public static const §;!y§:int = 1;
      
      public static const §#!^§:int = 2;
      
      public static const §#f§:int = 3;
      
      public static const §4`§:int = 4;
      
      public static const §@R§:int = 5;
      
      public static const §7>§:int = 6;
      
      public static const §="$§:int = 7;
      
      public static const §86§:int = 8;
      
      public static const §&!R§:int = 9;
      
      public static const §%!^§:int = 10;
      
      public static const §8&§:int = 11;
      
      public static const § j§:int = 12;
      
      public static const §1l§:int = 13;
      
      public static const §#!]§:int = 14;
      
      public static const §;!%§:int = 15;
      
      public static const §?!'§:int = 16;
      
      public static const §#§:int = 17;
      
      public static const §4d§:int = 18;
      
      public static const §2H§:int = 19;
      
      public static const §6"+§:Boolean = true;
       
      
      public var §3G§:int;
      
      public var §9!i§:int;
      
      public var §?!>§:String;
      
      public var §"e§:Number;
      
      public var §%z§:Number;
      
      public var §!!P§:Number;
      
      public var §[!H§:Number;
      
      public var §8P§:Number = 0;
      
      public var §6!l§:Number;
      
      public var §`!7§:Number;
      
      public var §,!_§:String;
      
      public var §4"-§:Number = -1;
      
      public var §6+§:int;
      
      public var §>U§:Number;
      
      public var §>!c§:Number;
      
      private var §'!_§:Sprite;
      
      private var §#!r§:§4!d§;
      
      private var §6!u§:int;
      
      protected var §0!!§:int;
      
      protected var §<!q§:Boolean;
      
      private var §0!§:§"d§;
      
      private var §@"1§:Boolean;
      
      private var §;!z§:§&!B§;
      
      private var §9s§:§<"!§;
      
      private var §?!N§:§9V§;
      
      public function §5!$§(param1:§&!B§, param2:§<"!§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§'!_§ = new Sprite();
         super();
         this.§;!z§ = param1;
         this.§9s§ = param2;
         this.§?!>§ = param3;
         this.§3G§ = param5;
         this.§9!i§ = param4;
         this.§6+§ = param10;
         this.§0!!§ = param16;
         this.§<!q§ = param17;
         this.§,!_§ = param9;
         this.§"e§ = 0;
         this.§`!7§ = param8;
         this.§>U§ = param6;
         this.§>!c§ = param7;
         this.§6!l§ = param15;
         this.§!!P§ = param11;
         this.§%z§ = param12;
         this.§8P§ = param14;
         this.§[!H§ = param13;
         this.createVisuals();
         this.§^![§();
         if(this.§3G§ == §2!&§)
         {
            this.§4"-§ = §9!%§.§!!M§.§1!>§.§[_§ + this.§'!_§.height * §[!;§.§4!O§;
         }
      }
      
      public static function §9!Z§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §6!'§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §#!^§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §;!y§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §@R§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §4`§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §#f§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §4d§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §7>§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §&!R§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §="$§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §86§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §%!^§;
         }
         return §8&§;
      }
      
      public static function §=!H§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return § j§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §#!]§;
         }
         if(param1.toUpperCase().indexOf("BIRD_ORANGE") >= 0)
         {
            return §2H§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §1l§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §#§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §?!'§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §;!%§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §;!%§;
         }
         return §?!'§;
      }
      
      public function get §3=§() : DisplayObject
      {
         return this.§'!_§;
      }
      
      public function §&Z§(param1:Number, param2:Number) : void
      {
      }
      
      protected function createVisuals() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§"d§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§?!>§)
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
            case §]!'§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §%Q§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §]^§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §@!L§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §>!z§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §'"B§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §8@§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §91§:
            case §]M§:
               if(parseInt(this.§,!_§) == 10000 || parseInt(this.§,!_§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§6+§)
                  {
                     case § j§:
                        _loc8_ = 16058683;
                        break;
                     case §1l§:
                        _loc8_ = 55294;
                        break;
                     case §;!%§:
                        _loc8_ = 1878602;
                        break;
                     case §#§:
                        _loc8_ = 3552822;
                        break;
                     case §?!'§:
                        break;
                     case §#!]§:
                        _loc8_ = 16705792;
                        break;
                     case §2H§:
                        _loc8_ = 16753152;
                  }
                  if(parseInt(this.§,!_§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§;!z§.getAnimation("NUMBERS");
                  this.§#!r§ = new §4!d§(_loc2_,_loc3_,true);
                  this.§#!r§.§7M§(parseInt(this.§,!_§));
                  this.§'!_§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§;!z§.getAnimation("NUMBERS");
               this.§#!r§ = new §4!d§(_loc2_,_loc3_);
               this.§#!r§.§7M§(parseInt(this.§,!_§));
               this.§'!_§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §5%§:
               switch(this.§6+§)
               {
                  case §&!R§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §%!^§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §="$§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §86§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §8&§:
                     _loc6_ = 1 + _loc1_ % 3;
               }
               if(this.§'!_§)
               {
                  this.§'!_§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §2M§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§6+§)
               {
                  case §6!'§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §@R§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §;!y§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §#f§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §4`§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §#!^§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §4d§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§'!_§)
               {
                  this.§'!_§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§?!>§,null,this.§0!!§,this.§<!q§);
         }
      }
      
      protected function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§?n§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§@"1§ = param4;
         var _loc7_:Number = 1;
         this.§0!§ = this.§;!z§.getAnimation(param1);
         if(this.§0!§)
         {
            _loc6_ = (_loc5_ = this.§0!§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            if(!(_loc5_ = this.§9s§.§?!H§(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
         }
         this.§6!u§ = param3;
         var _loc8_:§-§ = this.§^9§(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§6!l§ * _loc7_;
         this.§'!_§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§6!l§;
            _loc8_.y = -_loc5_.pivotY * this.§6!l§;
         }
         else
         {
            _loc8_.x = -this.§'!_§.width / 2;
            _loc8_.y = -this.§'!_§.height / 2;
         }
      }
      
      protected function §^9§(param1:Texture) : §-§
      {
         return new §-§(param1,false);
      }
      
      public function §^![§() : void
      {
         if(this.§'!_§)
         {
            this.§'!_§.x = this.§>U§ / §[!;§.§4!O§;
            this.§'!_§.y = this.§>!c§ / §[!;§.§4!O§;
         }
      }
      
      public function §`m§(param1:§9V§) : void
      {
         this.§?!N§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§?n§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§-§ = null;
         this.§"e§ += param1;
         var _loc2_:Boolean = false;
         if(this.§?!N§)
         {
            if(this.§?!N§.sprite == null || this.§?!N§.§98§ == null)
            {
               return false;
            }
            this.§>U§ = this.§?!N§.§2"7§().GetPosition().x;
            this.§>!c§ = this.§?!N§.§2"7§().GetPosition().y;
         }
         if(this.§6!u§ > 0 && this.§0!§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§"e§ / 1000 / (1 / _loc3_)) < this.§0!§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§0!§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.§^9§(_loc6_);
               this.§'!_§.§?J§(0,-1,true);
               this.§'!_§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§6!l§;
               _loc8_.y = -_loc5_.pivotY * this.§6!l§;
               _loc8_.scaleX = _loc8_.scaleY = this.§6!l§ * _loc7_;
            }
            else if(this.§@"1§)
            {
               this.§'!_§.§?J§(0,-1,true);
            }
         }
         if(this.§3G§ == §2!&§)
         {
            this.§+!b§(param1);
            _loc2_ = this.§3!-§(param1);
            if(this.§4"-§ > 0 && this.§>!c§ > this.§4"-§)
            {
               return false;
            }
         }
         else
         {
            this.§+!b§(param1);
            _loc2_ = this.§3!-§(param1);
         }
         if(this.§`!7§ > 0 && this.§"e§ >= this.§`!7§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§^![§();
         }
         return true;
      }
      
      public function §+!b§(param1:Number) : void
      {
         this.§%z§ += param1 * this.§[!H§ / 1000;
         this.§>!c§ += this.§%z§ * param1 / 1000;
         this.§>U§ += this.§!!P§ * param1 / 1000;
         if(this.§8P§ != 0)
         {
            this.§'!_§.rotation += this.§8P§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §3!-§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§3G§ == §6!=§)
         {
            if(this.§`!7§ > 0)
            {
               _loc2_ = 1;
               if(this.§?!>§ == §]M§)
               {
                  if((_loc4_ = this.§"e§ / this.§`!7§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§,!_§) / 5000);
               }
               this.§'!_§.scaleX = _loc2_;
               this.§'!_§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§3G§ == §2!&§)
         {
            if(this.§?!>§ == §8@§)
            {
               this.§'!_§.alpha = Math.max(0,Math.min(1,2 * §-m§.§^y§((this.§`!7§ - this.§"e§) / this.§`!7§,false)));
               _loc5_ = Math.atan2(-this.§%z§,this.§!!P§) * (180 / Math.PI);
               this.§'!_§.scaleX = Math.max(0.2,this.§'!_§.alpha);
               this.§'!_§.scaleY = Math.max(0.2,this.§'!_§.alpha);
               this.§'!_§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§?!>§ == §2M§ || this.§?!>§ == §>!z§)
            {
               this.§'!_§.scaleX = this.§'!_§.scaleY = 0.2 + (this.§`!7§ - this.§"e§) / this.§`!7§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§#!r§)
         {
            this.§#!r§.clear();
            this.§#!r§ = null;
         }
         if(this.§'!_§)
         {
            this.§'!_§.dispose();
            this.§'!_§ = null;
         }
         if(this.§?!N§)
         {
            this.§?!N§ = null;
         }
      }
   }
}
