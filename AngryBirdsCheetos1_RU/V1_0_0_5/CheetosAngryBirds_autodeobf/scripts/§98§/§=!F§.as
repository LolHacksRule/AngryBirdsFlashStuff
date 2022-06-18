package §98§
{
   import §!4§.§ 8§;
   import §"C§.§?w§;
   import §%b§.§-B§;
   import §%b§.§0!Z§;
   import §'d§.§3>§;
   import §-A§.Texture;
   import §@!§.§ !N§;
   import §@!§.§8!W§;
   import §@!§.§;"§;
   import §@!§.§?! §;
   import §null §.§%!G§;
   import §null §.DisplayObject;
   import §null §.Sprite;
   
   public class §=!F§
   {
      
      public static const §&!=§:int = 0;
      
      public static const §'U§:int = 1;
      
      public static const §<=§:int = 2;
      
      public static const §`9§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §^F§:String = "Effect_TrailBig_Bird";
      
      public static const §,!&§:String = "Effect_Trail_Sparkle";
      
      public static const §false§:String = "Effect_Floating_Score";
      
      public static const §;! §:String = "Effect_Floating_Text";
      
      public static const §<!%§:String = "Effect_Explosion_Particle";
      
      public static const §>6§:String = "Effect_Explosion_Core";
      
      public static const §3!6§:String = "Effect_Pig_Destruction";
      
      public static const §;!`§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §[<§:String = "Effect_Bird_Destruction";
      
      public static const §4r§:String = "Effect_Block_Destruction_Particles";
      
      public static const §^T§:String = "Effect_Block_Destruction_Core";
      
      public static const §]!-§:int = 0;
      
      public static const §"p§:int = 1;
      
      public static const §#5§:int = 2;
      
      public static const §[!M§:int = 3;
      
      public static const §2!]§:int = 4;
      
      public static const §]!_§:int = 5;
      
      public static const §;![§:int = 6;
      
      public static const §3!N§:int = 7;
      
      public static const §5^§:int = 8;
      
      public static const §?!=§:int = 9;
      
      public static const §"!6§:int = 10;
      
      public static const §@s§:int = 11;
      
      public static const §true §:int = 12;
      
      public static const §-7§:int = 13;
      
      public static const §1p§:int = 14;
      
      public static const §2!2§:int = 15;
      
      public static const §[U§:int = 16;
      
      public static const §05§:int = 17;
      
      public static const §1O§:int = 18;
      
      public static const §5?§:Boolean = true;
       
      
      public var §!7§:int;
      
      public var § !8§:int;
      
      public var §4G§:String;
      
      public var §<0§:Number;
      
      public var §#!N§:Number;
      
      public var §%v§:Number;
      
      public var § !J§:Number;
      
      public var §71§:Number = 0;
      
      public var §-§:Number;
      
      public var §'!H§:Number;
      
      public var §?$§:String;
      
      public var §#q§:Number = -1;
      
      public var §6Q§:int;
      
      public var §+!L§:Number;
      
      public var §!;§:Number;
      
      private var §9!+§:Sprite;
      
      private var §-!<§:§-B§;
      
      private var §@S§:int;
      
      protected var §+Z§:int;
      
      protected var §^!9§:Boolean;
      
      private var §"!9§:§8!W§;
      
      private var §?!;§:Boolean;
      
      private var §finally§:§;"§;
      
      private var §`r§:§?! §;
      
      private var §'6§:§?w§;
      
      public function §=!F§(param1:§;"§, param2:§?! §, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§9!+§ = new Sprite();
         super();
         this.§finally§ = param1;
         this.§`r§ = param2;
         this.§4G§ = param3;
         this.§!7§ = param5;
         this.§ !8§ = param4;
         this.§6Q§ = param10;
         this.§+Z§ = param16;
         this.§^!9§ = param17;
         this.§?$§ = param9;
         this.§<0§ = 0;
         this.§'!H§ = param8;
         this.§+!L§ = param6;
         this.§!;§ = param7;
         this.§-§ = param15;
         this.§%v§ = param11;
         this.§#!N§ = param12;
         this.§71§ = param14;
         this.§ !J§ = param13;
         this.createVisuals();
         this.§2'§();
         if(this.§!7§ == §'U§)
         {
            this.§#q§ = §3>§.§8!$§.§break§.§!!%§ + this.§9!+§.height * §0!Z§.§+n§;
         }
      }
      
      public static function §2T§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §]!-§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §#5§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §"p§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §]!_§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §2!]§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §[!M§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §1O§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §;![§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §?!=§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §3!N§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §5^§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §"!6§;
         }
         return §@s§;
      }
      
      public static function §4#§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §true §;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §1p§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §-7§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §05§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §[U§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §2!2§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §2!2§;
         }
         return §[U§;
      }
      
      public function get §;h§() : DisplayObject
      {
         return this.§9!+§;
      }
      
      public function §;X§(param1:Number, param2:Number) : void
      {
      }
      
      protected function createVisuals() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§8!W§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§4G§)
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
            case §^F§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §,!&§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §3!6§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §;!`§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §^T§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §>6§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §<!%§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §false§:
            case §;! §:
               if(parseInt(this.§?$§) == 10000 || parseInt(this.§?$§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§6Q§)
                  {
                     case §true §:
                        _loc8_ = 16058683;
                        break;
                     case §-7§:
                        _loc8_ = 55294;
                        break;
                     case §2!2§:
                        _loc8_ = 1878602;
                        break;
                     case §05§:
                        _loc8_ = 3552822;
                        break;
                     case §[U§:
                        break;
                     case §1p§:
                        _loc8_ = 16705792;
                  }
                  if(parseInt(this.§?$§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§finally§.§0g§("NUMBERS");
                  this.§-!<§ = new §-B§(_loc2_,_loc3_,true);
                  this.§-!<§.§9!2§(parseInt(this.§?$§));
                  this.§9!+§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§finally§.§0g§("NUMBERS");
               this.§-!<§ = new §-B§(_loc2_,_loc3_);
               this.§-!<§.§9!2§(parseInt(this.§?$§));
               this.§9!+§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §4r§:
               switch(this.§6Q§)
               {
                  case §?!=§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §"!6§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §3!N§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §5^§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §@s§:
                     _loc6_ = 1 + _loc1_ % 3;
               }
               if(this.§9!+§)
               {
                  this.§9!+§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §[<§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§6Q§)
               {
                  case §]!-§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §]!_§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §"p§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §[!M§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §2!]§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §#5§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §1O§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§9!+§)
               {
                  this.§9!+§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§4G§,null,this.§+Z§,this.§^!9§);
         }
      }
      
      protected function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§ !N§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§?!;§ = param4;
         var _loc7_:Number = 1;
         this.§"!9§ = this.§finally§.§0g§(param1);
         if(this.§"!9§)
         {
            _loc6_ = (_loc5_ = this.§"!9§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            if(!(_loc5_ = this.§`r§.§-J§(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
         }
         this.§@S§ = param3;
         var _loc8_:§%!G§ = this.§4!F§(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§-§ * _loc7_;
         this.§9!+§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§-§;
            _loc8_.y = -_loc5_.pivotY * this.§-§;
         }
         else
         {
            _loc8_.x = -this.§9!+§.width / 2;
            _loc8_.y = -this.§9!+§.height / 2;
         }
      }
      
      protected function §4!F§(param1:Texture) : §%!G§
      {
         return new §%!G§(param1,false);
      }
      
      public function §2'§() : void
      {
         if(this.§9!+§)
         {
            this.§9!+§.x = this.§+!L§ / §0!Z§.§+n§;
            this.§9!+§.y = this.§!;§ / §0!Z§.§+n§;
         }
      }
      
      public function §%&§(param1:§?w§) : void
      {
         this.§'6§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§ !N§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§%!G§ = null;
         this.§<0§ += param1;
         var _loc2_:Boolean = false;
         if(this.§'6§)
         {
            if(this.§'6§.sprite == null || this.§'6§.§;M§ == null)
            {
               return false;
            }
            this.§+!L§ = this.§'6§.§?@§().GetPosition().x;
            this.§!;§ = this.§'6§.§?@§().GetPosition().y;
         }
         if(this.§@S§ > 0 && this.§"!9§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§<0§ / 1000 / (1 / _loc3_)) < this.§"!9§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§"!9§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.§4!F§(_loc6_);
               this.§9!+§.§&!-§(0,-1,true);
               this.§9!+§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§-§;
               _loc8_.y = -_loc5_.pivotY * this.§-§;
               _loc8_.scaleX = _loc8_.scaleY = this.§-§ * _loc7_;
            }
            else if(this.§?!;§)
            {
               this.§9!+§.§&!-§(0,-1,true);
            }
         }
         if(this.§!7§ == §'U§)
         {
            this.§@j§(param1);
            _loc2_ = this.§-t§(param1);
            if(this.§#q§ > 0 && this.§!;§ > this.§#q§)
            {
               return false;
            }
         }
         else
         {
            this.§@j§(param1);
            _loc2_ = this.§-t§(param1);
         }
         if(this.§'!H§ > 0 && this.§<0§ >= this.§'!H§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§2'§();
         }
         return true;
      }
      
      public function §@j§(param1:Number) : void
      {
         this.§#!N§ += param1 * this.§ !J§ / 1000;
         this.§!;§ += this.§#!N§ * param1 / 1000;
         this.§+!L§ += this.§%v§ * param1 / 1000;
         if(this.§71§ != 0)
         {
            this.§9!+§.rotation += this.§71§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §-t§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§!7§ == §&!=§)
         {
            if(this.§'!H§ > 0)
            {
               _loc2_ = 1;
               if(this.§4G§ == §;! §)
               {
                  if((_loc4_ = this.§<0§ / this.§'!H§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§?$§) / 5000);
               }
               this.§9!+§.scaleX = _loc2_;
               this.§9!+§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§!7§ == §'U§)
         {
            if(this.§4G§ == §<!%§)
            {
               this.§9!+§.alpha = Math.max(0,Math.min(1,2 * § 8§.§7u§((this.§'!H§ - this.§<0§) / this.§'!H§,false)));
               _loc5_ = Math.atan2(-this.§#!N§,this.§%v§) * (180 / Math.PI);
               this.§9!+§.scaleX = Math.max(0.2,this.§9!+§.alpha);
               this.§9!+§.scaleY = Math.max(0.2,this.§9!+§.alpha);
               this.§9!+§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§4G§ == §[<§ || this.§4G§ == §^T§)
            {
               this.§9!+§.scaleX = this.§9!+§.scaleY = 0.2 + (this.§'!H§ - this.§<0§) / this.§'!H§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§-!<§)
         {
            this.§-!<§.clear();
            this.§-!<§ = null;
         }
         if(this.§9!+§)
         {
            this.§9!+§.dispose();
            this.§9!+§ = null;
         }
         if(this.§'6§)
         {
            this.§'6§ = null;
         }
      }
   }
}
