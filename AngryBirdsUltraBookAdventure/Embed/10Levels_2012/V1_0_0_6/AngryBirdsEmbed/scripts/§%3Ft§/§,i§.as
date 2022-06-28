package §?t§
{
   import §+!?§.§"h§;
   import §,_§.§4K§;
   import §,_§.DisplayObject;
   import §,_§.Sprite;
   import §3G§.§!E§;
   import §3G§.§]!>§;
   import §5`§.§%F§;
   import §5`§.§+R§;
   import §5`§.§+q§;
   import §5`§.§?y§;
   import §7!=§.Texture;
   import §8u§.§0r§;
   import §>K§.§+;§;
   
   public class §,i§
   {
      
      public static const §`!7§:int = 0;
      
      public static const §6I§:int = 1;
      
      public static const §0!&§:int = 2;
      
      public static const §^_§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §%Q§:String = "Effect_TrailBig_Bird";
      
      public static const §,!'§:String = "Effect_Trail_Sparkle";
      
      public static const §'!=§:String = "Effect_Floating_Score";
      
      public static const §9Q§:String = "Effect_Floating_Text";
      
      public static const §>B§:String = "Effect_Explosion_Particle";
      
      public static const §"O§:String = "Effect_Explosion_Core";
      
      public static const §,!9§:String = "Effect_Pig_Destruction";
      
      public static const §4t§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §?I§:String = "Effect_Bird_Destruction";
      
      public static const §+P§:String = "Effect_Block_Destruction_Particles";
      
      public static const § 5§:String = "Effect_Block_Destruction_Core";
      
      public static const §5! §:int = 0;
      
      public static const §>M§:int = 1;
      
      public static const §9!B§:int = 2;
      
      public static const § !G§:int = 3;
      
      public static const §2@§:int = 4;
      
      public static const §6!D§:int = 5;
      
      public static const §8H§:int = 6;
      
      public static const §7u§:int = 7;
      
      public static const §-G§:int = 8;
      
      public static const §=>§:int = 9;
      
      public static const §1!&§:int = 10;
      
      public static const §4!A§:int = 11;
      
      public static const §@k§:int = 12;
      
      public static const §^!,§:int = 13;
      
      public static const §1o§:int = 14;
      
      public static const §#s§:int = 15;
      
      public static const §>>§:int = 16;
      
      public static const §+G§:int = 17;
      
      public static const §;!G§:int = 18;
      
      public static const §`o§:Boolean = true;
       
      
      public var §<!=§:int;
      
      public var §]!8§:int;
      
      public var §;2§:String;
      
      public var §?S§:Number;
      
      public var §?v§:Number;
      
      public var §;!2§:Number;
      
      public var §?!-§:Number;
      
      public var §@!$§:Number = 0;
      
      public var §]H§:Number;
      
      public var §='§:Number;
      
      public var §-!,§:String;
      
      public var §-H§:Number = -1;
      
      public var §<§:int;
      
      public var §^C§:Number;
      
      public var §0§:Number;
      
      private var §3t§:Sprite;
      
      private var §=o§:§]!>§;
      
      private var §2g§:int;
      
      protected var §`!F§:int;
      
      protected var §!2§:Boolean;
      
      private var §-!C§:§+R§;
      
      private var §#k§:Boolean;
      
      private var §#L§:§+q§;
      
      private var §^S§:§?y§;
      
      private var §&V§:§0r§;
      
      public function §,i§(param1:§+q§, param2:§?y§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§3t§ = new Sprite();
         super();
         this.§#L§ = param1;
         this.§^S§ = param2;
         this.§;2§ = param3;
         this.§<!=§ = param5;
         this.§]!8§ = param4;
         this.§<§ = param10;
         this.§`!F§ = param16;
         this.§!2§ = param17;
         this.§-!,§ = param9;
         this.§?S§ = 0;
         this.§='§ = param8;
         this.§^C§ = param6;
         this.§0§ = param7;
         this.§]H§ = param15;
         this.§;!2§ = param11;
         this.§?v§ = param12;
         this.§@!$§ = param14;
         this.§?!-§ = param13;
         this.createVisuals();
         this.§@!>§();
         if(this.§<!=§ == §6I§)
         {
            this.§-H§ = §"h§.§1C§.§0>§.§-F§ + this.§3t§.height * §!E§.§#N§;
         }
      }
      
      public static function §?Q§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §5! §;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §9!B§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §>M§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §6!D§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §2@§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return § !G§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §;!G§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §8H§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §=>§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §7u§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §-G§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §1!&§;
         }
         return §4!A§;
      }
      
      public static function §[!1§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §@k§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §1o§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §^!,§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §+G§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §>>§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §#s§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §#s§;
         }
         return §>>§;
      }
      
      public function get §?l§() : DisplayObject
      {
         return this.§3t§;
      }
      
      public function §^y§(param1:Number, param2:Number) : void
      {
      }
      
      protected function createVisuals() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§+R§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§;2§)
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
            case §%Q§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §,!'§:
               this.createParticle("??");
               break;
            case §,!9§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §4t§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case § 5§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §"O§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §>B§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §'!=§:
            case §9Q§:
               if(parseInt(this.§-!,§) == 10000 || parseInt(this.§-!,§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§<§)
                  {
                     case §@k§:
                        _loc8_ = 16058683;
                        break;
                     case §^!,§:
                        _loc8_ = 55294;
                        break;
                     case §#s§:
                        _loc8_ = 1878602;
                        break;
                     case §+G§:
                        _loc8_ = 3552822;
                        break;
                     case §>>§:
                        break;
                     case §1o§:
                        _loc8_ = 16705792;
                  }
                  if(parseInt(this.§-!,§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§#L§.§,!;§("NUMBERS");
                  this.§=o§ = new §]!>§(_loc2_,_loc3_,true);
                  this.§=o§.§^!>§(parseInt(this.§-!,§));
                  this.§3t§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§#L§.§,!;§("NUMBERS");
               this.§=o§ = new §]!>§(_loc2_,_loc3_);
               this.§=o§.§^!>§(parseInt(this.§-!,§));
               this.§3t§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §+P§:
               switch(this.§<§)
               {
                  case §=>§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §1!&§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §7u§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §-G§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §4!A§:
                     _loc6_ = 1 + _loc1_ % 3;
               }
               if(this.§3t§)
               {
                  this.§3t§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            case §?I§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§<§)
               {
                  case §5! §:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §6!D§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §>M§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case § !G§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §2@§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §9!B§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §;!G§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§3t§)
               {
                  this.§3t§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§;2§,null,this.§`!F§,this.§!2§);
         }
      }
      
      protected function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§%F§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§#k§ = param4;
         var _loc7_:Number = 1;
         this.§-!C§ = this.§#L§.§,!;§(param1);
         if(this.§-!C§)
         {
            _loc6_ = (_loc5_ = this.§-!C§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            if(!(_loc5_ = this.§^S§.§9,§(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
         }
         this.§2g§ = param3;
         var _loc8_:§4K§ = this.§''§(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§]H§ * _loc7_;
         this.§3t§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§]H§;
            _loc8_.y = -_loc5_.pivotY * this.§]H§;
         }
         else
         {
            _loc8_.x = -this.§3t§.width / 2;
            _loc8_.y = -this.§3t§.height / 2;
         }
      }
      
      protected function §''§(param1:Texture) : §4K§
      {
         return new §4K§(param1,false);
      }
      
      public function §@!>§() : void
      {
         if(this.§3t§)
         {
            this.§3t§.x = this.§^C§ / §!E§.§#N§;
            this.§3t§.y = this.§0§ / §!E§.§#N§;
         }
      }
      
      public function § H§(param1:§0r§) : void
      {
         this.§&V§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§%F§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§4K§ = null;
         this.§?S§ += param1;
         var _loc2_:Boolean = false;
         if(this.§&V§)
         {
            if(this.§&V§.sprite == null || this.§&V§.§ x§ == null)
            {
               return false;
            }
            this.§^C§ = this.§&V§.§?n§().GetPosition().x;
            this.§0§ = this.§&V§.§?n§().GetPosition().y;
         }
         if(this.§2g§ > 0 && this.§-!C§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§?S§ / 1000 / (1 / _loc3_)) < this.§-!C§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§-!C§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.§''§(_loc6_);
               this.§3t§.§`Y§(0,-1,true);
               this.§3t§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§]H§;
               _loc8_.y = -_loc5_.pivotY * this.§]H§;
               _loc8_.scaleX = _loc8_.scaleY = this.§]H§ * _loc7_;
            }
            else if(this.§#k§)
            {
               this.§3t§.§`Y§(0,-1,true);
            }
         }
         if(this.§<!=§ == §6I§)
         {
            this.§#u§(param1);
            _loc2_ = this.§]C§(param1);
            if(this.§-H§ > 0 && this.§0§ > this.§-H§)
            {
               return false;
            }
         }
         else
         {
            this.§#u§(param1);
            _loc2_ = this.§]C§(param1);
         }
         if(this.§='§ > 0 && this.§?S§ >= this.§='§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§@!>§();
         }
         return true;
      }
      
      public function §#u§(param1:Number) : void
      {
         this.§?v§ += param1 * this.§?!-§ / 1000;
         this.§0§ += this.§?v§ * param1 / 1000;
         this.§^C§ += this.§;!2§ * param1 / 1000;
         if(this.§@!$§ != 0)
         {
            this.§3t§.rotation += this.§@!$§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §]C§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§<!=§ == §`!7§)
         {
            if(this.§='§ > 0)
            {
               _loc2_ = 1;
               if(this.§;2§ == §9Q§)
               {
                  if((_loc4_ = this.§?S§ / this.§='§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§-!,§) / 5000);
               }
               this.§3t§.scaleX = _loc2_;
               this.§3t§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§<!=§ == §6I§)
         {
            if(this.§;2§ == §>B§)
            {
               this.§3t§.alpha = Math.max(0,Math.min(1,2 * §+;§.§=z§((this.§='§ - this.§?S§) / this.§='§,false)));
               _loc5_ = Math.atan2(-this.§?v§,this.§;!2§) * (180 / Math.PI);
               this.§3t§.scaleX = Math.max(0.2,this.§3t§.alpha);
               this.§3t§.scaleY = Math.max(0.2,this.§3t§.alpha);
               this.§3t§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§;2§ == §?I§ || this.§;2§ == § 5§)
            {
               this.§3t§.scaleX = this.§3t§.scaleY = 0.2 + (this.§='§ - this.§?S§) / this.§='§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§=o§)
         {
            this.§=o§.clear();
            this.§=o§ = null;
         }
         if(this.§3t§)
         {
            this.§3t§.dispose();
            this.§3t§ = null;
         }
         if(this.§&V§)
         {
            this.§&V§ = null;
         }
      }
   }
}
