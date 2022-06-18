package §'!Y§
{
   import §,H§.§;!9§;
   import §,H§.DisplayObject;
   import §,H§.Sprite;
   import §,Y§.Texture;
   import §-A§.§"A§;
   import §-A§.§%9§;
   import §2!4§.§5T§;
   import §2!4§.§>5§;
   import §2!4§.§]!7§;
   import §2!4§.§`!7§;
   import §;z§.§!+§;
   import §=g§.§#;§;
   import §@!W§.§8!W§;
   
   public class §+e§
   {
      
      public static const §`R§:int = 0;
      
      public static const §]@§:int = 1;
      
      public static const §'>§:int = 2;
      
      public static const §5%§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §]!Q§:String = "Effect_TrailBig_Bird";
      
      public static const §'!6§:String = "Effect_Trail_Sparkle";
      
      public static const §5p§:String = "Effect_Floating_Score";
      
      public static const §!V§:String = "Effect_Floating_Text";
      
      public static const §8!1§:String = "Effect_Explosion_Particle";
      
      public static const §>F§:String = "Effect_Explosion_Core";
      
      public static const §"F§:String = "Effect_Pig_Destruction";
      
      public static const §3!a§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §#0§:String = "Effect_Bird_Destruction";
      
      public static const §1f§:String = "Effect_Block_Destruction_Particles";
      
      public static const § O§:String = "Effect_Block_Destruction_Core";
      
      public static const §8!N§:int = 0;
      
      public static const §1i§:int = 1;
      
      public static const §`!C§:int = 2;
      
      public static const §@!;§:int = 3;
      
      public static const §+U§:int = 4;
      
      public static const §5!7§:int = 5;
      
      public static const §&L§:int = 6;
      
      public static const §"!$§:int = 7;
      
      public static const §?!^§:int = 8;
      
      public static const §`X§:int = 9;
      
      public static const §5!-§:int = 10;
      
      public static const §;!F§:int = 11;
      
      public static const § try§:int = 12;
      
      public static const §-X§:int = 13;
      
      public static const §]!&§:int = 14;
      
      public static const § 5§:int = 15;
      
      public static const §^+§:int = 16;
      
      public static const §'!!§:int = 17;
      
      public static const §3`§:int = 18;
      
      public static const §5![§:Boolean = true;
       
      
      public var §>!=§:int;
      
      public var §71§:int;
      
      public var §"J§:String;
      
      public var §4!B§:Number;
      
      public var §+!9§:Number;
      
      public var §&I§:Number;
      
      public var §![§:Number;
      
      public var §7e§:Number = 0;
      
      public var §case §:Number;
      
      public var §,!D§:Number;
      
      public var §true §:String;
      
      public var § !9§:Number = -1;
      
      public var §2§:int;
      
      public var §,!_§:Number;
      
      public var §4b§:Number;
      
      private var §0!9§:Sprite;
      
      private var § 6§:§"A§;
      
      private var §]!U§:int;
      
      protected var §@!=§:int;
      
      protected var §4!S§:Boolean;
      
      private var §8K§:§`!7§;
      
      private var §6!`§:Boolean;
      
      private var §var§:§]!7§;
      
      private var §^!2§:§5T§;
      
      private var §=!]§:§!+§;
      
      public function §+e§(param1:§]!7§, param2:§5T§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§0!9§ = new Sprite();
         super();
         this.§var§ = param1;
         this.§^!2§ = param2;
         this.§"J§ = param3;
         this.§>!=§ = param5;
         this.§71§ = param4;
         this.§2§ = param10;
         this.§@!=§ = param16;
         this.§4!S§ = param17;
         this.§true § = param9;
         this.§4!B§ = 0;
         this.§,!D§ = param8;
         this.§,!_§ = param6;
         this.§4b§ = param7;
         this.§case § = param15;
         this.§&I§ = param11;
         this.§+!9§ = param12;
         this.§7e§ = param14;
         this.§![§ = param13;
         this.createVisuals();
         this.§4I§();
         if(this.§>!=§ == §]@§)
         {
            this.§ !9§ = §8!W§.§=X§.§#!a§.§>6§ + this.§0!9§.height * §%9§.§1[§;
         }
      }
      
      public static function §super§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §8!N§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §`!C§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §1i§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §5!7§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §+U§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §@!;§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §3`§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §&L§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §`X§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §"!$§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §?!^§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §5!-§;
         }
         return §;!F§;
      }
      
      public static function §"s§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return § try§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §]!&§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §-X§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §'!!§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §^+§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return § 5§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return § 5§;
         }
         return §^+§;
      }
      
      public function get §+![§() : DisplayObject
      {
         return this.§0!9§;
      }
      
      public function §8!U§(param1:Number, param2:Number) : void
      {
      }
      
      protected function createVisuals() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§`!7§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§"J§)
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
            case §]!Q§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §'!6§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §"F§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §3!a§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case § O§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §>F§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §8!1§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §5p§:
            case §!V§:
               if(parseInt(this.§true §) == 10000 || parseInt(this.§true §) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§2§)
                  {
                     case § try§:
                        _loc8_ = 16058683;
                        break;
                     case §-X§:
                        _loc8_ = 55294;
                        break;
                     case § 5§:
                        _loc8_ = 1878602;
                        break;
                     case §'!!§:
                        _loc8_ = 3552822;
                        break;
                     case §^+§:
                        break;
                     case §]!&§:
                        _loc8_ = 16705792;
                  }
                  if(parseInt(this.§true §) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§var§.§ !2§("NUMBERS");
                  this.§ 6§ = new §"A§(_loc2_,_loc3_,true);
                  this.§ 6§.§[o§(parseInt(this.§true §));
                  this.§0!9§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§var§.§ !2§("NUMBERS");
               this.§ 6§ = new §"A§(_loc2_,_loc3_);
               this.§ 6§.§[o§(parseInt(this.§true §));
               this.§0!9§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §1f§:
               switch(this.§2§)
               {
                  case §`X§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §5!-§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §"!$§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §?!^§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §;!F§:
                     _loc6_ = 1 + _loc1_ % 3;
               }
               if(this.§0!9§)
               {
                  this.§0!9§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §#0§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§2§)
               {
                  case §8!N§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §5!7§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §1i§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §@!;§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §+U§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §`!C§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §3`§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§0!9§)
               {
                  this.§0!9§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§"J§,null,this.§@!=§,this.§4!S§);
         }
      }
      
      protected function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§>5§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§6!`§ = param4;
         var _loc7_:Number = 1;
         this.§8K§ = this.§var§.§ !2§(param1);
         if(this.§8K§)
         {
            _loc6_ = (_loc5_ = this.§8K§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            if(!(_loc5_ = this.§^!2§.§]N§(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
         }
         this.§]!U§ = param3;
         var _loc8_:§;!9§ = this.§'!§(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§case § * _loc7_;
         this.§0!9§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§case §;
            _loc8_.y = -_loc5_.pivotY * this.§case §;
         }
         else
         {
            _loc8_.x = -this.§0!9§.width / 2;
            _loc8_.y = -this.§0!9§.height / 2;
         }
      }
      
      protected function §'!§(param1:Texture) : §;!9§
      {
         return new §;!9§(param1,false);
      }
      
      public function §4I§() : void
      {
         if(this.§0!9§)
         {
            this.§0!9§.x = this.§,!_§ / §%9§.§1[§;
            this.§0!9§.y = this.§4b§ / §%9§.§1[§;
         }
      }
      
      public function § _§(param1:§!+§) : void
      {
         this.§=!]§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§>5§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§;!9§ = null;
         this.§4!B§ += param1;
         var _loc2_:Boolean = false;
         if(this.§=!]§)
         {
            if(this.§=!]§.sprite == null || this.§=!]§.§3!F§ == null)
            {
               return false;
            }
            this.§,!_§ = this.§=!]§.§^!V§().GetPosition().x;
            this.§4b§ = this.§=!]§.§^!V§().GetPosition().y;
         }
         if(this.§]!U§ > 0 && this.§8K§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§4!B§ / 1000 / (1 / _loc3_)) < this.§8K§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§8K§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.§'!§(_loc6_);
               this.§0!9§.§>1§(0,-1,true);
               this.§0!9§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§case §;
               _loc8_.y = -_loc5_.pivotY * this.§case §;
               _loc8_.scaleX = _loc8_.scaleY = this.§case § * _loc7_;
            }
            else if(this.§6!`§)
            {
               this.§0!9§.§>1§(0,-1,true);
            }
         }
         if(this.§>!=§ == §]@§)
         {
            this.§&!`§(param1);
            _loc2_ = this.§>[§(param1);
            if(this.§ !9§ > 0 && this.§4b§ > this.§ !9§)
            {
               return false;
            }
         }
         else
         {
            this.§&!`§(param1);
            _loc2_ = this.§>[§(param1);
         }
         if(this.§,!D§ > 0 && this.§4!B§ >= this.§,!D§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§4I§();
         }
         return true;
      }
      
      public function §&!`§(param1:Number) : void
      {
         this.§+!9§ += param1 * this.§![§ / 1000;
         this.§4b§ += this.§+!9§ * param1 / 1000;
         this.§,!_§ += this.§&I§ * param1 / 1000;
         if(this.§7e§ != 0)
         {
            this.§0!9§.rotation += this.§7e§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §>[§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§>!=§ == §`R§)
         {
            if(this.§,!D§ > 0)
            {
               _loc2_ = 1;
               if(this.§"J§ == §!V§)
               {
                  if((_loc4_ = this.§4!B§ / this.§,!D§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§true §) / 5000);
               }
               this.§0!9§.scaleX = _loc2_;
               this.§0!9§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§>!=§ == §]@§)
         {
            if(this.§"J§ == §8!1§)
            {
               this.§0!9§.alpha = Math.max(0,Math.min(1,2 * §#;§.§5!^§((this.§,!D§ - this.§4!B§) / this.§,!D§,false)));
               _loc5_ = Math.atan2(-this.§+!9§,this.§&I§) * (180 / Math.PI);
               this.§0!9§.scaleX = Math.max(0.2,this.§0!9§.alpha);
               this.§0!9§.scaleY = Math.max(0.2,this.§0!9§.alpha);
               this.§0!9§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§"J§ == §#0§ || this.§"J§ == § O§)
            {
               this.§0!9§.scaleX = this.§0!9§.scaleY = 0.2 + (this.§,!D§ - this.§4!B§) / this.§,!D§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§ 6§)
         {
            this.§ 6§.clear();
            this.§ 6§ = null;
         }
         if(this.§0!9§)
         {
            this.§0!9§.dispose();
            this.§0!9§ = null;
         }
         if(this.§=!]§)
         {
            this.§=!]§ = null;
         }
      }
   }
}
