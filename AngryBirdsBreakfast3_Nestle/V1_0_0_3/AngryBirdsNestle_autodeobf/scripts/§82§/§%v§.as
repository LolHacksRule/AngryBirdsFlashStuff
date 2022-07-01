package §82§
{
   import §"!-§.§[-§;
   import §0!Y§.DisplayObject;
   import §0!Y§.Sprite;
   import §6!?§.§7!t§;
   import §6!?§.§;u§;
   import §6!?§.§`!O§;
   import §=!7§.§-!S§;
   import §@"1§.§"h§;
   import §@"1§.§#!o§;
   import com.angrybirds.§4!l§;
   
   public class §%v§
   {
      
      public static const §[Q§:int = 0;
      
      public static const §!-§:int = 1;
      
      public static const §," §:int = 2;
      
      public static const §0!O§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §#r§:String = "Effect_TrailBig_Bird";
      
      public static const §6F§:String = "Effect_Trail_Sparkle";
      
      public static const §4'§:String = "Effect_Floating_Score";
      
      public static const §-!x§:String = "Effect_Floating_Text";
      
      public static const §%%§:String = "Effect_Explosion_Particle";
      
      public static const §9" §:String = "Effect_Explosion_Core";
      
      public static const §>d§:String = "Effect_Pig_Destruction";
      
      public static const §3!z§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §!"3§:String = "Effect_Bird_Destruction";
      
      public static const § j§:String = "Effect_Block_Destruction_Particles";
      
      public static const §'"$§:String = "Effect_Block_Destruction_Core";
      
      public static const §5!§:int = 0;
      
      public static const §[H§:int = 1;
      
      public static const §>!@§:int = 2;
      
      public static const § T§:int = 3;
      
      public static const §=l§:int = 4;
      
      public static const §!!D§:int = 5;
      
      public static const §6!;§:int = 6;
      
      public static const §4?§:int = 7;
      
      public static const §1!G§:int = 8;
      
      public static const §>!S§:int = 9;
      
      public static const §3§:int = 10;
      
      public static const §+!<§:int = 11;
      
      public static const §&B§:int = 12;
      
      public static const §="0§:int = 13;
      
      public static const §@!'§:int = 14;
      
      public static const §"X§:int = 15;
      
      public static const §&!_§:int = 16;
      
      public static const § !t§:int = 17;
      
      public static const §4!U§:int = 18;
       
      
      public var § !?§:int;
      
      public var §?z§:int;
      
      public var §@>§:String;
      
      public var §7§:Number;
      
      public var §>h§:Number;
      
      public var §#m§:Number;
      
      public var §+"1§:Number;
      
      public var §#!C§:Number = 0;
      
      public var §>s§:Number;
      
      public var §68§:Number;
      
      public var §0!j§:String;
      
      public var §&k§:Number = -1;
      
      public var §6!F§:int;
      
      public var §%!H§:Number;
      
      public var §^<§:Number;
      
      private var §2!l§:Sprite;
      
      private var §8!M§:§#!o§;
      
      private var §?"1§:int;
      
      private var §4!u§:int;
      
      private var §&!z§:Boolean;
      
      private var §0"§:§7!t§;
      
      private var §=!"§:Boolean;
      
      private var §="&§:§;u§;
      
      private var §#=§:§`!O§;
      
      private var §6!c§:§[-§;
      
      public function §%v§(param1:§;u§, param2:§`!O§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§2!l§ = new Sprite();
         super();
         this.§="&§ = param1;
         this.§#=§ = param2;
         this.§@>§ = param3;
         this.§ !?§ = param5;
         this.§?z§ = param4;
         this.§6!F§ = param10;
         this.§4!u§ = param16;
         this.§&!z§ = param17;
         this.§0!j§ = param9;
         this.§7§ = 0;
         this.§68§ = param8;
         this.§%!H§ = param6;
         this.§^<§ = param7;
         this.§>s§ = param15;
         this.§#m§ = param11;
         this.§>h§ = param12;
         this.§#!C§ = param14;
         this.§+"1§ = param13;
         this.§`l§();
         this.updateRenderer();
         if(this.§ !?§ == §!-§)
         {
            this.§&k§ = §4!l§.§,!8§.§7!p§.ground + this.§2!l§.height * §"h§.§4<§;
         }
      }
      
      public static function §#S§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §5!§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §>!@§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §[H§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §!!D§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §=l§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return § T§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §4!U§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WINGMAN") >= 0)
         {
            return §5!§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §6!;§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §>!S§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §4?§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §1!G§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §3§;
         }
         return §+!<§;
      }
      
      public static function §?!O§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §&B§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §@!'§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §="0§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return § !t§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §&!_§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §"X§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §"X§;
         }
         return §&!_§;
      }
      
      public function get displayObject() : DisplayObject
      {
         return this.§2!l§;
      }
      
      public function §<M§(param1:Number, param2:Number) : void
      {
      }
      
      protected function getParticleType() : String
      {
         return this.§@>§;
      }
      
      protected function §`l§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§7!t§ = null;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         _loc1_ = Math.random() * 100;
         var _loc4_:String = this.getParticleType();
         switch(_loc4_)
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
            case §#r§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §6F§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §>d§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §3!z§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §'"$§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §9" §:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §%%§:
               _loc5_ = 1 + _loc1_ % 5;
               _loc6_ = "particle" + _loc5_;
               break;
            case §4'§:
            case §-!x§:
               if(parseInt(this.§0!j§) == 10000 || parseInt(this.§0!j§) == 5000)
               {
                  _loc9_ = 16777215;
                  switch(this.§6!F§)
                  {
                     case §&B§:
                        _loc9_ = 16058683;
                        break;
                     case §="0§:
                        _loc9_ = 55294;
                        break;
                     case §"X§:
                        _loc9_ = 1878602;
                        break;
                     case § !t§:
                        _loc9_ = 3552822;
                        break;
                     case §&!_§:
                        break;
                     case §@!'§:
                        _loc9_ = 16705792;
                  }
                  if(parseInt(this.§0!j§) == 5000)
                  {
                     _loc9_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§="&§.§[!q§("NUMBERS");
                  this.§8!M§ = new §#!o§(_loc2_,_loc3_,true);
                  this.§8!M§.§;!F§(parseInt(this.§0!j§));
                  this.§2!l§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc9_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§="&§.§[!q§("NUMBERS");
               this.§8!M§ = new §#!o§(_loc2_,_loc3_);
               this.§8!M§.§;!F§(parseInt(this.§0!j§));
               this.§2!l§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case § j§:
               switch(this.§6!F§)
               {
                  case §>!S§:
                     _loc7_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc7_);
                     break;
                  case §3§:
                     _loc7_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §4?§:
                     _loc7_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc7_);
                     break;
                  case §1!G§:
                     _loc7_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc7_);
                     break;
                  case §+!<§:
                     _loc7_ = 1 + _loc1_ % 5;
               }
               if(this.§2!l§)
               {
                  this.§2!l§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §!"3§:
               _loc8_ = 1 + _loc1_ % 3;
               switch(this.§6!F§)
               {
                  case §5!§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc8_);
                     break;
                  case §!!D§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc8_);
                     break;
                  case §[H§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc8_);
                     break;
                  case § T§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc8_);
                     break;
                  case §=l§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc8_);
                     break;
                  case §>!@§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc8_);
                     break;
                  case §4!U§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc8_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc8_);
               }
               if(this.§2!l§)
               {
                  this.§2!l§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(_loc4_,null,this.§4!u§,this.§&!z§);
         }
      }
      
      private function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:DisplayObject = null;
         if(param1 == "??")
         {
            return;
         }
         this.§0"§ = this.§="&§.§[!q§(param1);
         this.§=!"§ = param4;
         if(this.§0"§)
         {
            _loc5_ = this.§0"§.getFrame(0);
            this.§?"1§ = param3;
            _loc5_.scaleX *= this.§>s§;
            _loc5_.scaleY *= this.§>s§;
            this.§2!l§.addChild(_loc5_);
            _loc5_.x = -this.§2!l§.width / 2;
            _loc5_.y = -this.§2!l§.height / 2;
            return;
         }
      }
      
      public function updateRenderer() : void
      {
         if(this.§2!l§)
         {
            this.§2!l§.x = this.§%!H§ / §"h§.§4<§;
            this.§2!l§.y = this.§^<§ / §"h§.§4<§;
         }
      }
      
      public function §37§(param1:§[-§) : void
      {
         this.§6!c§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:DisplayObject = null;
         this.§7§ += param1;
         var _loc2_:Boolean = false;
         if(this.§6!c§)
         {
            if(this.§6!c§.sprite == null || this.§6!c§.levelItem == null)
            {
               return false;
            }
            this.§%!H§ = this.§6!c§.§9l§().GetPosition().x;
            this.§^<§ = this.§6!c§.§9l§().GetPosition().y;
         }
         if(this.§?"1§ > 0 && this.§0"§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§7§ / 1000 / (1 / _loc3_)) < this.§0"§.frameCount)
            {
               _loc5_ = this.§0"§.getFrame(_loc4_);
               this.§2!l§.§'l§(0,-1,true);
               this.§2!l§.addChild(_loc5_);
               _loc5_.scaleX *= this.§>s§;
               _loc5_.scaleY *= this.§>s§;
            }
            else if(this.§=!"§)
            {
               this.§2!l§.§'l§(0,-1,true);
            }
         }
         if(this.§ !?§ == §!-§)
         {
            this.§;!w§(param1);
            _loc2_ = this.§`8§(param1);
            if(this.§&k§ > 0 && this.§^<§ > this.§&k§)
            {
               return false;
            }
         }
         else
         {
            this.§;!w§(param1);
            _loc2_ = this.§`8§(param1);
         }
         if(this.§68§ > 0 && this.§7§ >= this.§68§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.updateRenderer();
         }
         return true;
      }
      
      public function §;!w§(param1:Number) : void
      {
         this.§>h§ += param1 * this.§+"1§ / 1000;
         this.§^<§ += this.§>h§ * param1 / 1000;
         this.§%!H§ += this.§#m§ * param1 / 1000;
         if(this.§#!C§ != 0)
         {
            this.§2!l§.rotation += this.§#!C§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §`8§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§ !?§ == §[Q§)
         {
            if(this.§68§ > 0)
            {
               _loc2_ = 1;
               if(this.§@>§ == §-!x§)
               {
                  if((_loc4_ = this.§7§ / this.§68§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§0!j§) / 5000);
               }
               this.§2!l§.scaleX = _loc2_;
               this.§2!l§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§ !?§ == §!-§)
         {
            if(this.§@>§ == §%%§)
            {
               this.§2!l§.alpha = Math.max(0,Math.min(1,2 * §-!S§.§5D§((this.§68§ - this.§7§) / this.§68§,false)));
               _loc5_ = Math.atan2(-this.§>h§,this.§#m§) * (180 / Math.PI);
               this.§2!l§.scaleX = Math.max(0.2,this.§2!l§.alpha);
               this.§2!l§.scaleY = Math.max(0.2,this.§2!l§.alpha);
               this.§2!l§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§@>§ == §!"3§ || this.§@>§ == §'"$§)
            {
               this.§2!l§.scaleX = this.§2!l§.scaleY = 0.2 + (this.§68§ - this.§7§) / this.§68§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§8!M§)
         {
            this.§8!M§.clear();
            this.§8!M§ = null;
         }
         if(this.§2!l§)
         {
            this.§2!l§.dispose();
            this.§2!l§ = null;
         }
         if(this.§6!c§)
         {
            this.§6!c§ = null;
         }
      }
   }
}
