package §<f§
{
   import §%t§.§#B§;
   import §%t§.§-!5§;
   import §%t§.§2!D§;
   import §%t§.§^!x§;
   import §1U§.§"!V§;
   import §4!S§.Texture;
   import §4!s§.§%I§;
   import §4!s§.§^!"§;
   import §9!G§.§%s§;
   import §="§.§`T§;
   import §^I§.§=!+§;
   import §^I§.DisplayObject;
   import §^I§.Sprite;
   
   public class §7!0§
   {
      
      public static const §6!P§:int = 0;
      
      public static const §3!!§:int = 1;
      
      public static const §+!'§:int = 2;
      
      public static const §&i§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §[>§:String = "Effect_TrailBig_Bird";
      
      public static const §]v§:String = "Effect_Trail_Sparkle";
      
      public static const §#R§:String = "Effect_Floating_Score";
      
      public static const §,"6§:String = "Effect_Floating_Text";
      
      public static const §,!e§:String = "Effect_Explosion_Particle";
      
      public static const §`!2§:String = "Effect_Explosion_Core";
      
      public static const §;!v§:String = "Effect_Pig_Destruction";
      
      public static const §+"%§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §+_§:String = "Effect_Bird_Destruction";
      
      public static const §8!!§:String = "Effect_Block_Destruction_Particles";
      
      public static const §7!3§:String = "Effect_Block_Destruction_Core";
      
      public static const §+!2§:int = 0;
      
      public static const §;!w§:int = 1;
      
      public static const §>3§:int = 2;
      
      public static const §&!k§:int = 3;
      
      public static const § R§:int = 4;
      
      public static const §@!s§:int = 5;
      
      public static const §8!H§:int = 6;
      
      public static const §4!6§:int = 7;
      
      public static const §7c§:int = 8;
      
      public static const §6^§:int = 9;
      
      public static const §3O§:int = 10;
      
      public static const §07§:int = 11;
      
      public static const §&#§:int = 12;
      
      public static const §9s§:int = 13;
      
      public static const §'6§:int = 14;
      
      public static const §"P§:int = 15;
      
      public static const §-a§:int = 16;
      
      public static const §`C§:int = 17;
      
      public static const § !!§:int = 18;
      
      public static const §=!A§:Boolean = true;
       
      
      public var §>p§:int;
      
      public var §7^§:int;
      
      public var §0h§:String;
      
      public var §;>§:Number;
      
      public var §%!B§:Number;
      
      public var §7G§:Number;
      
      public var §<"0§:Number;
      
      public var § get§:Number = 0;
      
      public var §5N§:Number;
      
      public var §>>§:Number;
      
      public var §>Z§:String;
      
      public var §5!]§:Number = -1;
      
      public var §8c§:int;
      
      public var mX:Number;
      
      public var mY:Number;
      
      private var §?r§:Sprite;
      
      private var §@!o§:§^!"§;
      
      private var §2A§:int;
      
      protected var §?"1§:int;
      
      protected var §>_§:Boolean;
      
      private var §7f§:§2!D§;
      
      private var §2!&§:Boolean;
      
      private var §=!_§:§^!x§;
      
      private var §^o§:§-!5§;
      
      private var § " §:§`T§;
      
      public function §7!0§(param1:§^!x§, param2:§-!5§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§?r§ = new Sprite();
         super();
         this.§=!_§ = param1;
         this.§^o§ = param2;
         this.§0h§ = param3;
         this.§>p§ = param5;
         this.§7^§ = param4;
         this.§8c§ = param10;
         this.§?"1§ = param16;
         this.§>_§ = param17;
         this.§>Z§ = param9;
         this.§;>§ = 0;
         this.§>>§ = param8;
         this.mX = param6;
         this.mY = param7;
         this.§5N§ = param15;
         this.§7G§ = param11;
         this.§%!B§ = param12;
         this.§ get§ = param14;
         this.§<"0§ = param13;
         this.createVisuals();
         this.§8!t§();
         if(this.§>p§ == §3!!§)
         {
            this.§5!]§ = §"!V§.§!j§.borders.mBorderGround_B2 + this.§?r§.height * §%I§.§9"4§;
         }
      }
      
      public static function §@",§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §+!2§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §>3§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §;!w§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §@!s§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return § R§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §&!k§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return § !!§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §8!H§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §6^§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §4!6§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §7c§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §3O§;
         }
         return §07§;
      }
      
      public static function §6=§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §&#§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §'6§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §9s§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §`C§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §-a§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §"P§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §"P§;
         }
         return §-a§;
      }
      
      public function get §9!T§() : DisplayObject
      {
         return this.§?r§;
      }
      
      public function §%"§(param1:Number, param2:Number) : void
      {
      }
      
      protected function createVisuals() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§2!D§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§0h§)
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
            case §[>§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §]v§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §;!v§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §+"%§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §7!3§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §`!2§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §,!e§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §#R§:
            case §,"6§:
               if(parseInt(this.§>Z§) == 10000 || parseInt(this.§>Z§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§8c§)
                  {
                     case §&#§:
                        _loc8_ = 16058683;
                        break;
                     case §9s§:
                        _loc8_ = 55294;
                        break;
                     case §"P§:
                        _loc8_ = 1878602;
                        break;
                     case §`C§:
                        _loc8_ = 3552822;
                        break;
                     case §-a§:
                        break;
                     case §'6§:
                        _loc8_ = 16705792;
                  }
                  if(parseInt(this.§>Z§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§=!_§.§5!7§("NUMBERS");
                  this.§@!o§ = new §^!"§(_loc2_,_loc3_,true);
                  this.§@!o§.§,!7§(parseInt(this.§>Z§));
                  this.§?r§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§=!_§.§5!7§("NUMBERS");
               this.§@!o§ = new §^!"§(_loc2_,_loc3_);
               this.§@!o§.§,!7§(parseInt(this.§>Z§));
               this.§?r§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §8!!§:
               switch(this.§8c§)
               {
                  case §6^§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §3O§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §4!6§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §7c§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §07§:
                     _loc6_ = 1 + _loc1_ % 3;
               }
               if(this.§?r§)
               {
                  this.§?r§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §+_§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§8c§)
               {
                  case §+!2§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §@!s§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §;!w§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §&!k§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case § R§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §>3§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case § !!§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§?r§)
               {
                  this.§?r§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§0h§,null,this.§?"1§,this.§>_§);
         }
      }
      
      protected function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§#B§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§2!&§ = param4;
         var _loc7_:Number = 1;
         this.§7f§ = this.§=!_§.§5!7§(param1);
         if(this.§7f§)
         {
            _loc6_ = (_loc5_ = this.§7f§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            if(!(_loc5_ = this.§^o§.§ !Z§(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
         }
         this.§2A§ = param3;
         var _loc8_:§=!+§ = this.§[]§(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§5N§ * _loc7_;
         this.§?r§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§5N§;
            _loc8_.y = -_loc5_.pivotY * this.§5N§;
         }
         else
         {
            _loc8_.x = -this.§?r§.width / 2;
            _loc8_.y = -this.§?r§.height / 2;
         }
      }
      
      protected function §[]§(param1:Texture) : §=!+§
      {
         return new §=!+§(param1,false);
      }
      
      public function §8!t§() : void
      {
         if(this.§?r§)
         {
            this.§?r§.x = this.mX / §%I§.§9"4§;
            this.§?r§.y = this.mY / §%I§.§9"4§;
         }
      }
      
      public function §,?§(param1:§`T§) : void
      {
         this.§ " § = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§#B§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§=!+§ = null;
         this.§;>§ += param1;
         var _loc2_:Boolean = false;
         if(this.§ " §)
         {
            if(this.§ " §.sprite == null || this.§ " §.§6m§ == null)
            {
               return false;
            }
            this.mX = this.§ " §.getBody().GetPosition().x;
            this.mY = this.§ " §.getBody().GetPosition().y;
         }
         if(this.§2A§ > 0 && this.§7f§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§;>§ / 1000 / (1 / _loc3_)) < this.§7f§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§7f§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.§[]§(_loc6_);
               this.§?r§.removeChildren(0,-1,true);
               this.§?r§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§5N§;
               _loc8_.y = -_loc5_.pivotY * this.§5N§;
               _loc8_.scaleX = _loc8_.scaleY = this.§5N§ * _loc7_;
            }
            else if(this.§2!&§)
            {
               this.§?r§.removeChildren(0,-1,true);
            }
         }
         if(this.§>p§ == §3!!§)
         {
            this.§"u§(param1);
            _loc2_ = this.§8,§(param1);
            if(this.§5!]§ > 0 && this.mY > this.§5!]§)
            {
               return false;
            }
         }
         else
         {
            this.§"u§(param1);
            _loc2_ = this.§8,§(param1);
         }
         if(this.§>>§ > 0 && this.§;>§ >= this.§>>§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§8!t§();
         }
         return true;
      }
      
      public function §"u§(param1:Number) : void
      {
         this.§%!B§ += param1 * this.§<"0§ / 1000;
         this.mY += this.§%!B§ * param1 / 1000;
         this.mX += this.§7G§ * param1 / 1000;
         if(this.§ get§ != 0)
         {
            this.§?r§.rotation += this.§ get§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §8,§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§>p§ == §6!P§)
         {
            if(this.§>>§ > 0)
            {
               _loc2_ = 1;
               if(this.§0h§ == §,"6§)
               {
                  if((_loc4_ = this.§;>§ / this.§>>§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§>Z§) / 5000);
               }
               this.§?r§.scaleX = _loc2_;
               this.§?r§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§>p§ == §3!!§)
         {
            if(this.§0h§ == §,!e§)
            {
               this.§?r§.alpha = Math.max(0,Math.min(1,2 * §%s§.§2!N§((this.§>>§ - this.§;>§) / this.§>>§,false)));
               _loc5_ = Math.atan2(-this.§%!B§,this.§7G§) * (180 / Math.PI);
               this.§?r§.scaleX = Math.max(0.2,this.§?r§.alpha);
               this.§?r§.scaleY = Math.max(0.2,this.§?r§.alpha);
               this.§?r§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§0h§ == §+_§ || this.§0h§ == §7!3§)
            {
               this.§?r§.scaleX = this.§?r§.scaleY = 0.2 + (this.§>>§ - this.§;>§) / this.§>>§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§@!o§)
         {
            this.§@!o§.clear();
            this.§@!o§ = null;
         }
         if(this.§?r§)
         {
            this.§?r§.dispose();
            this.§?r§ = null;
         }
         if(this.§ " §)
         {
            this.§ " § = null;
         }
      }
   }
}
