package §;Z§
{
   import § !=§.DisplayObject;
   import § !=§.Sprite;
   import § !Q§.§=!9§;
   import §2!k§.§;;§;
   import §;L§.§"!X§;
   import §;L§.§8!&§;
   import §;L§.§=l§;
   import §]A§.§4H§;
   import §]A§.§[d§;
   import com.angrybirds.§#Z§;
   
   public class §3?§
   {
      
      public static const §?!l§:int = 0;
      
      public static const §72§:int = 1;
      
      public static const §5!e§:int = 2;
      
      public static const §5!!§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §%j§:String = "Effect_TrailBig_Bird";
      
      public static const § set§:String = "Effect_Trail_Sparkle";
      
      public static const §2!_§:String = "Effect_Floating_Score";
      
      public static const §2!E§:String = "Effect_Floating_Text";
      
      public static const §[!N§:String = "Effect_Explosion_Particle";
      
      public static const §0"5§:String = "Effect_Explosion_Core";
      
      public static const § for§:String = "Effect_Pig_Destruction";
      
      public static const §3p§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §3f§:String = "Effect_Bird_Destruction";
      
      public static const §8"4§:String = "Effect_Block_Destruction_Particles";
      
      public static const §#!I§:String = "Effect_Block_Destruction_Core";
      
      public static const §"!H§:int = 0;
      
      public static const § !D§:int = 1;
      
      public static const §0+§:int = 2;
      
      public static const § !L§:int = 3;
      
      public static const §'U§:int = 4;
      
      public static const §#!X§:int = 5;
      
      public static const §&""§:int = 6;
      
      public static const §8!f§:int = 7;
      
      public static const §9[§:int = 8;
      
      public static const §4n§:int = 9;
      
      public static const §;!s§:int = 10;
      
      public static const §8!p§:int = 11;
      
      public static const §[!]§:int = 12;
      
      public static const §<j§:int = 13;
      
      public static const §!V§:int = 14;
      
      public static const §6P§:int = 15;
      
      public static const §7V§:int = 16;
      
      public static const §;T§:int = 17;
      
      public static const §;+§:int = 18;
       
      
      public var §`!E§:int;
      
      public var §@!>§:int;
      
      public var §`C§:String;
      
      public var §<3§:Number;
      
      public var §45§:Number;
      
      public var §6!Z§:Number;
      
      public var §2"&§:Number;
      
      public var §;f§:Number = 0;
      
      public var §6!p§:Number;
      
      public var §=S§:Number;
      
      public var §9!p§:String;
      
      public var §9!o§:Number = -1;
      
      public var §&"$§:int;
      
      public var §'!a§:Number;
      
      public var §[6§:Number;
      
      protected var §6F§:Sprite;
      
      private var §2"#§:§4H§;
      
      private var §6" §:int;
      
      private var §=3§:int;
      
      private var §%!§:Boolean;
      
      private var §,<§:§=l§;
      
      private var §[!I§:Boolean;
      
      private var §;#§:§8!&§;
      
      private var §'!2§:§"!X§;
      
      private var §";§:§;;§;
      
      public function §3?§(param1:§8!&§, param2:§"!X§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§6F§ = new Sprite();
         super();
         this.§;#§ = param1;
         this.§'!2§ = param2;
         this.§`C§ = param3;
         this.§`!E§ = param5;
         this.§@!>§ = param4;
         this.§&"$§ = param10;
         this.§=3§ = param16;
         this.§%!§ = param17;
         this.§9!p§ = param9;
         this.§<3§ = 0;
         this.§=S§ = param8;
         this.§'!a§ = param6;
         this.§[6§ = param7;
         this.§6!p§ = param15;
         this.§6!Z§ = param11;
         this.§45§ = param12;
         this.§;f§ = param14;
         this.§2"&§ = param13;
         this.§var §();
         this.updateRenderer();
         if(this.§`!E§ == §72§)
         {
            this.§9!o§ = §#Z§.§'0§.§+$§.ground + this.§6F§.height * §[d§.§]!U§;
         }
      }
      
      public static function §"N§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §"!H§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §0+§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return § !D§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §#!X§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §'U§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return § !L§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §;+§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WINGMAN") >= 0)
         {
            return §"!H§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §&""§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §4n§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §8!f§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §9[§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §;!s§;
         }
         return §8!p§;
      }
      
      public static function §+0§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §[!]§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §!V§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §<j§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §;T§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §7V§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §6P§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §6P§;
         }
         return §7V§;
      }
      
      public function get displayObject() : DisplayObject
      {
         return this.§6F§;
      }
      
      public function §#$§(param1:Number, param2:Number) : void
      {
      }
      
      protected function getParticleType() : String
      {
         return this.§`C§;
      }
      
      protected function §var §() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§=l§ = null;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         _loc1_ = Math.random() * 100;
         var _loc4_:String = this.getParticleType();
         switch(_loc4_)
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
            case §%j§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case § set§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case § for§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §3p§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §#!I§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §0"5§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §[!N§:
               _loc5_ = 1 + _loc1_ % 5;
               _loc6_ = "particle" + _loc5_;
               break;
            case §2!_§:
            case §2!E§:
               if(parseInt(this.§9!p§) == 10000 || parseInt(this.§9!p§) == 5000)
               {
                  _loc9_ = 16777215;
                  switch(this.§&"$§)
                  {
                     case §[!]§:
                        _loc9_ = 16058683;
                        break;
                     case §<j§:
                        _loc9_ = 55294;
                        break;
                     case §6P§:
                        _loc9_ = 1878602;
                        break;
                     case §;T§:
                        _loc9_ = 3552822;
                        break;
                     case §7V§:
                        break;
                     case §!V§:
                        _loc9_ = 16705792;
                  }
                  if(parseInt(this.§9!p§) == 5000)
                  {
                     _loc9_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§;#§.§[!R§("NUMBERS");
                  this.§2"#§ = new §4H§(_loc2_,_loc3_,true);
                  this.§2"#§.§0!D§(parseInt(this.§9!p§));
                  this.§6F§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc9_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§;#§.§[!R§("NUMBERS");
               this.§2"#§ = new §4H§(_loc2_,_loc3_);
               this.§2"#§.§0!D§(parseInt(this.§9!p§));
               this.§6F§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §8"4§:
               switch(this.§&"$§)
               {
                  case §4n§:
                     _loc7_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc7_);
                     break;
                  case §;!s§:
                     _loc7_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §8!f§:
                     _loc7_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc7_);
                     break;
                  case §9[§:
                     _loc7_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc7_);
                     break;
                  case §8!p§:
                     _loc7_ = 1 + _loc1_ % 5;
               }
               if(this.§6F§)
               {
                  this.§6F§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §3f§:
               _loc8_ = 1 + _loc1_ % 3;
               switch(this.§&"$§)
               {
                  case §"!H§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc8_);
                     break;
                  case §#!X§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc8_);
                     break;
                  case § !D§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc8_);
                     break;
                  case § !L§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc8_);
                     break;
                  case §'U§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc8_);
                     break;
                  case §0+§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc8_);
                     break;
                  case §;+§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc8_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc8_);
               }
               if(this.§6F§)
               {
                  this.§6F§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(_loc4_,null,this.§=3§,this.§%!§);
         }
      }
      
      private function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:DisplayObject = null;
         if(param1 == "??")
         {
            return;
         }
         this.§,<§ = this.§;#§.§[!R§(param1);
         this.§[!I§ = param4;
         if(this.§,<§)
         {
            _loc5_ = this.§,<§.getFrame(0);
            this.§6" § = param3;
            _loc5_.scaleX *= this.§6!p§;
            _loc5_.scaleY *= this.§6!p§;
            this.§6F§.addChild(_loc5_);
            _loc5_.x = -this.§6F§.width / 2;
            _loc5_.y = -this.§6F§.height / 2;
            return;
         }
      }
      
      public function updateRenderer() : void
      {
         if(this.§6F§)
         {
            this.§6F§.x = this.§'!a§ / §[d§.§]!U§;
            this.§6F§.y = this.§[6§ / §[d§.§]!U§;
         }
      }
      
      public function §^>§(param1:§;;§) : void
      {
         this.§";§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:DisplayObject = null;
         this.§<3§ += param1;
         var _loc2_:Boolean = false;
         if(this.§";§)
         {
            if(this.§";§.sprite == null || this.§";§.levelItem == null)
            {
               return false;
            }
            this.§'!a§ = this.§";§.§ 2§().GetPosition().x;
            this.§[6§ = this.§";§.§ 2§().GetPosition().y;
         }
         if(this.§6" § > 0 && this.§,<§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§<3§ / 1000 / (1 / _loc3_)) < this.§,<§.frameCount)
            {
               _loc5_ = this.§,<§.getFrame(_loc4_);
               this.§6F§.§,!<§(0,-1,true);
               this.§6F§.addChild(_loc5_);
               _loc5_.scaleX *= this.§6!p§;
               _loc5_.scaleY *= this.§6!p§;
            }
            else if(this.§[!I§)
            {
               this.§6F§.§,!<§(0,-1,true);
            }
         }
         if(this.§`!E§ == §72§)
         {
            this.§"!T§(param1);
            _loc2_ = this.§'!d§(param1);
            if(this.§9!o§ > 0 && this.§[6§ > this.§9!o§)
            {
               return false;
            }
         }
         else
         {
            this.§"!T§(param1);
            _loc2_ = this.§'!d§(param1);
         }
         if(this.§=S§ > 0 && this.§<3§ >= this.§=S§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.updateRenderer();
         }
         return true;
      }
      
      public function §"!T§(param1:Number) : void
      {
         this.§45§ += param1 * this.§2"&§ / 1000;
         this.§[6§ += this.§45§ * param1 / 1000;
         this.§'!a§ += this.§6!Z§ * param1 / 1000;
         if(this.§;f§ != 0)
         {
            this.§6F§.rotation += this.§;f§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §'!d§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§`!E§ == §?!l§)
         {
            if(this.§=S§ > 0)
            {
               _loc2_ = 1;
               if(this.§`C§ == §2!E§)
               {
                  if((_loc4_ = this.§<3§ / this.§=S§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§9!p§) / 5000);
               }
               this.§6F§.scaleX = _loc2_;
               this.§6F§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§`!E§ == §72§)
         {
            if(this.§`C§ == §[!N§)
            {
               this.§6F§.alpha = Math.max(0,Math.min(1,2 * §=!9§.§2!P§((this.§=S§ - this.§<3§) / this.§=S§,false)));
               _loc5_ = Math.atan2(-this.§45§,this.§6!Z§) * (180 / Math.PI);
               this.§6F§.scaleX = Math.max(0.2,this.§6F§.alpha);
               this.§6F§.scaleY = Math.max(0.2,this.§6F§.alpha);
               this.§6F§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§`C§ == §3f§ || this.§`C§ == §#!I§)
            {
               this.§6F§.scaleX = this.§6F§.scaleY = 0.2 + (this.§=S§ - this.§<3§) / this.§=S§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§2"#§)
         {
            this.§2"#§.clear();
            this.§2"#§ = null;
         }
         if(this.§6F§)
         {
            this.§6F§.dispose();
            this.§6F§ = null;
         }
         if(this.§";§)
         {
            this.§";§ = null;
         }
      }
   }
}
