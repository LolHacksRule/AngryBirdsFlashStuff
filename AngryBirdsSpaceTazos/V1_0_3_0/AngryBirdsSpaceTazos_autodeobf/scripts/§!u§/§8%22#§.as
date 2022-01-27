package §!u§
{
   import §3R§.§1!R§;
   import §3R§.§<!N§;
   import §4"@§.DisplayObject;
   import §4"@§.Sprite;
   import §5"D§.§6!!§;
   import §6!C§.§]!A§;
   import §7!C§.§8!w§;
   import §^e§.§0"1§;
   import §^e§.§?!D§;
   import §^e§.§^5§;
   
   public class §8"#§
   {
      
      public static const § 6§:int = 0;
      
      public static const §^;§:int = 1;
      
      public static const §?"B§:int = 2;
      
      public static const §0]§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §2!L§:String = "Effect_TrailBig_Bird";
      
      public static const §<!t§:String = "Effect_Trail_Sparkle";
      
      public static const §#w§:String = "Effect_Floating_Score";
      
      public static const §!R§:String = "Effect_Floating_Text";
      
      public static const §-U§:String = "Effect_Explosion_Particle";
      
      public static const §,!]§:String = "Effect_Explosion_Core";
      
      public static const § 9§:String = "Effect_Pig_Destruction";
      
      public static const §<4§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §1q§:String = "Effect_Bird_Destruction";
      
      public static const §&!u§:String = "Effect_Block_Destruction_Particles";
      
      public static const §-'§:String = "Effect_Block_Destruction_Core";
      
      public static const §3!-§:int = 0;
      
      public static const §%W§:int = 1;
      
      public static const § d§:int = 2;
      
      public static const § m§:int = 3;
      
      public static const §0"<§:int = 4;
      
      public static const §<f§:int = 5;
      
      public static const §4!5§:int = 6;
      
      public static const §4!H§:int = 7;
      
      public static const §`!E§:int = 8;
      
      public static const §!!2§:int = 9;
      
      public static const §-!d§:int = 10;
      
      public static const §function§:int = 11;
      
      public static const §@X§:int = 12;
      
      public static const §9!1§:int = 13;
      
      public static const §'"B§:int = 14;
      
      public static const §<'§:int = 15;
      
      public static const §,R§:int = 16;
      
      public static const §%"D§:int = 17;
      
      public static const §@!W§:int = 18;
      
      public static const §3f§:Boolean = true;
       
      
      public var §3"1§:int;
      
      public var §7^§:int;
      
      public var §`?§:String;
      
      public var §@!q§:Number;
      
      public var §@"2§:Number;
      
      public var §@"!§:Number;
      
      public var §2"2§:Number;
      
      public var §4X§:Number = 0;
      
      public var §1!k§:Number;
      
      public var §5"+§:Number;
      
      public var §22§:String;
      
      public var §&!i§:Number = -1;
      
      public var §9n§:int;
      
      public var §1!`§:Number;
      
      public var §<2§:Number;
      
      private var §#!R§:Sprite;
      
      private var §2u§:§<!N§;
      
      private var §=z§:int;
      
      private var §"k§:int;
      
      private var §8!#§:Boolean;
      
      private var §=O§:§^5§;
      
      private var §1!T§:Boolean;
      
      private var §!!d§:§?!D§;
      
      private var §#!v§:§0"1§;
      
      private var §5"&§:§6!!§;
      
      public function §8"#§(param1:§?!D§, param2:§0"1§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§#!R§ = new Sprite();
         super();
         this.§!!d§ = param1;
         this.§#!v§ = param2;
         this.§`?§ = param3;
         this.§3"1§ = param5;
         this.§7^§ = param4;
         this.§9n§ = param10;
         this.§"k§ = param16;
         this.§8!#§ = param17;
         this.§22§ = param9;
         this.§@!q§ = 0;
         this.§5"+§ = param8;
         this.§1!`§ = param6;
         this.§<2§ = param7;
         this.§1!k§ = param15;
         this.§@"!§ = param11;
         this.§@"2§ = param12;
         this.§4X§ = param14;
         this.§2"2§ = param13;
         this.§-!t§();
         this.updateRenderer();
         if(this.§3"1§ == §^;§)
         {
            this.§&!i§ = §8!w§.§5!V§.§`!s§.ground + this.§#!R§.height * §1!R§.§00§;
         }
      }
      
      public static function §3!j§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §3!-§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return § d§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §%W§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §<f§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §0"<§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return § m§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §@!W§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §4!5§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §!!2§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §4!H§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §`!E§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §-!d§;
         }
         return §function§;
      }
      
      public static function §[!%§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §@X§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §'"B§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §9!1§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §%"D§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §,R§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §<'§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §<'§;
         }
         return §,R§;
      }
      
      public function get §set §() : DisplayObject
      {
         return this.§#!R§;
      }
      
      public function §7"5§(param1:Number, param2:Number) : void
      {
      }
      
      protected function §-!t§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§^5§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§`?§)
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
            case §2!L§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §<!t§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case § 9§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §<4§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §-'§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §,!]§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §-U§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §#w§:
            case §!R§:
               if(parseInt(this.§22§) == 10000 || parseInt(this.§22§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§9n§)
                  {
                     case §@X§:
                        _loc8_ = 16058683;
                        break;
                     case §9!1§:
                        _loc8_ = 55294;
                        break;
                     case §<'§:
                        _loc8_ = 1878602;
                        break;
                     case §%"D§:
                        _loc8_ = 3552822;
                        break;
                     case §,R§:
                        break;
                     case §'"B§:
                        _loc8_ = 16705792;
                  }
                  if(parseInt(this.§22§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§!!d§.getAnimation("NUMBERS");
                  this.§2u§ = new §<!N§(_loc2_,_loc3_,true);
                  this.§2u§.§5U§(parseInt(this.§22§));
                  this.§#!R§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§!!d§.getAnimation("NUMBERS");
               this.§2u§ = new §<!N§(_loc2_,_loc3_);
               this.§2u§.§5U§(parseInt(this.§22§));
               this.§#!R§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §&!u§:
               switch(this.§9n§)
               {
                  case §!!2§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §-!d§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §4!H§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §`!E§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §function§:
                     _loc6_ = 1 + _loc1_ % 5;
               }
               if(this.§#!R§)
               {
                  this.§#!R§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §1q§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§9n§)
               {
                  case §3!-§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §<f§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §%W§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case § m§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §0"<§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case § d§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §@!W§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§#!R§)
               {
                  this.§#!R§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§`?§,null,this.§"k§,this.§8!#§);
         }
      }
      
      private function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:DisplayObject = null;
         if(param1 == "??")
         {
            return;
         }
         this.§=O§ = this.§!!d§.getAnimation(param1);
         this.§1!T§ = param4;
         if(this.§=O§)
         {
            _loc5_ = this.§=O§.getFrame(0);
            this.§=z§ = param3;
            _loc5_.scaleX *= this.§1!k§;
            _loc5_.scaleY *= this.§1!k§;
            this.§#!R§.addChild(_loc5_);
            _loc5_.x = -this.§#!R§.width / 2;
            _loc5_.y = -this.§#!R§.height / 2;
            return;
         }
      }
      
      public function updateRenderer() : void
      {
         if(this.§#!R§)
         {
            this.§#!R§.x = this.§1!`§ / §1!R§.§00§;
            this.§#!R§.y = this.§<2§ / §1!R§.§00§;
         }
      }
      
      public function §;!9§(param1:§6!!§) : void
      {
         this.§5"&§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:DisplayObject = null;
         this.§@!q§ += param1;
         var _loc2_:Boolean = false;
         if(this.§5"&§)
         {
            if(this.§5"&§.sprite == null || this.§5"&§.levelItem == null)
            {
               return false;
            }
            this.§1!`§ = this.§5"&§.§9B§().GetPosition().x;
            this.§<2§ = this.§5"&§.§9B§().GetPosition().y;
         }
         if(this.§=z§ > 0 && this.§=O§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§@!q§ / 1000 / (1 / _loc3_)) < this.§=O§.frameCount)
            {
               _loc5_ = this.§=O§.getFrame(_loc4_);
               this.§#!R§.§6S§(0,-1,true);
               this.§#!R§.addChild(_loc5_);
               _loc5_.scaleX *= this.§1!k§;
               _loc5_.scaleY *= this.§1!k§;
            }
            else if(this.§1!T§)
            {
               this.§#!R§.§6S§(0,-1,true);
            }
         }
         if(this.§3"1§ == §^;§)
         {
            this.§]!v§(param1);
            _loc2_ = this.§]!G§(param1);
            if(this.§&!i§ > 0 && this.§<2§ > this.§&!i§)
            {
               return false;
            }
         }
         else
         {
            this.§]!v§(param1);
            _loc2_ = this.§]!G§(param1);
         }
         if(this.§5"+§ > 0 && this.§@!q§ >= this.§5"+§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.updateRenderer();
         }
         return true;
      }
      
      public function §]!v§(param1:Number) : void
      {
         this.§@"2§ += param1 * this.§2"2§ / 1000;
         this.§<2§ += this.§@"2§ * param1 / 1000;
         this.§1!`§ += this.§@"!§ * param1 / 1000;
         if(this.§4X§ != 0)
         {
            this.§#!R§.rotation += this.§4X§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §]!G§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§3"1§ == § 6§)
         {
            if(this.§5"+§ > 0)
            {
               _loc2_ = 1;
               if(this.§`?§ == §!R§)
               {
                  if((_loc4_ = this.§@!q§ / this.§5"+§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§22§) / 5000);
               }
               this.§#!R§.scaleX = _loc2_;
               this.§#!R§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§3"1§ == §^;§)
         {
            if(this.§`?§ == §-U§)
            {
               this.§#!R§.alpha = Math.max(0,Math.min(1,2 * §]!A§.§5L§((this.§5"+§ - this.§@!q§) / this.§5"+§,false)));
               _loc5_ = Math.atan2(-this.§@"2§,this.§@"!§) * (180 / Math.PI);
               this.§#!R§.scaleX = Math.max(0.2,this.§#!R§.alpha);
               this.§#!R§.scaleY = Math.max(0.2,this.§#!R§.alpha);
               this.§#!R§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§`?§ == §1q§ || this.§`?§ == §-'§)
            {
               this.§#!R§.scaleX = this.§#!R§.scaleY = 0.2 + (this.§5"+§ - this.§@!q§) / this.§5"+§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§2u§)
         {
            this.§2u§.clear();
            this.§2u§ = null;
         }
         if(this.§#!R§)
         {
            this.§#!R§.dispose();
            this.§#!R§ = null;
         }
         if(this.§5"&§)
         {
            this.§5"&§ = null;
         }
      }
   }
}
