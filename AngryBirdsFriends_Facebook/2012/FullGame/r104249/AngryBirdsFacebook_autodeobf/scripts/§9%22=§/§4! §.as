package §9"=§
{
   import §#S§.§+!;§;
   import §#S§.§-$§;
   import §#S§.§6!r§;
   import §#S§.§?!?§;
   import §0!2§.§3!0§;
   import §0!2§.§5"L§;
   import §3!#§.§5"A§;
   import §5!G§.§&2§;
   import §?7§.Texture;
   import §[x§.§+!m§;
   import §]!v§.§'!=§;
   import §]!v§.DisplayObject;
   import §]!v§.Sprite;
   
   public class §4! §
   {
      
      public static const §2";§:int = 0;
      
      public static const PARTICLE_TYPE_KINETIC_PARTICLE:int = 1;
      
      public static const §,!]§:int = 2;
      
      public static const §1!G§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §-!B§:String = "Effect_TrailBig_Bird";
      
      public static const §#!x§:String = "Effect_Trail_Sparkle";
      
      public static const §%9§:String = "Effect_Floating_Score";
      
      public static const §;?§:String = "Effect_Floating_Text";
      
      public static const §9"C§:String = "Effect_Explosion_Particle";
      
      public static const §;&§:String = "Effect_Explosion_Core";
      
      public static const §+Y§:String = "Effect_Pig_Destruction";
      
      public static const §;!c§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §<2§:String = "Effect_Bird_Destruction";
      
      public static const PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES:String = "Effect_Block_Destruction_Particles";
      
      public static const §#"#§:String = "Effect_Block_Destruction_Core";
      
      public static const §in §:int = 0;
      
      public static const §#i§:int = 1;
      
      public static const §<!Z§:int = 2;
      
      public static const §&!@§:int = 3;
      
      public static const § ![§:int = 4;
      
      public static const § "J§:int = 5;
      
      public static const §-p§:int = 6;
      
      public static const §#!O§:int = 7;
      
      public static const §?!T§:int = 8;
      
      public static const §]"D§:int = 9;
      
      public static const §%]§:int = 10;
      
      public static const §;"J§:int = 11;
      
      public static const §&[§:int = 12;
      
      public static const §3!3§:int = 13;
      
      public static const §`t§:int = 14;
      
      public static const §^§:int = 15;
      
      public static const §@!`§:int = 16;
      
      public static const §=!H§:int = 17;
      
      public static const §4";§:int = 18;
      
      public static const §%6§:int = 19;
      
      public static const §'!+§:Boolean = true;
       
      
      public var §@R§:int;
      
      public var §]8§:int;
      
      public var §5!H§:String;
      
      public var §=!t§:Number;
      
      public var §;!Z§:Number;
      
      public var §-%§:Number;
      
      public var §]R§:Number;
      
      public var § !r§:Number = 0;
      
      public var §%""§:Number;
      
      public var §%K§:Number;
      
      public var §^!L§:String;
      
      public var § !§:Number = -1;
      
      public var §@!f§:int;
      
      public var §"""§:Number;
      
      public var §5!J§:Number;
      
      protected var §8+§:Sprite;
      
      private var §[6§:§3!0§;
      
      private var §<!2§:int;
      
      protected var §;! §:int;
      
      protected var §,O§:Boolean;
      
      private var §8"H§:§-$§;
      
      private var §=! §:Boolean;
      
      private var §>1§:§+!;§;
      
      private var §=$§:§?!?§;
      
      private var §]!Z§:§5"A§;
      
      public function §4! §(param1:§+!;§, param2:§?!?§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§8+§ = new Sprite();
         super();
         this.§>1§ = param1;
         this.§=$§ = param2;
         this.§5!H§ = param3;
         this.§@R§ = param5;
         this.§]8§ = param4;
         this.§@!f§ = param10;
         this.§;! § = param16;
         this.§,O§ = param17;
         this.§^!L§ = param9;
         this.§=!t§ = 0;
         this.§%K§ = param8;
         this.§"""§ = param6;
         this.§5!J§ = param7;
         this.§%""§ = param15;
         this.§-%§ = param11;
         this.§;!Z§ = param12;
         this.§ !r§ = param14;
         this.§]R§ = param13;
         this.createVisuals();
         this.§]"C§();
         if(this.§@R§ == PARTICLE_TYPE_KINETIC_PARTICLE)
         {
            this.§ !§ = §&2§.§],§.§>9§.§"p§ + this.§8+§.height * §5"L§.§@>§;
         }
      }
      
      public static function getParticleMaterialFromEngineMaterial(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §in §;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §<!Z§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §#i§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return § "J§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return § ![§;
         }
         if(param1.toUpperCase().indexOf("BIRD_ORANGE") >= 0)
         {
            return §<!Z§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §&!@§;
         }
         if(param1.toUpperCase().indexOf("BIRD_CHRISTMAS") >= 0)
         {
            return § "J§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §4";§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §-p§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §]"D§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §#!O§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §?!T§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §%]§;
         }
         return §;"J§;
      }
      
      public static function §^!T§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §&[§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §`t§;
         }
         if(param1.toUpperCase().indexOf("BIRD_ORANGE") >= 0)
         {
            return §%6§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §3!3§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §=!H§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §@!`§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §^§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §^§;
         }
         return §@!`§;
      }
      
      public function get §"!+§() : DisplayObject
      {
         return this.§8+§;
      }
      
      public function §6K§(param1:Number, param2:Number) : void
      {
      }
      
      protected function createVisuals() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§-$§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§5!H§)
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
            case §-!B§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §#!x§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §+Y§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §;!c§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §#"#§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §;&§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §9"C§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §%9§:
            case §;?§:
               if(parseInt(this.§^!L§) == 10000 || parseInt(this.§^!L§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§@!f§)
                  {
                     case §&[§:
                        _loc8_ = 16058683;
                        break;
                     case §3!3§:
                        _loc8_ = 55294;
                        break;
                     case §^§:
                        _loc8_ = 1878602;
                        break;
                     case §=!H§:
                        _loc8_ = 3552822;
                        break;
                     case §@!`§:
                        break;
                     case §`t§:
                        _loc8_ = 16705792;
                        break;
                     case §%6§:
                        _loc8_ = 16753152;
                  }
                  if(parseInt(this.§^!L§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§>1§.getAnimation("NUMBERS");
                  this.§[6§ = new §3!0§(_loc2_,_loc3_,true);
                  this.§[6§.§]<§(parseInt(this.§^!L§));
                  this.§8+§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§>1§.getAnimation("NUMBERS");
               this.§[6§ = new §3!0§(_loc2_,_loc3_);
               this.§[6§.§]<§(parseInt(this.§^!L§));
               this.§8+§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES:
               switch(this.§@!f§)
               {
                  case §]"D§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §%]§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §#!O§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §?!T§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §;"J§:
                     _loc6_ = 1 + _loc1_ % 3;
               }
               if(this.§8+§)
               {
                  this.§8+§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §<2§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§@!f§)
               {
                  case §in §:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case § "J§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §#i§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §&!@§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case § ![§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §<!Z§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §4";§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§8+§)
               {
                  this.§8+§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§5!H§,null,this.§;! §,this.§,O§);
         }
      }
      
      protected function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§6!r§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§=! § = param4;
         var _loc7_:Number = 1;
         this.§8"H§ = this.§>1§.getAnimation(param1);
         if(this.§8"H§)
         {
            _loc6_ = (_loc5_ = this.§8"H§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            if(!(_loc5_ = this.§=$§.§'"@§(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
         }
         this.§<!2§ = param3;
         var _loc8_:§'!=§ = this.§6"E§(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§%""§ * _loc7_;
         this.§8+§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§%""§;
            _loc8_.y = -_loc5_.pivotY * this.§%""§;
         }
         else
         {
            _loc8_.x = -this.§8+§.width / 2;
            _loc8_.y = -this.§8+§.height / 2;
         }
      }
      
      protected function §6"E§(param1:Texture) : §'!=§
      {
         return new §'!=§(param1,false);
      }
      
      public function §]"C§() : void
      {
         if(this.§8+§)
         {
            this.§8+§.x = this.§"""§ / §5"L§.§@>§;
            this.§8+§.y = this.§5!J§ / §5"L§.§@>§;
         }
      }
      
      public function §2"<§(param1:§5"A§) : void
      {
         this.§]!Z§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§6!r§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§'!=§ = null;
         this.§=!t§ += param1;
         var _loc2_:Boolean = false;
         if(this.§]!Z§)
         {
            if(this.§]!Z§.sprite == null || this.§]!Z§.§""8§ == null)
            {
               return false;
            }
            this.§"""§ = this.§]!Z§.§`!y§().GetPosition().x;
            this.§5!J§ = this.§]!Z§.§`!y§().GetPosition().y;
         }
         if(this.§<!2§ > 0 && this.§8"H§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§=!t§ / 1000 / (1 / _loc3_)) < this.§8"H§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§8"H§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.§6"E§(_loc6_);
               this.§8+§.§^x§(0,-1,true);
               this.§8+§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§%""§;
               _loc8_.y = -_loc5_.pivotY * this.§%""§;
               _loc8_.scaleX = _loc8_.scaleY = this.§%""§ * _loc7_;
            }
            else if(this.§=! §)
            {
               this.§8+§.§^x§(0,-1,true);
            }
         }
         if(this.§@R§ == PARTICLE_TYPE_KINETIC_PARTICLE)
         {
            this.§,"J§(param1);
            _loc2_ = this.§7!N§(param1);
            if(this.§ !§ > 0 && this.§5!J§ > this.§ !§)
            {
               return false;
            }
         }
         else
         {
            this.§,"J§(param1);
            _loc2_ = this.§7!N§(param1);
         }
         if(this.§%K§ > 0 && this.§=!t§ >= this.§%K§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§]"C§();
         }
         return true;
      }
      
      public function §,"J§(param1:Number) : void
      {
         this.§;!Z§ += param1 * this.§]R§ / 1000;
         this.§5!J§ += this.§;!Z§ * param1 / 1000;
         this.§"""§ += this.§-%§ * param1 / 1000;
         if(this.§ !r§ != 0)
         {
            this.§8+§.rotation += this.§ !r§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §7!N§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§@R§ == §2";§)
         {
            if(this.§%K§ > 0)
            {
               _loc2_ = 1;
               if(this.§5!H§ == §;?§)
               {
                  if((_loc4_ = this.§=!t§ / this.§%K§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§^!L§) / 5000);
               }
               this.§8+§.scaleX = _loc2_;
               this.§8+§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§@R§ == PARTICLE_TYPE_KINETIC_PARTICLE)
         {
            if(this.§5!H§ == §9"C§)
            {
               this.§8+§.alpha = Math.max(0,Math.min(1,2 * §+!m§.§'"3§((this.§%K§ - this.§=!t§) / this.§%K§,false)));
               _loc5_ = Math.atan2(-this.§;!Z§,this.§-%§) * (180 / Math.PI);
               this.§8+§.scaleX = Math.max(0.2,this.§8+§.alpha);
               this.§8+§.scaleY = Math.max(0.2,this.§8+§.alpha);
               this.§8+§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§5!H§ == §<2§ || this.§5!H§ == §#"#§)
            {
               this.§8+§.scaleX = this.§8+§.scaleY = 0.2 + (this.§%K§ - this.§=!t§) / this.§%K§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§[6§)
         {
            this.§[6§.clear();
            this.§[6§ = null;
         }
         if(this.§8+§)
         {
            this.§8+§.dispose();
            this.§8+§ = null;
         }
         if(this.§]!Z§)
         {
            this.§]!Z§ = null;
         }
      }
   }
}
