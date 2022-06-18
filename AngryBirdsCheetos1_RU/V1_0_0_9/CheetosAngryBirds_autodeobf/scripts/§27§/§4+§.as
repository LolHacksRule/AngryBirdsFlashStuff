package §27§
{
   import §#!P§.§2!W§;
   import §#!`§.Texture;
   import §-!6§.§%=§;
   import §3E§.§'!G§;
   import §3E§.§6w§;
   import §7!U§.§2!7§;
   import §7u§.§&!C§;
   import §7u§.DisplayObject;
   import §7u§.Sprite;
   import §`!B§.§'I§;
   import §`!B§.§2j§;
   import §`!B§.§4!I§;
   import §`!B§.§=m§;
   
   public class §4+§
   {
      
      public static const §<!&§:int = 0;
      
      public static const §&'§:int = 1;
      
      public static const §!Y§:int = 2;
      
      public static const §2!A§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §8!$§:String = "Effect_TrailBig_Bird";
      
      public static const §>!O§:String = "Effect_Trail_Sparkle";
      
      public static const §8!-§:String = "Effect_Floating_Score";
      
      public static const §^#§:String = "Effect_Floating_Text";
      
      public static const §-O§:String = "Effect_Explosion_Particle";
      
      public static const §>!!§:String = "Effect_Explosion_Core";
      
      public static const §3!5§:String = "Effect_Pig_Destruction";
      
      public static const §[!N§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §5!`§:String = "Effect_Bird_Destruction";
      
      public static const §+c§:String = "Effect_Block_Destruction_Particles";
      
      public static const §5>§:String = "Effect_Block_Destruction_Core";
      
      public static const §=n§:int = 0;
      
      public static const §>=§:int = 1;
      
      public static const §@Z§:int = 2;
      
      public static const §"M§:int = 3;
      
      public static const §6!P§:int = 4;
      
      public static const §%Q§:int = 5;
      
      public static const § !4§:int = 6;
      
      public static const §?]§:int = 7;
      
      public static const §!c§:int = 8;
      
      public static const § 1§:int = 9;
      
      public static const §]!P§:int = 10;
      
      public static const §5!!§:int = 11;
      
      public static const §`q§:int = 12;
      
      public static const §'!W§:int = 13;
      
      public static const §#!M§:int = 14;
      
      public static const §`7§:int = 15;
      
      public static const §@3§:int = 16;
      
      public static const §3Q§:int = 17;
      
      public static const §6$§:int = 18;
      
      public static const §0!%§:Boolean = true;
       
      
      public var §#e§:int;
      
      public var §%T§:int;
      
      public var §-@§:String;
      
      public var §--§:Number;
      
      public var §`!%§:Number;
      
      public var §3§:Number;
      
      public var §@i§:Number;
      
      public var §<n§:Number = 0;
      
      public var §#l§:Number;
      
      public var §&N§:Number;
      
      public var §61§:String;
      
      public var §5!+§:Number = -1;
      
      public var §;!E§:int;
      
      public var §,G§:Number;
      
      public var §-+§:Number;
      
      private var §=U§:Sprite;
      
      private var §`!5§:§'!G§;
      
      private var §8e§:int;
      
      protected var §8!M§:int;
      
      protected var §=`§:Boolean;
      
      private var §@q§:§2j§;
      
      private var §[$§:Boolean;
      
      private var §-I§:§'I§;
      
      private var §7!W§:§=m§;
      
      private var §3!2§:§2!W§;
      
      public function §4+§(param1:§'I§, param2:§=m§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§=U§ = new Sprite();
         super();
         this.§-I§ = param1;
         this.§7!W§ = param2;
         this.§-@§ = param3;
         this.§#e§ = param5;
         this.§%T§ = param4;
         this.§;!E§ = param10;
         this.§8!M§ = param16;
         this.§=`§ = param17;
         this.§61§ = param9;
         this.§--§ = 0;
         this.§&N§ = param8;
         this.§,G§ = param6;
         this.§-+§ = param7;
         this.§#l§ = param15;
         this.§3§ = param11;
         this.§`!%§ = param12;
         this.§<n§ = param14;
         this.§@i§ = param13;
         this.createVisuals();
         this.§%P§();
         if(this.§#e§ == §&'§)
         {
            this.§5!+§ = §2!7§.§5G§.§[2§.§@I§ + this.§=U§.height * §6w§.§?!^§;
         }
      }
      
      public static function §#]§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §=n§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §@Z§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §>=§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §%Q§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §6!P§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §"M§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §6$§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return § !4§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return § 1§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §?]§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §!c§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §]!P§;
         }
         return §5!!§;
      }
      
      public static function §4B§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §`q§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §#!M§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §'!W§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §3Q§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §@3§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §`7§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §`7§;
         }
         return §@3§;
      }
      
      public function get §^z§() : DisplayObject
      {
         return this.§=U§;
      }
      
      public function § R§(param1:Number, param2:Number) : void
      {
      }
      
      protected function createVisuals() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§2j§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§-@§)
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
            case §8!$§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §>!O§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §3!5§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §[!N§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §5>§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §>!!§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §-O§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §8!-§:
            case §^#§:
               if(parseInt(this.§61§) == 10000 || parseInt(this.§61§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§;!E§)
                  {
                     case §`q§:
                        _loc8_ = 16058683;
                        break;
                     case §'!W§:
                        _loc8_ = 55294;
                        break;
                     case §`7§:
                        _loc8_ = 1878602;
                        break;
                     case §3Q§:
                        _loc8_ = 3552822;
                        break;
                     case §@3§:
                        break;
                     case §#!M§:
                        _loc8_ = 16705792;
                  }
                  if(parseInt(this.§61§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§-I§.§;!!§("NUMBERS");
                  this.§`!5§ = new §'!G§(_loc2_,_loc3_,true);
                  this.§`!5§.§#!'§(parseInt(this.§61§));
                  this.§=U§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§-I§.§;!!§("NUMBERS");
               this.§`!5§ = new §'!G§(_loc2_,_loc3_);
               this.§`!5§.§#!'§(parseInt(this.§61§));
               this.§=U§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §+c§:
               switch(this.§;!E§)
               {
                  case § 1§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §]!P§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §?]§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §!c§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §5!!§:
                     _loc6_ = 1 + _loc1_ % 3;
               }
               if(this.§=U§)
               {
                  this.§=U§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §5!`§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§;!E§)
               {
                  case §=n§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §%Q§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §>=§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §"M§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §6!P§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §@Z§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §6$§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§=U§)
               {
                  this.§=U§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§-@§,null,this.§8!M§,this.§=`§);
         }
      }
      
      protected function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§4!I§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§[$§ = param4;
         var _loc7_:Number = 1;
         this.§@q§ = this.§-I§.§;!!§(param1);
         if(this.§@q§)
         {
            _loc6_ = (_loc5_ = this.§@q§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            if(!(_loc5_ = this.§7!W§.§@d§(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
         }
         this.§8e§ = param3;
         var _loc8_:§&!C§ = this.§]!A§(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§#l§ * _loc7_;
         this.§=U§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§#l§;
            _loc8_.y = -_loc5_.pivotY * this.§#l§;
         }
         else
         {
            _loc8_.x = -this.§=U§.width / 2;
            _loc8_.y = -this.§=U§.height / 2;
         }
      }
      
      protected function §]!A§(param1:Texture) : §&!C§
      {
         return new §&!C§(param1,false);
      }
      
      public function §%P§() : void
      {
         if(this.§=U§)
         {
            this.§=U§.x = this.§,G§ / §6w§.§?!^§;
            this.§=U§.y = this.§-+§ / §6w§.§?!^§;
         }
      }
      
      public function §>J§(param1:§2!W§) : void
      {
         this.§3!2§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§4!I§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§&!C§ = null;
         this.§--§ += param1;
         var _loc2_:Boolean = false;
         if(this.§3!2§)
         {
            if(this.§3!2§.sprite == null || this.§3!2§.§<&§ == null)
            {
               return false;
            }
            this.§,G§ = this.§3!2§.§84§().GetPosition().x;
            this.§-+§ = this.§3!2§.§84§().GetPosition().y;
         }
         if(this.§8e§ > 0 && this.§@q§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§--§ / 1000 / (1 / _loc3_)) < this.§@q§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§@q§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.§]!A§(_loc6_);
               this.§=U§.§,!A§(0,-1,true);
               this.§=U§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§#l§;
               _loc8_.y = -_loc5_.pivotY * this.§#l§;
               _loc8_.scaleX = _loc8_.scaleY = this.§#l§ * _loc7_;
            }
            else if(this.§[$§)
            {
               this.§=U§.§,!A§(0,-1,true);
            }
         }
         if(this.§#e§ == §&'§)
         {
            this.§0!5§(param1);
            _loc2_ = this.§?<§(param1);
            if(this.§5!+§ > 0 && this.§-+§ > this.§5!+§)
            {
               return false;
            }
         }
         else
         {
            this.§0!5§(param1);
            _loc2_ = this.§?<§(param1);
         }
         if(this.§&N§ > 0 && this.§--§ >= this.§&N§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§%P§();
         }
         return true;
      }
      
      public function §0!5§(param1:Number) : void
      {
         this.§`!%§ += param1 * this.§@i§ / 1000;
         this.§-+§ += this.§`!%§ * param1 / 1000;
         this.§,G§ += this.§3§ * param1 / 1000;
         if(this.§<n§ != 0)
         {
            this.§=U§.rotation += this.§<n§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §?<§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§#e§ == §<!&§)
         {
            if(this.§&N§ > 0)
            {
               _loc2_ = 1;
               if(this.§-@§ == §^#§)
               {
                  if((_loc4_ = this.§--§ / this.§&N§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§61§) / 5000);
               }
               this.§=U§.scaleX = _loc2_;
               this.§=U§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§#e§ == §&'§)
         {
            if(this.§-@§ == §-O§)
            {
               this.§=U§.alpha = Math.max(0,Math.min(1,2 * §%=§.§&K§((this.§&N§ - this.§--§) / this.§&N§,false)));
               _loc5_ = Math.atan2(-this.§`!%§,this.§3§) * (180 / Math.PI);
               this.§=U§.scaleX = Math.max(0.2,this.§=U§.alpha);
               this.§=U§.scaleY = Math.max(0.2,this.§=U§.alpha);
               this.§=U§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§-@§ == §5!`§ || this.§-@§ == §5>§)
            {
               this.§=U§.scaleX = this.§=U§.scaleY = 0.2 + (this.§&N§ - this.§--§) / this.§&N§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§`!5§)
         {
            this.§`!5§.clear();
            this.§`!5§ = null;
         }
         if(this.§=U§)
         {
            this.§=U§.dispose();
            this.§=U§ = null;
         }
         if(this.§3!2§)
         {
            this.§3!2§ = null;
         }
      }
   }
}
