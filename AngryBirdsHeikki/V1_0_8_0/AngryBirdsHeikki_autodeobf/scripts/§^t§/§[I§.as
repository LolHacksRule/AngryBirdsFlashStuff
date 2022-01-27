package §^t§
{
   import § !3§.§>k§;
   import §#!6§.Texture;
   import §#!T§.§&2§;
   import §+!#§.§9!5§;
   import §2z§.§2!U§;
   import §2z§.§85§;
   import §=!E§.DisplayObject;
   import §=!E§.Sprite;
   import §=!E§.§try§;
   import §]!C§.§!y§;
   import §]!C§.§'!!§;
   import §]!C§.§0!d§;
   import §]!C§.§<!c§;
   
   public class §[I§
   {
      
      public static const §<S§:int = 0;
      
      public static const §6G§:int = 1;
      
      public static const §@! §:int = 2;
      
      public static const §%]§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §2;§:String = "Effect_TrailBig_Bird";
      
      public static const §]!S§:String = "Effect_Trail_Sparkle";
      
      public static const §=!3§:String = "Effect_Floating_Score";
      
      public static const §>X§:String = "Effect_Floating_Text";
      
      public static const §-R§:String = "Effect_Explosion_Particle";
      
      public static const §<l§:String = "Effect_Explosion_Core";
      
      public static const §=!V§:String = "Effect_Pig_Destruction";
      
      public static const §2J§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §^=§:String = "Effect_Bird_Destruction";
      
      public static const §%e§:String = "Effect_Block_Destruction_Particles";
      
      public static const §@!,§:String = "Effect_Block_Destruction_Core";
      
      public static const §'!=§:int = 0;
      
      public static const §&<§:int = 1;
      
      public static const §`h§:int = 2;
      
      public static const §&r§:int = 3;
      
      public static const §#2§:int = 4;
      
      public static const §8!@§:int = 5;
      
      public static const § '§:int = 6;
      
      public static const §4X§:int = 7;
      
      public static const §1!2§:int = 8;
      
      public static const §8!S§:int = 9;
      
      public static const §&!>§:int = 10;
      
      public static const §6+§:int = 11;
      
      public static const §9B§:int = 12;
      
      public static const §3"§:int = 13;
      
      public static const §<!E§:int = 14;
      
      public static const §1!;§:int = 15;
      
      public static const §>u§:int = 16;
      
      public static const §>K§:int = 17;
      
      public static const §8!b§:int = 18;
      
      public static const §--§:Boolean = true;
       
      
      public var §^!d§:int;
      
      public var §]#§:int;
      
      public var §9J§:String;
      
      public var §'U§:Number;
      
      public var §,!L§:Number;
      
      public var §-!$§:Number;
      
      public var §"g§:Number;
      
      public var §7!,§:Number = 0;
      
      public var §35§:Number;
      
      public var §'!9§:Number;
      
      public var §>!F§:String;
      
      public var §6!'§:Number = -1;
      
      public var §;f§:int;
      
      public var §[!#§:Number;
      
      public var §?=§:Number;
      
      private var §^!^§:Sprite;
      
      private var §^w§:§85§;
      
      private var §&!-§:int;
      
      protected var §>=§:int;
      
      protected var §]!P§:Boolean;
      
      private var §?!F§:§<!c§;
      
      private var §0!M§:Boolean;
      
      private var §[!1§:§!y§;
      
      private var §>8§:§0!d§;
      
      private var §[j§:§9!5§;
      
      public function §[I§(param1:§!y§, param2:§0!d§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§^!^§ = new Sprite();
         super();
         this.§[!1§ = param1;
         this.§>8§ = param2;
         this.§9J§ = param3;
         this.§^!d§ = param5;
         this.§]#§ = param4;
         this.§;f§ = param10;
         this.§>=§ = param16;
         this.§]!P§ = param17;
         this.§>!F§ = param9;
         this.§'U§ = 0;
         this.§'!9§ = param8;
         this.§[!#§ = param6;
         this.§?=§ = param7;
         this.§35§ = param15;
         this.§-!$§ = param11;
         this.§,!L§ = param12;
         this.§7!,§ = param14;
         this.§"g§ = param13;
         this.createVisuals();
         this.§2!e§();
         if(this.§^!d§ == §6G§)
         {
            this.§6!'§ = §&2§.§4!1§.§@!a§.§<k§ + this.§^!^§.height * §2!U§.§&%§;
         }
      }
      
      public static function §6]§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §'!=§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §`h§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §&<§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §8!@§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §#2§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §&r§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §8!b§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return § '§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §8!S§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §4X§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §1!2§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §&!>§;
         }
         return §6+§;
      }
      
      public static function §&Y§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §9B§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §<!E§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §3"§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §>K§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §>u§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §1!;§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §1!;§;
         }
         return §>u§;
      }
      
      public function get §+M§() : DisplayObject
      {
         return this.§^!^§;
      }
      
      public function §-!f§(param1:Number, param2:Number) : void
      {
      }
      
      protected function createVisuals() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§<!c§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§9J§)
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
            case §2;§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §]!S§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §=!V§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §2J§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §@!,§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §<l§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §-R§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §=!3§:
            case §>X§:
               if(parseInt(this.§>!F§) == 10000 || parseInt(this.§>!F§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§;f§)
                  {
                     case §9B§:
                        _loc8_ = 16058683;
                        break;
                     case §3"§:
                        _loc8_ = 55294;
                        break;
                     case §1!;§:
                        _loc8_ = 1878602;
                        break;
                     case §>K§:
                        _loc8_ = 3552822;
                        break;
                     case §>u§:
                        break;
                     case §<!E§:
                        _loc8_ = 16705792;
                  }
                  if(parseInt(this.§>!F§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§[!1§.§7!0§("NUMBERS");
                  this.§^w§ = new §85§(_loc2_,_loc3_,true);
                  this.§^w§.§08§(parseInt(this.§>!F§));
                  this.§^!^§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§[!1§.§7!0§("NUMBERS");
               this.§^w§ = new §85§(_loc2_,_loc3_);
               this.§^w§.§08§(parseInt(this.§>!F§));
               this.§^!^§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §%e§:
               switch(this.§;f§)
               {
                  case §8!S§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §&!>§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §4X§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §1!2§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §6+§:
                     _loc6_ = 1 + _loc1_ % 3;
               }
               if(this.§^!^§)
               {
                  this.§^!^§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §^=§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§;f§)
               {
                  case §'!=§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §8!@§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §&<§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §&r§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §#2§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §`h§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §8!b§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§^!^§)
               {
                  this.§^!^§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§9J§,null,this.§>=§,this.§]!P§);
         }
      }
      
      protected function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§'!!§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§0!M§ = param4;
         var _loc7_:Number = 1;
         this.§?!F§ = this.§[!1§.§7!0§(param1);
         if(this.§?!F§)
         {
            _loc6_ = (_loc5_ = this.§?!F§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            if(!(_loc5_ = this.§>8§.§]!B§(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
         }
         this.§&!-§ = param3;
         var _loc8_:§try§ = this.createParticleImage(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§35§ * _loc7_;
         this.§^!^§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§35§;
            _loc8_.y = -_loc5_.pivotY * this.§35§;
         }
         else
         {
            _loc8_.x = -this.§^!^§.width / 2;
            _loc8_.y = -this.§^!^§.height / 2;
         }
      }
      
      protected function createParticleImage(param1:Texture) : §try§
      {
         return new §try§(param1,false);
      }
      
      public function §2!e§() : void
      {
         if(this.§^!^§)
         {
            this.§^!^§.x = this.§[!#§ / §2!U§.§&%§;
            this.§^!^§.y = this.§?=§ / §2!U§.§&%§;
         }
      }
      
      public function §]!E§(param1:§9!5§) : void
      {
         this.§[j§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§'!!§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§try§ = null;
         this.§'U§ += param1;
         var _loc2_:Boolean = false;
         if(this.§[j§)
         {
            if(this.§[j§.sprite == null || this.§[j§.§"0§ == null)
            {
               return false;
            }
            this.§[!#§ = this.§[j§.§[!H§().GetPosition().x;
            this.§?=§ = this.§[j§.§[!H§().GetPosition().y;
         }
         if(this.§&!-§ > 0 && this.§?!F§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§'U§ / 1000 / (1 / _loc3_)) < this.§?!F§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§?!F§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.createParticleImage(_loc6_);
               this.§^!^§.§+j§(0,-1,true);
               this.§^!^§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§35§;
               _loc8_.y = -_loc5_.pivotY * this.§35§;
               _loc8_.scaleX = _loc8_.scaleY = this.§35§ * _loc7_;
            }
            else if(this.§0!M§)
            {
               this.§^!^§.§+j§(0,-1,true);
            }
         }
         if(this.§^!d§ == §6G§)
         {
            this.§-!2§(param1);
            _loc2_ = this.updateParticles(param1);
            if(this.§6!'§ > 0 && this.§?=§ > this.§6!'§)
            {
               return false;
            }
         }
         else
         {
            this.§-!2§(param1);
            _loc2_ = this.updateParticles(param1);
         }
         if(this.§'!9§ > 0 && this.§'U§ >= this.§'!9§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§2!e§();
         }
         return true;
      }
      
      public function §-!2§(param1:Number) : void
      {
         this.§,!L§ += param1 * this.§"g§ / 1000;
         this.§?=§ += this.§,!L§ * param1 / 1000;
         this.§[!#§ += this.§-!$§ * param1 / 1000;
         if(this.§7!,§ != 0)
         {
            this.§^!^§.rotation += this.§7!,§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function updateParticles(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§^!d§ == §<S§)
         {
            if(this.§'!9§ > 0)
            {
               _loc2_ = 1;
               if(this.§9J§ == §>X§)
               {
                  if((_loc4_ = this.§'U§ / this.§'!9§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§>!F§) / 5000);
               }
               this.§^!^§.scaleX = _loc2_;
               this.§^!^§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§^!d§ == §6G§)
         {
            if(this.§9J§ == §-R§)
            {
               this.§^!^§.alpha = Math.max(0,Math.min(1,2 * §>k§.§>_§((this.§'!9§ - this.§'U§) / this.§'!9§,false)));
               _loc5_ = Math.atan2(-this.§,!L§,this.§-!$§) * (180 / Math.PI);
               this.§^!^§.scaleX = Math.max(0.2,this.§^!^§.alpha);
               this.§^!^§.scaleY = Math.max(0.2,this.§^!^§.alpha);
               this.§^!^§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§9J§ == §^=§ || this.§9J§ == §@!,§)
            {
               this.§^!^§.scaleX = this.§^!^§.scaleY = 0.2 + (this.§'!9§ - this.§'U§) / this.§'!9§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§^w§)
         {
            this.§^w§.clear();
            this.§^w§ = null;
         }
         if(this.§^!^§)
         {
            this.§^!^§.dispose();
            this.§^!^§ = null;
         }
         if(this.§[j§)
         {
            this.§[j§ = null;
         }
      }
   }
}
