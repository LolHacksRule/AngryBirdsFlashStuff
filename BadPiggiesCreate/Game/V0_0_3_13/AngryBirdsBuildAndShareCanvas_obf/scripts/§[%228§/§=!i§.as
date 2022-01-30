package §["8§
{
   import §&W§.§!!!§;
   import §8!E§.§;!a§;
   import §8!E§.§?!X§;
   import §=!<§.§5!U§;
   import §?"&§.§"!q§;
   import §@!#§.Texture;
   import §`"2§.§%3§;
   import §`"2§.§6!,§;
   import §`"2§.§>",§;
   import §`"2§.§><§;
   import §`L§.§-;§;
   import §`L§.DisplayObject;
   import §`L§.Sprite;
   
   public class §=!i§
   {
      
      public static const §%^§:int = 0;
      
      public static const §^!3§:int = 1;
      
      public static const §&x§:int = 2;
      
      public static const §>?§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §6&§:String = "Effect_TrailBig_Bird";
      
      public static const §]!E§:String = "Effect_Trail_Sparkle";
      
      public static const §5+§:String = "Effect_Floating_Score";
      
      public static const §6R§:String = "Effect_Floating_Text";
      
      public static const §,! §:String = "Effect_Explosion_Particle";
      
      public static const §<!r§:String = "Effect_Explosion_Core";
      
      public static const §-§:String = "Effect_Pig_Destruction";
      
      public static const § @§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §#!+§:String = "Effect_Bird_Destruction";
      
      public static const § if§:String = "Effect_Block_Destruction_Particles";
      
      public static const §+1§:String = "Effect_Block_Destruction_Core";
      
      public static const §&f§:int = 0;
      
      public static const § !x§:int = 1;
      
      public static const §&!Y§:int = 2;
      
      public static const §&G§:int = 3;
      
      public static const §+'§:int = 4;
      
      public static const §"!G§:int = 5;
      
      public static const §^!G§:int = 6;
      
      public static const §[!s§:int = 7;
      
      public static const §,"5§:int = 8;
      
      public static const §;0§:int = 9;
      
      public static const §%>§:int = 10;
      
      public static const §+"-§:int = 11;
      
      public static const §>W§:int = 12;
      
      public static const §`Q§:int = 13;
      
      public static const §2!N§:int = 14;
      
      public static const §]"9§:int = 15;
      
      public static const §1!;§:int = 16;
      
      public static const §^!P§:int = 17;
      
      public static const §3!C§:int = 18;
      
      public static const §1"2§:int = 19;
      
      public static const §7!s§:Boolean = true;
       
      
      public var §,"?§:int;
      
      public var §'t§:int;
      
      public var §+!L§:String;
      
      public var §`g§:Number;
      
      public var §,!z§:Number;
      
      public var §throw§:Number;
      
      public var §&"§:Number;
      
      public var §%B§:Number = 0;
      
      public var §#"0§:Number;
      
      public var §#"!§:Number;
      
      public var §0"9§:String;
      
      public var §<!N§:Number = -1;
      
      public var §4N§:int;
      
      public var mX:Number;
      
      public var mY:Number;
      
      private var §#"&§:Sprite;
      
      private var §3!3§:§;!a§;
      
      private var §`c§:int;
      
      protected var §8n§:int;
      
      protected var §[X§:Boolean;
      
      private var §&]§:§>",§;
      
      private var §8!i§:Boolean;
      
      private var §>!=§:§><§;
      
      private var §>!t§:§6!,§;
      
      private var §2!n§:§"!q§;
      
      public function §=!i§(param1:§><§, param2:§6!,§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§#"&§ = new Sprite();
         super();
         this.§>!=§ = param1;
         this.§>!t§ = param2;
         this.§+!L§ = param3;
         this.§,"?§ = param5;
         this.§'t§ = param4;
         this.§4N§ = param10;
         this.§8n§ = param16;
         this.§[X§ = param17;
         this.§0"9§ = param9;
         this.§`g§ = 0;
         this.§#"!§ = param8;
         this.mX = param6;
         this.mY = param7;
         this.§#"0§ = param15;
         this.§throw§ = param11;
         this.§,!z§ = param12;
         this.§%B§ = param14;
         this.§&"§ = param13;
         this.createVisuals();
         this.§[!C§();
         if(this.§,"?§ == §^!3§)
         {
            this.§<!N§ = §5!U§.§,!E§.borders.mBorderGround_B2 + this.§#"&§.height * §?!X§.§57§;
         }
      }
      
      public static function §6z§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §&f§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §&!Y§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return § !x§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §"!G§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §+'§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §&G§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §3!C§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §^!G§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §;0§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §[!s§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §,"5§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §%>§;
         }
         return §+"-§;
      }
      
      public static function § !2§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §>W§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §2!N§;
         }
         if(param1.toUpperCase().indexOf("BIRD_ORANGE") >= 0)
         {
            return §1"2§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §`Q§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §^!P§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §1!;§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §]"9§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §]"9§;
         }
         return §1!;§;
      }
      
      public function get §?y§() : DisplayObject
      {
         return this.§#"&§;
      }
      
      public function §&",§(param1:Number, param2:Number) : void
      {
      }
      
      protected function createVisuals() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§>",§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§+!L§)
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
            case §6&§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §]!E§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §-§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case § @§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §+1§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §<!r§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §,! §:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §5+§:
            case §6R§:
               if(parseInt(this.§0"9§) == 10000 || parseInt(this.§0"9§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§4N§)
                  {
                     case §>W§:
                        _loc8_ = 16058683;
                        break;
                     case §`Q§:
                        _loc8_ = 55294;
                        break;
                     case §]"9§:
                        _loc8_ = 1878602;
                        break;
                     case §^!P§:
                        _loc8_ = 3552822;
                        break;
                     case §1!;§:
                        break;
                     case §2!N§:
                        _loc8_ = 16705792;
                        break;
                     case §1"2§:
                        _loc8_ = 16753152;
                  }
                  if(parseInt(this.§0"9§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§>!=§.§ "1§("NUMBERS");
                  this.§3!3§ = new §;!a§(_loc2_,_loc3_,true);
                  this.§3!3§.§=!^§(parseInt(this.§0"9§));
                  this.§#"&§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§>!=§.§ "1§("NUMBERS");
               this.§3!3§ = new §;!a§(_loc2_,_loc3_);
               this.§3!3§.§=!^§(parseInt(this.§0"9§));
               this.§#"&§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case § if§:
               switch(this.§4N§)
               {
                  case §;0§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §%>§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §[!s§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §,"5§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §+"-§:
                     _loc6_ = 1 + _loc1_ % 3;
               }
               if(this.§#"&§)
               {
                  this.§#"&§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §#!+§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§4N§)
               {
                  case §&f§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §"!G§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case § !x§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §&G§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §+'§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §&!Y§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §3!C§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§#"&§)
               {
                  this.§#"&§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§+!L§,null,this.§8n§,this.§[X§);
         }
      }
      
      protected function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§%3§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§8!i§ = param4;
         var _loc7_:Number = 1;
         this.§&]§ = this.§>!=§.§ "1§(param1);
         if(this.§&]§)
         {
            _loc6_ = (_loc5_ = this.§&]§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            if(!(_loc5_ = this.§>!t§.§'"#§(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
         }
         this.§`c§ = param3;
         var _loc8_:§-;§ = this.§%!%§(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§#"0§ * _loc7_;
         this.§#"&§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§#"0§;
            _loc8_.y = -_loc5_.pivotY * this.§#"0§;
         }
         else
         {
            _loc8_.x = -this.§#"&§.width / 2;
            _loc8_.y = -this.§#"&§.height / 2;
         }
      }
      
      protected function §%!%§(param1:Texture) : §-;§
      {
         return new §-;§(param1,false);
      }
      
      public function §[!C§() : void
      {
         if(this.§#"&§)
         {
            this.§#"&§.x = this.mX / §?!X§.§57§;
            this.§#"&§.y = this.mY / §?!X§.§57§;
         }
      }
      
      public function §<"?§(param1:§"!q§) : void
      {
         this.§2!n§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§%3§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§-;§ = null;
         this.§`g§ += param1;
         var _loc2_:Boolean = false;
         if(this.§2!n§)
         {
            if(this.§2!n§.sprite == null || this.§2!n§.§5U§ == null)
            {
               return false;
            }
            this.mX = this.§2!n§.getBody().GetPosition().x;
            this.mY = this.§2!n§.getBody().GetPosition().y;
         }
         if(this.§`c§ > 0 && this.§&]§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§`g§ / 1000 / (1 / _loc3_)) < this.§&]§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§&]§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.§%!%§(_loc6_);
               this.§#"&§.removeChildren(0,-1,true);
               this.§#"&§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§#"0§;
               _loc8_.y = -_loc5_.pivotY * this.§#"0§;
               _loc8_.scaleX = _loc8_.scaleY = this.§#"0§ * _loc7_;
            }
            else if(this.§8!i§)
            {
               this.§#"&§.removeChildren(0,-1,true);
            }
         }
         if(this.§,"?§ == §^!3§)
         {
            this.§?"9§(param1);
            _loc2_ = this.§>!§(param1);
            if(this.§<!N§ > 0 && this.mY > this.§<!N§)
            {
               return false;
            }
         }
         else
         {
            this.§?"9§(param1);
            _loc2_ = this.§>!§(param1);
         }
         if(this.§#"!§ > 0 && this.§`g§ >= this.§#"!§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§[!C§();
         }
         return true;
      }
      
      public function §?"9§(param1:Number) : void
      {
         this.§,!z§ += param1 * this.§&"§ / 1000;
         this.mY += this.§,!z§ * param1 / 1000;
         this.mX += this.§throw§ * param1 / 1000;
         if(this.§%B§ != 0)
         {
            this.§#"&§.rotation += this.§%B§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §>!§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§,"?§ == §%^§)
         {
            if(this.§#"!§ > 0)
            {
               _loc2_ = 1;
               if(this.§+!L§ == §6R§)
               {
                  if((_loc4_ = this.§`g§ / this.§#"!§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§0"9§) / 5000);
               }
               this.§#"&§.scaleX = _loc2_;
               this.§#"&§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§,"?§ == §^!3§)
         {
            if(this.§+!L§ == §,! §)
            {
               this.§#"&§.alpha = Math.max(0,Math.min(1,2 * §!!!§.§,1§((this.§#"!§ - this.§`g§) / this.§#"!§,false)));
               _loc5_ = Math.atan2(-this.§,!z§,this.§throw§) * (180 / Math.PI);
               this.§#"&§.scaleX = Math.max(0.2,this.§#"&§.alpha);
               this.§#"&§.scaleY = Math.max(0.2,this.§#"&§.alpha);
               this.§#"&§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§+!L§ == §#!+§ || this.§+!L§ == §+1§)
            {
               this.§#"&§.scaleX = this.§#"&§.scaleY = 0.2 + (this.§#"!§ - this.§`g§) / this.§#"!§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§3!3§)
         {
            this.§3!3§.clear();
            this.§3!3§ = null;
         }
         if(this.§#"&§)
         {
            this.§#"&§.dispose();
            this.§#"&§ = null;
         }
         if(this.§2!n§)
         {
            this.§2!n§ = null;
         }
      }
   }
}
