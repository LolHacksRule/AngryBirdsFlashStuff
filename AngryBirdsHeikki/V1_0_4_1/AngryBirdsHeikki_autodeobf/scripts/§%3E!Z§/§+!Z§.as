package §>!Z§
{
   import §"!<§.Texture;
   import §%!$§.§3,§;
   import §%O§.§ !§;
   import §%O§.§6?§;
   import §%O§.§=I§;
   import §%O§.§`b§;
   import §<!-§.DisplayObject;
   import §<!-§.Sprite;
   import §<!-§.§^B§;
   import §?!P§.§@@§;
   import §^!7§.§;! §;
   import §^!7§.§^A§;
   import §`!X§.§5&§;
   
   public class §+!Z§
   {
      
      public static const §]U§:int = 0;
      
      public static const §76§:int = 1;
      
      public static const §^!F§:int = 2;
      
      public static const §]!6§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §>!>§:String = "Effect_TrailBig_Bird";
      
      public static const §9?§:String = "Effect_Trail_Sparkle";
      
      public static const §1!A§:String = "Effect_Floating_Score";
      
      public static const §5,§:String = "Effect_Floating_Text";
      
      public static const §0$§:String = "Effect_Explosion_Particle";
      
      public static const § !a§:String = "Effect_Explosion_Core";
      
      public static const §'U§:String = "Effect_Pig_Destruction";
      
      public static const §6W§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §-!+§:String = "Effect_Bird_Destruction";
      
      public static const §9!_§:String = "Effect_Block_Destruction_Particles";
      
      public static const §>w§:String = "Effect_Block_Destruction_Core";
      
      public static const §<!8§:int = 0;
      
      public static const §`x§:int = 1;
      
      public static const §!!#§:int = 2;
      
      public static const §"4§:int = 3;
      
      public static const §4X§:int = 4;
      
      public static const §3"§:int = 5;
      
      public static const § H§:int = 6;
      
      public static const §2!%§:int = 7;
      
      public static const §^'§:int = 8;
      
      public static const §5Z§:int = 9;
      
      public static const §0M§:int = 10;
      
      public static const §[L§:int = 11;
      
      public static const §"!9§:int = 12;
      
      public static const §@F§:int = 13;
      
      public static const §=!I§:int = 14;
      
      public static const §-!@§:int = 15;
      
      public static const §[!G§:int = 16;
      
      public static const §[!"§:int = 17;
      
      public static const §0!-§:int = 18;
      
      public static const § !B§:Boolean = true;
       
      
      public var §5G§:int;
      
      public var §,G§:int;
      
      public var §`!W§:String;
      
      public var §;?§:Number;
      
      public var §7!T§:Number;
      
      public var §<§:Number;
      
      public var §#! §:Number;
      
      public var §9!#§:Number = 0;
      
      public var §0!^§:Number;
      
      public var §0!B§:Number;
      
      public var §%f§:String;
      
      public var §import§:Number = -1;
      
      public var §&!a§:int;
      
      public var §-!c§:Number;
      
      public var §3![§:Number;
      
      private var §]!7§:Sprite;
      
      private var §^3§:§;! §;
      
      private var §<!<§:int;
      
      protected var §"!A§:int;
      
      protected var §=!O§:Boolean;
      
      private var §"!`§:§6?§;
      
      private var §=k§:Boolean;
      
      private var §%7§:§`b§;
      
      private var §^4§:§ !§;
      
      private var §,!$§:§5&§;
      
      public function §+!Z§(param1:§`b§, param2:§ !§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§]!7§ = new Sprite();
         super();
         this.§%7§ = param1;
         this.§^4§ = param2;
         this.§`!W§ = param3;
         this.§5G§ = param5;
         this.§,G§ = param4;
         this.§&!a§ = param10;
         this.§"!A§ = param16;
         this.§=!O§ = param17;
         this.§%f§ = param9;
         this.§;?§ = 0;
         this.§0!B§ = param8;
         this.§-!c§ = param6;
         this.§3![§ = param7;
         this.§0!^§ = param15;
         this.§<§ = param11;
         this.§7!T§ = param12;
         this.§9!#§ = param14;
         this.§#! § = param13;
         this.createVisuals();
         this.§#G§();
         if(this.§5G§ == §76§)
         {
            this.§import§ = §@@§.§ !8§.§9§.§72§ + this.§]!7§.height * §^A§.§<U§;
         }
      }
      
      public static function §function§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §<!8§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §!!#§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §`x§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §3"§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §4X§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §"4§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §0!-§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return § H§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §5Z§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §2!%§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §^'§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §0M§;
         }
         return §[L§;
      }
      
      public static function §"6§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §"!9§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §=!I§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §@F§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §[!"§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §[!G§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §-!@§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §-!@§;
         }
         return §[!G§;
      }
      
      public function get §;p§() : DisplayObject
      {
         return this.§]!7§;
      }
      
      public function §7%§(param1:Number, param2:Number) : void
      {
      }
      
      protected function createVisuals() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§6?§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§`!W§)
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
            case §>!>§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §9?§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §'U§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §6W§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §>w§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case § !a§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §0$§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §1!A§:
            case §5,§:
               if(parseInt(this.§%f§) == 10000 || parseInt(this.§%f§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§&!a§)
                  {
                     case §"!9§:
                        _loc8_ = 16058683;
                        break;
                     case §@F§:
                        _loc8_ = 55294;
                        break;
                     case §-!@§:
                        _loc8_ = 1878602;
                        break;
                     case §[!"§:
                        _loc8_ = 3552822;
                        break;
                     case §[!G§:
                        break;
                     case §=!I§:
                        _loc8_ = 16705792;
                  }
                  if(parseInt(this.§%f§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§%7§.§=!B§("NUMBERS");
                  this.§^3§ = new §;! §(_loc2_,_loc3_,true);
                  this.§^3§.§[t§(parseInt(this.§%f§));
                  this.§]!7§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§%7§.§=!B§("NUMBERS");
               this.§^3§ = new §;! §(_loc2_,_loc3_);
               this.§^3§.§[t§(parseInt(this.§%f§));
               this.§]!7§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §9!_§:
               switch(this.§&!a§)
               {
                  case §5Z§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §0M§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §2!%§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §^'§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §[L§:
                     _loc6_ = 1 + _loc1_ % 3;
               }
               if(this.§]!7§)
               {
                  this.§]!7§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §-!+§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§&!a§)
               {
                  case §<!8§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §3"§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §`x§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §"4§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §4X§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §!!#§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §0!-§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§]!7§)
               {
                  this.§]!7§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§`!W§,null,this.§"!A§,this.§=!O§);
         }
      }
      
      protected function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§=I§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§=k§ = param4;
         var _loc7_:Number = 1;
         this.§"!`§ = this.§%7§.§=!B§(param1);
         if(this.§"!`§)
         {
            _loc6_ = (_loc5_ = this.§"!`§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            if(!(_loc5_ = this.§^4§.§^!3§(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
         }
         this.§<!<§ = param3;
         var _loc8_:§^B§ = this.createParticleImage(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§0!^§ * _loc7_;
         this.§]!7§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§0!^§;
            _loc8_.y = -_loc5_.pivotY * this.§0!^§;
         }
         else
         {
            _loc8_.x = -this.§]!7§.width / 2;
            _loc8_.y = -this.§]!7§.height / 2;
         }
      }
      
      protected function createParticleImage(param1:Texture) : §^B§
      {
         return new §^B§(param1,false);
      }
      
      public function §#G§() : void
      {
         if(this.§]!7§)
         {
            this.§]!7§.x = this.§-!c§ / §^A§.§<U§;
            this.§]!7§.y = this.§3![§ / §^A§.§<U§;
         }
      }
      
      public function §`M§(param1:§5&§) : void
      {
         this.§,!$§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§=I§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§^B§ = null;
         this.§;?§ += param1;
         var _loc2_:Boolean = false;
         if(this.§,!$§)
         {
            if(this.§,!$§.sprite == null || this.§,!$§.§#![§ == null)
            {
               return false;
            }
            this.§-!c§ = this.§,!$§.§1!E§().GetPosition().x;
            this.§3![§ = this.§,!$§.§1!E§().GetPosition().y;
         }
         if(this.§<!<§ > 0 && this.§"!`§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§;?§ / 1000 / (1 / _loc3_)) < this.§"!`§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§"!`§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.createParticleImage(_loc6_);
               this.§]!7§.§9s§(0,-1,true);
               this.§]!7§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§0!^§;
               _loc8_.y = -_loc5_.pivotY * this.§0!^§;
               _loc8_.scaleX = _loc8_.scaleY = this.§0!^§ * _loc7_;
            }
            else if(this.§=k§)
            {
               this.§]!7§.§9s§(0,-1,true);
            }
         }
         if(this.§5G§ == §76§)
         {
            this.§'!$§(param1);
            _loc2_ = this.updateParticles(param1);
            if(this.§import§ > 0 && this.§3![§ > this.§import§)
            {
               return false;
            }
         }
         else
         {
            this.§'!$§(param1);
            _loc2_ = this.updateParticles(param1);
         }
         if(this.§0!B§ > 0 && this.§;?§ >= this.§0!B§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§#G§();
         }
         return true;
      }
      
      public function §'!$§(param1:Number) : void
      {
         this.§7!T§ += param1 * this.§#! § / 1000;
         this.§3![§ += this.§7!T§ * param1 / 1000;
         this.§-!c§ += this.§<§ * param1 / 1000;
         if(this.§9!#§ != 0)
         {
            this.§]!7§.rotation += this.§9!#§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function updateParticles(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§5G§ == §]U§)
         {
            if(this.§0!B§ > 0)
            {
               _loc2_ = 1;
               if(this.§`!W§ == §5,§)
               {
                  if((_loc4_ = this.§;?§ / this.§0!B§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§%f§) / 5000);
               }
               this.§]!7§.scaleX = _loc2_;
               this.§]!7§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§5G§ == §76§)
         {
            if(this.§`!W§ == §0$§)
            {
               this.§]!7§.alpha = Math.max(0,Math.min(1,2 * §3,§.§0P§((this.§0!B§ - this.§;?§) / this.§0!B§,false)));
               _loc5_ = Math.atan2(-this.§7!T§,this.§<§) * (180 / Math.PI);
               this.§]!7§.scaleX = Math.max(0.2,this.§]!7§.alpha);
               this.§]!7§.scaleY = Math.max(0.2,this.§]!7§.alpha);
               this.§]!7§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§`!W§ == §-!+§ || this.§`!W§ == §>w§)
            {
               this.§]!7§.scaleX = this.§]!7§.scaleY = 0.2 + (this.§0!B§ - this.§;?§) / this.§0!B§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§^3§)
         {
            this.§^3§.clear();
            this.§^3§ = null;
         }
         if(this.§]!7§)
         {
            this.§]!7§.dispose();
            this.§]!7§ = null;
         }
         if(this.§,!$§)
         {
            this.§,!$§ = null;
         }
      }
   }
}
