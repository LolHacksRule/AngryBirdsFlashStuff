package §;G§
{
   import § !K§.§5+§;
   import § !K§.DisplayObject;
   import § !K§.Sprite;
   import §"![§.Texture;
   import §'!G§.§ !7§;
   import §-v§.§,!1§;
   import §4A§.§&_§;
   import §4A§.§'N§;
   import §9!Y§.§!![§;
   import §9!Y§.§!q§;
   import §9!Y§.§"#§;
   import §9!Y§.§<!%§;
   import §;+§.§[!3§;
   
   public class §;Z§
   {
      
      public static const §+V§:int = 0;
      
      public static const §>!H§:int = 1;
      
      public static const §=!c§:int = 2;
      
      public static const §<!6§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §[7§:String = "Effect_TrailBig_Bird";
      
      public static const §^V§:String = "Effect_Trail_Sparkle";
      
      public static const §@E§:String = "Effect_Floating_Score";
      
      public static const §&p§:String = "Effect_Floating_Text";
      
      public static const §function§:String = "Effect_Explosion_Particle";
      
      public static const §%#§:String = "Effect_Explosion_Core";
      
      public static const §0C§:String = "Effect_Pig_Destruction";
      
      public static const §=!L§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §8+§:String = "Effect_Bird_Destruction";
      
      public static const §#]§:String = "Effect_Block_Destruction_Particles";
      
      public static const §%!B§:String = "Effect_Block_Destruction_Core";
      
      public static const §`E§:int = 0;
      
      public static const §%e§:int = 1;
      
      public static const §]!U§:int = 2;
      
      public static const §#!U§:int = 3;
      
      public static const §5!>§:int = 4;
      
      public static const §]=§:int = 5;
      
      public static const §^]§:int = 6;
      
      public static const §4!N§:int = 7;
      
      public static const §"!b§:int = 8;
      
      public static const §<!^§:int = 9;
      
      public static const §+P§:int = 10;
      
      public static const §%!$§:int = 11;
      
      public static const §%?§:int = 12;
      
      public static const §%C§:int = 13;
      
      public static const §<u§:int = 14;
      
      public static const §&A§:int = 15;
      
      public static const §<%§:int = 16;
      
      public static const §@A§:int = 17;
      
      public static const §-!b§:int = 18;
      
      public static const §"g§:Boolean = true;
       
      
      public var §7J§:int;
      
      public var §8!8§:int;
      
      public var §3b§:String;
      
      public var §6g§:Number;
      
      public var §3k§:Number;
      
      public var §%O§:Number;
      
      public var §!w§:Number;
      
      public var §1Q§:Number = 0;
      
      public var § 6§:Number;
      
      public var §?§:Number;
      
      public var §6?§:String;
      
      public var §@3§:Number = -1;
      
      public var §3!U§:int;
      
      public var §03§:Number;
      
      public var §5,§:Number;
      
      private var §'!U§:Sprite;
      
      private var §29§:§'N§;
      
      private var §0?§:int;
      
      private var §+T§:int;
      
      private var §7s§:Boolean;
      
      private var §2!F§:§<!%§;
      
      private var §`e§:Boolean;
      
      private var §]S§:§!![§;
      
      private var §!!@§:§!q§;
      
      private var §;q§:§[!3§;
      
      public function §;Z§(param1:§!![§, param2:§!q§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§'!U§ = new Sprite();
         super();
         this.§]S§ = param1;
         this.§!!@§ = param2;
         this.§3b§ = param3;
         this.§7J§ = param5;
         this.§8!8§ = param4;
         this.§3!U§ = param10;
         this.§+T§ = param16;
         this.§7s§ = param17;
         this.§6?§ = param9;
         this.§6g§ = 0;
         this.§?§ = param8;
         this.§03§ = param6;
         this.§5,§ = param7;
         this.§ 6§ = param15;
         this.§%O§ = param11;
         this.§3k§ = param12;
         this.§1Q§ = param14;
         this.§!w§ = param13;
         this.§<v§();
         this.§]Z§();
         if(this.§7J§ == §>!H§)
         {
            this.§@3§ = §,!1§.§2T§.§@I§.§>R§ + this.§'!U§.height * §&_§.§5-§;
         }
      }
      
      public static function §"!a§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §`E§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §]!U§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §%e§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §]=§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §5!>§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §#!U§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §-!b§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §^]§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §<!^§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §4!N§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §"!b§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §+P§;
         }
         return §%!$§;
      }
      
      public static function §6%§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §%?§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §<u§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §%C§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §@A§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §<%§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §&A§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §&A§;
         }
         return §<%§;
      }
      
      public function get §4!P§() : DisplayObject
      {
         return this.§'!U§;
      }
      
      public function §-U§(param1:Number, param2:Number) : void
      {
      }
      
      protected function §<v§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§<!%§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§3b§)
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
            case §[7§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §^V§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §0C§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §=!L§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §%!B§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §%#§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §function§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §@E§:
            case §&p§:
               if(parseInt(this.§6?§) == 10000 || parseInt(this.§6?§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§3!U§)
                  {
                     case §%?§:
                        _loc8_ = 16058683;
                        break;
                     case §%C§:
                        _loc8_ = 55294;
                        break;
                     case §&A§:
                        _loc8_ = 1878602;
                        break;
                     case §@A§:
                        _loc8_ = 3552822;
                        break;
                     case §<%§:
                        break;
                     case §<u§:
                        _loc8_ = 16705792;
                  }
                  if(parseInt(this.§6?§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§]S§.§ !Z§("NUMBERS");
                  this.§29§ = new §'N§(_loc2_,_loc3_,true);
                  this.§29§.§8!%§(parseInt(this.§6?§));
                  this.§'!U§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§]S§.§ !Z§("NUMBERS");
               this.§29§ = new §'N§(_loc2_,_loc3_);
               this.§29§.§8!%§(parseInt(this.§6?§));
               this.§'!U§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §#]§:
               switch(this.§3!U§)
               {
                  case §<!^§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §+P§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §4!N§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §"!b§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §%!$§:
                     _loc6_ = 1 + _loc1_ % 5;
               }
               if(this.§'!U§)
               {
                  this.§'!U§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §8+§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§3!U§)
               {
                  case §`E§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §]=§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §%e§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §#!U§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §5!>§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §]!U§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §-!b§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§'!U§)
               {
                  this.§'!U§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§3b§,null,this.§+T§,this.§7s§);
         }
      }
      
      private function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§"#§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§2!F§ = this.§]S§.§ !Z§(param1);
         this.§`e§ = param4;
         var _loc7_:Number = 1;
         if(this.§2!F§)
         {
            _loc6_ = (_loc5_ = this.§2!F§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            _loc6_ = this.§!!@§.§`j§();
         }
         this.§0?§ = param3;
         var _loc8_:§5+§ = this.createParticleImage(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§ 6§ * _loc7_;
         this.§'!U§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§ 6§;
            _loc8_.y = -_loc5_.pivotY * this.§ 6§;
         }
         else
         {
            _loc8_.x = -this.§'!U§.width / 2;
            _loc8_.y = -this.§'!U§.height / 2;
         }
      }
      
      protected function createParticleImage(param1:Texture) : §5+§
      {
         return new §5+§(param1,false);
      }
      
      public function §]Z§() : void
      {
         if(this.§'!U§)
         {
            this.§'!U§.x = this.§03§ / §&_§.§5-§;
            this.§'!U§.y = this.§5,§ / §&_§.§5-§;
         }
      }
      
      public function §;!Q§(param1:§[!3§) : void
      {
         this.§;q§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§"#§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§5+§ = null;
         this.§6g§ += param1;
         var _loc2_:Boolean = false;
         if(this.§;q§)
         {
            if(this.§;q§.sprite == null || this.§;q§.§-!$§ == null)
            {
               return false;
            }
            this.§03§ = this.§;q§.§1!d§().GetPosition().x;
            this.§5,§ = this.§;q§.§1!d§().GetPosition().y;
         }
         if(this.§0?§ > 0 && this.§2!F§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§6g§ / 1000 / (1 / _loc3_)) < this.§2!F§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§2!F§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.createParticleImage(_loc6_);
               this.§'!U§.§5W§(0,-1,true);
               this.§'!U§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§ 6§;
               _loc8_.y = -_loc5_.pivotY * this.§ 6§;
               _loc8_.scaleX = _loc8_.scaleY = this.§ 6§ * _loc7_;
            }
            else if(this.§`e§)
            {
               this.§'!U§.§5W§(0,-1,true);
            }
         }
         if(this.§7J§ == §>!H§)
         {
            this.§[e§(param1);
            _loc2_ = this.updateParticles(param1);
            if(this.§@3§ > 0 && this.§5,§ > this.§@3§)
            {
               return false;
            }
         }
         else
         {
            this.§[e§(param1);
            _loc2_ = this.updateParticles(param1);
         }
         if(this.§?§ > 0 && this.§6g§ >= this.§?§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§]Z§();
         }
         return true;
      }
      
      public function §[e§(param1:Number) : void
      {
         this.§3k§ += param1 * this.§!w§ / 1000;
         this.§5,§ += this.§3k§ * param1 / 1000;
         this.§03§ += this.§%O§ * param1 / 1000;
         if(this.§1Q§ != 0)
         {
            this.§'!U§.rotation += this.§1Q§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function updateParticles(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§7J§ == §+V§)
         {
            if(this.§?§ > 0)
            {
               _loc2_ = 1;
               if(this.§3b§ == §&p§)
               {
                  if((_loc4_ = this.§6g§ / this.§?§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§6?§) / 5000);
               }
               this.§'!U§.scaleX = _loc2_;
               this.§'!U§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§7J§ == §>!H§)
         {
            if(this.§3b§ == §function§)
            {
               this.§'!U§.alpha = Math.max(0,Math.min(1,2 * § !7§.§,;§((this.§?§ - this.§6g§) / this.§?§,false)));
               _loc5_ = Math.atan2(-this.§3k§,this.§%O§) * (180 / Math.PI);
               this.§'!U§.scaleX = Math.max(0.2,this.§'!U§.alpha);
               this.§'!U§.scaleY = Math.max(0.2,this.§'!U§.alpha);
               this.§'!U§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§3b§ == §8+§ || this.§3b§ == §%!B§)
            {
               this.§'!U§.scaleX = this.§'!U§.scaleY = 0.2 + (this.§?§ - this.§6g§) / this.§?§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§29§)
         {
            this.§29§.clear();
            this.§29§ = null;
         }
         if(this.§'!U§)
         {
            this.§'!U§.dispose();
            this.§'!U§ = null;
         }
         if(this.§;q§)
         {
            this.§;q§ = null;
         }
      }
   }
}
