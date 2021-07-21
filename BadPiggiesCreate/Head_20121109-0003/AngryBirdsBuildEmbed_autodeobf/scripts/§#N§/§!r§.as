package §#N§
{
   import § !r§.§<!V§;
   import §-!`§.§7!J§;
   import §-!`§.DisplayObject;
   import §-!`§.Sprite;
   import §0!-§.Texture;
   import §<!<§.§-!U§;
   import §<!<§.§7E§;
   import §=U§.§&!U§;
   import §=U§.§3p§;
   import §=U§.§;P§;
   import §=U§.§>?§;
   import §>!'§.§<!3§;
   import §?!-§.§'!V§;
   
   public class §!r§
   {
      
      public static const §#!,§:int = 0;
      
      public static const §^!F§:int = 1;
      
      public static const §0!_§:int = 2;
      
      public static const §#!!§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §%H§:String = "Effect_TrailBig_Bird";
      
      public static const § !s§:String = "Effect_Trail_Sparkle";
      
      public static const §7!,§:String = "Effect_Floating_Score";
      
      public static const §<s§:String = "Effect_Floating_Text";
      
      public static const §3!?§:String = "Effect_Explosion_Particle";
      
      public static const §#!"§:String = "Effect_Explosion_Core";
      
      public static const §implements§:String = "Effect_Pig_Destruction";
      
      public static const §[#§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §2!H§:String = "Effect_Bird_Destruction";
      
      public static const §1T§:String = "Effect_Block_Destruction_Particles";
      
      public static const §93§:String = "Effect_Block_Destruction_Core";
      
      public static const §&!§:int = 0;
      
      public static const §5!-§:int = 1;
      
      public static const §3,§:int = 2;
      
      public static const §7+§:int = 3;
      
      public static const §4!#§:int = 4;
      
      public static const §&!'§:int = 5;
      
      public static const §%1§:int = 6;
      
      public static const §`!b§:int = 7;
      
      public static const §?,§:int = 8;
      
      public static const §+?§:int = 9;
      
      public static const §7!t§:int = 10;
      
      public static const §4Z§:int = 11;
      
      public static const §8!k§:int = 12;
      
      public static const §9!B§:int = 13;
      
      public static const §=S§:int = 14;
      
      public static const §6!d§:int = 15;
      
      public static const §%! §:int = 16;
      
      public static const §-$§:int = 17;
      
      public static const §,!`§:int = 18;
      
      public static const §+W§:Boolean = true;
       
      
      public var §3Y§:int;
      
      public var §,H§:int;
      
      public var §#O§:String;
      
      public var §[c§:Number;
      
      public var §>^§:Number;
      
      public var §<!Z§:Number;
      
      public var §@E§:Number;
      
      public var §;i§:Number = 0;
      
      public var §7P§:Number;
      
      public var §-D§:Number;
      
      public var §,r§:String;
      
      public var §8!1§:Number = -1;
      
      public var §5l§:int;
      
      public var mX:Number;
      
      public var mY:Number;
      
      private var §-?§:Sprite;
      
      private var §,!O§:§-!U§;
      
      private var §'l§:int;
      
      private var §0!F§:int;
      
      private var §-A§:Boolean;
      
      private var §#!M§:§;P§;
      
      private var §-i§:Boolean;
      
      private var §[!B§:§&!U§;
      
      private var §>!S§:§3p§;
      
      private var §^!d§:§<!3§;
      
      public function §!r§(param1:§&!U§, param2:§3p§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§-?§ = new Sprite();
         super();
         this.§[!B§ = param1;
         this.§>!S§ = param2;
         this.§#O§ = param3;
         this.§3Y§ = param5;
         this.§,H§ = param4;
         this.§5l§ = param10;
         this.§0!F§ = param16;
         this.§-A§ = param17;
         this.§,r§ = param9;
         this.§[c§ = 0;
         this.§-D§ = param8;
         this.mX = param6;
         this.mY = param7;
         this.§7P§ = param15;
         this.§<!Z§ = param11;
         this.§>^§ = param12;
         this.§;i§ = param14;
         this.§@E§ = param13;
         this.§"1§();
         this.§3G§();
         if(this.§3Y§ == §^!F§)
         {
            this.§8!1§ = §'!V§.§1!2§.borders.mBorderGround_B2 + this.§-?§.height * §7E§.§8!'§;
         }
      }
      
      public static function §^!O§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §&!§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §3,§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §5!-§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §&!'§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §4!#§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §7+§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §,!`§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §%1§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §+?§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §`!b§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §?,§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §7!t§;
         }
         return §4Z§;
      }
      
      public static function §&M§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §8!k§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §=S§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §9!B§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §-$§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §%! §;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §6!d§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §6!d§;
         }
         return §%! §;
      }
      
      public function get §>[§() : DisplayObject
      {
         return this.§-?§;
      }
      
      public function §3!t§(param1:Number, param2:Number) : void
      {
      }
      
      protected function §"1§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§;P§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§#O§)
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
            case §%H§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case § !s§:
               this.createParticle("??");
               break;
            case §implements§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §[#§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §93§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §#!"§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §3!?§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §7!,§:
            case §<s§:
               if(parseInt(this.§,r§) == 10000 || parseInt(this.§,r§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§5l§)
                  {
                     case §8!k§:
                        _loc8_ = 16058683;
                        break;
                     case §9!B§:
                        _loc8_ = 55294;
                        break;
                     case §6!d§:
                        _loc8_ = 1878602;
                        break;
                     case §-$§:
                        _loc8_ = 3552822;
                        break;
                     case §%! §:
                        break;
                     case §=S§:
                        _loc8_ = 16705792;
                  }
                  if(parseInt(this.§,r§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§[!B§.§`!!§("NUMBERS");
                  this.§,!O§ = new §-!U§(_loc2_,_loc3_,true);
                  this.§,!O§.§>D§(parseInt(this.§,r§));
                  this.§-?§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
               }
               else
               {
                  _loc2_ = new Sprite();
                  _loc3_ = this.§[!B§.§`!!§("NUMBERS");
                  this.§,!O§ = new §-!U§(_loc2_,_loc3_);
                  this.§,!O§.§>D§(parseInt(this.§,r§));
                  this.§-?§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
               }
               break;
            case §1T§:
               switch(this.§5l§)
               {
                  case §+?§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §7!t§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §`!b§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §?,§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §4Z§:
                     _loc6_ = 1 + _loc1_ % 5;
               }
               if(this.§-?§)
               {
                  this.§-?§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §2!H§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§5l§)
               {
                  case §&!§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §&!'§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §5!-§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §7+§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §4!#§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §3,§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §,!`§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§-?§)
               {
                  this.§-?§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            default:
               this.createParticle(this.§#O§,null,this.§0!F§,this.§-A§);
         }
      }
      
      private function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§>?§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§#!M§ = this.§[!B§.§`!!§(param1);
         this.§-i§ = param4;
         var _loc7_:Number = 1;
         if(this.§#!M§)
         {
            _loc6_ = (_loc5_ = this.§#!M§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            _loc6_ = this.§>!S§.§8r§();
         }
         this.§'l§ = param3;
         var _loc8_:§7!J§ = this.§#2§(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§7P§ * _loc7_;
         this.§-?§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§7P§;
            _loc8_.y = -_loc5_.pivotY * this.§7P§;
         }
         else
         {
            _loc8_.x = -this.§-?§.width / 2;
            _loc8_.y = -this.§-?§.height / 2;
         }
      }
      
      protected function §#2§(param1:Texture) : §7!J§
      {
         return new §7!J§(param1,false);
      }
      
      public function §3G§() : void
      {
         if(this.§-?§)
         {
            this.§-?§.x = this.mX / §7E§.§8!'§;
            this.§-?§.y = this.mY / §7E§.§8!'§;
         }
      }
      
      public function §&D§(param1:§<!3§) : void
      {
         this.§^!d§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§>?§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§7!J§ = null;
         this.§[c§ += param1;
         var _loc2_:Boolean = false;
         if(this.§^!d§)
         {
            if(this.§^!d§.sprite == null || this.§^!d§.§9U§ == null)
            {
               return false;
            }
            this.mX = this.§^!d§.getBody().GetPosition().x;
            this.mY = this.§^!d§.getBody().GetPosition().y;
         }
         if(this.§'l§ > 0 && this.§#!M§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§[c§ / 1000 / (1 / _loc3_)) < this.§#!M§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§#!M§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.§#2§(_loc6_);
               this.§-?§.removeChildren(0,-1,true);
               this.§-?§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§7P§;
               _loc8_.y = -_loc5_.pivotY * this.§7P§;
               _loc8_.scaleX = _loc8_.scaleY = this.§7P§ * _loc7_;
            }
            else if(this.§-i§)
            {
               this.§-?§.removeChildren(0,-1,true);
            }
         }
         if(this.§3Y§ == §^!F§)
         {
            this.§"7§(param1);
            _loc2_ = this.§'!1§(param1);
            if(this.§8!1§ > 0 && this.mY > this.§8!1§)
            {
               return false;
            }
         }
         else
         {
            this.§"7§(param1);
            _loc2_ = this.§'!1§(param1);
         }
         if(this.§-D§ > 0 && this.§[c§ >= this.§-D§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§3G§();
         }
         return true;
      }
      
      public function §"7§(param1:Number) : void
      {
         this.§>^§ += param1 * this.§@E§ / 1000;
         this.mY += this.§>^§ * param1 / 1000;
         this.mX += this.§<!Z§ * param1 / 1000;
         if(this.§;i§ != 0)
         {
            this.§-?§.rotation += this.§;i§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §'!1§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§3Y§ == §#!,§)
         {
            if(this.§-D§ > 0)
            {
               _loc2_ = 1;
               if(this.§#O§ == §<s§)
               {
                  if((_loc4_ = this.§[c§ / this.§-D§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§,r§) / 5000);
               }
               this.§-?§.scaleX = _loc2_;
               this.§-?§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§3Y§ == §^!F§)
         {
            if(this.§#O§ == §3!?§)
            {
               this.§-?§.alpha = Math.max(0,Math.min(1,2 * §<!V§.§;]§((this.§-D§ - this.§[c§) / this.§-D§,false)));
               _loc5_ = Math.atan2(-this.§>^§,this.§<!Z§) * (180 / Math.PI);
               this.§-?§.scaleX = Math.max(0.2,this.§-?§.alpha);
               this.§-?§.scaleY = Math.max(0.2,this.§-?§.alpha);
               this.§-?§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§#O§ == §2!H§ || this.§#O§ == §93§)
            {
               this.§-?§.scaleX = this.§-?§.scaleY = 0.2 + (this.§-D§ - this.§[c§) / this.§-D§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§,!O§)
         {
            this.§,!O§.clear();
            this.§,!O§ = null;
         }
         if(this.§-?§)
         {
            this.§-?§.dispose();
            this.§-?§ = null;
         }
         if(this.§^!d§)
         {
            this.§^!d§ = null;
         }
      }
   }
}
