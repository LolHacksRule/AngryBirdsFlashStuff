package §#+§
{
   import §#?§.§6!4§;
   import §#?§.§7!A§;
   import §#?§.§=E§;
   import §#?§.§^@§;
   import §'6§.§<"§;
   import §21§.Texture;
   import §90§.§8S§;
   import §90§.DisplayObject;
   import §90§.Sprite;
   import §>!O§.§[+§;
   import §?!8§.§]f§;
   import §`!4§.§6l§;
   import §`!4§.§;g§;
   
   public class §@!<§
   {
      
      public static const §#!§:int = 0;
      
      public static const PARTICLE_TYPE_KINETIC_PARTICLE:int = 1;
      
      public static const §5!,§:int = 2;
      
      public static const §50§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const § !D§:String = "Effect_TrailBig_Bird";
      
      public static const §!! §:String = "Effect_Trail_Sparkle";
      
      public static const §4o§:String = "Effect_Floating_Score";
      
      public static const §6]§:String = "Effect_Floating_Text";
      
      public static const §-5§:String = "Effect_Explosion_Particle";
      
      public static const §;%§:String = "Effect_Explosion_Core";
      
      public static const §%F§:String = "Effect_Pig_Destruction";
      
      public static const §9G§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §!;§:String = "Effect_Bird_Destruction";
      
      public static const PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES:String = "Effect_Block_Destruction_Particles";
      
      public static const §,6§:String = "Effect_Block_Destruction_Core";
      
      public static const §[U§:int = 0;
      
      public static const §7D§:int = 1;
      
      public static const §;z§:int = 2;
      
      public static const §4k§:int = 3;
      
      public static const §=M§:int = 4;
      
      public static const §27§:int = 5;
      
      public static const §@!L§:int = 6;
      
      public static const §=v§:int = 7;
      
      public static const §,M§:int = 8;
      
      public static const §]!$§:int = 9;
      
      public static const §33§:int = 10;
      
      public static const §=8§:int = 11;
      
      public static const §<!%§:int = 12;
      
      public static const §'R§:int = 13;
      
      public static const §7z§:int = 14;
      
      public static const §]C§:int = 15;
      
      public static const §-3§:int = 16;
      
      public static const §9Z§:int = 17;
      
      public static const §"'§:int = 18;
      
      public static const §%a§:int = 19;
      
      public static const §'7§:Boolean = true;
       
      
      public var §;S§:int;
      
      public var §3x§:int;
      
      public var include:String;
      
      public var §>!C§:Number;
      
      public var §8!"§:Number;
      
      public var §=!A§:Number;
      
      public var §<K§:Number;
      
      public var §;!D§:Number = 0;
      
      public var §,!F§:Number;
      
      public var §%&§:Number;
      
      public var §=!+§:String;
      
      public var §^D§:Number = -1;
      
      public var §0D§:int;
      
      public var §;!>§:Number;
      
      public var §8<§:Number;
      
      protected var §7!B§:Sprite;
      
      private var §6z§:§;g§;
      
      private var §4;§:int;
      
      protected var §=]§:int;
      
      protected var §6,§:Boolean;
      
      private var §>A§:§7!A§;
      
      private var §]P§:Boolean;
      
      private var § 2§:§=E§;
      
      private var §[E§:§6!4§;
      
      private var §^!F§:§]f§;
      
      public function §@!<§(param1:§=E§, param2:§6!4§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§7!B§ = new Sprite();
         super();
         this.§ 2§ = param1;
         this.§[E§ = param2;
         this.include = param3;
         this.§;S§ = param5;
         this.§3x§ = param4;
         this.§0D§ = param10;
         this.§=]§ = param16;
         this.§6,§ = param17;
         this.§=!+§ = param9;
         this.§>!C§ = 0;
         this.§%&§ = param8;
         this.§;!>§ = param6;
         this.§8<§ = param7;
         this.§,!F§ = param15;
         this.§=!A§ = param11;
         this.§8!"§ = param12;
         this.§;!D§ = param14;
         this.§<K§ = param13;
         this.createVisuals();
         this.§9!F§();
         if(this.§;S§ == PARTICLE_TYPE_KINETIC_PARTICLE)
         {
            this.§^D§ = §[+§.§,!&§.§;f§.§%!1§ + this.§7!B§.height * §6l§.§%!<§;
         }
      }
      
      public static function getParticleMaterialFromEngineMaterial(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §[U§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §;z§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §7D§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §27§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §=M§;
         }
         if(param1.toUpperCase().indexOf("BIRD_ORANGE") >= 0)
         {
            return §;z§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §4k§;
         }
         if(param1.toUpperCase().indexOf("BIRD_CHRISTMAS") >= 0)
         {
            return §27§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WINGMAN") >= 0)
         {
            return §[U§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §"'§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §@!L§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §]!$§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §=v§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §,M§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §33§;
         }
         return §=8§;
      }
      
      public static function §?§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §<!%§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §7z§;
         }
         if(param1.toUpperCase().indexOf("BIRD_ORANGE") >= 0)
         {
            return §%a§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §'R§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §9Z§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §-3§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §]C§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §]C§;
         }
         return §-3§;
      }
      
      public function get §<2§() : DisplayObject
      {
         return this.§7!B§;
      }
      
      public function §3+§(param1:Number, param2:Number) : void
      {
      }
      
      protected function createVisuals() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§7!A§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.include)
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
            case § !D§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §!! §:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §%F§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §9G§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §,6§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §;%§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §-5§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §4o§:
            case §6]§:
               if(parseInt(this.§=!+§) == 10000 || parseInt(this.§=!+§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§0D§)
                  {
                     case §<!%§:
                        _loc8_ = 16058683;
                        break;
                     case §'R§:
                        _loc8_ = 55294;
                        break;
                     case §]C§:
                        _loc8_ = 1878602;
                        break;
                     case §9Z§:
                        _loc8_ = 3552822;
                        break;
                     case §-3§:
                        break;
                     case §7z§:
                        _loc8_ = 16705792;
                        break;
                     case §%a§:
                        _loc8_ = 16753152;
                  }
                  if(parseInt(this.§=!+§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§ 2§.§"!$§("NUMBERS");
                  this.§6z§ = new §;g§(_loc2_,_loc3_,true);
                  this.§6z§.§&x§(parseInt(this.§=!+§));
                  this.§7!B§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§ 2§.§"!$§("NUMBERS");
               this.§6z§ = new §;g§(_loc2_,_loc3_);
               this.§6z§.§&x§(parseInt(this.§=!+§));
               this.§7!B§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES:
               switch(this.§0D§)
               {
                  case §]!$§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §33§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §=v§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §,M§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §=8§:
                     _loc6_ = 1 + _loc1_ % 3;
               }
               if(this.§7!B§)
               {
                  this.§7!B§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §!;§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§0D§)
               {
                  case §[U§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §27§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §7D§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §4k§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §=M§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §;z§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §"'§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§7!B§)
               {
                  this.§7!B§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.include,null,this.§=]§,this.§6,§);
         }
      }
      
      protected function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§^@§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§]P§ = param4;
         var _loc7_:Number = 1;
         this.§>A§ = this.§ 2§.§"!$§(param1);
         if(this.§>A§)
         {
            _loc6_ = (_loc5_ = this.§>A§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            if(!(_loc5_ = this.§[E§.§>]§(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
         }
         this.§4;§ = param3;
         var _loc8_:§8S§ = this.§3#§(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§,!F§ * _loc7_;
         this.§7!B§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§,!F§;
            _loc8_.y = -_loc5_.pivotY * this.§,!F§;
         }
         else
         {
            _loc8_.x = -this.§7!B§.width / 2;
            _loc8_.y = -this.§7!B§.height / 2;
         }
      }
      
      protected function §3#§(param1:Texture) : §8S§
      {
         return new §8S§(param1,false);
      }
      
      public function §9!F§() : void
      {
         if(this.§7!B§)
         {
            this.§7!B§.x = this.§;!>§ / §6l§.§%!<§;
            this.§7!B§.y = this.§8<§ / §6l§.§%!<§;
         }
      }
      
      public function §]b§(param1:§]f§) : void
      {
         this.§^!F§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§^@§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§8S§ = null;
         this.§>!C§ += param1;
         var _loc2_:Boolean = false;
         if(this.§^!F§)
         {
            if(this.§^!F§.sprite == null || this.§^!F§.§7!#§ == null)
            {
               return false;
            }
            this.§;!>§ = this.§^!F§.§<!9§().GetPosition().x;
            this.§8<§ = this.§^!F§.§<!9§().GetPosition().y;
         }
         if(this.§4;§ > 0 && this.§>A§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§>!C§ / 1000 / (1 / _loc3_)) < this.§>A§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§>A§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.§3#§(_loc6_);
               this.§7!B§.§2k§(0,-1,true);
               this.§7!B§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§,!F§;
               _loc8_.y = -_loc5_.pivotY * this.§,!F§;
               _loc8_.scaleX = _loc8_.scaleY = this.§,!F§ * _loc7_;
            }
            else if(this.§]P§)
            {
               this.§7!B§.§2k§(0,-1,true);
            }
         }
         if(this.§;S§ == PARTICLE_TYPE_KINETIC_PARTICLE)
         {
            this.§1!O§(param1);
            _loc2_ = this.§%!8§(param1);
            if(this.§^D§ > 0 && this.§8<§ > this.§^D§)
            {
               return false;
            }
         }
         else
         {
            this.§1!O§(param1);
            _loc2_ = this.§%!8§(param1);
         }
         if(this.§%&§ > 0 && this.§>!C§ >= this.§%&§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§9!F§();
         }
         return true;
      }
      
      public function §1!O§(param1:Number) : void
      {
         this.§8!"§ += param1 * this.§<K§ / 1000;
         this.§8<§ += this.§8!"§ * param1 / 1000;
         this.§;!>§ += this.§=!A§ * param1 / 1000;
         if(this.§;!D§ != 0)
         {
            this.§7!B§.rotation += this.§;!D§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §%!8§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§;S§ == §#!§)
         {
            if(this.§%&§ > 0)
            {
               _loc2_ = 1;
               if(this.include == §6]§)
               {
                  if((_loc4_ = this.§>!C§ / this.§%&§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§=!+§) / 5000);
               }
               this.§7!B§.scaleX = _loc2_;
               this.§7!B§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§;S§ == PARTICLE_TYPE_KINETIC_PARTICLE)
         {
            if(this.include == §-5§)
            {
               this.§7!B§.alpha = Math.max(0,Math.min(1,2 * §<"§.§#!M§((this.§%&§ - this.§>!C§) / this.§%&§,false)));
               _loc5_ = Math.atan2(-this.§8!"§,this.§=!A§) * (180 / Math.PI);
               this.§7!B§.scaleX = Math.max(0.2,this.§7!B§.alpha);
               this.§7!B§.scaleY = Math.max(0.2,this.§7!B§.alpha);
               this.§7!B§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.include == §!;§ || this.include == §,6§)
            {
               this.§7!B§.scaleX = this.§7!B§.scaleY = 0.2 + (this.§%&§ - this.§>!C§) / this.§%&§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§6z§)
         {
            this.§6z§.clear();
            this.§6z§ = null;
         }
         if(this.§7!B§)
         {
            this.§7!B§.dispose();
            this.§7!B§ = null;
         }
         if(this.§^!F§)
         {
            this.§^!F§ = null;
         }
      }
   }
}
