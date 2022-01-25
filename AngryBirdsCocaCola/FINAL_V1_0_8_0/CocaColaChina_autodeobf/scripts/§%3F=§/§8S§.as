package §?=§
{
   import §&!9§.§,,§;
   import §&!9§.DisplayObject;
   import §&!9§.Sprite;
   import §&F§.§>!2§;
   import §&F§.§@l§;
   import §0!b§.§#!=§;
   import §48§.§#i§;
   import §48§.§4a§;
   import §48§.§6!Z§;
   import §48§.§8!'§;
   import §6!4§.Texture;
   import §^!$§.§?![§;
   import §^=§.§5e§;
   
   public class §8S§
   {
      
      public static const §9!E§:int = 0;
      
      public static const §[!C§:int = 1;
      
      public static const §?m§:int = 2;
      
      public static const §1B§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §^F§:String = "Effect_TrailBig_Bird";
      
      public static const § !1§:String = "Effect_Trail_Sparkle";
      
      public static const §#J§:String = "Effect_Floating_Score";
      
      public static const §58§:String = "Effect_Floating_Text";
      
      public static const §extends§:String = "Effect_Explosion_Particle";
      
      public static const §%!K§:String = "Effect_Explosion_Core";
      
      public static const §94§:String = "Effect_Pig_Destruction";
      
      public static const §<!=§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §]t§:String = "Effect_Bird_Destruction";
      
      public static const §=Y§:String = "Effect_Block_Destruction_Particles";
      
      public static const §=!0§:String = "Effect_Block_Destruction_Core";
      
      public static const §!B§:int = 0;
      
      public static const §^n§:int = 1;
      
      public static const §7!=§:int = 2;
      
      public static const §2!,§:int = 3;
      
      public static const §4!>§:int = 4;
      
      public static const §-M§:int = 5;
      
      public static const §95§:int = 6;
      
      public static const §"!a§:int = 7;
      
      public static const §`!Y§:int = 8;
      
      public static const §>k§:int = 9;
      
      public static const §7"§:int = 10;
      
      public static const §=!E§:int = 11;
      
      public static const § null§:int = 12;
      
      public static const §[!<§:int = 13;
      
      public static const §<j§:int = 14;
      
      public static const §4!,§:int = 15;
      
      public static const §9!C§:int = 16;
      
      public static const § get§:int = 17;
      
      public static const §<5§:int = 18;
      
      public static const §!g§:Boolean = true;
       
      
      public var §=X§:int;
      
      public var §<g§:int;
      
      public var §!!1§:String;
      
      public var §]!4§:Number;
      
      public var §1Y§:Number;
      
      public var §;X§:Number;
      
      public var §'=§:Number;
      
      public var §%!H§:Number = 0;
      
      public var § !@§:Number;
      
      public var §#-§:Number;
      
      public var §2!Y§:String;
      
      public var §+!7§:Number = -1;
      
      public var §;!§:int;
      
      public var §!f§:Number;
      
      public var §@;§:Number;
      
      private var §+@§:Sprite;
      
      private var §[[§:§@l§;
      
      private var §"$§:int;
      
      protected var §#Z§:int;
      
      protected var §[§:Boolean;
      
      private var §4k§:§8!'§;
      
      private var §-a§:Boolean;
      
      private var §5v§:§#i§;
      
      private var §<d§:§4a§;
      
      private var §2!J§:§?![§;
      
      public function §8S§(param1:§#i§, param2:§4a§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§+@§ = new Sprite();
         super();
         this.§5v§ = param1;
         this.§<d§ = param2;
         this.§!!1§ = param3;
         this.§=X§ = param5;
         this.§<g§ = param4;
         this.§;!§ = param10;
         this.§#Z§ = param16;
         this.§[§ = param17;
         this.§2!Y§ = param9;
         this.§]!4§ = 0;
         this.§#-§ = param8;
         this.§!f§ = param6;
         this.§@;§ = param7;
         this.§ !@§ = param15;
         this.§;X§ = param11;
         this.§1Y§ = param12;
         this.§%!H§ = param14;
         this.§'=§ = param13;
         this.createVisuals();
         this.§1Q§();
         if(this.§=X§ == §[!C§)
         {
            this.§+!7§ = §#!=§.§&![§.§&!D§.§]![§ + this.§+@§.height * §>!2§.§9d§;
         }
      }
      
      public static function §"0§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §!B§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §7!=§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §^n§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §-M§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §4!>§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §2!,§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §<5§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §95§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §>k§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §"!a§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §`!Y§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §7"§;
         }
         return §=!E§;
      }
      
      public static function §'y§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return § null§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §<j§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §[!<§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return § get§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §9!C§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §4!,§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §4!,§;
         }
         return §9!C§;
      }
      
      public function get §@!+§() : DisplayObject
      {
         return this.§+@§;
      }
      
      public function §?>§(param1:Number, param2:Number) : void
      {
      }
      
      protected function createVisuals() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§8!'§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§!!1§)
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
            case §^F§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case § !1§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §94§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §<!=§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §=!0§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §%!K§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §extends§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §#J§:
            case §58§:
               if(parseInt(this.§2!Y§) == 10000 || parseInt(this.§2!Y§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§;!§)
                  {
                     case § null§:
                        _loc8_ = 16058683;
                        break;
                     case §[!<§:
                        _loc8_ = 55294;
                        break;
                     case §4!,§:
                        _loc8_ = 1878602;
                        break;
                     case § get§:
                        _loc8_ = 3552822;
                        break;
                     case §9!C§:
                        break;
                     case §<j§:
                        _loc8_ = 16705792;
                  }
                  if(parseInt(this.§2!Y§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§5v§.§@d§("NUMBERS");
                  this.§[[§ = new §@l§(_loc2_,_loc3_,true);
                  this.§[[§.§7S§(parseInt(this.§2!Y§));
                  this.§+@§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§5v§.§@d§("NUMBERS");
               this.§[[§ = new §@l§(_loc2_,_loc3_);
               this.§[[§.§7S§(parseInt(this.§2!Y§));
               this.§+@§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §=Y§:
               switch(this.§;!§)
               {
                  case §>k§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §7"§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §"!a§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §`!Y§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §=!E§:
                     _loc6_ = 1 + _loc1_ % 3;
               }
               if(this.§+@§)
               {
                  this.§+@§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §]t§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§;!§)
               {
                  case §!B§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §-M§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §^n§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §2!,§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §4!>§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §7!=§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §<5§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§+@§)
               {
                  this.§+@§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§!!1§,null,this.§#Z§,this.§[§);
         }
      }
      
      protected function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§6!Z§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§-a§ = param4;
         var _loc7_:Number = 1;
         this.§4k§ = this.§5v§.§@d§(param1);
         if(this.§4k§)
         {
            _loc6_ = (_loc5_ = this.§4k§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            if(!(_loc5_ = this.§<d§.§-o§(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
         }
         this.§"$§ = param3;
         var _loc8_:§,,§ = this.createParticleImage(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§ !@§ * _loc7_;
         this.§+@§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§ !@§;
            _loc8_.y = -_loc5_.pivotY * this.§ !@§;
         }
         else
         {
            _loc8_.x = -this.§+@§.width / 2;
            _loc8_.y = -this.§+@§.height / 2;
         }
      }
      
      protected function createParticleImage(param1:Texture) : §,,§
      {
         return new §,,§(param1,false);
      }
      
      public function §1Q§() : void
      {
         if(this.§+@§)
         {
            this.§+@§.x = this.§!f§ / §>!2§.§9d§;
            this.§+@§.y = this.§@;§ / §>!2§.§9d§;
         }
      }
      
      public function §5!!§(param1:§?![§) : void
      {
         this.§2!J§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§6!Z§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§,,§ = null;
         this.§]!4§ += param1;
         var _loc2_:Boolean = false;
         if(this.§2!J§)
         {
            if(this.§2!J§.sprite == null || this.§2!J§.§'7§ == null)
            {
               return false;
            }
            this.§!f§ = this.§2!J§.§#!!§().GetPosition().x;
            this.§@;§ = this.§2!J§.§#!!§().GetPosition().y;
         }
         if(this.§"$§ > 0 && this.§4k§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§]!4§ / 1000 / (1 / _loc3_)) < this.§4k§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§4k§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.createParticleImage(_loc6_);
               this.§+@§.§@!0§(0,-1,true);
               this.§+@§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§ !@§;
               _loc8_.y = -_loc5_.pivotY * this.§ !@§;
               _loc8_.scaleX = _loc8_.scaleY = this.§ !@§ * _loc7_;
            }
            else if(this.§-a§)
            {
               this.§+@§.§@!0§(0,-1,true);
            }
         }
         if(this.§=X§ == §[!C§)
         {
            this.§5B§(param1);
            _loc2_ = this.updateParticles(param1);
            if(this.§+!7§ > 0 && this.§@;§ > this.§+!7§)
            {
               return false;
            }
         }
         else
         {
            this.§5B§(param1);
            _loc2_ = this.updateParticles(param1);
         }
         if(this.§#-§ > 0 && this.§]!4§ >= this.§#-§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§1Q§();
         }
         return true;
      }
      
      public function §5B§(param1:Number) : void
      {
         this.§1Y§ += param1 * this.§'=§ / 1000;
         this.§@;§ += this.§1Y§ * param1 / 1000;
         this.§!f§ += this.§;X§ * param1 / 1000;
         if(this.§%!H§ != 0)
         {
            this.§+@§.rotation += this.§%!H§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function updateParticles(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§=X§ == §9!E§)
         {
            if(this.§#-§ > 0)
            {
               _loc2_ = 1;
               if(this.§!!1§ == §58§)
               {
                  if((_loc4_ = this.§]!4§ / this.§#-§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§2!Y§) / 5000);
               }
               this.§+@§.scaleX = _loc2_;
               this.§+@§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§=X§ == §[!C§)
         {
            if(this.§!!1§ == §extends§)
            {
               this.§+@§.alpha = Math.max(0,Math.min(1,2 * §5e§.§1f§((this.§#-§ - this.§]!4§) / this.§#-§,false)));
               _loc5_ = Math.atan2(-this.§1Y§,this.§;X§) * (180 / Math.PI);
               this.§+@§.scaleX = Math.max(0.2,this.§+@§.alpha);
               this.§+@§.scaleY = Math.max(0.2,this.§+@§.alpha);
               this.§+@§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§!!1§ == §]t§ || this.§!!1§ == §=!0§)
            {
               this.§+@§.scaleX = this.§+@§.scaleY = 0.2 + (this.§#-§ - this.§]!4§) / this.§#-§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§[[§)
         {
            this.§[[§.clear();
            this.§[[§ = null;
         }
         if(this.§+@§)
         {
            this.§+@§.dispose();
            this.§+@§ = null;
         }
         if(this.§2!J§)
         {
            this.§2!J§ = null;
         }
      }
   }
}
