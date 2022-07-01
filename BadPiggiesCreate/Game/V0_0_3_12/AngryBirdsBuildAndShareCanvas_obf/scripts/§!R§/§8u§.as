package §!R§
{
   import §"p§.§""?§;
   import §4!#§.§60§;
   import §7"1§.§%W§;
   import §@!-§.§!!Y§;
   import §@!-§.§"K§;
   import §@!-§.§3"1§;
   import §@!-§.§5A§;
   import §@!i§.§%Q§;
   import §@!i§.DisplayObject;
   import §@!i§.Sprite;
   import §[B§.§"d§;
   import §[B§.§#y§;
   import §^Q§.Texture;
   
   public class §8u§
   {
      
      public static const §"!=§:int = 0;
      
      public static const §@9§:int = 1;
      
      public static const §,!+§:int = 2;
      
      public static const §6!8§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §6-§:String = "Effect_TrailBig_Bird";
      
      public static const §,"6§:String = "Effect_Trail_Sparkle";
      
      public static const §,!-§:String = "Effect_Floating_Score";
      
      public static const §"V§:String = "Effect_Floating_Text";
      
      public static const §#"§:String = "Effect_Explosion_Particle";
      
      public static const §,!p§:String = "Effect_Explosion_Core";
      
      public static const §1D§:String = "Effect_Pig_Destruction";
      
      public static const §5t§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §=!H§:String = "Effect_Bird_Destruction";
      
      public static const §6!4§:String = "Effect_Block_Destruction_Particles";
      
      public static const §'!4§:String = "Effect_Block_Destruction_Core";
      
      public static const §^t§:int = 0;
      
      public static const §?r§:int = 1;
      
      public static const §'#§:int = 2;
      
      public static const §="8§:int = 3;
      
      public static const §=!?§:int = 4;
      
      public static const §9&§:int = 5;
      
      public static const §9!p§:int = 6;
      
      public static const §#!9§:int = 7;
      
      public static const §0"'§:int = 8;
      
      public static const §9!%§:int = 9;
      
      public static const §-[§:int = 10;
      
      public static const §>m§:int = 11;
      
      public static const §8!]§:int = 12;
      
      public static const §""=§:int = 13;
      
      public static const §@E§:int = 14;
      
      public static const §%"7§:int = 15;
      
      public static const §`!?§:int = 16;
      
      public static const §2!g§:int = 17;
      
      public static const §8I§:int = 18;
      
      public static const §="+§:int = 19;
      
      public static const §4d§:Boolean = true;
       
      
      public var §1z§:int;
      
      public var §&e§:int;
      
      public var §`!O§:String;
      
      public var §%Y§:Number;
      
      public var §-f§:Number;
      
      public var §9!S§:Number;
      
      public var §7Y§:Number;
      
      public var §`f§:Number = 0;
      
      public var §2"§:Number;
      
      public var §?@§:Number;
      
      public var §-!#§:String;
      
      public var §7"+§:Number = -1;
      
      public var §!!W§:int;
      
      public var mX:Number;
      
      public var mY:Number;
      
      private var §%&§:Sprite;
      
      private var §<"=§:§#y§;
      
      private var §[!F§:int;
      
      protected var §!">§:int;
      
      protected var §"9§:Boolean;
      
      private var §+!Z§:§5A§;
      
      private var §2A§:Boolean;
      
      private var §+!7§:§!!Y§;
      
      private var §9!r§:§3"1§;
      
      private var §1!?§:§60§;
      
      public function §8u§(param1:§!!Y§, param2:§3"1§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§%&§ = new Sprite();
         super();
         this.§+!7§ = param1;
         this.§9!r§ = param2;
         this.§`!O§ = param3;
         this.§1z§ = param5;
         this.§&e§ = param4;
         this.§!!W§ = param10;
         this.§!">§ = param16;
         this.§"9§ = param17;
         this.§-!#§ = param9;
         this.§%Y§ = 0;
         this.§?@§ = param8;
         this.mX = param6;
         this.mY = param7;
         this.§2"§ = param15;
         this.§9!S§ = param11;
         this.§-f§ = param12;
         this.§`f§ = param14;
         this.§7Y§ = param13;
         this.createVisuals();
         this.§'"#§();
         if(this.§1z§ == §@9§)
         {
            this.§7"+§ = §%W§.§5"8§.borders.mBorderGround_B2 + this.§%&§.height * §"d§.§2!]§;
         }
      }
      
      public static function §^p§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §^t§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §'#§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §?r§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §9&§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §=!?§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §="8§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §8I§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §9!p§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §9!%§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §#!9§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §0"'§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §-[§;
         }
         return §>m§;
      }
      
      public static function §+1§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §8!]§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §@E§;
         }
         if(param1.toUpperCase().indexOf("BIRD_ORANGE") >= 0)
         {
            return §="+§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §""=§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §2!g§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §`!?§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §%"7§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §%"7§;
         }
         return §`!?§;
      }
      
      public function get §@>§() : DisplayObject
      {
         return this.§%&§;
      }
      
      public function §1a§(param1:Number, param2:Number) : void
      {
      }
      
      protected function createVisuals() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§5A§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§`!O§)
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
            case §6-§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §,"6§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §1D§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §5t§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §'!4§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §,!p§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §#"§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §,!-§:
            case §"V§:
               if(parseInt(this.§-!#§) == 10000 || parseInt(this.§-!#§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§!!W§)
                  {
                     case §8!]§:
                        _loc8_ = 16058683;
                        break;
                     case §""=§:
                        _loc8_ = 55294;
                        break;
                     case §%"7§:
                        _loc8_ = 1878602;
                        break;
                     case §2!g§:
                        _loc8_ = 3552822;
                        break;
                     case §`!?§:
                        break;
                     case §@E§:
                        _loc8_ = 16705792;
                        break;
                     case §="+§:
                        _loc8_ = 16753152;
                  }
                  if(parseInt(this.§-!#§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§+!7§.§^e§("NUMBERS");
                  this.§<"=§ = new §#y§(_loc2_,_loc3_,true);
                  this.§<"=§.§%!Z§(parseInt(this.§-!#§));
                  this.§%&§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§+!7§.§^e§("NUMBERS");
               this.§<"=§ = new §#y§(_loc2_,_loc3_);
               this.§<"=§.§%!Z§(parseInt(this.§-!#§));
               this.§%&§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §6!4§:
               switch(this.§!!W§)
               {
                  case §9!%§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §-[§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §#!9§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §0"'§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §>m§:
                     _loc6_ = 1 + _loc1_ % 3;
               }
               if(this.§%&§)
               {
                  this.§%&§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §=!H§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§!!W§)
               {
                  case §^t§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §9&§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §?r§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §="8§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §=!?§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §'#§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §8I§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§%&§)
               {
                  this.§%&§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§`!O§,null,this.§!">§,this.§"9§);
         }
      }
      
      protected function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§"K§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§2A§ = param4;
         var _loc7_:Number = 1;
         this.§+!Z§ = this.§+!7§.§^e§(param1);
         if(this.§+!Z§)
         {
            _loc6_ = (_loc5_ = this.§+!Z§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            if(!(_loc5_ = this.§9!r§.§`!+§(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
         }
         this.§[!F§ = param3;
         var _loc8_:§%Q§ = this.§#<§(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§2"§ * _loc7_;
         this.§%&§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§2"§;
            _loc8_.y = -_loc5_.pivotY * this.§2"§;
         }
         else
         {
            _loc8_.x = -this.§%&§.width / 2;
            _loc8_.y = -this.§%&§.height / 2;
         }
      }
      
      protected function §#<§(param1:Texture) : §%Q§
      {
         return new §%Q§(param1,false);
      }
      
      public function §'"#§() : void
      {
         if(this.§%&§)
         {
            this.§%&§.x = this.mX / §"d§.§2!]§;
            this.§%&§.y = this.mY / §"d§.§2!]§;
         }
      }
      
      public function §5!0§(param1:§60§) : void
      {
         this.§1!?§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§"K§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§%Q§ = null;
         this.§%Y§ += param1;
         var _loc2_:Boolean = false;
         if(this.§1!?§)
         {
            if(this.§1!?§.sprite == null || this.§1!?§.§=m§ == null)
            {
               return false;
            }
            this.mX = this.§1!?§.getBody().GetPosition().x;
            this.mY = this.§1!?§.getBody().GetPosition().y;
         }
         if(this.§[!F§ > 0 && this.§+!Z§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§%Y§ / 1000 / (1 / _loc3_)) < this.§+!Z§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§+!Z§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.§#<§(_loc6_);
               this.§%&§.removeChildren(0,-1,true);
               this.§%&§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§2"§;
               _loc8_.y = -_loc5_.pivotY * this.§2"§;
               _loc8_.scaleX = _loc8_.scaleY = this.§2"§ * _loc7_;
            }
            else if(this.§2A§)
            {
               this.§%&§.removeChildren(0,-1,true);
            }
         }
         if(this.§1z§ == §@9§)
         {
            this.§ !A§(param1);
            _loc2_ = this.§[!W§(param1);
            if(this.§7"+§ > 0 && this.mY > this.§7"+§)
            {
               return false;
            }
         }
         else
         {
            this.§ !A§(param1);
            _loc2_ = this.§[!W§(param1);
         }
         if(this.§?@§ > 0 && this.§%Y§ >= this.§?@§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§'"#§();
         }
         return true;
      }
      
      public function § !A§(param1:Number) : void
      {
         this.§-f§ += param1 * this.§7Y§ / 1000;
         this.mY += this.§-f§ * param1 / 1000;
         this.mX += this.§9!S§ * param1 / 1000;
         if(this.§`f§ != 0)
         {
            this.§%&§.rotation += this.§`f§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §[!W§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§1z§ == §"!=§)
         {
            if(this.§?@§ > 0)
            {
               _loc2_ = 1;
               if(this.§`!O§ == §"V§)
               {
                  if((_loc4_ = this.§%Y§ / this.§?@§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§-!#§) / 5000);
               }
               this.§%&§.scaleX = _loc2_;
               this.§%&§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§1z§ == §@9§)
         {
            if(this.§`!O§ == §#"§)
            {
               this.§%&§.alpha = Math.max(0,Math.min(1,2 * §""?§.§<H§((this.§?@§ - this.§%Y§) / this.§?@§,false)));
               _loc5_ = Math.atan2(-this.§-f§,this.§9!S§) * (180 / Math.PI);
               this.§%&§.scaleX = Math.max(0.2,this.§%&§.alpha);
               this.§%&§.scaleY = Math.max(0.2,this.§%&§.alpha);
               this.§%&§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§`!O§ == §=!H§ || this.§`!O§ == §'!4§)
            {
               this.§%&§.scaleX = this.§%&§.scaleY = 0.2 + (this.§?@§ - this.§%Y§) / this.§?@§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§<"=§)
         {
            this.§<"=§.clear();
            this.§<"=§ = null;
         }
         if(this.§%&§)
         {
            this.§%&§.dispose();
            this.§%&§ = null;
         }
         if(this.§1!?§)
         {
            this.§1!?§ = null;
         }
      }
   }
}
