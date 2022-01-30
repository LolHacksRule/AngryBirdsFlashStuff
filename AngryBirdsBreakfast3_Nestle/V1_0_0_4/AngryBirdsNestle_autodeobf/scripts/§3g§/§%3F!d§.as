package §3g§
{
   import §"I§.§8!Z§;
   import §-!f§.DisplayObject;
   import §-!f§.Sprite;
   import §0I§.§!!p§;
   import §0I§.§3c§;
   import §6_§.§,!>§;
   import §6_§.§,^§;
   import §6_§.§6k§;
   import §]!q§.§,[§;
   import com.angrybirds.§6U§;
   
   public class §?!d§
   {
      
      public static const §,,§:int = 0;
      
      public static const §!!I§:int = 1;
      
      public static const §+O§:int = 2;
      
      public static const §41§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §;j§:String = "Effect_TrailBig_Bird";
      
      public static const § '§:String = "Effect_Trail_Sparkle";
      
      public static const §]"'§:String = "Effect_Floating_Score";
      
      public static const §"W§:String = "Effect_Floating_Text";
      
      public static const §,!1§:String = "Effect_Explosion_Particle";
      
      public static const §=g§:String = "Effect_Explosion_Core";
      
      public static const §2" §:String = "Effect_Pig_Destruction";
      
      public static const §7c§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §="+§:String = "Effect_Bird_Destruction";
      
      public static const §`t§:String = "Effect_Block_Destruction_Particles";
      
      public static const §9%§:String = "Effect_Block_Destruction_Core";
      
      public static const §=",§:int = 0;
      
      public static const §6!G§:int = 1;
      
      public static const §?a§:int = 2;
      
      public static const §%-§:int = 3;
      
      public static const §try§:int = 4;
      
      public static const §,!r§:int = 5;
      
      public static const §1!z§:int = 6;
      
      public static const §3!a§:int = 7;
      
      public static const §"z§:int = 8;
      
      public static const § !"§:int = 9;
      
      public static const §=!P§:int = 10;
      
      public static const §@!4§:int = 11;
      
      public static const §0!+§:int = 12;
      
      public static const §<!t§:int = 13;
      
      public static const §"p§:int = 14;
      
      public static const §!! §:int = 15;
      
      public static const §!s§:int = 16;
      
      public static const §8!f§:int = 17;
      
      public static const §0w§:int = 18;
       
      
      public var §6r§:int;
      
      public var §-X§:int;
      
      public var §#!&§:String;
      
      public var §!!u§:Number;
      
      public var §;!!§:Number;
      
      public var §''§:Number;
      
      public var §=!8§:Number;
      
      public var §-!w§:Number = 0;
      
      public var §79§:Number;
      
      public var §!!=§:Number;
      
      public var §-4§:String;
      
      public var §;!e§:Number = -1;
      
      public var §1D§:int;
      
      public var §0!'§:Number;
      
      public var §#<§:Number;
      
      protected var §^I§:Sprite;
      
      private var §3""§:§3c§;
      
      private var §[!H§:int;
      
      private var §@!'§:int;
      
      private var §[^§:Boolean;
      
      private var §?!W§:§6k§;
      
      private var §]N§:Boolean;
      
      private var §8!G§:§,^§;
      
      private var §'+§:§,!>§;
      
      private var §@h§:§,[§;
      
      public function §?!d§(param1:§,^§, param2:§,!>§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§^I§ = new Sprite();
         super();
         this.§8!G§ = param1;
         this.§'+§ = param2;
         this.§#!&§ = param3;
         this.§6r§ = param5;
         this.§-X§ = param4;
         this.§1D§ = param10;
         this.§@!'§ = param16;
         this.§[^§ = param17;
         this.§-4§ = param9;
         this.§!!u§ = 0;
         this.§!!=§ = param8;
         this.§0!'§ = param6;
         this.§#<§ = param7;
         this.§79§ = param15;
         this.§''§ = param11;
         this.§;!!§ = param12;
         this.§-!w§ = param14;
         this.§=!8§ = param13;
         this.§8H§();
         this.updateRenderer();
         if(this.§6r§ == §!!I§)
         {
            this.§;!e§ = §6U§.§+_§.§#! §.ground + this.§^I§.height * §!!p§.§6L§;
         }
      }
      
      public static function § !s§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §=",§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §?a§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §6!G§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §,!r§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §try§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §%-§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §0w§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WINGMAN") >= 0)
         {
            return §=",§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §1!z§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return § !"§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §3!a§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §"z§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §=!P§;
         }
         return §@!4§;
      }
      
      public static function §7%§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §0!+§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §"p§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §<!t§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §8!f§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §!s§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §!! §;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §!! §;
         }
         return §!s§;
      }
      
      public function get displayObject() : DisplayObject
      {
         return this.§^I§;
      }
      
      public function §4!a§(param1:Number, param2:Number) : void
      {
      }
      
      protected function getParticleType() : String
      {
         return this.§#!&§;
      }
      
      protected function §8H§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§6k§ = null;
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
            case §;j§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case § '§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §2" §:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §7c§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §9%§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §=g§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §,!1§:
               _loc5_ = 1 + _loc1_ % 5;
               _loc6_ = "particle" + _loc5_;
               break;
            case §]"'§:
            case §"W§:
               if(parseInt(this.§-4§) == 10000 || parseInt(this.§-4§) == 5000)
               {
                  _loc9_ = 16777215;
                  switch(this.§1D§)
                  {
                     case §0!+§:
                        _loc9_ = 16058683;
                        break;
                     case §<!t§:
                        _loc9_ = 55294;
                        break;
                     case §!! §:
                        _loc9_ = 1878602;
                        break;
                     case §8!f§:
                        _loc9_ = 3552822;
                        break;
                     case §!s§:
                        break;
                     case §"p§:
                        _loc9_ = 16705792;
                  }
                  if(parseInt(this.§-4§) == 5000)
                  {
                     _loc9_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§8!G§.§@!P§("NUMBERS");
                  this.§3""§ = new §3c§(_loc2_,_loc3_,true);
                  this.§3""§.§ !W§(parseInt(this.§-4§));
                  this.§^I§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc9_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§8!G§.§@!P§("NUMBERS");
               this.§3""§ = new §3c§(_loc2_,_loc3_);
               this.§3""§.§ !W§(parseInt(this.§-4§));
               this.§^I§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §`t§:
               switch(this.§1D§)
               {
                  case § !"§:
                     _loc7_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc7_);
                     break;
                  case §=!P§:
                     _loc7_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §3!a§:
                     _loc7_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc7_);
                     break;
                  case §"z§:
                     _loc7_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc7_);
                     break;
                  case §@!4§:
                     _loc7_ = 1 + _loc1_ % 5;
               }
               if(this.§^I§)
               {
                  this.§^I§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §="+§:
               _loc8_ = 1 + _loc1_ % 3;
               switch(this.§1D§)
               {
                  case §=",§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc8_);
                     break;
                  case §,!r§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc8_);
                     break;
                  case §6!G§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc8_);
                     break;
                  case §%-§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc8_);
                     break;
                  case §try§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc8_);
                     break;
                  case §?a§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc8_);
                     break;
                  case §0w§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc8_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc8_);
               }
               if(this.§^I§)
               {
                  this.§^I§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(_loc4_,null,this.§@!'§,this.§[^§);
         }
      }
      
      private function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:DisplayObject = null;
         if(param1 == "??")
         {
            return;
         }
         this.§?!W§ = this.§8!G§.§@!P§(param1);
         this.§]N§ = param4;
         if(this.§?!W§)
         {
            _loc5_ = this.§?!W§.getFrame(0);
            this.§[!H§ = param3;
            _loc5_.scaleX *= this.§79§;
            _loc5_.scaleY *= this.§79§;
            this.§^I§.addChild(_loc5_);
            _loc5_.x = -this.§^I§.width / 2;
            _loc5_.y = -this.§^I§.height / 2;
            return;
         }
      }
      
      public function updateRenderer() : void
      {
         if(this.§^I§)
         {
            this.§^I§.x = this.§0!'§ / §!!p§.§6L§;
            this.§^I§.y = this.§#<§ / §!!p§.§6L§;
         }
      }
      
      public function §&!d§(param1:§,[§) : void
      {
         this.§@h§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:DisplayObject = null;
         this.§!!u§ += param1;
         var _loc2_:Boolean = false;
         if(this.§@h§)
         {
            if(this.§@h§.sprite == null || this.§@h§.levelItem == null)
            {
               return false;
            }
            this.§0!'§ = this.§@h§.§4!7§().GetPosition().x;
            this.§#<§ = this.§@h§.§4!7§().GetPosition().y;
         }
         if(this.§[!H§ > 0 && this.§?!W§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§!!u§ / 1000 / (1 / _loc3_)) < this.§?!W§.frameCount)
            {
               _loc5_ = this.§?!W§.getFrame(_loc4_);
               this.§^I§.§@-§(0,-1,true);
               this.§^I§.addChild(_loc5_);
               _loc5_.scaleX *= this.§79§;
               _loc5_.scaleY *= this.§79§;
            }
            else if(this.§]N§)
            {
               this.§^I§.§@-§(0,-1,true);
            }
         }
         if(this.§6r§ == §!!I§)
         {
            this.§2C§(param1);
            _loc2_ = this.§^,§(param1);
            if(this.§;!e§ > 0 && this.§#<§ > this.§;!e§)
            {
               return false;
            }
         }
         else
         {
            this.§2C§(param1);
            _loc2_ = this.§^,§(param1);
         }
         if(this.§!!=§ > 0 && this.§!!u§ >= this.§!!=§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.updateRenderer();
         }
         return true;
      }
      
      public function §2C§(param1:Number) : void
      {
         this.§;!!§ += param1 * this.§=!8§ / 1000;
         this.§#<§ += this.§;!!§ * param1 / 1000;
         this.§0!'§ += this.§''§ * param1 / 1000;
         if(this.§-!w§ != 0)
         {
            this.§^I§.rotation += this.§-!w§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §^,§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§6r§ == §,,§)
         {
            if(this.§!!=§ > 0)
            {
               _loc2_ = 1;
               if(this.§#!&§ == §"W§)
               {
                  if((_loc4_ = this.§!!u§ / this.§!!=§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§-4§) / 5000);
               }
               this.§^I§.scaleX = _loc2_;
               this.§^I§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§6r§ == §!!I§)
         {
            if(this.§#!&§ == §,!1§)
            {
               this.§^I§.alpha = Math.max(0,Math.min(1,2 * §8!Z§.§<!2§((this.§!!=§ - this.§!!u§) / this.§!!=§,false)));
               _loc5_ = Math.atan2(-this.§;!!§,this.§''§) * (180 / Math.PI);
               this.§^I§.scaleX = Math.max(0.2,this.§^I§.alpha);
               this.§^I§.scaleY = Math.max(0.2,this.§^I§.alpha);
               this.§^I§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§#!&§ == §="+§ || this.§#!&§ == §9%§)
            {
               this.§^I§.scaleX = this.§^I§.scaleY = 0.2 + (this.§!!=§ - this.§!!u§) / this.§!!=§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§3""§)
         {
            this.§3""§.clear();
            this.§3""§ = null;
         }
         if(this.§^I§)
         {
            this.§^I§.dispose();
            this.§^I§ = null;
         }
         if(this.§@h§)
         {
            this.§@h§ = null;
         }
      }
   }
}
