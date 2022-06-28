package §>F§
{
   import §"!5§.§,!!§;
   import §%x§.§#;§;
   import §%x§.§%!7§;
   import §-!0§.§'!3§;
   import §-!0§.§4b§;
   import §-!0§.§9X§;
   import §-!0§.§`Q§;
   import §0!<§.§>!!§;
   import §?^§.§8!?§;
   import §?^§.DisplayObject;
   import §?^§.Sprite;
   import §]!9§.§>2§;
   import each.Texture;
   
   public class §2S§
   {
      
      public static const §<p§:int = 0;
      
      public static const §9!>§:int = 1;
      
      public static const §>t§:int = 2;
      
      public static const §^r§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §+X§:String = "Effect_TrailBig_Bird";
      
      public static const §?>§:String = "Effect_Trail_Sparkle";
      
      public static const §%6§:String = "Effect_Floating_Score";
      
      public static const §+!B§:String = "Effect_Floating_Text";
      
      public static const §!!?§:String = "Effect_Explosion_Particle";
      
      public static const §;n§:String = "Effect_Explosion_Core";
      
      public static const §`%§:String = "Effect_Pig_Destruction";
      
      public static const §87§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §4"§:String = "Effect_Bird_Destruction";
      
      public static const §#X§:String = "Effect_Block_Destruction_Particles";
      
      public static const §8x§:String = "Effect_Block_Destruction_Core";
      
      public static const §`+§:int = 0;
      
      public static const §]2§:int = 1;
      
      public static const §4!'§:int = 2;
      
      public static const §+P§:int = 3;
      
      public static const §^!+§:int = 4;
      
      public static const §66§:int = 5;
      
      public static const §+v§:int = 6;
      
      public static const §]S§:int = 7;
      
      public static const §1J§:int = 8;
      
      public static const §"O§:int = 9;
      
      public static const §;!B§:int = 10;
      
      public static const §%f§:int = 11;
      
      public static const §^C§:int = 12;
      
      public static const §1!'§:int = 13;
      
      public static const §#=§:int = 14;
      
      public static const §7%§:int = 15;
      
      public static const §"B§:int = 16;
      
      public static const §!!E§:int = 17;
      
      public static const §%0§:int = 18;
      
      public static const §6!0§:Boolean = true;
       
      
      public var §,!8§:int;
      
      public var §0! §:int;
      
      public var §@=§:String;
      
      public var §,L§:Number;
      
      public var §[j§:Number;
      
      public var get:Number;
      
      public var §?y§:Number;
      
      public var §+H§:Number = 0;
      
      public var §=!%§:Number;
      
      public var §<R§:Number;
      
      public var § !D§:String;
      
      public var §3N§:Number = -1;
      
      public var §<c§:int;
      
      public var §5!>§:Number;
      
      public var §#!$§:Number;
      
      private var §>Q§:Sprite;
      
      private var §7!-§:§%!7§;
      
      private var §0l§:int;
      
      protected var §<!=§:int;
      
      protected var § 9§:Boolean;
      
      private var §=!'§:§4b§;
      
      private var §#!I§:Boolean;
      
      private var § 3§:§`Q§;
      
      private var § 7§:§'!3§;
      
      private var §'9§:§>2§;
      
      public function §2S§(param1:§`Q§, param2:§'!3§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§>Q§ = new Sprite();
         super();
         this.§ 3§ = param1;
         this.§ 7§ = param2;
         this.§@=§ = param3;
         this.§,!8§ = param5;
         this.§0! § = param4;
         this.§<c§ = param10;
         this.§<!=§ = param16;
         this.§ 9§ = param17;
         this.§ !D§ = param9;
         this.§,L§ = 0;
         this.§<R§ = param8;
         this.§5!>§ = param6;
         this.§#!$§ = param7;
         this.§=!%§ = param15;
         this.get = param11;
         this.§[j§ = param12;
         this.§+H§ = param14;
         this.§?y§ = param13;
         this.createVisuals();
         this.§6i§();
         if(this.§,!8§ == §9!>§)
         {
            this.§3N§ = §,!!§.§;4§.§`,§.§=s§ + this.§>Q§.height * §#;§.§`!2§;
         }
      }
      
      public static function §#!2§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §`+§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §4!'§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §]2§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §66§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §^!+§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §+P§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §%0§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §+v§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §"O§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §]S§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §1J§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §;!B§;
         }
         return §%f§;
      }
      
      public static function §`!0§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §^C§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §#=§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §1!'§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §!!E§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §"B§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §7%§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §7%§;
         }
         return §"B§;
      }
      
      public function get §5F§() : DisplayObject
      {
         return this.§>Q§;
      }
      
      public function §7!#§(param1:Number, param2:Number) : void
      {
      }
      
      protected function createVisuals() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§4b§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§@=§)
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
            case §+X§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §?>§:
               this.createParticle("??");
               break;
            case §`%§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §87§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §8x§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §;n§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §!!?§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §%6§:
            case §+!B§:
               if(parseInt(this.§ !D§) == 10000 || parseInt(this.§ !D§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§<c§)
                  {
                     case §^C§:
                        _loc8_ = 16058683;
                        break;
                     case §1!'§:
                        _loc8_ = 55294;
                        break;
                     case §7%§:
                        _loc8_ = 1878602;
                        break;
                     case §!!E§:
                        _loc8_ = 3552822;
                        break;
                     case §"B§:
                        break;
                     case §#=§:
                        _loc8_ = 16705792;
                  }
                  if(parseInt(this.§ !D§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§ 3§.§,V§("NUMBERS");
                  this.§7!-§ = new §%!7§(_loc2_,_loc3_,true);
                  this.§7!-§.§+C§(parseInt(this.§ !D§));
                  this.§>Q§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§ 3§.§,V§("NUMBERS");
               this.§7!-§ = new §%!7§(_loc2_,_loc3_);
               this.§7!-§.§+C§(parseInt(this.§ !D§));
               this.§>Q§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §#X§:
               switch(this.§<c§)
               {
                  case §"O§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §;!B§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §]S§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §1J§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §%f§:
                     _loc6_ = 1 + _loc1_ % 3;
               }
               if(this.§>Q§)
               {
                  this.§>Q§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            case §4"§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§<c§)
               {
                  case §`+§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §66§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §]2§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §+P§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §^!+§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §4!'§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §%0§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§>Q§)
               {
                  this.§>Q§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§@=§,null,this.§<!=§,this.§ 9§);
         }
      }
      
      protected function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§9X§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§#!I§ = param4;
         var _loc7_:Number = 1;
         this.§=!'§ = this.§ 3§.§,V§(param1);
         if(this.§=!'§)
         {
            _loc6_ = (_loc5_ = this.§=!'§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            if(!(_loc5_ = this.§ 7§.§4K§(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
         }
         this.§0l§ = param3;
         var _loc8_:§8!?§ = this.§6K§(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§=!%§ * _loc7_;
         this.§>Q§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§=!%§;
            _loc8_.y = -_loc5_.pivotY * this.§=!%§;
         }
         else
         {
            _loc8_.x = -this.§>Q§.width / 2;
            _loc8_.y = -this.§>Q§.height / 2;
         }
      }
      
      protected function §6K§(param1:Texture) : §8!?§
      {
         return new §8!?§(param1,false);
      }
      
      public function §6i§() : void
      {
         if(this.§>Q§)
         {
            this.§>Q§.x = this.§5!>§ / §#;§.§`!2§;
            this.§>Q§.y = this.§#!$§ / §#;§.§`!2§;
         }
      }
      
      public function §19§(param1:§>2§) : void
      {
         this.§'9§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§9X§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§8!?§ = null;
         this.§,L§ += param1;
         var _loc2_:Boolean = false;
         if(this.§'9§)
         {
            if(this.§'9§.sprite == null || this.§'9§.§0§ == null)
            {
               return false;
            }
            this.§5!>§ = this.§'9§.§%;§().GetPosition().x;
            this.§#!$§ = this.§'9§.§%;§().GetPosition().y;
         }
         if(this.§0l§ > 0 && this.§=!'§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§,L§ / 1000 / (1 / _loc3_)) < this.§=!'§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§=!'§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.§6K§(_loc6_);
               this.§>Q§.§+!;§(0,-1,true);
               this.§>Q§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§=!%§;
               _loc8_.y = -_loc5_.pivotY * this.§=!%§;
               _loc8_.scaleX = _loc8_.scaleY = this.§=!%§ * _loc7_;
            }
            else if(this.§#!I§)
            {
               this.§>Q§.§+!;§(0,-1,true);
            }
         }
         if(this.§,!8§ == §9!>§)
         {
            this.§2!7§(param1);
            _loc2_ = this.§7X§(param1);
            if(this.§3N§ > 0 && this.§#!$§ > this.§3N§)
            {
               return false;
            }
         }
         else
         {
            this.§2!7§(param1);
            _loc2_ = this.§7X§(param1);
         }
         if(this.§<R§ > 0 && this.§,L§ >= this.§<R§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§6i§();
         }
         return true;
      }
      
      public function §2!7§(param1:Number) : void
      {
         this.§[j§ += param1 * this.§?y§ / 1000;
         this.§#!$§ += this.§[j§ * param1 / 1000;
         this.§5!>§ += this.get * param1 / 1000;
         if(this.§+H§ != 0)
         {
            this.§>Q§.rotation += this.§+H§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §7X§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§,!8§ == §<p§)
         {
            if(this.§<R§ > 0)
            {
               _loc2_ = 1;
               if(this.§@=§ == §+!B§)
               {
                  if((_loc4_ = this.§,L§ / this.§<R§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§ !D§) / 5000);
               }
               this.§>Q§.scaleX = _loc2_;
               this.§>Q§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§,!8§ == §9!>§)
         {
            if(this.§@=§ == §!!?§)
            {
               this.§>Q§.alpha = Math.max(0,Math.min(1,2 * §>!!§.§1s§((this.§<R§ - this.§,L§) / this.§<R§,false)));
               _loc5_ = Math.atan2(-this.§[j§,this.get) * (180 / Math.PI);
               this.§>Q§.scaleX = Math.max(0.2,this.§>Q§.alpha);
               this.§>Q§.scaleY = Math.max(0.2,this.§>Q§.alpha);
               this.§>Q§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§@=§ == §4"§ || this.§@=§ == §8x§)
            {
               this.§>Q§.scaleX = this.§>Q§.scaleY = 0.2 + (this.§<R§ - this.§,L§) / this.§<R§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§7!-§)
         {
            this.§7!-§.clear();
            this.§7!-§ = null;
         }
         if(this.§>Q§)
         {
            this.§>Q§.dispose();
            this.§>Q§ = null;
         }
         if(this.§'9§)
         {
            this.§'9§ = null;
         }
      }
   }
}
