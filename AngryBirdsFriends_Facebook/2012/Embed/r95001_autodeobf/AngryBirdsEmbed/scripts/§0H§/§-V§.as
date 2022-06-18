package §0H§
{
   import §10§.§#!4§;
   import §9!?§.§=!;§;
   import §9!?§.§^]§;
   import §9H§.§4G§;
   import §<-§.Texture;
   import §<k§.§"!=§;
   import §<k§.DisplayObject;
   import §<k§.Sprite;
   import §[n§.§#H§;
   import §[n§.§2!9§;
   import §[n§.§7!@§;
   import §[n§.§?+§;
   import §`"§.§"e§;
   
   public class §-V§
   {
      
      public static const § T§:int = 0;
      
      public static const §?P§:int = 1;
      
      public static const §%Z§:int = 2;
      
      public static const §^W§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §]Z§:String = "Effect_TrailBig_Bird";
      
      public static const §3e§:String = "Effect_Trail_Sparkle";
      
      public static const §2<§:String = "Effect_Floating_Score";
      
      public static const § F§:String = "Effect_Floating_Text";
      
      public static const §'e§:String = "Effect_Explosion_Particle";
      
      public static const §0!6§:String = "Effect_Explosion_Core";
      
      public static const §5G§:String = "Effect_Pig_Destruction";
      
      public static const §@1§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §&§:String = "Effect_Bird_Destruction";
      
      public static const §`!9§:String = "Effect_Block_Destruction_Particles";
      
      public static const §+!D§:String = "Effect_Block_Destruction_Core";
      
      public static const §>&§:int = 0;
      
      public static const §[]§:int = 1;
      
      public static const §[O§:int = 2;
      
      public static const §"Y§:int = 3;
      
      public static const §1!2§:int = 4;
      
      public static const §'C§:int = 5;
      
      public static const §&8§:int = 6;
      
      public static const §3!5§:int = 7;
      
      public static const §%;§:int = 8;
      
      public static const §1v§:int = 9;
      
      public static const §<8§:int = 10;
      
      public static const §&!9§:int = 11;
      
      public static const §#$§:int = 12;
      
      public static const §-3§:int = 13;
      
      public static const §-!9§:int = 14;
      
      public static const §9!%§:int = 15;
      
      public static const §-A§:int = 16;
      
      public static const §!]§:int = 17;
      
      public static const §9I§:int = 18;
      
      public static const §,Y§:Boolean = true;
       
      
      public var §5o§:int;
      
      public var §?!+§:int;
      
      public var §=!0§:String;
      
      public var § !<§:Number;
      
      public var §[M§:Number;
      
      public var §0G§:Number;
      
      public var §`^§:Number;
      
      public var §&?§:Number = 0;
      
      public var §@]§:Number;
      
      public var §3!+§:Number;
      
      public var §@5§:String;
      
      public var §@7§:Number = -1;
      
      public var §>H§:int;
      
      public var mX:Number;
      
      public var mY:Number;
      
      private var §3S§:Sprite;
      
      private var §#Q§:§=!;§;
      
      private var §6!F§:int;
      
      private var §6!2§:int;
      
      private var §%!<§:Boolean;
      
      private var §"!+§:§2!9§;
      
      private var §<O§:Boolean;
      
      private var §6!-§:§7!@§;
      
      private var §^s§:§?+§;
      
      private var §-;§:§"e§;
      
      public function §-V§(param1:§7!@§, param2:§?+§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§3S§ = new Sprite();
         super();
         this.§6!-§ = param1;
         this.§^s§ = param2;
         this.§=!0§ = param3;
         this.§5o§ = param5;
         this.§?!+§ = param4;
         this.§>H§ = param10;
         this.§6!2§ = param16;
         this.§%!<§ = param17;
         this.§@5§ = param9;
         this.§ !<§ = 0;
         this.§3!+§ = param8;
         this.mX = param6;
         this.mY = param7;
         this.§@]§ = param15;
         this.§0G§ = param11;
         this.§[M§ = param12;
         this.§&?§ = param14;
         this.§`^§ = param13;
         this.§+n§();
         this.§+Y§();
         if(this.§5o§ == §?P§)
         {
            this.§@7§ = §#!4§.§^Y§.§2X§.§;!#§ + this.§3S§.height * §^]§.§ u§;
         }
      }
      
      public static function §3!;§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §>&§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §[O§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §[]§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §'C§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §1!2§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §"Y§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §9I§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §&8§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §1v§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §3!5§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §%;§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §<8§;
         }
         return §&!9§;
      }
      
      public static function §-!2§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §#$§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §-!9§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §-3§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §!]§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §-A§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §9!%§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §9!%§;
         }
         return §-A§;
      }
      
      public function get §&%§() : DisplayObject
      {
         return this.§3S§;
      }
      
      public function §%'§(param1:Number, param2:Number) : void
      {
      }
      
      protected function §+n§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§2!9§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§=!0§)
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
            case §]Z§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §3e§:
               this.createParticle("??");
               break;
            case §5G§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §@1§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §+!D§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §0!6§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §'e§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §2<§:
            case § F§:
               if(parseInt(this.§@5§) == 10000 || parseInt(this.§@5§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§>H§)
                  {
                     case §#$§:
                        _loc8_ = 16058683;
                        break;
                     case §-3§:
                        _loc8_ = 55294;
                        break;
                     case §9!%§:
                        _loc8_ = 1878602;
                        break;
                     case §!]§:
                        _loc8_ = 3552822;
                        break;
                     case §-A§:
                        break;
                     case §-!9§:
                        _loc8_ = 16705792;
                  }
                  if(parseInt(this.§@5§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§6!-§.§ E§("NUMBERS");
                  this.§#Q§ = new §=!;§(_loc2_,_loc3_,true);
                  this.§#Q§.§^!;§(parseInt(this.§@5§));
                  this.§3S§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§6!-§.§ E§("NUMBERS");
               this.§#Q§ = new §=!;§(_loc2_,_loc3_);
               this.§#Q§.§^!;§(parseInt(this.§@5§));
               this.§3S§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §`!9§:
               switch(this.§>H§)
               {
                  case §1v§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §<8§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §3!5§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §%;§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §&!9§:
                     _loc6_ = 1 + _loc1_ % 5;
               }
               if(this.§3S§)
               {
                  this.§3S§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            case §&§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§>H§)
               {
                  case §>&§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §'C§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §[]§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §"Y§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §1!2§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §[O§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §9I§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§3S§)
               {
                  this.§3S§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§=!0§,null,this.§6!2§,this.§%!<§);
         }
      }
      
      private function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§#H§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§"!+§ = this.§6!-§.§ E§(param1);
         this.§<O§ = param4;
         var _loc7_:Number = 1;
         if(this.§"!+§)
         {
            _loc6_ = (_loc5_ = this.§"!+§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            _loc6_ = this.§^s§.§>e§();
         }
         this.§6!F§ = param3;
         var _loc8_:§"!=§ = this.§,@§(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§@]§ * _loc7_;
         this.§3S§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§@]§;
            _loc8_.y = -_loc5_.pivotY * this.§@]§;
         }
         else
         {
            _loc8_.x = -this.§3S§.width / 2;
            _loc8_.y = -this.§3S§.height / 2;
         }
      }
      
      protected function §,@§(param1:Texture) : §"!=§
      {
         return new §"!=§(param1,false);
      }
      
      public function §+Y§() : void
      {
         if(this.§3S§)
         {
            this.§3S§.x = this.mX / §^]§.§ u§;
            this.§3S§.y = this.mY / §^]§.§ u§;
         }
      }
      
      public function §#!0§(param1:§"e§) : void
      {
         this.§-;§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§#H§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§"!=§ = null;
         this.§ !<§ += param1;
         var _loc2_:Boolean = false;
         if(this.§-;§)
         {
            if(this.§-;§.sprite == null || this.§-;§.§3-§ == null)
            {
               return false;
            }
            this.mX = this.§-;§.§]d§().GetPosition().x;
            this.mY = this.§-;§.§]d§().GetPosition().y;
         }
         if(this.§6!F§ > 0 && this.§"!+§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§ !<§ / 1000 / (1 / _loc3_)) < this.§"!+§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§"!+§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.§,@§(_loc6_);
               this.§3S§.§>V§(0,-1,true);
               this.§3S§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§@]§;
               _loc8_.y = -_loc5_.pivotY * this.§@]§;
               _loc8_.scaleX = _loc8_.scaleY = this.§@]§ * _loc7_;
            }
            else if(this.§<O§)
            {
               this.§3S§.§>V§(0,-1,true);
            }
         }
         if(this.§5o§ == §?P§)
         {
            this.§!!<§(param1);
            _loc2_ = this.§+T§(param1);
            if(this.§@7§ > 0 && this.mY > this.§@7§)
            {
               return false;
            }
         }
         else
         {
            this.§!!<§(param1);
            _loc2_ = this.§+T§(param1);
         }
         if(this.§3!+§ > 0 && this.§ !<§ >= this.§3!+§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§+Y§();
         }
         return true;
      }
      
      public function §!!<§(param1:Number) : void
      {
         this.§[M§ += param1 * this.§`^§ / 1000;
         this.mY += this.§[M§ * param1 / 1000;
         this.mX += this.§0G§ * param1 / 1000;
         if(this.§&?§ != 0)
         {
            this.§3S§.rotation += this.§&?§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §+T§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§5o§ == § T§)
         {
            if(this.§3!+§ > 0)
            {
               _loc2_ = 1;
               if(this.§=!0§ == § F§)
               {
                  if((_loc4_ = this.§ !<§ / this.§3!+§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§@5§) / 5000);
               }
               this.§3S§.scaleX = _loc2_;
               this.§3S§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§5o§ == §?P§)
         {
            if(this.§=!0§ == §'e§)
            {
               this.§3S§.alpha = Math.max(0,Math.min(1,2 * §4G§.§9!D§((this.§3!+§ - this.§ !<§) / this.§3!+§,false)));
               _loc5_ = Math.atan2(-this.§[M§,this.§0G§) * (180 / Math.PI);
               this.§3S§.scaleX = Math.max(0.2,this.§3S§.alpha);
               this.§3S§.scaleY = Math.max(0.2,this.§3S§.alpha);
               this.§3S§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§=!0§ == §&§ || this.§=!0§ == §+!D§)
            {
               this.§3S§.scaleX = this.§3S§.scaleY = 0.2 + (this.§3!+§ - this.§ !<§) / this.§3!+§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§#Q§)
         {
            this.§#Q§.clear();
            this.§#Q§ = null;
         }
         if(this.§3S§)
         {
            this.§3S§.dispose();
            this.§3S§ = null;
         }
         if(this.§-;§)
         {
            this.§-;§ = null;
         }
      }
   }
}
