package §?!P§
{
   import § !%§.§!!&§;
   import § !%§.§0!U§;
   import § !%§.§7!>§;
   import § !%§.§>f§;
   import § !Y§.§2#§;
   import §&Y§.Texture;
   import §&c§.§%!a§;
   import §&c§.DisplayObject;
   import §&c§.Sprite;
   import §3!@§.§ s§;
   import §3!@§.§@8§;
   import §5K§.§7!I§;
   import §?!§.§%o§;
   
   public class §65§
   {
      
      public static const §@!0§:int = 0;
      
      public static const § k§:int = 1;
      
      public static const §"5§:int = 2;
      
      public static const §"T§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §6!=§:String = "Effect_TrailBig_Bird";
      
      public static const §5y§:String = "Effect_Trail_Sparkle";
      
      public static const §9<§:String = "Effect_Floating_Score";
      
      public static const §!!N§:String = "Effect_Floating_Text";
      
      public static const §9!7§:String = "Effect_Explosion_Particle";
      
      public static const §;=§:String = "Effect_Explosion_Core";
      
      public static const §#!p§:String = "Effect_Pig_Destruction";
      
      public static const §#!'§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §;!m§:String = "Effect_Bird_Destruction";
      
      public static const §7!Z§:String = "Effect_Block_Destruction_Particles";
      
      public static const §#7§:String = "Effect_Block_Destruction_Core";
      
      public static const §?N§:int = 0;
      
      public static const §%!4§:int = 1;
      
      public static const §&!J§:int = 2;
      
      public static const §[!m§:int = 3;
      
      public static const §,B§:int = 4;
      
      public static const § ?§:int = 5;
      
      public static const §null§:int = 6;
      
      public static const §9E§:int = 7;
      
      public static const §9!Z§:int = 8;
      
      public static const §^@§:int = 9;
      
      public static const §;f§:int = 10;
      
      public static const §1-§:int = 11;
      
      public static const §4![§:int = 12;
      
      public static const §,!8§:int = 13;
      
      public static const §6!M§:int = 14;
      
      public static const §;J§:int = 15;
      
      public static const §3I§:int = 16;
      
      public static const §]u§:int = 17;
      
      public static const §;N§:int = 18;
      
      public static const §&A§:Boolean = true;
       
      
      public var §+b§:int;
      
      public var §-!M§:int;
      
      public var §+!M§:String;
      
      public var §-M§:Number;
      
      public var §4[§:Number;
      
      public var §`!U§:Number;
      
      public var §9!O§:Number;
      
      public var §3!+§:Number = 0;
      
      public var §[2§:Number;
      
      public var §&z§:Number;
      
      public var §6!c§:String;
      
      public var §@!W§:Number = -1;
      
      public var §;>§:int;
      
      public var § !^§:Number;
      
      public var §0p§:Number;
      
      private var §2P§:Sprite;
      
      private var §=z§:§@8§;
      
      private var §[!Y§:int;
      
      protected var §[!§:int;
      
      protected var §?=§:Boolean;
      
      private var § !C§:§>f§;
      
      private var §'!o§:Boolean;
      
      private var §2X§:§!!&§;
      
      private var §9M§:§7!>§;
      
      private var §>!A§:§%o§;
      
      public function §65§(param1:§!!&§, param2:§7!>§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§2P§ = new Sprite();
         super();
         this.§2X§ = param1;
         this.§9M§ = param2;
         this.§+!M§ = param3;
         this.§+b§ = param5;
         this.§-!M§ = param4;
         this.§;>§ = param10;
         this.§[!§ = param16;
         this.§?=§ = param17;
         this.§6!c§ = param9;
         this.§-M§ = 0;
         this.§&z§ = param8;
         this.§ !^§ = param6;
         this.§0p§ = param7;
         this.§[2§ = param15;
         this.§`!U§ = param11;
         this.§4[§ = param12;
         this.§3!+§ = param14;
         this.§9!O§ = param13;
         this.createVisuals();
         this.§>1§();
         if(this.§+b§ == § k§)
         {
            this.§@!W§ = §2#§.§"@§.§1c§.§"Z§ + this.§2P§.height * § s§.§<!h§;
         }
      }
      
      public static function §"!o§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §?N§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §&!J§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §%!4§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return § ?§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §,B§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §[!m§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §;N§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §null§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §^@§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §9E§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §9!Z§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §;f§;
         }
         return §1-§;
      }
      
      public static function § m§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §4![§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §6!M§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §,!8§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §]u§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §3I§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §;J§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §;J§;
         }
         return §3I§;
      }
      
      public function get §!8§() : DisplayObject
      {
         return this.§2P§;
      }
      
      public function §&%§(param1:Number, param2:Number) : void
      {
      }
      
      protected function createVisuals() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§>f§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§+!M§)
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
            case §6!=§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §5y§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §#!p§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §#!'§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §#7§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §;=§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §9!7§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §9<§:
            case §!!N§:
               if(parseInt(this.§6!c§) == 10000 || parseInt(this.§6!c§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§;>§)
                  {
                     case §4![§:
                        _loc8_ = 16058683;
                        break;
                     case §,!8§:
                        _loc8_ = 55294;
                        break;
                     case §;J§:
                        _loc8_ = 1878602;
                        break;
                     case §]u§:
                        _loc8_ = 3552822;
                        break;
                     case §3I§:
                        break;
                     case §6!M§:
                        _loc8_ = 16705792;
                  }
                  if(parseInt(this.§6!c§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§2X§.getAnimation("NUMBERS");
                  this.§=z§ = new §@8§(_loc2_,_loc3_,true);
                  this.§=z§.§@!L§(parseInt(this.§6!c§));
                  this.§2P§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§2X§.getAnimation("NUMBERS");
               this.§=z§ = new §@8§(_loc2_,_loc3_);
               this.§=z§.§@!L§(parseInt(this.§6!c§));
               this.§2P§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §7!Z§:
               switch(this.§;>§)
               {
                  case §^@§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §;f§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §9E§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §9!Z§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §1-§:
                     _loc6_ = 1 + _loc1_ % 3;
               }
               if(this.§2P§)
               {
                  this.§2P§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §;!m§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§;>§)
               {
                  case §?N§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case § ?§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §%!4§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §[!m§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §,B§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §&!J§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §;N§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§2P§)
               {
                  this.§2P§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§+!M§,null,this.§[!§,this.§?=§);
         }
      }
      
      protected function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§0!U§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§'!o§ = param4;
         var _loc7_:Number = 1;
         this.§ !C§ = this.§2X§.getAnimation(param1);
         if(this.§ !C§)
         {
            _loc6_ = (_loc5_ = this.§ !C§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            if(!(_loc5_ = this.§9M§.§1m§(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
         }
         this.§[!Y§ = param3;
         var _loc8_:§%!a§ = this.createParticleImage(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§[2§ * _loc7_;
         this.§2P§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§[2§;
            _loc8_.y = -_loc5_.pivotY * this.§[2§;
         }
         else
         {
            _loc8_.x = -this.§2P§.width / 2;
            _loc8_.y = -this.§2P§.height / 2;
         }
      }
      
      protected function createParticleImage(param1:Texture) : §%!a§
      {
         return new §%!a§(param1,false);
      }
      
      public function §>1§() : void
      {
         if(this.§2P§)
         {
            this.§2P§.x = this.§ !^§ / § s§.§<!h§;
            this.§2P§.y = this.§0p§ / § s§.§<!h§;
         }
      }
      
      public function §#!L§(param1:§%o§) : void
      {
         this.§>!A§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§0!U§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§%!a§ = null;
         this.§-M§ += param1;
         var _loc2_:Boolean = false;
         if(this.§>!A§)
         {
            if(this.§>!A§.sprite == null || this.§>!A§.§ use§ == null)
            {
               return false;
            }
            this.§ !^§ = this.§>!A§.§2!!§().GetPosition().x;
            this.§0p§ = this.§>!A§.§2!!§().GetPosition().y;
         }
         if(this.§[!Y§ > 0 && this.§ !C§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§-M§ / 1000 / (1 / _loc3_)) < this.§ !C§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§ !C§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.createParticleImage(_loc6_);
               this.§2P§.§>S§(0,-1,true);
               this.§2P§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§[2§;
               _loc8_.y = -_loc5_.pivotY * this.§[2§;
               _loc8_.scaleX = _loc8_.scaleY = this.§[2§ * _loc7_;
            }
            else if(this.§'!o§)
            {
               this.§2P§.§>S§(0,-1,true);
            }
         }
         if(this.§+b§ == § k§)
         {
            this.§59§(param1);
            _loc2_ = this.updateParticles(param1);
            if(this.§@!W§ > 0 && this.§0p§ > this.§@!W§)
            {
               return false;
            }
         }
         else
         {
            this.§59§(param1);
            _loc2_ = this.updateParticles(param1);
         }
         if(this.§&z§ > 0 && this.§-M§ >= this.§&z§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§>1§();
         }
         return true;
      }
      
      public function §59§(param1:Number) : void
      {
         this.§4[§ += param1 * this.§9!O§ / 1000;
         this.§0p§ += this.§4[§ * param1 / 1000;
         this.§ !^§ += this.§`!U§ * param1 / 1000;
         if(this.§3!+§ != 0)
         {
            this.§2P§.rotation += this.§3!+§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function updateParticles(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§+b§ == §@!0§)
         {
            if(this.§&z§ > 0)
            {
               _loc2_ = 1;
               if(this.§+!M§ == §!!N§)
               {
                  if((_loc4_ = this.§-M§ / this.§&z§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§6!c§) / 5000);
               }
               this.§2P§.scaleX = _loc2_;
               this.§2P§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§+b§ == § k§)
         {
            if(this.§+!M§ == §9!7§)
            {
               this.§2P§.alpha = Math.max(0,Math.min(1,2 * §7!I§.§8D§((this.§&z§ - this.§-M§) / this.§&z§,false)));
               _loc5_ = Math.atan2(-this.§4[§,this.§`!U§) * (180 / Math.PI);
               this.§2P§.scaleX = Math.max(0.2,this.§2P§.alpha);
               this.§2P§.scaleY = Math.max(0.2,this.§2P§.alpha);
               this.§2P§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§+!M§ == §;!m§ || this.§+!M§ == §#7§)
            {
               this.§2P§.scaleX = this.§2P§.scaleY = 0.2 + (this.§&z§ - this.§-M§) / this.§&z§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§=z§)
         {
            this.§=z§.clear();
            this.§=z§ = null;
         }
         if(this.§2P§)
         {
            this.§2P§.dispose();
            this.§2P§ = null;
         }
         if(this.§>!A§)
         {
            this.§>!A§ = null;
         }
      }
   }
}
