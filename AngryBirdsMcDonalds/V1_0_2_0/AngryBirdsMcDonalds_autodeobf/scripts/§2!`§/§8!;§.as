package §2!`§
{
   import §",§.Texture;
   import §%`§.§"s§;
   import §'a§.§0!f§;
   import §'a§.§6Y§;
   import §5!l§.§ !D§;
   import §5!l§.§!,§;
   import §5!l§.§8!_§;
   import §5!l§.§9Z§;
   import §5x§.§2!K§;
   import §5x§.DisplayObject;
   import §5x§.Sprite;
   import §9!W§.§=!@§;
   import §=<§.§@l§;
   
   public class §8!;§
   {
      
      public static const §5_§:int = 0;
      
      public static const §!!8§:int = 1;
      
      public static const §=!h§:int = 2;
      
      public static const §8M§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §3!$§:String = "Effect_TrailBig_Bird";
      
      public static const §5Z§:String = "Effect_Trail_Sparkle";
      
      public static const §&!Z§:String = "Effect_Floating_Score";
      
      public static const §]!^§:String = "Effect_Floating_Text";
      
      public static const §-!l§:String = "Effect_Explosion_Particle";
      
      public static const §'!H§:String = "Effect_Explosion_Core";
      
      public static const §#!]§:String = "Effect_Pig_Destruction";
      
      public static const §'!X§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §9!1§:String = "Effect_Bird_Destruction";
      
      public static const §'!D§:String = "Effect_Block_Destruction_Particles";
      
      public static const §!$§:String = "Effect_Block_Destruction_Core";
      
      public static const §2!N§:int = 0;
      
      public static const §+0§:int = 1;
      
      public static const §'!O§:int = 2;
      
      public static const §1U§:int = 3;
      
      public static const §8s§:int = 4;
      
      public static const §3o§:int = 5;
      
      public static const §^!f§:int = 6;
      
      public static const §+!e§:int = 7;
      
      public static const §5!+§:int = 8;
      
      public static const §#!l§:int = 9;
      
      public static const §?Z§:int = 10;
      
      public static const §>![§:int = 11;
      
      public static const §,!f§:int = 12;
      
      public static const §9D§:int = 13;
      
      public static const §^o§:int = 14;
      
      public static const §%$§:int = 15;
      
      public static const §[!#§:int = 16;
      
      public static const §^e§:int = 17;
      
      public static const §+!J§:int = 18;
      
      public static const §08§:Boolean = true;
       
      
      public var §`2§:int;
      
      public var §<!H§:int;
      
      public var §0H§:String;
      
      public var §&J§:Number;
      
      public var §-s§:Number;
      
      public var §;!9§:Number;
      
      public var §^b§:Number;
      
      public var §6O§:Number = 0;
      
      public var §>c§:Number;
      
      public var §=+§:Number;
      
      public var §<!_§:String;
      
      public var §<P§:Number = -1;
      
      public var §5>§:int;
      
      public var § +§:Number;
      
      public var §'Z§:Number;
      
      private var §81§:Sprite;
      
      private var §class§:§6Y§;
      
      private var §&!A§:int;
      
      protected var §,!9§:int;
      
      protected var §7;§:Boolean;
      
      private var §5!U§:§8!_§;
      
      private var §"!I§:Boolean;
      
      private var §=V§:§!,§;
      
      private var §8!b§:§ !D§;
      
      private var §=![§:§"s§;
      
      public function §8!;§(param1:§!,§, param2:§ !D§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§81§ = new Sprite();
         super();
         this.§=V§ = param1;
         this.§8!b§ = param2;
         this.§0H§ = param3;
         this.§`2§ = param5;
         this.§<!H§ = param4;
         this.§5>§ = param10;
         this.§,!9§ = param16;
         this.§7;§ = param17;
         this.§<!_§ = param9;
         this.§&J§ = 0;
         this.§=+§ = param8;
         this.§ +§ = param6;
         this.§'Z§ = param7;
         this.§>c§ = param15;
         this.§;!9§ = param11;
         this.§-s§ = param12;
         this.§6O§ = param14;
         this.§^b§ = param13;
         this.createVisuals();
         this.§3@§();
         if(this.§`2§ == §!!8§)
         {
            this.§<P§ = §=!@§.§>!T§.§9!I§.§8!R§ + this.§81§.height * §0!f§.§<C§;
         }
      }
      
      public static function §2!n§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §2!N§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §'!O§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §+0§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §3o§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §8s§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §1U§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §+!J§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §^!f§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §#!l§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §+!e§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §5!+§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §?Z§;
         }
         return §>![§;
      }
      
      public static function §2$§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §,!f§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §^o§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §9D§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §^e§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §[!#§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §%$§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §%$§;
         }
         return §[!#§;
      }
      
      public function get §&!b§() : DisplayObject
      {
         return this.§81§;
      }
      
      public function §0V§(param1:Number, param2:Number) : void
      {
      }
      
      protected function createVisuals() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§8!_§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§0H§)
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
            case §3!$§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §5Z§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §#!]§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §'!X§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §!$§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §'!H§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §-!l§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §&!Z§:
            case §]!^§:
               if(parseInt(this.§<!_§) == 10000 || parseInt(this.§<!_§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§5>§)
                  {
                     case §,!f§:
                        _loc8_ = 16058683;
                        break;
                     case §9D§:
                        _loc8_ = 55294;
                        break;
                     case §%$§:
                        _loc8_ = 1878602;
                        break;
                     case §^e§:
                        _loc8_ = 3552822;
                        break;
                     case §[!#§:
                        break;
                     case §^o§:
                        _loc8_ = 16705792;
                  }
                  if(parseInt(this.§<!_§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§=V§.getAnimation("NUMBERS");
                  this.§class§ = new §6Y§(_loc2_,_loc3_,true);
                  this.§class§.§'!k§(parseInt(this.§<!_§));
                  this.§81§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§=V§.getAnimation("NUMBERS");
               this.§class§ = new §6Y§(_loc2_,_loc3_);
               this.§class§.§'!k§(parseInt(this.§<!_§));
               this.§81§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §'!D§:
               switch(this.§5>§)
               {
                  case §#!l§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §?Z§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §+!e§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §5!+§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §>![§:
                     _loc6_ = 1 + _loc1_ % 3;
               }
               if(this.§81§)
               {
                  this.§81§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §9!1§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§5>§)
               {
                  case §2!N§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §3o§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §+0§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §1U§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §8s§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §'!O§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §+!J§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§81§)
               {
                  this.§81§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§0H§,null,this.§,!9§,this.§7;§);
         }
      }
      
      protected function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§9Z§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§"!I§ = param4;
         var _loc7_:Number = 1;
         this.§5!U§ = this.§=V§.getAnimation(param1);
         if(this.§5!U§)
         {
            _loc6_ = (_loc5_ = this.§5!U§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            if(!(_loc5_ = this.§8!b§.§2x§(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
         }
         this.§&!A§ = param3;
         var _loc8_:§2!K§ = this.createParticleImage(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§>c§ * _loc7_;
         this.§81§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§>c§;
            _loc8_.y = -_loc5_.pivotY * this.§>c§;
         }
         else
         {
            _loc8_.x = -this.§81§.width / 2;
            _loc8_.y = -this.§81§.height / 2;
         }
      }
      
      protected function createParticleImage(param1:Texture) : §2!K§
      {
         return new §2!K§(param1,false);
      }
      
      public function §3@§() : void
      {
         if(this.§81§)
         {
            this.§81§.x = this.§ +§ / §0!f§.§<C§;
            this.§81§.y = this.§'Z§ / §0!f§.§<C§;
         }
      }
      
      public function §7K§(param1:§"s§) : void
      {
         this.§=![§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§9Z§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§2!K§ = null;
         this.§&J§ += param1;
         var _loc2_:Boolean = false;
         if(this.§=![§)
         {
            if(this.§=![§.sprite == null || this.§=![§.§>!@§ == null)
            {
               return false;
            }
            this.§ +§ = this.§=![§.§%9§().GetPosition().x;
            this.§'Z§ = this.§=![§.§%9§().GetPosition().y;
         }
         if(this.§&!A§ > 0 && this.§5!U§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§&J§ / 1000 / (1 / _loc3_)) < this.§5!U§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§5!U§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.createParticleImage(_loc6_);
               this.§81§.§-!I§(0,-1,true);
               this.§81§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§>c§;
               _loc8_.y = -_loc5_.pivotY * this.§>c§;
               _loc8_.scaleX = _loc8_.scaleY = this.§>c§ * _loc7_;
            }
            else if(this.§"!I§)
            {
               this.§81§.§-!I§(0,-1,true);
            }
         }
         if(this.§`2§ == §!!8§)
         {
            this.§ ,§(param1);
            _loc2_ = this.updateParticles(param1);
            if(this.§<P§ > 0 && this.§'Z§ > this.§<P§)
            {
               return false;
            }
         }
         else
         {
            this.§ ,§(param1);
            _loc2_ = this.updateParticles(param1);
         }
         if(this.§=+§ > 0 && this.§&J§ >= this.§=+§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§3@§();
         }
         return true;
      }
      
      public function § ,§(param1:Number) : void
      {
         this.§-s§ += param1 * this.§^b§ / 1000;
         this.§'Z§ += this.§-s§ * param1 / 1000;
         this.§ +§ += this.§;!9§ * param1 / 1000;
         if(this.§6O§ != 0)
         {
            this.§81§.rotation += this.§6O§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function updateParticles(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§`2§ == §5_§)
         {
            if(this.§=+§ > 0)
            {
               _loc2_ = 1;
               if(this.§0H§ == §]!^§)
               {
                  if((_loc4_ = this.§&J§ / this.§=+§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§<!_§) / 5000);
               }
               this.§81§.scaleX = _loc2_;
               this.§81§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§`2§ == §!!8§)
         {
            if(this.§0H§ == §-!l§)
            {
               this.§81§.alpha = Math.max(0,Math.min(1,2 * §@l§.§2!§((this.§=+§ - this.§&J§) / this.§=+§,false)));
               _loc5_ = Math.atan2(-this.§-s§,this.§;!9§) * (180 / Math.PI);
               this.§81§.scaleX = Math.max(0.2,this.§81§.alpha);
               this.§81§.scaleY = Math.max(0.2,this.§81§.alpha);
               this.§81§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§0H§ == §9!1§ || this.§0H§ == §!$§)
            {
               this.§81§.scaleX = this.§81§.scaleY = 0.2 + (this.§=+§ - this.§&J§) / this.§=+§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§class§)
         {
            this.§class§.clear();
            this.§class§ = null;
         }
         if(this.§81§)
         {
            this.§81§.dispose();
            this.§81§ = null;
         }
         if(this.§=![§)
         {
            this.§=![§ = null;
         }
      }
   }
}
