package §]V§
{
   import §%Q§.§`!<§;
   import §'!9§.§?!U§;
   import §'!9§.DisplayObject;
   import §'!9§.Sprite;
   import §,!5§.§%A§;
   import §,!5§.§^g§;
   import §-w§.§+W§;
   import §-w§.§,Q§;
   import §-w§.§1!;§;
   import §-w§.§^!&§;
   import §^!+§.Texture;
   import §^_§.§3!q§;
   import §true§.§ _§;
   
   public class §1!e§
   {
      
      public static const §>`§:int = 0;
      
      public static const §<V§:int = 1;
      
      public static const §'!K§:int = 2;
      
      public static const §]!e§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §-!y§:String = "Effect_TrailBig_Bird";
      
      public static const §`!W§:String = "Effect_Trail_Sparkle";
      
      public static const §'u§:String = "Effect_Floating_Score";
      
      public static const §%+§:String = "Effect_Floating_Text";
      
      public static const §2!^§:String = "Effect_Explosion_Particle";
      
      public static const §[!&§:String = "Effect_Explosion_Core";
      
      public static const §@v§:String = "Effect_Pig_Destruction";
      
      public static const §+g§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §?A§:String = "Effect_Bird_Destruction";
      
      public static const § !t§:String = "Effect_Block_Destruction_Particles";
      
      public static const §`!@§:String = "Effect_Block_Destruction_Core";
      
      public static const §+Q§:int = 0;
      
      public static const §5!1§:int = 1;
      
      public static const §0G§:int = 2;
      
      public static const §]F§:int = 3;
      
      public static const §[!@§:int = 4;
      
      public static const §5A§:int = 5;
      
      public static const § !h§:int = 6;
      
      public static const §7!]§:int = 7;
      
      public static const §+O§:int = 8;
      
      public static const §8c§:int = 9;
      
      public static const §1!d§:int = 10;
      
      public static const §3!4§:int = 11;
      
      public static const §1h§:int = 12;
      
      public static const §^!Y§:int = 13;
      
      public static const §3!K§:int = 14;
      
      public static const §8+§:int = 15;
      
      public static const §+!S§:int = 16;
      
      public static const §?C§:int = 17;
      
      public static const §?p§:int = 18;
      
      public static const § !b§:Boolean = true;
       
      
      public var §#!r§:int;
      
      public var §7b§:int;
      
      public var §#>§:String;
      
      public var §^x§:Number;
      
      public var §%_§:Number;
      
      public var § 9§:Number;
      
      public var §<_§:Number;
      
      public var §-!n§:Number = 0;
      
      public var §'8§:Number;
      
      public var §?!2§:Number;
      
      public var §%!X§:String;
      
      public var §+!g§:Number = -1;
      
      public var §1`§:int;
      
      public var §,G§:Number;
      
      public var §78§:Number;
      
      private var §`!,§:Sprite;
      
      private var §!R§:§%A§;
      
      private var §3+§:int;
      
      protected var §2!g§:int;
      
      protected var §=!,§:Boolean;
      
      private var §8x§:§1!;§;
      
      private var §<!Q§:Boolean;
      
      private var § 4§:§^!&§;
      
      private var §;!t§:§,Q§;
      
      private var §1!Q§:§`!<§;
      
      public function §1!e§(param1:§^!&§, param2:§,Q§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§`!,§ = new Sprite();
         super();
         this.§ 4§ = param1;
         this.§;!t§ = param2;
         this.§#>§ = param3;
         this.§#!r§ = param5;
         this.§7b§ = param4;
         this.§1`§ = param10;
         this.§2!g§ = param16;
         this.§=!,§ = param17;
         this.§%!X§ = param9;
         this.§^x§ = 0;
         this.§?!2§ = param8;
         this.§,G§ = param6;
         this.§78§ = param7;
         this.§'8§ = param15;
         this.§ 9§ = param11;
         this.§%_§ = param12;
         this.§-!n§ = param14;
         this.§<_§ = param13;
         this.createVisuals();
         this.§'!k§();
         if(this.§#!r§ == §<V§)
         {
            this.§+!g§ = § _§.§!6§.§ !p§.§>6§ + this.§`!,§.height * §^g§.§^!S§;
         }
      }
      
      public static function §"!J§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §+Q§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §0G§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §5!1§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §5A§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §[!@§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §]F§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §?p§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return § !h§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §8c§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §7!]§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §+O§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §1!d§;
         }
         return §3!4§;
      }
      
      public static function §?L§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §1h§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §3!K§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §^!Y§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §?C§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §+!S§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §8+§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §8+§;
         }
         return §+!S§;
      }
      
      public function get §0I§() : DisplayObject
      {
         return this.§`!,§;
      }
      
      public function §79§(param1:Number, param2:Number) : void
      {
      }
      
      protected function createVisuals() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§1!;§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§#>§)
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
            case §-!y§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §`!W§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §@v§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §+g§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §`!@§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §[!&§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §2!^§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §'u§:
            case §%+§:
               if(parseInt(this.§%!X§) == 10000 || parseInt(this.§%!X§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§1`§)
                  {
                     case §1h§:
                        _loc8_ = 16058683;
                        break;
                     case §^!Y§:
                        _loc8_ = 55294;
                        break;
                     case §8+§:
                        _loc8_ = 1878602;
                        break;
                     case §?C§:
                        _loc8_ = 3552822;
                        break;
                     case §+!S§:
                        break;
                     case §3!K§:
                        _loc8_ = 16705792;
                  }
                  if(parseInt(this.§%!X§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§ 4§.getAnimation("NUMBERS");
                  this.§!R§ = new §%A§(_loc2_,_loc3_,true);
                  this.§!R§.§7!_§(parseInt(this.§%!X§));
                  this.§`!,§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§ 4§.getAnimation("NUMBERS");
               this.§!R§ = new §%A§(_loc2_,_loc3_);
               this.§!R§.§7!_§(parseInt(this.§%!X§));
               this.§`!,§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case § !t§:
               switch(this.§1`§)
               {
                  case §8c§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §1!d§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §7!]§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §+O§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §3!4§:
                     _loc6_ = 1 + _loc1_ % 3;
               }
               if(this.§`!,§)
               {
                  this.§`!,§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §?A§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§1`§)
               {
                  case §+Q§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §5A§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §5!1§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §]F§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §[!@§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §0G§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §?p§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§`!,§)
               {
                  this.§`!,§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§#>§,null,this.§2!g§,this.§=!,§);
         }
      }
      
      protected function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§+W§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§<!Q§ = param4;
         var _loc7_:Number = 1;
         this.§8x§ = this.§ 4§.getAnimation(param1);
         if(this.§8x§)
         {
            _loc6_ = (_loc5_ = this.§8x§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            if(!(_loc5_ = this.§;!t§.§6u§(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
         }
         this.§3+§ = param3;
         var _loc8_:§?!U§ = this.§'!R§(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§'8§ * _loc7_;
         this.§`!,§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§'8§;
            _loc8_.y = -_loc5_.pivotY * this.§'8§;
         }
         else
         {
            _loc8_.x = -this.§`!,§.width / 2;
            _loc8_.y = -this.§`!,§.height / 2;
         }
      }
      
      protected function §'!R§(param1:Texture) : §?!U§
      {
         return new §?!U§(param1,false);
      }
      
      public function §'!k§() : void
      {
         if(this.§`!,§)
         {
            this.§`!,§.x = this.§,G§ / §^g§.§^!S§;
            this.§`!,§.y = this.§78§ / §^g§.§^!S§;
         }
      }
      
      public function §-h§(param1:§`!<§) : void
      {
         this.§1!Q§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§+W§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§?!U§ = null;
         this.§^x§ += param1;
         var _loc2_:Boolean = false;
         if(this.§1!Q§)
         {
            if(this.§1!Q§.sprite == null || this.§1!Q§.§9o§ == null)
            {
               return false;
            }
            this.§,G§ = this.§1!Q§.§5b§().GetPosition().x;
            this.§78§ = this.§1!Q§.§5b§().GetPosition().y;
         }
         if(this.§3+§ > 0 && this.§8x§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§^x§ / 1000 / (1 / _loc3_)) < this.§8x§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§8x§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.§'!R§(_loc6_);
               this.§`!,§.§5!c§(0,-1,true);
               this.§`!,§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§'8§;
               _loc8_.y = -_loc5_.pivotY * this.§'8§;
               _loc8_.scaleX = _loc8_.scaleY = this.§'8§ * _loc7_;
            }
            else if(this.§<!Q§)
            {
               this.§`!,§.§5!c§(0,-1,true);
            }
         }
         if(this.§#!r§ == §<V§)
         {
            this.§#c§(param1);
            _loc2_ = this.§?i§(param1);
            if(this.§+!g§ > 0 && this.§78§ > this.§+!g§)
            {
               return false;
            }
         }
         else
         {
            this.§#c§(param1);
            _loc2_ = this.§?i§(param1);
         }
         if(this.§?!2§ > 0 && this.§^x§ >= this.§?!2§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§'!k§();
         }
         return true;
      }
      
      public function §#c§(param1:Number) : void
      {
         this.§%_§ += param1 * this.§<_§ / 1000;
         this.§78§ += this.§%_§ * param1 / 1000;
         this.§,G§ += this.§ 9§ * param1 / 1000;
         if(this.§-!n§ != 0)
         {
            this.§`!,§.rotation += this.§-!n§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §?i§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§#!r§ == §>`§)
         {
            if(this.§?!2§ > 0)
            {
               _loc2_ = 1;
               if(this.§#>§ == §%+§)
               {
                  if((_loc4_ = this.§^x§ / this.§?!2§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§%!X§) / 5000);
               }
               this.§`!,§.scaleX = _loc2_;
               this.§`!,§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§#!r§ == §<V§)
         {
            if(this.§#>§ == §2!^§)
            {
               this.§`!,§.alpha = Math.max(0,Math.min(1,2 * §3!q§.§^s§((this.§?!2§ - this.§^x§) / this.§?!2§,false)));
               _loc5_ = Math.atan2(-this.§%_§,this.§ 9§) * (180 / Math.PI);
               this.§`!,§.scaleX = Math.max(0.2,this.§`!,§.alpha);
               this.§`!,§.scaleY = Math.max(0.2,this.§`!,§.alpha);
               this.§`!,§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§#>§ == §?A§ || this.§#>§ == §`!@§)
            {
               this.§`!,§.scaleX = this.§`!,§.scaleY = 0.2 + (this.§?!2§ - this.§^x§) / this.§?!2§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§!R§)
         {
            this.§!R§.clear();
            this.§!R§ = null;
         }
         if(this.§`!,§)
         {
            this.§`!,§.dispose();
            this.§`!,§ = null;
         }
         if(this.§1!Q§)
         {
            this.§1!Q§ = null;
         }
      }
   }
}
