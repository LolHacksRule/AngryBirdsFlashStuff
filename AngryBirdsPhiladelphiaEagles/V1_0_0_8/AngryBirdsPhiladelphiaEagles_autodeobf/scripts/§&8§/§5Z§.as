package §&8§
{
   import §"1§.§-^§;
   import §,T§.§!R§;
   import §,T§.§[-§;
   import §,]§.Texture;
   import §-!'§.§3!1§;
   import §-!'§.DisplayObject;
   import §-!'§.Sprite;
   import §0=§.§2p§;
   import §<A§.§'K§;
   import §<A§.§'n§;
   import §<A§.§8<§;
   import §<A§.§;V§;
   import §=z§.§0!E§;
   
   public class §5Z§
   {
      
      public static const §#L§:int = 0;
      
      public static const §@!<§:int = 1;
      
      public static const §,!=§:int = 2;
      
      public static const §2m§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §<;§:String = "Effect_TrailBig_Bird";
      
      public static const §^$§:String = "Effect_Trail_Sparkle";
      
      public static const §^>§:String = "Effect_Floating_Score";
      
      public static const §'!<§:String = "Effect_Floating_Text";
      
      public static const §#J§:String = "Effect_Explosion_Particle";
      
      public static const §4?§:String = "Effect_Explosion_Core";
      
      public static const §;!A§:String = "Effect_Pig_Destruction";
      
      public static const § m§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §=!>§:String = "Effect_Bird_Destruction";
      
      public static const §@!4§:String = "Effect_Block_Destruction_Particles";
      
      public static const §'A§:String = "Effect_Block_Destruction_Core";
      
      public static const §3x§:int = 0;
      
      public static const §1I§:int = 1;
      
      public static const §<p§:int = 2;
      
      public static const §9;§:int = 3;
      
      public static const §,!'§:int = 4;
      
      public static const §try§:int = 5;
      
      public static const §<!J§:int = 6;
      
      public static const §2W§:int = 7;
      
      public static const §7!+§:int = 8;
      
      public static const §<!-§:int = 9;
      
      public static const §>P§:int = 10;
      
      public static const §@?§:int = 11;
      
      public static const §1j§:int = 12;
      
      public static const §'0§:int = 13;
      
      public static const §%!8§:int = 14;
      
      public static const §-L§:int = 15;
      
      public static const §else§:int = 16;
      
      public static const §51§:int = 17;
      
      public static const §for§:int = 18;
      
      public static const §4!&§:Boolean = true;
       
      
      public var §0I§:int;
      
      public var §-4§:int;
      
      public var §@u§:String;
      
      public var §-w§:Number;
      
      public var §1i§:Number;
      
      public var §?!$§:Number;
      
      public var §#!7§:Number;
      
      public var §?r§:Number = 0;
      
      public var § R§:Number;
      
      public var §55§:Number;
      
      public var §@V§:String;
      
      public var §[4§:Number = -1;
      
      public var §&=§:int;
      
      public var §+Z§:Number;
      
      public var §04§:Number;
      
      private var §&l§:Sprite;
      
      private var §+-§:§!R§;
      
      private var §>z§:int;
      
      protected var §38§:int;
      
      protected var §;!G§:Boolean;
      
      private var §;T§:§;V§;
      
      private var §'Q§:Boolean;
      
      private var §7[§:§'n§;
      
      private var §@!8§:§'K§;
      
      private var §>Q§:§2p§;
      
      public function §5Z§(param1:§'n§, param2:§'K§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§&l§ = new Sprite();
         super();
         this.§7[§ = param1;
         this.§@!8§ = param2;
         this.§@u§ = param3;
         this.§0I§ = param5;
         this.§-4§ = param4;
         this.§&=§ = param10;
         this.§38§ = param16;
         this.§;!G§ = param17;
         this.§@V§ = param9;
         this.§-w§ = 0;
         this.§55§ = param8;
         this.§+Z§ = param6;
         this.§04§ = param7;
         this.§ R§ = param15;
         this.§?!$§ = param11;
         this.§1i§ = param12;
         this.§?r§ = param14;
         this.§#!7§ = param13;
         this.createVisuals();
         this.§+?§();
         if(this.§0I§ == §@!<§)
         {
            this.§[4§ = §0!E§.§9!B§.§,y§.§+D§ + this.§&l§.height * §[-§.§;5§;
         }
      }
      
      public static function §89§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §3x§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §<p§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §1I§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §try§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §,!'§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §9;§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §for§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §<!J§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §<!-§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §2W§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §7!+§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §>P§;
         }
         return §@?§;
      }
      
      public static function §?!&§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §1j§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §%!8§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §'0§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §51§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §else§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §-L§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §-L§;
         }
         return §else§;
      }
      
      public function get §extends§() : DisplayObject
      {
         return this.§&l§;
      }
      
      public function §;!#§(param1:Number, param2:Number) : void
      {
      }
      
      protected function createVisuals() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§;V§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§@u§)
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
            case §<;§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §^$§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §;!A§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case § m§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §'A§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §4?§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §#J§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §^>§:
            case §'!<§:
               if(parseInt(this.§@V§) == 10000 || parseInt(this.§@V§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§&=§)
                  {
                     case §1j§:
                        _loc8_ = 16058683;
                        break;
                     case §'0§:
                        _loc8_ = 55294;
                        break;
                     case §-L§:
                        _loc8_ = 1878602;
                        break;
                     case §51§:
                        _loc8_ = 3552822;
                        break;
                     case §else§:
                        break;
                     case §%!8§:
                        _loc8_ = 16705792;
                  }
                  if(parseInt(this.§@V§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§7[§.getAnimation("NUMBERS");
                  this.§+-§ = new §!R§(_loc2_,_loc3_,true);
                  this.§+-§.§0B§(parseInt(this.§@V§));
                  this.§&l§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§7[§.getAnimation("NUMBERS");
               this.§+-§ = new §!R§(_loc2_,_loc3_);
               this.§+-§.§0B§(parseInt(this.§@V§));
               this.§&l§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §@!4§:
               switch(this.§&=§)
               {
                  case §<!-§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §>P§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §2W§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §7!+§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §@?§:
                     _loc6_ = 1 + _loc1_ % 3;
               }
               if(this.§&l§)
               {
                  this.§&l§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §=!>§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§&=§)
               {
                  case §3x§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §try§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §1I§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §9;§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §,!'§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §<p§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §for§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§&l§)
               {
                  this.§&l§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§@u§,null,this.§38§,this.§;!G§);
         }
      }
      
      protected function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§8<§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§'Q§ = param4;
         var _loc7_:Number = 1;
         this.§;T§ = this.§7[§.getAnimation(param1);
         if(this.§;T§)
         {
            _loc6_ = (_loc5_ = this.§;T§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            if(!(_loc5_ = this.§@!8§.§@y§(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
         }
         this.§>z§ = param3;
         var _loc8_:§3!1§ = this.§8,§(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§ R§ * _loc7_;
         this.§&l§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§ R§;
            _loc8_.y = -_loc5_.pivotY * this.§ R§;
         }
         else
         {
            _loc8_.x = -this.§&l§.width / 2;
            _loc8_.y = -this.§&l§.height / 2;
         }
      }
      
      protected function §8,§(param1:Texture) : §3!1§
      {
         return new §3!1§(param1,false);
      }
      
      public function §+?§() : void
      {
         if(this.§&l§)
         {
            this.§&l§.x = this.§+Z§ / §[-§.§;5§;
            this.§&l§.y = this.§04§ / §[-§.§;5§;
         }
      }
      
      public function §;Q§(param1:§2p§) : void
      {
         this.§>Q§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§8<§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§3!1§ = null;
         this.§-w§ += param1;
         var _loc2_:Boolean = false;
         if(this.§>Q§)
         {
            if(this.§>Q§.sprite == null || this.§>Q§.§&v§ == null)
            {
               return false;
            }
            this.§+Z§ = this.§>Q§.§;!M§().GetPosition().x;
            this.§04§ = this.§>Q§.§;!M§().GetPosition().y;
         }
         if(this.§>z§ > 0 && this.§;T§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§-w§ / 1000 / (1 / _loc3_)) < this.§;T§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§;T§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.§8,§(_loc6_);
               this.§&l§.§=e§(0,-1,true);
               this.§&l§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§ R§;
               _loc8_.y = -_loc5_.pivotY * this.§ R§;
               _loc8_.scaleX = _loc8_.scaleY = this.§ R§ * _loc7_;
            }
            else if(this.§'Q§)
            {
               this.§&l§.§=e§(0,-1,true);
            }
         }
         if(this.§0I§ == §@!<§)
         {
            this.§<!?§(param1);
            _loc2_ = this.§'h§(param1);
            if(this.§[4§ > 0 && this.§04§ > this.§[4§)
            {
               return false;
            }
         }
         else
         {
            this.§<!?§(param1);
            _loc2_ = this.§'h§(param1);
         }
         if(this.§55§ > 0 && this.§-w§ >= this.§55§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§+?§();
         }
         return true;
      }
      
      public function §<!?§(param1:Number) : void
      {
         this.§1i§ += param1 * this.§#!7§ / 1000;
         this.§04§ += this.§1i§ * param1 / 1000;
         this.§+Z§ += this.§?!$§ * param1 / 1000;
         if(this.§?r§ != 0)
         {
            this.§&l§.rotation += this.§?r§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §'h§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§0I§ == §#L§)
         {
            if(this.§55§ > 0)
            {
               _loc2_ = 1;
               if(this.§@u§ == §'!<§)
               {
                  if((_loc4_ = this.§-w§ / this.§55§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§@V§) / 5000);
               }
               this.§&l§.scaleX = _loc2_;
               this.§&l§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§0I§ == §@!<§)
         {
            if(this.§@u§ == §#J§)
            {
               this.§&l§.alpha = Math.max(0,Math.min(1,2 * §-^§.§]4§((this.§55§ - this.§-w§) / this.§55§,false)));
               _loc5_ = Math.atan2(-this.§1i§,this.§?!$§) * (180 / Math.PI);
               this.§&l§.scaleX = Math.max(0.2,this.§&l§.alpha);
               this.§&l§.scaleY = Math.max(0.2,this.§&l§.alpha);
               this.§&l§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§@u§ == §=!>§ || this.§@u§ == §'A§)
            {
               this.§&l§.scaleX = this.§&l§.scaleY = 0.2 + (this.§55§ - this.§-w§) / this.§55§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§+-§)
         {
            this.§+-§.clear();
            this.§+-§ = null;
         }
         if(this.§&l§)
         {
            this.§&l§.dispose();
            this.§&l§ = null;
         }
         if(this.§>Q§)
         {
            this.§>Q§ = null;
         }
      }
   }
}
