package §8!§
{
   import § !^§.Texture;
   import §#M§.§+!Z§;
   import §&!!§.§2^§;
   import §&!!§.§7N§;
   import §&!!§.§<!'§;
   import §&!!§.§[!]§;
   import §2![§.DisplayObject;
   import §2![§.Sprite;
   import §2![§.§[!U§;
   import §5!L§.§,!&§;
   import §8<§.§[W§;
   import §<L§.§!!G§;
   import §<L§.§-!4§;
   
   public class §9!-§
   {
      
      public static const §,!]§:int = 0;
      
      public static const §7=§:int = 1;
      
      public static const §2q§:int = 2;
      
      public static const §92§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §-!P§:String = "Effect_TrailBig_Bird";
      
      public static const §<!O§:String = "Effect_Trail_Sparkle";
      
      public static const §?A§:String = "Effect_Floating_Score";
      
      public static const §]!3§:String = "Effect_Floating_Text";
      
      public static const § +§:String = "Effect_Explosion_Particle";
      
      public static const §-D§:String = "Effect_Explosion_Core";
      
      public static const §'#§:String = "Effect_Pig_Destruction";
      
      public static const §<<§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §`!f§:String = "Effect_Bird_Destruction";
      
      public static const §00§:String = "Effect_Block_Destruction_Particles";
      
      public static const §0!?§:String = "Effect_Block_Destruction_Core";
      
      public static const §>5§:int = 0;
      
      public static const §]L§:int = 1;
      
      public static const §[i§:int = 2;
      
      public static const §,Z§:int = 3;
      
      public static const §>![§:int = 4;
      
      public static const §&!h§:int = 5;
      
      public static const §4!X§:int = 6;
      
      public static const §'2§:int = 7;
      
      public static const §-!D§:int = 8;
      
      public static const §;?§:int = 9;
      
      public static const §1!7§:int = 10;
      
      public static const § !7§:int = 11;
      
      public static const §0!$§:int = 12;
      
      public static const §#!U§:int = 13;
      
      public static const §%!N§:int = 14;
      
      public static const §?!2§:int = 15;
      
      public static const §2!S§:int = 16;
      
      public static const §0L§:int = 17;
      
      public static const §&z§:int = 18;
      
      public static const §;!9§:Boolean = true;
       
      
      public var §%!^§:int;
      
      public var §4r§:int;
      
      public var §-T§:String;
      
      public var §!!P§:Number;
      
      public var §8l§:Number;
      
      public var §5"§:Number;
      
      public var §7!j§:Number;
      
      public var §4!9§:Number = 0;
      
      public var §6R§:Number;
      
      public var §,!,§:Number;
      
      public var §5F§:String;
      
      public var §#%§:Number = -1;
      
      public var §"!8§:int;
      
      public var §+p§:Number;
      
      public var §,,§:Number;
      
      private var §2Y§:Sprite;
      
      private var §[!T§:§-!4§;
      
      private var §&!L§:int;
      
      protected var §?"§:int;
      
      protected var §3!W§:Boolean;
      
      private var §@!C§:§[!]§;
      
      private var § N§:Boolean;
      
      private var §"!H§:§2^§;
      
      private var §"!,§:§<!'§;
      
      private var §]M§:§,!&§;
      
      public function §9!-§(param1:§2^§, param2:§<!'§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§2Y§ = new Sprite();
         super();
         this.§"!H§ = param1;
         this.§"!,§ = param2;
         this.§-T§ = param3;
         this.§%!^§ = param5;
         this.§4r§ = param4;
         this.§"!8§ = param10;
         this.§?"§ = param16;
         this.§3!W§ = param17;
         this.§5F§ = param9;
         this.§!!P§ = 0;
         this.§,!,§ = param8;
         this.§+p§ = param6;
         this.§,,§ = param7;
         this.§6R§ = param15;
         this.§5"§ = param11;
         this.§8l§ = param12;
         this.§4!9§ = param14;
         this.§7!j§ = param13;
         this.createVisuals();
         this.§?R§();
         if(this.§%!^§ == §7=§)
         {
            this.§#%§ = §+!Z§.§?!<§.§9!R§.§@Y§ + this.§2Y§.height * §!!G§.§ !E§;
         }
      }
      
      public static function §4!^§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §>5§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §[i§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §]L§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §&!h§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §>![§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §,Z§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §&z§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §4!X§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §;?§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §'2§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §-!D§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §1!7§;
         }
         return § !7§;
      }
      
      public static function §'r§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §0!$§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §%!N§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §#!U§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §0L§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §2!S§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §?!2§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §?!2§;
         }
         return §2!S§;
      }
      
      public function get §5L§() : DisplayObject
      {
         return this.§2Y§;
      }
      
      public function §^'§(param1:Number, param2:Number) : void
      {
      }
      
      protected function createVisuals() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§[!]§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§-T§)
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
            case §-!P§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §<!O§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §'#§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §<<§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §0!?§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §-D§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case § +§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §?A§:
            case §]!3§:
               if(parseInt(this.§5F§) == 10000 || parseInt(this.§5F§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§"!8§)
                  {
                     case §0!$§:
                        _loc8_ = 16058683;
                        break;
                     case §#!U§:
                        _loc8_ = 55294;
                        break;
                     case §?!2§:
                        _loc8_ = 1878602;
                        break;
                     case §0L§:
                        _loc8_ = 3552822;
                        break;
                     case §2!S§:
                        break;
                     case §%!N§:
                        _loc8_ = 16705792;
                  }
                  if(parseInt(this.§5F§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§"!H§.getAnimation("NUMBERS");
                  this.§[!T§ = new §-!4§(_loc2_,_loc3_,true);
                  this.§[!T§.§"Z§(parseInt(this.§5F§));
                  this.§2Y§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§"!H§.getAnimation("NUMBERS");
               this.§[!T§ = new §-!4§(_loc2_,_loc3_);
               this.§[!T§.§"Z§(parseInt(this.§5F§));
               this.§2Y§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §00§:
               switch(this.§"!8§)
               {
                  case §;?§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §1!7§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §'2§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §-!D§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case § !7§:
                     _loc6_ = 1 + _loc1_ % 3;
               }
               if(this.§2Y§)
               {
                  this.§2Y§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §`!f§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§"!8§)
               {
                  case §>5§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §&!h§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §]L§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §,Z§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §>![§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §[i§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §&z§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§2Y§)
               {
                  this.§2Y§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§-T§,null,this.§?"§,this.§3!W§);
         }
      }
      
      protected function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§7N§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§ N§ = param4;
         var _loc7_:Number = 1;
         this.§@!C§ = this.§"!H§.getAnimation(param1);
         if(this.§@!C§)
         {
            _loc6_ = (_loc5_ = this.§@!C§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            if(!(_loc5_ = this.§"!,§.§^!C§(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
         }
         this.§&!L§ = param3;
         var _loc8_:§[!U§ = this.createParticleImage(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§6R§ * _loc7_;
         this.§2Y§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§6R§;
            _loc8_.y = -_loc5_.pivotY * this.§6R§;
         }
         else
         {
            _loc8_.x = -this.§2Y§.width / 2;
            _loc8_.y = -this.§2Y§.height / 2;
         }
      }
      
      protected function createParticleImage(param1:Texture) : §[!U§
      {
         return new §[!U§(param1,false);
      }
      
      public function §?R§() : void
      {
         if(this.§2Y§)
         {
            this.§2Y§.x = this.§+p§ / §!!G§.§ !E§;
            this.§2Y§.y = this.§,,§ / §!!G§.§ !E§;
         }
      }
      
      public function §%!d§(param1:§,!&§) : void
      {
         this.§]M§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§7N§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§[!U§ = null;
         this.§!!P§ += param1;
         var _loc2_:Boolean = false;
         if(this.§]M§)
         {
            if(this.§]M§.sprite == null || this.§]M§.§<M§ == null)
            {
               return false;
            }
            this.§+p§ = this.§]M§.§;G§().GetPosition().x;
            this.§,,§ = this.§]M§.§;G§().GetPosition().y;
         }
         if(this.§&!L§ > 0 && this.§@!C§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§!!P§ / 1000 / (1 / _loc3_)) < this.§@!C§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§@!C§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.createParticleImage(_loc6_);
               this.§2Y§.§<U§(0,-1,true);
               this.§2Y§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§6R§;
               _loc8_.y = -_loc5_.pivotY * this.§6R§;
               _loc8_.scaleX = _loc8_.scaleY = this.§6R§ * _loc7_;
            }
            else if(this.§ N§)
            {
               this.§2Y§.§<U§(0,-1,true);
            }
         }
         if(this.§%!^§ == §7=§)
         {
            this.§&!^§(param1);
            _loc2_ = this.updateParticles(param1);
            if(this.§#%§ > 0 && this.§,,§ > this.§#%§)
            {
               return false;
            }
         }
         else
         {
            this.§&!^§(param1);
            _loc2_ = this.updateParticles(param1);
         }
         if(this.§,!,§ > 0 && this.§!!P§ >= this.§,!,§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§?R§();
         }
         return true;
      }
      
      public function §&!^§(param1:Number) : void
      {
         this.§8l§ += param1 * this.§7!j§ / 1000;
         this.§,,§ += this.§8l§ * param1 / 1000;
         this.§+p§ += this.§5"§ * param1 / 1000;
         if(this.§4!9§ != 0)
         {
            this.§2Y§.rotation += this.§4!9§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function updateParticles(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§%!^§ == §,!]§)
         {
            if(this.§,!,§ > 0)
            {
               _loc2_ = 1;
               if(this.§-T§ == §]!3§)
               {
                  if((_loc4_ = this.§!!P§ / this.§,!,§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§5F§) / 5000);
               }
               this.§2Y§.scaleX = _loc2_;
               this.§2Y§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§%!^§ == §7=§)
         {
            if(this.§-T§ == § +§)
            {
               this.§2Y§.alpha = Math.max(0,Math.min(1,2 * §[W§.§0!"§((this.§,!,§ - this.§!!P§) / this.§,!,§,false)));
               _loc5_ = Math.atan2(-this.§8l§,this.§5"§) * (180 / Math.PI);
               this.§2Y§.scaleX = Math.max(0.2,this.§2Y§.alpha);
               this.§2Y§.scaleY = Math.max(0.2,this.§2Y§.alpha);
               this.§2Y§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§-T§ == §`!f§ || this.§-T§ == §0!?§)
            {
               this.§2Y§.scaleX = this.§2Y§.scaleY = 0.2 + (this.§,!,§ - this.§!!P§) / this.§,!,§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§[!T§)
         {
            this.§[!T§.clear();
            this.§[!T§ = null;
         }
         if(this.§2Y§)
         {
            this.§2Y§.dispose();
            this.§2Y§ = null;
         }
         if(this.§]M§)
         {
            this.§]M§ = null;
         }
      }
   }
}
