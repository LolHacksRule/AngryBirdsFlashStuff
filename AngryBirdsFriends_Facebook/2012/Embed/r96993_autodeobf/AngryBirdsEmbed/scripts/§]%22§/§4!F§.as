package §]"§
{
   import §#!1§.§4!,§;
   import §3v§.§4,§;
   import §6u§.§!B§;
   import §6u§.§3W§;
   import §6u§.§@N§;
   import §6u§.§@h§;
   import §>%§.§]3§;
   import §>u§.Texture;
   import §]!6§.§>T§;
   import §]!6§.DisplayObject;
   import §]!6§.Sprite;
   import §`i§.§2W§;
   import §`i§.§<!3§;
   
   public class §4!F§
   {
      
      public static const §5!"§:int = 0;
      
      public static const §1E§:int = 1;
      
      public static const §<!>§:int = 2;
      
      public static const §42§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §7!;§:String = "Effect_TrailBig_Bird";
      
      public static const §`W§:String = "Effect_Trail_Sparkle";
      
      public static const §>k§:String = "Effect_Floating_Score";
      
      public static const §4L§:String = "Effect_Floating_Text";
      
      public static const §0!G§:String = "Effect_Explosion_Particle";
      
      public static const §'7§:String = "Effect_Explosion_Core";
      
      public static const §?!A§:String = "Effect_Pig_Destruction";
      
      public static const §6E§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §=w§:String = "Effect_Bird_Destruction";
      
      public static const §;+§:String = "Effect_Block_Destruction_Particles";
      
      public static const §#$§:String = "Effect_Block_Destruction_Core";
      
      public static const §7k§:int = 0;
      
      public static const §?Z§:int = 1;
      
      public static const §08§:int = 2;
      
      public static const §?A§:int = 3;
      
      public static const §?D§:int = 4;
      
      public static const §+i§:int = 5;
      
      public static const §#-§:int = 6;
      
      public static const § P§:int = 7;
      
      public static const §'!7§:int = 8;
      
      public static const §=!#§:int = 9;
      
      public static const §`0§:int = 10;
      
      public static const §?!C§:int = 11;
      
      public static const §;!"§:int = 12;
      
      public static const §<q§:int = 13;
      
      public static const §"H§:int = 14;
      
      public static const §&-§:int = 15;
      
      public static const §"j§:int = 16;
      
      public static const §,R§:int = 17;
      
      public static const §5!7§:int = 18;
      
      public static const §`V§:Boolean = true;
       
      
      public var §`4§:int;
      
      public var §&g§:int;
      
      public var §5!+§:String;
      
      public var §&V§:Number;
      
      public var §=n§:Number;
      
      public var §1?§:Number;
      
      public var §,9§:Number;
      
      public var §;z§:Number = 0;
      
      public var §[2§:Number;
      
      public var §%#§:Number;
      
      public var §%[§:String;
      
      public var §`!A§:Number = -1;
      
      public var §continue§:int;
      
      public var §4F§:Number;
      
      public var §1v§:Number;
      
      private var §8W§:Sprite;
      
      private var §=!3§:§<!3§;
      
      private var §@#§:int;
      
      protected var §'p§:int;
      
      protected var §=+§:Boolean;
      
      private var §2!?§:§@h§;
      
      private var §9u§:Boolean;
      
      private var §-,§:§@N§;
      
      private var §[!C§:§3W§;
      
      private var §'8§:§4!,§;
      
      public function §4!F§(param1:§@N§, param2:§3W§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§8W§ = new Sprite();
         super();
         this.§-,§ = param1;
         this.§[!C§ = param2;
         this.§5!+§ = param3;
         this.§`4§ = param5;
         this.§&g§ = param4;
         this.§continue§ = param10;
         this.§'p§ = param16;
         this.§=+§ = param17;
         this.§%[§ = param9;
         this.§&V§ = 0;
         this.§%#§ = param8;
         this.§4F§ = param6;
         this.§1v§ = param7;
         this.§[2§ = param15;
         this.§1?§ = param11;
         this.§=n§ = param12;
         this.§;z§ = param14;
         this.§,9§ = param13;
         this.createVisuals();
         this.§]a§();
         if(this.§`4§ == §1E§)
         {
            this.§`!A§ = §]3§.§;v§.§&x§.§2B§ + this.§8W§.height * §2W§.§0;§;
         }
      }
      
      public static function §9-§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §7k§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §08§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §?Z§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §+i§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §?D§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §?A§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §5!7§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §#-§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §=!#§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return § P§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §'!7§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §`0§;
         }
         return §?!C§;
      }
      
      public static function §&q§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §;!"§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §"H§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §<q§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §,R§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §"j§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §&-§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §&-§;
         }
         return §"j§;
      }
      
      public function get §0!-§() : DisplayObject
      {
         return this.§8W§;
      }
      
      public function §@R§(param1:Number, param2:Number) : void
      {
      }
      
      protected function createVisuals() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§@h§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§5!+§)
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
            case §7!;§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §`W§:
               this.createParticle("??");
               break;
            case §?!A§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §6E§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §#$§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §'7§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §0!G§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §>k§:
            case §4L§:
               if(parseInt(this.§%[§) == 10000 || parseInt(this.§%[§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§continue§)
                  {
                     case §;!"§:
                        _loc8_ = 16058683;
                        break;
                     case §<q§:
                        _loc8_ = 55294;
                        break;
                     case §&-§:
                        _loc8_ = 1878602;
                        break;
                     case §,R§:
                        _loc8_ = 3552822;
                        break;
                     case §"j§:
                        break;
                     case §"H§:
                        _loc8_ = 16705792;
                  }
                  if(parseInt(this.§%[§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§-,§.§`Y§("NUMBERS");
                  this.§=!3§ = new §<!3§(_loc2_,_loc3_,true);
                  this.§=!3§.§,2§(parseInt(this.§%[§));
                  this.§8W§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§-,§.§`Y§("NUMBERS");
               this.§=!3§ = new §<!3§(_loc2_,_loc3_);
               this.§=!3§.§,2§(parseInt(this.§%[§));
               this.§8W§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §;+§:
               switch(this.§continue§)
               {
                  case §=!#§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §`0§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case § P§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §'!7§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §?!C§:
                     _loc6_ = 1 + _loc1_ % 3;
               }
               if(this.§8W§)
               {
                  this.§8W§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            case §=w§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§continue§)
               {
                  case §7k§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §+i§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §?Z§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §?A§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §?D§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §08§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §5!7§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§8W§)
               {
                  this.§8W§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§5!+§,null,this.§'p§,this.§=+§);
         }
      }
      
      protected function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§!B§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§9u§ = param4;
         var _loc7_:Number = 1;
         this.§2!?§ = this.§-,§.§`Y§(param1);
         if(this.§2!?§)
         {
            _loc6_ = (_loc5_ = this.§2!?§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            if(!(_loc5_ = this.§[!C§.§ 8§(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
         }
         this.§@#§ = param3;
         var _loc8_:§>T§ = this.§[!2§(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§[2§ * _loc7_;
         this.§8W§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§[2§;
            _loc8_.y = -_loc5_.pivotY * this.§[2§;
         }
         else
         {
            _loc8_.x = -this.§8W§.width / 2;
            _loc8_.y = -this.§8W§.height / 2;
         }
      }
      
      protected function §[!2§(param1:Texture) : §>T§
      {
         return new §>T§(param1,false);
      }
      
      public function §]a§() : void
      {
         if(this.§8W§)
         {
            this.§8W§.x = this.§4F§ / §2W§.§0;§;
            this.§8W§.y = this.§1v§ / §2W§.§0;§;
         }
      }
      
      public function §@i§(param1:§4!,§) : void
      {
         this.§'8§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§!B§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§>T§ = null;
         this.§&V§ += param1;
         var _loc2_:Boolean = false;
         if(this.§'8§)
         {
            if(this.§'8§.sprite == null || this.§'8§.§@F§ == null)
            {
               return false;
            }
            this.§4F§ = this.§'8§.§!v§().GetPosition().x;
            this.§1v§ = this.§'8§.§!v§().GetPosition().y;
         }
         if(this.§@#§ > 0 && this.§2!?§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§&V§ / 1000 / (1 / _loc3_)) < this.§2!?§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§2!?§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.§[!2§(_loc6_);
               this.§8W§.§try§(0,-1,true);
               this.§8W§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§[2§;
               _loc8_.y = -_loc5_.pivotY * this.§[2§;
               _loc8_.scaleX = _loc8_.scaleY = this.§[2§ * _loc7_;
            }
            else if(this.§9u§)
            {
               this.§8W§.§try§(0,-1,true);
            }
         }
         if(this.§`4§ == §1E§)
         {
            this.§=!@§(param1);
            _loc2_ = this.§^!%§(param1);
            if(this.§`!A§ > 0 && this.§1v§ > this.§`!A§)
            {
               return false;
            }
         }
         else
         {
            this.§=!@§(param1);
            _loc2_ = this.§^!%§(param1);
         }
         if(this.§%#§ > 0 && this.§&V§ >= this.§%#§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§]a§();
         }
         return true;
      }
      
      public function §=!@§(param1:Number) : void
      {
         this.§=n§ += param1 * this.§,9§ / 1000;
         this.§1v§ += this.§=n§ * param1 / 1000;
         this.§4F§ += this.§1?§ * param1 / 1000;
         if(this.§;z§ != 0)
         {
            this.§8W§.rotation += this.§;z§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §^!%§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§`4§ == §5!"§)
         {
            if(this.§%#§ > 0)
            {
               _loc2_ = 1;
               if(this.§5!+§ == §4L§)
               {
                  if((_loc4_ = this.§&V§ / this.§%#§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§%[§) / 5000);
               }
               this.§8W§.scaleX = _loc2_;
               this.§8W§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§`4§ == §1E§)
         {
            if(this.§5!+§ == §0!G§)
            {
               this.§8W§.alpha = Math.max(0,Math.min(1,2 * §4,§.§^S§((this.§%#§ - this.§&V§) / this.§%#§,false)));
               _loc5_ = Math.atan2(-this.§=n§,this.§1?§) * (180 / Math.PI);
               this.§8W§.scaleX = Math.max(0.2,this.§8W§.alpha);
               this.§8W§.scaleY = Math.max(0.2,this.§8W§.alpha);
               this.§8W§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§5!+§ == §=w§ || this.§5!+§ == §#$§)
            {
               this.§8W§.scaleX = this.§8W§.scaleY = 0.2 + (this.§%#§ - this.§&V§) / this.§%#§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§=!3§)
         {
            this.§=!3§.clear();
            this.§=!3§ = null;
         }
         if(this.§8W§)
         {
            this.§8W§.dispose();
            this.§8W§ = null;
         }
         if(this.§'8§)
         {
            this.§'8§ = null;
         }
      }
   }
}
