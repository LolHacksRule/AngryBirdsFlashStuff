package §?c§
{
   import § !V§.§%!T§;
   import § !V§.§7!P§;
   import § !V§.§=!g§;
   import § !V§.§]"5§;
   import §%!&§.§;!x§;
   import §%h§.§5X§;
   import §%h§.§=!v§;
   import §3!U§.Texture;
   import §4u§.§2"1§;
   import §]!2§.§,!n§;
   import §]!2§.DisplayObject;
   import §]!2§.Sprite;
   import §`%§.§8!0§;
   
   public class §3!u§
   {
      
      public static const §3!i§:int = 0;
      
      public static const §[!%§:int = 1;
      
      public static const §3!>§:int = 2;
      
      public static const §0-§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §'B§:String = "Effect_TrailBig_Bird";
      
      public static const §@!G§:String = "Effect_Trail_Sparkle";
      
      public static const §6!x§:String = "Effect_Floating_Score";
      
      public static const §;@§:String = "Effect_Floating_Text";
      
      public static const §0![§:String = "Effect_Explosion_Particle";
      
      public static const §9w§:String = "Effect_Explosion_Core";
      
      public static const §1"&§:String = "Effect_Pig_Destruction";
      
      public static const §-!F§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §%!#§:String = "Effect_Bird_Destruction";
      
      public static const §-!§:String = "Effect_Block_Destruction_Particles";
      
      public static const §9N§:String = "Effect_Block_Destruction_Core";
      
      public static const §'o§:int = 0;
      
      public static const §,`§:int = 1;
      
      public static const §1!9§:int = 2;
      
      public static const §5!4§:int = 3;
      
      public static const §<@§:int = 4;
      
      public static const §>"&§:int = 5;
      
      public static const §"!w§:int = 6;
      
      public static const §1K§:int = 7;
      
      public static const § !i§:int = 8;
      
      public static const §9!+§:int = 9;
      
      public static const §3!M§:int = 10;
      
      public static const §>n§:int = 11;
      
      public static const §7!0§:int = 12;
      
      public static const §2!2§:int = 13;
      
      public static const §2!§:int = 14;
      
      public static const §8!_§:int = 15;
      
      public static const §`c§:int = 16;
      
      public static const §]"4§:int = 17;
      
      public static const §0!e§:int = 18;
      
      public static const §'j§:Boolean = true;
       
      
      public var §4!f§:int;
      
      public var §=g§:int;
      
      public var §-!I§:String;
      
      public var §"!G§:Number;
      
      public var §4!#§:Number;
      
      public var §<8§:Number;
      
      public var §!!N§:Number;
      
      public var §^@§:Number = 0;
      
      public var §?V§:Number;
      
      public var §=>§:Number;
      
      public var §[!N§:String;
      
      public var §]!0§:Number = -1;
      
      public var §1I§:int;
      
      public var mX:Number;
      
      public var mY:Number;
      
      private var §<!A§:Sprite;
      
      private var §try §:§=!v§;
      
      private var §`m§:int;
      
      protected var §`r§:int;
      
      protected var §>%§:Boolean;
      
      private var §="%§:§%!T§;
      
      private var § !N§:Boolean;
      
      private var §3!3§:§]"5§;
      
      private var § d§:§7!P§;
      
      private var §8!9§:§;!x§;
      
      public function §3!u§(param1:§]"5§, param2:§7!P§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§<!A§ = new Sprite();
         super();
         this.§3!3§ = param1;
         this.§ d§ = param2;
         this.§-!I§ = param3;
         this.§4!f§ = param5;
         this.§=g§ = param4;
         this.§1I§ = param10;
         this.§`r§ = param16;
         this.§>%§ = param17;
         this.§[!N§ = param9;
         this.§"!G§ = 0;
         this.§=>§ = param8;
         this.mX = param6;
         this.mY = param7;
         this.§?V§ = param15;
         this.§<8§ = param11;
         this.§4!#§ = param12;
         this.§^@§ = param14;
         this.§!!N§ = param13;
         this.createVisuals();
         this.§,!S§();
         if(this.§4!f§ == §[!%§)
         {
            this.§]!0§ = §8!0§.§?2§.borders.mBorderGround_B2 + this.§<!A§.height * §5X§.§,!m§;
         }
      }
      
      public static function §!"5§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §'o§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §1!9§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §,`§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §>"&§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §<@§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §5!4§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §0!e§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §"!w§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §9!+§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §1K§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return § !i§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §3!M§;
         }
         return §>n§;
      }
      
      public static function §>!?§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §7!0§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §2!§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §2!2§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §]"4§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §`c§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §8!_§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §8!_§;
         }
         return §`c§;
      }
      
      public function get §+,§() : DisplayObject
      {
         return this.§<!A§;
      }
      
      public function §function§(param1:Number, param2:Number) : void
      {
      }
      
      protected function createVisuals() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§%!T§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§-!I§)
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
            case §'B§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §@!G§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §1"&§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §-!F§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §9N§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §9w§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §0![§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §6!x§:
            case §;@§:
               if(parseInt(this.§[!N§) == 10000 || parseInt(this.§[!N§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§1I§)
                  {
                     case §7!0§:
                        _loc8_ = 16058683;
                        break;
                     case §2!2§:
                        _loc8_ = 55294;
                        break;
                     case §8!_§:
                        _loc8_ = 1878602;
                        break;
                     case §]"4§:
                        _loc8_ = 3552822;
                        break;
                     case §`c§:
                        break;
                     case §2!§:
                        _loc8_ = 16705792;
                  }
                  if(parseInt(this.§[!N§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§3!3§.§%!^§("NUMBERS");
                  this.§try § = new §=!v§(_loc2_,_loc3_,true);
                  this.§try §.§`!N§(parseInt(this.§[!N§));
                  this.§<!A§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§3!3§.§%!^§("NUMBERS");
               this.§try § = new §=!v§(_loc2_,_loc3_);
               this.§try §.§`!N§(parseInt(this.§[!N§));
               this.§<!A§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §-!§:
               switch(this.§1I§)
               {
                  case §9!+§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §3!M§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §1K§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case § !i§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §>n§:
                     _loc6_ = 1 + _loc1_ % 3;
               }
               if(this.§<!A§)
               {
                  this.§<!A§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §%!#§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§1I§)
               {
                  case §'o§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §>"&§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §,`§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §5!4§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §<@§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §1!9§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §0!e§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§<!A§)
               {
                  this.§<!A§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§-!I§,null,this.§`r§,this.§>%§);
         }
      }
      
      protected function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§=!g§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§ !N§ = param4;
         var _loc7_:Number = 1;
         this.§="%§ = this.§3!3§.§%!^§(param1);
         if(this.§="%§)
         {
            _loc6_ = (_loc5_ = this.§="%§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            if(!(_loc5_ = this.§ d§.§&I§(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
         }
         this.§`m§ = param3;
         var _loc8_:§,!n§ = this.§#=§(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§?V§ * _loc7_;
         this.§<!A§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§?V§;
            _loc8_.y = -_loc5_.pivotY * this.§?V§;
         }
         else
         {
            _loc8_.x = -this.§<!A§.width / 2;
            _loc8_.y = -this.§<!A§.height / 2;
         }
      }
      
      protected function §#=§(param1:Texture) : §,!n§
      {
         return new §,!n§(param1,false);
      }
      
      public function §,!S§() : void
      {
         if(this.§<!A§)
         {
            this.§<!A§.x = this.mX / §5X§.§,!m§;
            this.§<!A§.y = this.mY / §5X§.§,!m§;
         }
      }
      
      public function §=I§(param1:§;!x§) : void
      {
         this.§8!9§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§=!g§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§,!n§ = null;
         this.§"!G§ += param1;
         var _loc2_:Boolean = false;
         if(this.§8!9§)
         {
            if(this.§8!9§.sprite == null || this.§8!9§.§8N§ == null)
            {
               return false;
            }
            this.mX = this.§8!9§.getBody().GetPosition().x;
            this.mY = this.§8!9§.getBody().GetPosition().y;
         }
         if(this.§`m§ > 0 && this.§="%§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§"!G§ / 1000 / (1 / _loc3_)) < this.§="%§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§="%§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.§#=§(_loc6_);
               this.§<!A§.removeChildren(0,-1,true);
               this.§<!A§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§?V§;
               _loc8_.y = -_loc5_.pivotY * this.§?V§;
               _loc8_.scaleX = _loc8_.scaleY = this.§?V§ * _loc7_;
            }
            else if(this.§ !N§)
            {
               this.§<!A§.removeChildren(0,-1,true);
            }
         }
         if(this.§4!f§ == §[!%§)
         {
            this.§=!+§(param1);
            _loc2_ = this.each(param1);
            if(this.§]!0§ > 0 && this.mY > this.§]!0§)
            {
               return false;
            }
         }
         else
         {
            this.§=!+§(param1);
            _loc2_ = this.each(param1);
         }
         if(this.§=>§ > 0 && this.§"!G§ >= this.§=>§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§,!S§();
         }
         return true;
      }
      
      public function §=!+§(param1:Number) : void
      {
         this.§4!#§ += param1 * this.§!!N§ / 1000;
         this.mY += this.§4!#§ * param1 / 1000;
         this.mX += this.§<8§ * param1 / 1000;
         if(this.§^@§ != 0)
         {
            this.§<!A§.rotation += this.§^@§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function each(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§4!f§ == §3!i§)
         {
            if(this.§=>§ > 0)
            {
               _loc2_ = 1;
               if(this.§-!I§ == §;@§)
               {
                  if((_loc4_ = this.§"!G§ / this.§=>§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§[!N§) / 5000);
               }
               this.§<!A§.scaleX = _loc2_;
               this.§<!A§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§4!f§ == §[!%§)
         {
            if(this.§-!I§ == §0![§)
            {
               this.§<!A§.alpha = Math.max(0,Math.min(1,2 * §2"1§.§6!D§((this.§=>§ - this.§"!G§) / this.§=>§,false)));
               _loc5_ = Math.atan2(-this.§4!#§,this.§<8§) * (180 / Math.PI);
               this.§<!A§.scaleX = Math.max(0.2,this.§<!A§.alpha);
               this.§<!A§.scaleY = Math.max(0.2,this.§<!A§.alpha);
               this.§<!A§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§-!I§ == §%!#§ || this.§-!I§ == §9N§)
            {
               this.§<!A§.scaleX = this.§<!A§.scaleY = 0.2 + (this.§=>§ - this.§"!G§) / this.§=>§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§try §)
         {
            this.§try §.clear();
            this.§try § = null;
         }
         if(this.§<!A§)
         {
            this.§<!A§.dispose();
            this.§<!A§ = null;
         }
         if(this.§8!9§)
         {
            this.§8!9§ = null;
         }
      }
   }
}
