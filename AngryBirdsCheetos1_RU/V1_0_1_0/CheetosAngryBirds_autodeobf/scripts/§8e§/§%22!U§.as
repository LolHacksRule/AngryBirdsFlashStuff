package §8e§
{
   import §!!V§.§&I§;
   import §!!V§.§6F§;
   import §"!S§.§"_§;
   import §%t§.§>P§;
   import §&!5§.§'!$§;
   import §&!5§.DisplayObject;
   import §&!5§.Sprite;
   import §9!2§.§'![§;
   import §9!2§.§0!5§;
   import §9!2§.§<j§;
   import §9!2§.§@!!§;
   import §]!+§.§";§;
   import §switch§.Texture;
   
   public class §"!U§
   {
      
      public static const §7!2§:int = 0;
      
      public static const §+6§:int = 1;
      
      public static const §8-§:int = 2;
      
      public static const §-C§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §<#§:String = "Effect_TrailBig_Bird";
      
      public static const §<D§:String = "Effect_Trail_Sparkle";
      
      public static const §88§:String = "Effect_Floating_Score";
      
      public static const §9!9§:String = "Effect_Floating_Text";
      
      public static const §8J§:String = "Effect_Explosion_Particle";
      
      public static const §5!=§:String = "Effect_Explosion_Core";
      
      public static const §"H§:String = "Effect_Pig_Destruction";
      
      public static const §]!$§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §@!Z§:String = "Effect_Bird_Destruction";
      
      public static const §-Z§:String = "Effect_Block_Destruction_Particles";
      
      public static const §^4§:String = "Effect_Block_Destruction_Core";
      
      public static const §#!F§:int = 0;
      
      public static const §5!%§:int = 1;
      
      public static const §%!8§:int = 2;
      
      public static const §0!§:int = 3;
      
      public static const §;!N§:int = 4;
      
      public static const §3h§:int = 5;
      
      public static const §,a§:int = 6;
      
      public static const §9!K§:int = 7;
      
      public static const §;L§:int = 8;
      
      public static const §>p§:int = 9;
      
      public static const §>>§:int = 10;
      
      public static const §&!?§:int = 11;
      
      public static const §?!]§:int = 12;
      
      public static const § 5§:int = 13;
      
      public static const § var§:int = 14;
      
      public static const §8C§:int = 15;
      
      public static const §'!V§:int = 16;
      
      public static const §'!Y§:int = 17;
      
      public static const §"T§:int = 18;
      
      public static const §]8§:Boolean = true;
       
      
      public var §`!E§:int;
      
      public var §#!D§:int;
      
      public var §=!$§:String;
      
      public var §?!X§:Number;
      
      public var §<!P§:Number;
      
      public var §-!X§:Number;
      
      public var §,-§:Number;
      
      public var §>!]§:Number = 0;
      
      public var §4!S§:Number;
      
      public var §,U§:Number;
      
      public var §-!#§:String;
      
      public var §!!S§:Number = -1;
      
      public var §!K§:int;
      
      public var § !2§:Number;
      
      public var §'!F§:Number;
      
      private var §1!>§:Sprite;
      
      private var §8§:§6F§;
      
      private var §-!P§:int;
      
      protected var §@7§:int;
      
      protected var §]!Q§:Boolean;
      
      private var §^B§:§@!!§;
      
      private var §7_§:Boolean;
      
      private var §;!U§:§0!5§;
      
      private var §5-§:§'![§;
      
      private var §'U§:§";§;
      
      public function §"!U§(param1:§0!5§, param2:§'![§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§1!>§ = new Sprite();
         super();
         this.§;!U§ = param1;
         this.§5-§ = param2;
         this.§=!$§ = param3;
         this.§`!E§ = param5;
         this.§#!D§ = param4;
         this.§!K§ = param10;
         this.§@7§ = param16;
         this.§]!Q§ = param17;
         this.§-!#§ = param9;
         this.§?!X§ = 0;
         this.§,U§ = param8;
         this.§ !2§ = param6;
         this.§'!F§ = param7;
         this.§4!S§ = param15;
         this.§-!X§ = param11;
         this.§<!P§ = param12;
         this.§>!]§ = param14;
         this.§,-§ = param13;
         this.createVisuals();
         this.§9B§();
         if(this.§`!E§ == §+6§)
         {
            this.§!!S§ = §"_§.§+!^§.§,Q§.§]!Z§ + this.§1!>§.height * §&I§.§]!H§;
         }
      }
      
      public static function §5U§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §#!F§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §%!8§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §5!%§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §3h§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §;!N§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §0!§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §"T§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §,a§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §>p§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §9!K§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §;L§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §>>§;
         }
         return §&!?§;
      }
      
      public static function §`§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §?!]§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return § var§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return § 5§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §'!Y§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §'!V§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §8C§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §8C§;
         }
         return §'!V§;
      }
      
      public function get §3D§() : DisplayObject
      {
         return this.§1!>§;
      }
      
      public function §<!4§(param1:Number, param2:Number) : void
      {
      }
      
      protected function createVisuals() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§@!!§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§=!$§)
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
            case §<#§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §<D§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §"H§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §]!$§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §^4§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §5!=§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §8J§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §88§:
            case §9!9§:
               if(parseInt(this.§-!#§) == 10000 || parseInt(this.§-!#§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§!K§)
                  {
                     case §?!]§:
                        _loc8_ = 16058683;
                        break;
                     case § 5§:
                        _loc8_ = 55294;
                        break;
                     case §8C§:
                        _loc8_ = 1878602;
                        break;
                     case §'!Y§:
                        _loc8_ = 3552822;
                        break;
                     case §'!V§:
                        break;
                     case § var§:
                        _loc8_ = 16705792;
                  }
                  if(parseInt(this.§-!#§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§;!U§.§@T§("NUMBERS");
                  this.§8§ = new §6F§(_loc2_,_loc3_,true);
                  this.§8§.§+!F§(parseInt(this.§-!#§));
                  this.§1!>§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§;!U§.§@T§("NUMBERS");
               this.§8§ = new §6F§(_loc2_,_loc3_);
               this.§8§.§+!F§(parseInt(this.§-!#§));
               this.§1!>§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §-Z§:
               switch(this.§!K§)
               {
                  case §>p§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §>>§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §9!K§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §;L§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §&!?§:
                     _loc6_ = 1 + _loc1_ % 3;
               }
               if(this.§1!>§)
               {
                  this.§1!>§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §@!Z§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§!K§)
               {
                  case §#!F§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §3h§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §5!%§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §0!§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §;!N§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §%!8§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §"T§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§1!>§)
               {
                  this.§1!>§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§=!$§,null,this.§@7§,this.§]!Q§);
         }
      }
      
      protected function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§<j§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§7_§ = param4;
         var _loc7_:Number = 1;
         this.§^B§ = this.§;!U§.§@T§(param1);
         if(this.§^B§)
         {
            _loc6_ = (_loc5_ = this.§^B§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            if(!(_loc5_ = this.§5-§.§&'§(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
         }
         this.§-!P§ = param3;
         var _loc8_:§'!$§ = this.§[s§(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§4!S§ * _loc7_;
         this.§1!>§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§4!S§;
            _loc8_.y = -_loc5_.pivotY * this.§4!S§;
         }
         else
         {
            _loc8_.x = -this.§1!>§.width / 2;
            _loc8_.y = -this.§1!>§.height / 2;
         }
      }
      
      protected function §[s§(param1:Texture) : §'!$§
      {
         return new §'!$§(param1,false);
      }
      
      public function §9B§() : void
      {
         if(this.§1!>§)
         {
            this.§1!>§.x = this.§ !2§ / §&I§.§]!H§;
            this.§1!>§.y = this.§'!F§ / §&I§.§]!H§;
         }
      }
      
      public function §7+§(param1:§";§) : void
      {
         this.§'U§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§<j§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§'!$§ = null;
         this.§?!X§ += param1;
         var _loc2_:Boolean = false;
         if(this.§'U§)
         {
            if(this.§'U§.sprite == null || this.§'U§.§5a§ == null)
            {
               return false;
            }
            this.§ !2§ = this.§'U§.§?A§().GetPosition().x;
            this.§'!F§ = this.§'U§.§?A§().GetPosition().y;
         }
         if(this.§-!P§ > 0 && this.§^B§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§?!X§ / 1000 / (1 / _loc3_)) < this.§^B§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§^B§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.§[s§(_loc6_);
               this.§1!>§.§try §(0,-1,true);
               this.§1!>§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§4!S§;
               _loc8_.y = -_loc5_.pivotY * this.§4!S§;
               _loc8_.scaleX = _loc8_.scaleY = this.§4!S§ * _loc7_;
            }
            else if(this.§7_§)
            {
               this.§1!>§.§try §(0,-1,true);
            }
         }
         if(this.§`!E§ == §+6§)
         {
            this.§>!A§(param1);
            _loc2_ = this.§3T§(param1);
            if(this.§!!S§ > 0 && this.§'!F§ > this.§!!S§)
            {
               return false;
            }
         }
         else
         {
            this.§>!A§(param1);
            _loc2_ = this.§3T§(param1);
         }
         if(this.§,U§ > 0 && this.§?!X§ >= this.§,U§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§9B§();
         }
         return true;
      }
      
      public function §>!A§(param1:Number) : void
      {
         this.§<!P§ += param1 * this.§,-§ / 1000;
         this.§'!F§ += this.§<!P§ * param1 / 1000;
         this.§ !2§ += this.§-!X§ * param1 / 1000;
         if(this.§>!]§ != 0)
         {
            this.§1!>§.rotation += this.§>!]§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §3T§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§`!E§ == §7!2§)
         {
            if(this.§,U§ > 0)
            {
               _loc2_ = 1;
               if(this.§=!$§ == §9!9§)
               {
                  if((_loc4_ = this.§?!X§ / this.§,U§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§-!#§) / 5000);
               }
               this.§1!>§.scaleX = _loc2_;
               this.§1!>§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§`!E§ == §+6§)
         {
            if(this.§=!$§ == §8J§)
            {
               this.§1!>§.alpha = Math.max(0,Math.min(1,2 * §>P§.§-"§((this.§,U§ - this.§?!X§) / this.§,U§,false)));
               _loc5_ = Math.atan2(-this.§<!P§,this.§-!X§) * (180 / Math.PI);
               this.§1!>§.scaleX = Math.max(0.2,this.§1!>§.alpha);
               this.§1!>§.scaleY = Math.max(0.2,this.§1!>§.alpha);
               this.§1!>§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§=!$§ == §@!Z§ || this.§=!$§ == §^4§)
            {
               this.§1!>§.scaleX = this.§1!>§.scaleY = 0.2 + (this.§,U§ - this.§?!X§) / this.§,U§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§8§)
         {
            this.§8§.clear();
            this.§8§ = null;
         }
         if(this.§1!>§)
         {
            this.§1!>§.dispose();
            this.§1!>§ = null;
         }
         if(this.§'U§)
         {
            this.§'U§ = null;
         }
      }
   }
}
