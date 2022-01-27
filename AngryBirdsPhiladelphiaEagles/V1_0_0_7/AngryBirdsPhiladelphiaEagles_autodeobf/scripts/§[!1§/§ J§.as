package §[!1§
{
   import §!6§.§4n§;
   import §"^§.§9=§;
   import §"`§.Texture;
   import §+f§.§0Q§;
   import §+f§.§4!8§;
   import §+f§.§=3§;
   import §+f§.§@d§;
   import §,!F§.§#§;
   import §,!F§.§-y§;
   import §4G§.DisplayObject;
   import §4G§.Sprite;
   import §4G§.§`l§;
   import §8x§.§8C§;
   
   public class § J§
   {
      
      public static const §@y§:int = 0;
      
      public static const §"H§:int = 1;
      
      public static const §%!A§:int = 2;
      
      public static const §#n§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §%!5§:String = "Effect_TrailBig_Bird";
      
      public static const §1P§:String = "Effect_Trail_Sparkle";
      
      public static const §&!>§:String = "Effect_Floating_Score";
      
      public static const §9n§:String = "Effect_Floating_Text";
      
      public static const §#j§:String = "Effect_Explosion_Particle";
      
      public static const §9K§:String = "Effect_Explosion_Core";
      
      public static const §&i§:String = "Effect_Pig_Destruction";
      
      public static const §<!§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §7!0§:String = "Effect_Bird_Destruction";
      
      public static const §?2§:String = "Effect_Block_Destruction_Particles";
      
      public static const §%!;§:String = "Effect_Block_Destruction_Core";
      
      public static const §@!7§:int = 0;
      
      public static const §9b§:int = 1;
      
      public static const §?!D§:int = 2;
      
      public static const §[!8§:int = 3;
      
      public static const §?!<§:int = 4;
      
      public static const §3§:int = 5;
      
      public static const §'G§:int = 6;
      
      public static const §2!1§:int = 7;
      
      public static const §,!5§:int = 8;
      
      public static const §5G§:int = 9;
      
      public static const §-!K§:int = 10;
      
      public static const § @§:int = 11;
      
      public static const §&q§:int = 12;
      
      public static const §<!8§:int = 13;
      
      public static const §@`§:int = 14;
      
      public static const §'!E§:int = 15;
      
      public static const §%!?§:int = 16;
      
      public static const §%E§:int = 17;
      
      public static const §2E§:int = 18;
      
      public static const §?L§:Boolean = true;
       
      
      public var §2@§:int;
      
      public var §8w§:int;
      
      public var §,V§:String;
      
      public var §55§:Number;
      
      public var §+B§:Number;
      
      public var §-o§:Number;
      
      public var §7W§:Number;
      
      public var §0!@§:Number = 0;
      
      public var §`Z§:Number;
      
      public var §7!6§:Number;
      
      public var §[!J§:String;
      
      public var §?,§:Number = -1;
      
      public var §?a§:int;
      
      public var §#+§:Number;
      
      public var §+9§:Number;
      
      private var §9q§:Sprite;
      
      private var §5A§:§-y§;
      
      private var §break§:int;
      
      protected var §"!C§:int;
      
      protected var §%!4§:Boolean;
      
      private var §0+§:§0Q§;
      
      private var §]?§:Boolean;
      
      private var §,!J§:§@d§;
      
      private var §;?§:§4!8§;
      
      private var §"!#§:§8C§;
      
      public function § J§(param1:§@d§, param2:§4!8§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§9q§ = new Sprite();
         super();
         this.§,!J§ = param1;
         this.§;?§ = param2;
         this.§,V§ = param3;
         this.§2@§ = param5;
         this.§8w§ = param4;
         this.§?a§ = param10;
         this.§"!C§ = param16;
         this.§%!4§ = param17;
         this.§[!J§ = param9;
         this.§55§ = 0;
         this.§7!6§ = param8;
         this.§#+§ = param6;
         this.§+9§ = param7;
         this.§`Z§ = param15;
         this.§-o§ = param11;
         this.§+B§ = param12;
         this.§0!@§ = param14;
         this.§7W§ = param13;
         this.createVisuals();
         this.§6P§();
         if(this.§2@§ == §"H§)
         {
            this.§?,§ = §9=§.§<!@§.§6!2§.§-u§ + this.§9q§.height * §#§.§67§;
         }
      }
      
      public static function §]S§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §@!7§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §?!D§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §9b§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §3§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §?!<§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §[!8§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §2E§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §'G§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §5G§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §2!1§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §,!5§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §-!K§;
         }
         return § @§;
      }
      
      public static function §^5§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §&q§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §@`§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §<!8§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §%E§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §%!?§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §'!E§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §'!E§;
         }
         return §%!?§;
      }
      
      public function get §[$§() : DisplayObject
      {
         return this.§9q§;
      }
      
      public function §;I§(param1:Number, param2:Number) : void
      {
      }
      
      protected function createVisuals() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§0Q§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§,V§)
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
            case §%!5§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §1P§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §&i§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §<!§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §%!;§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §9K§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §#j§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §&!>§:
            case §9n§:
               if(parseInt(this.§[!J§) == 10000 || parseInt(this.§[!J§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§?a§)
                  {
                     case §&q§:
                        _loc8_ = 16058683;
                        break;
                     case §<!8§:
                        _loc8_ = 55294;
                        break;
                     case §'!E§:
                        _loc8_ = 1878602;
                        break;
                     case §%E§:
                        _loc8_ = 3552822;
                        break;
                     case §%!?§:
                        break;
                     case §@`§:
                        _loc8_ = 16705792;
                  }
                  if(parseInt(this.§[!J§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§,!J§.getAnimation("NUMBERS");
                  this.§5A§ = new §-y§(_loc2_,_loc3_,true);
                  this.§5A§.§1K§(parseInt(this.§[!J§));
                  this.§9q§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§,!J§.getAnimation("NUMBERS");
               this.§5A§ = new §-y§(_loc2_,_loc3_);
               this.§5A§.§1K§(parseInt(this.§[!J§));
               this.§9q§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §?2§:
               switch(this.§?a§)
               {
                  case §5G§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §-!K§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §2!1§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §,!5§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case § @§:
                     _loc6_ = 1 + _loc1_ % 3;
               }
               if(this.§9q§)
               {
                  this.§9q§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §7!0§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§?a§)
               {
                  case §@!7§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §3§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §9b§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §[!8§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §?!<§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §?!D§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §2E§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§9q§)
               {
                  this.§9q§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§,V§,null,this.§"!C§,this.§%!4§);
         }
      }
      
      protected function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§=3§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§]?§ = param4;
         var _loc7_:Number = 1;
         this.§0+§ = this.§,!J§.getAnimation(param1);
         if(this.§0+§)
         {
            _loc6_ = (_loc5_ = this.§0+§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            if(!(_loc5_ = this.§;?§.§=&§(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
         }
         this.§break§ = param3;
         var _loc8_:§`l§ = this.§4!@§(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§`Z§ * _loc7_;
         this.§9q§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§`Z§;
            _loc8_.y = -_loc5_.pivotY * this.§`Z§;
         }
         else
         {
            _loc8_.x = -this.§9q§.width / 2;
            _loc8_.y = -this.§9q§.height / 2;
         }
      }
      
      protected function §4!@§(param1:Texture) : §`l§
      {
         return new §`l§(param1,false);
      }
      
      public function §6P§() : void
      {
         if(this.§9q§)
         {
            this.§9q§.x = this.§#+§ / §#§.§67§;
            this.§9q§.y = this.§+9§ / §#§.§67§;
         }
      }
      
      public function §6!K§(param1:§8C§) : void
      {
         this.§"!#§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§=3§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§`l§ = null;
         this.§55§ += param1;
         var _loc2_:Boolean = false;
         if(this.§"!#§)
         {
            if(this.§"!#§.sprite == null || this.§"!#§.§"S§ == null)
            {
               return false;
            }
            this.§#+§ = this.§"!#§.§]!7§().GetPosition().x;
            this.§+9§ = this.§"!#§.§]!7§().GetPosition().y;
         }
         if(this.§break§ > 0 && this.§0+§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§55§ / 1000 / (1 / _loc3_)) < this.§0+§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§0+§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.§4!@§(_loc6_);
               this.§9q§.§5!K§(0,-1,true);
               this.§9q§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§`Z§;
               _loc8_.y = -_loc5_.pivotY * this.§`Z§;
               _loc8_.scaleX = _loc8_.scaleY = this.§`Z§ * _loc7_;
            }
            else if(this.§]?§)
            {
               this.§9q§.§5!K§(0,-1,true);
            }
         }
         if(this.§2@§ == §"H§)
         {
            this.§1O§(param1);
            _loc2_ = this.§]!G§(param1);
            if(this.§?,§ > 0 && this.§+9§ > this.§?,§)
            {
               return false;
            }
         }
         else
         {
            this.§1O§(param1);
            _loc2_ = this.§]!G§(param1);
         }
         if(this.§7!6§ > 0 && this.§55§ >= this.§7!6§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§6P§();
         }
         return true;
      }
      
      public function §1O§(param1:Number) : void
      {
         this.§+B§ += param1 * this.§7W§ / 1000;
         this.§+9§ += this.§+B§ * param1 / 1000;
         this.§#+§ += this.§-o§ * param1 / 1000;
         if(this.§0!@§ != 0)
         {
            this.§9q§.rotation += this.§0!@§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §]!G§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§2@§ == §@y§)
         {
            if(this.§7!6§ > 0)
            {
               _loc2_ = 1;
               if(this.§,V§ == §9n§)
               {
                  if((_loc4_ = this.§55§ / this.§7!6§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§[!J§) / 5000);
               }
               this.§9q§.scaleX = _loc2_;
               this.§9q§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§2@§ == §"H§)
         {
            if(this.§,V§ == §#j§)
            {
               this.§9q§.alpha = Math.max(0,Math.min(1,2 * §4n§.§3,§((this.§7!6§ - this.§55§) / this.§7!6§,false)));
               _loc5_ = Math.atan2(-this.§+B§,this.§-o§) * (180 / Math.PI);
               this.§9q§.scaleX = Math.max(0.2,this.§9q§.alpha);
               this.§9q§.scaleY = Math.max(0.2,this.§9q§.alpha);
               this.§9q§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§,V§ == §7!0§ || this.§,V§ == §%!;§)
            {
               this.§9q§.scaleX = this.§9q§.scaleY = 0.2 + (this.§7!6§ - this.§55§) / this.§7!6§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§5A§)
         {
            this.§5A§.clear();
            this.§5A§ = null;
         }
         if(this.§9q§)
         {
            this.§9q§.dispose();
            this.§9q§ = null;
         }
         if(this.§"!#§)
         {
            this.§"!#§ = null;
         }
      }
   }
}
