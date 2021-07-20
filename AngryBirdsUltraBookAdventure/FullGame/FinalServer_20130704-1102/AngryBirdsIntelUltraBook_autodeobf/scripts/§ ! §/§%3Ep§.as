package § ! §
{
   import § var§.§!u§;
   import §1!B§.§#A§;
   import §40§.§&d§;
   import §40§.§5G§;
   import §;!y§.§,!s§;
   import §=`§.§#`§;
   import §=`§.§%!L§;
   import §=`§.§6!I§;
   import §=`§.§7!V§;
   import §?]§.Texture;
   import §`g§.§"<§;
   import §`g§.DisplayObject;
   import §`g§.Sprite;
   
   public class §>p§
   {
      
      public static const §6!k§:int = 0;
      
      public static const §%§:int = 1;
      
      public static const §>b§:int = 2;
      
      public static const §?-§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §@=§:String = "Effect_TrailBig_Bird";
      
      public static const §8_§:String = "Effect_Trail_Sparkle";
      
      public static const §%"§:String = "Effect_Floating_Score";
      
      public static const §=Y§:String = "Effect_Floating_Text";
      
      public static const §=!i§:String = "Effect_Explosion_Particle";
      
      public static const §4!#§:String = "Effect_Explosion_Core";
      
      public static const §@!J§:String = "Effect_Pig_Destruction";
      
      public static const §#!J§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §&@§:String = "Effect_Bird_Destruction";
      
      public static const §,+§:String = "Effect_Block_Destruction_Particles";
      
      public static const §'f§:String = "Effect_Block_Destruction_Core";
      
      public static const §9§:int = 0;
      
      public static const §;!'§:int = 1;
      
      public static const §1>§:int = 2;
      
      public static const §'!Z§:int = 3;
      
      public static const §]!f§:int = 4;
      
      public static const §!!+§:int = 5;
      
      public static const §4?§:int = 6;
      
      public static const §9c§:int = 7;
      
      public static const §2U§:int = 8;
      
      public static const §3!u§:int = 9;
      
      public static const §5^§:int = 10;
      
      public static const §2!Z§:int = 11;
      
      public static const §0k§:int = 12;
      
      public static const §]!^§:int = 13;
      
      public static const § e§:int = 14;
      
      public static const §"o§:int = 15;
      
      public static const §"T§:int = 16;
      
      public static const §60§:int = 17;
      
      public static const §^n§:int = 18;
      
      public static const §3" §:int = 19;
      
      public static const §!i§:Boolean = true;
       
      
      public var §,!I§:int;
      
      public var §9P§:int;
      
      public var §[!_§:String;
      
      public var §4!K§:Number;
      
      public var §[j§:Number;
      
      public var §;!i§:Number;
      
      public var §'5§:Number;
      
      public var §2F§:Number = 0;
      
      public var §?z§:Number;
      
      public var §4!P§:Number;
      
      public var §#_§:String;
      
      public var §1s§:Number = -1;
      
      public var §-!t§:int;
      
      public var §#!!§:Number;
      
      public var §!!3§:Number;
      
      protected var §;!w§:Sprite;
      
      private var §&X§:§&d§;
      
      private var §";§:int;
      
      protected var §,r§:int;
      
      protected var §^a§:Boolean;
      
      private var §0"$§:§%!L§;
      
      private var §5!G§:Boolean;
      
      private var §1H§:§7!V§;
      
      private var §&!k§:§6!I§;
      
      private var each:§!u§;
      
      public function §>p§(param1:§7!V§, param2:§6!I§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§;!w§ = new Sprite();
         super();
         this.§1H§ = param1;
         this.§&!k§ = param2;
         this.§[!_§ = param3;
         this.§,!I§ = param5;
         this.§9P§ = param4;
         this.§-!t§ = param10;
         this.§,r§ = param16;
         this.§^a§ = param17;
         this.§#_§ = param9;
         this.§4!K§ = 0;
         this.§4!P§ = param8;
         this.§#!!§ = param6;
         this.§!!3§ = param7;
         this.§?z§ = param15;
         this.§;!i§ = param11;
         this.§[j§ = param12;
         this.§2F§ = param14;
         this.§'5§ = param13;
         this.createVisuals();
         this.§]!R§();
         if(this.§,!I§ == §%§)
         {
            this.§1s§ = §,!s§.§=!I§.§!#§.§]!L§ + this.§;!w§.height * §5G§.§6+§;
         }
      }
      
      public static function §=!f§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §9§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §1>§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §;!'§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §!!+§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §]!f§;
         }
         if(param1.toUpperCase().indexOf("BIRD_ORANGE") >= 0)
         {
            return §1>§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §'!Z§;
         }
         if(param1.toUpperCase().indexOf("BIRD_CHRISTMAS") >= 0)
         {
            return §!!+§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WINGMAN") >= 0)
         {
            return §9§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §^n§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §4?§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §3!u§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §9c§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §2U§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §5^§;
         }
         return §2!Z§;
      }
      
      public static function §?`§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §0k§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return § e§;
         }
         if(param1.toUpperCase().indexOf("BIRD_ORANGE") >= 0)
         {
            return §3" §;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §]!^§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §60§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §"T§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §"o§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §"o§;
         }
         return §"T§;
      }
      
      public function get §3!Q§() : DisplayObject
      {
         return this.§;!w§;
      }
      
      public function §0!K§(param1:Number, param2:Number) : void
      {
      }
      
      protected function createVisuals() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§%!L§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§[!_§)
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
            case §@=§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §8_§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §@!J§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §#!J§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §'f§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §4!#§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §=!i§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §%"§:
            case §=Y§:
               if(parseInt(this.§#_§) == 10000 || parseInt(this.§#_§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§-!t§)
                  {
                     case §0k§:
                        _loc8_ = 16058683;
                        break;
                     case §]!^§:
                        _loc8_ = 55294;
                        break;
                     case §"o§:
                        _loc8_ = 1878602;
                        break;
                     case §60§:
                        _loc8_ = 3552822;
                        break;
                     case §"T§:
                        break;
                     case § e§:
                        _loc8_ = 16705792;
                        break;
                     case §3" §:
                        _loc8_ = 16753152;
                  }
                  if(parseInt(this.§#_§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§1H§.getAnimation("NUMBERS");
                  this.§&X§ = new §&d§(_loc2_,_loc3_,true);
                  this.§&X§.§1u§(parseInt(this.§#_§));
                  this.§;!w§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
               }
               else
               {
                  _loc2_ = new Sprite();
                  _loc3_ = this.§1H§.getAnimation("NUMBERS");
                  this.§&X§ = new §&d§(_loc2_,_loc3_);
                  this.§&X§.§1u§(parseInt(this.§#_§));
                  this.§;!w§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
               }
               break;
            case §,+§:
               switch(this.§-!t§)
               {
                  case §3!u§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §5^§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §9c§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §2U§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §2!Z§:
                     _loc6_ = 1 + _loc1_ % 3;
               }
               if(this.§;!w§)
               {
                  this.§;!w§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §&@§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§-!t§)
               {
                  case §9§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §!!+§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §;!'§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §'!Z§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §]!f§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §1>§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §^n§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§;!w§)
               {
                  this.§;!w§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            default:
               this.createParticle(this.§[!_§,null,this.§,r§,this.§^a§);
         }
      }
      
      protected function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§#`§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§5!G§ = param4;
         var _loc7_:Number = 1;
         this.§0"$§ = this.§1H§.getAnimation(param1);
         if(this.§0"$§)
         {
            _loc6_ = (_loc5_ = this.§0"$§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            if(!(_loc5_ = this.§&!k§.§&u§(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
         }
         this.§";§ = param3;
         var _loc8_:§"<§ = this.§+3§(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§?z§ * _loc7_;
         this.§;!w§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§?z§;
            _loc8_.y = -_loc5_.pivotY * this.§?z§;
         }
         else
         {
            _loc8_.x = -this.§;!w§.width / 2;
            _loc8_.y = -this.§;!w§.height / 2;
         }
      }
      
      protected function §+3§(param1:Texture) : §"<§
      {
         return new §"<§(param1,false);
      }
      
      public function §]!R§() : void
      {
         if(this.§;!w§)
         {
            this.§;!w§.x = this.§#!!§ / §5G§.§6+§;
            this.§;!w§.y = this.§!!3§ / §5G§.§6+§;
         }
      }
      
      public function §5!X§(param1:§!u§) : void
      {
         this.each = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§#`§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§"<§ = null;
         this.§4!K§ += param1;
         var _loc2_:Boolean = false;
         if(this.each)
         {
            if(this.each.sprite == null || this.each.§2f§ == null)
            {
               return false;
            }
            this.§#!!§ = this.each.§63§().GetPosition().x;
            this.§!!3§ = this.each.§63§().GetPosition().y;
         }
         if(this.§";§ > 0 && this.§0"$§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§4!K§ / 1000 / (1 / _loc3_)) < this.§0"$§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§0"$§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.§+3§(_loc6_);
               this.§;!w§.§5!7§(0,-1,true);
               this.§;!w§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§?z§;
               _loc8_.y = -_loc5_.pivotY * this.§?z§;
               _loc8_.scaleX = _loc8_.scaleY = this.§?z§ * _loc7_;
            }
            else if(this.§5!G§)
            {
               this.§;!w§.§5!7§(0,-1,true);
            }
         }
         if(this.§,!I§ == §%§)
         {
            this.§2!-§(param1);
            _loc2_ = this.§'X§(param1);
            if(this.§1s§ > 0 && this.§!!3§ > this.§1s§)
            {
               return false;
            }
         }
         else
         {
            this.§2!-§(param1);
            _loc2_ = this.§'X§(param1);
         }
         if(this.§4!P§ > 0 && this.§4!K§ >= this.§4!P§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§]!R§();
         }
         return true;
      }
      
      public function §2!-§(param1:Number) : void
      {
         this.§[j§ += param1 * this.§'5§ / 1000;
         this.§!!3§ += this.§[j§ * param1 / 1000;
         this.§#!!§ += this.§;!i§ * param1 / 1000;
         if(this.§2F§ != 0)
         {
            this.§;!w§.rotation += this.§2F§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §'X§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§,!I§ == §6!k§)
         {
            if(this.§4!P§ > 0)
            {
               _loc2_ = 1;
               if(this.§[!_§ == §=Y§)
               {
                  if((_loc4_ = this.§4!K§ / this.§4!P§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§#_§) / 5000);
               }
               this.§;!w§.scaleX = _loc2_;
               this.§;!w§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§,!I§ == §%§)
         {
            if(this.§[!_§ == §=!i§)
            {
               this.§;!w§.alpha = Math.max(0,Math.min(1,2 * §#A§.§=!N§((this.§4!P§ - this.§4!K§) / this.§4!P§,false)));
               _loc5_ = Math.atan2(-this.§[j§,this.§;!i§) * (180 / Math.PI);
               this.§;!w§.scaleX = Math.max(0.2,this.§;!w§.alpha);
               this.§;!w§.scaleY = Math.max(0.2,this.§;!w§.alpha);
               this.§;!w§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§[!_§ == §&@§ || this.§[!_§ == §'f§)
            {
               this.§;!w§.scaleX = this.§;!w§.scaleY = 0.2 + (this.§4!P§ - this.§4!K§) / this.§4!P§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§&X§)
         {
            this.§&X§.clear();
            this.§&X§ = null;
         }
         if(this.§;!w§)
         {
            this.§;!w§.dispose();
            this.§;!w§ = null;
         }
         if(this.each)
         {
            this.each = null;
         }
      }
   }
}
