package §`2§
{
   import §0!m§.§@!S§;
   import §24§.§,"2§;
   import §2`§.§%!!§;
   import §2`§.§+$§;
   import §2`§.§5E§;
   import §2`§.§;!Q§;
   import §3!J§.§4!2§;
   import §3!J§.DisplayObject;
   import §3!J§.Sprite;
   import §=!4§.Texture;
   import §@!"§.§@_§;
   import §@V§.§ F§;
   import §@V§.§#=§;
   
   public class §`""§
   {
      
      public static const §7`§:int = 0;
      
      public static const §@b§:int = 1;
      
      public static const §%!9§:int = 2;
      
      public static const § -§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §6"6§:String = "Effect_TrailBig_Bird";
      
      public static const §2!t§:String = "Effect_Trail_Sparkle";
      
      public static const §+K§:String = "Effect_Floating_Score";
      
      public static const §+!S§:String = "Effect_Floating_Text";
      
      public static const §?E§:String = "Effect_Explosion_Particle";
      
      public static const §#i§:String = "Effect_Explosion_Core";
      
      public static const §,!b§:String = "Effect_Pig_Destruction";
      
      public static const §2o§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §-J§:String = "Effect_Bird_Destruction";
      
      public static const §?!q§:String = "Effect_Block_Destruction_Particles";
      
      public static const §-!0§:String = "Effect_Block_Destruction_Core";
      
      public static const §?!y§:String = "Effect_TrailBig_Bird_Rebel";
      
      public static const §4F§:int = 0;
      
      public static const §#!t§:int = 1;
      
      public static const §8a§:int = 2;
      
      public static const §3!c§:int = 3;
      
      public static const §8!v§:int = 4;
      
      public static const §3_§:int = 5;
      
      public static const §?!$§:int = 6;
      
      public static const §>!9§:int = 7;
      
      public static const §#!8§:int = 8;
      
      public static const §[!#§:int = 9;
      
      public static const §0!6§:int = 10;
      
      public static const §2"4§:int = 11;
      
      public static const §[!i§:int = 12;
      
      public static const §``§:int = 13;
      
      public static const §?"4§:int = 14;
      
      public static const § ,§:int = 15;
      
      public static const §6U§:int = 16;
      
      public static const §4"!§:int = 17;
      
      public static const §-!U§:int = 18;
       
      
      public var §%"4§:int;
      
      public var §>w§:int;
      
      public var §;f§:String;
      
      public var §="'§:Number;
      
      public var §&!^§:Number;
      
      public var §;5§:Number;
      
      public var §+!v§:Number;
      
      public var §0!-§:Number = 0;
      
      public var §2c§:Number;
      
      public var §9k§:Number;
      
      public var §="3§:String;
      
      public var §+!D§:Number = -1;
      
      public var §#!o§:int;
      
      public var §]!B§:Number;
      
      public var §9=§:Number;
      
      private var §@!d§:Sprite;
      
      private var §`!4§:§ F§;
      
      private var §#!,§:int;
      
      private var §"!^§:int;
      
      private var §@!h§:Boolean;
      
      private var §@!5§:§;!Q§;
      
      private var §,U§:Boolean;
      
      private var §'!'§:§+$§;
      
      private var §,%§:§%!!§;
      
      private var §4+§:§@_§;
      
      public function §`""§(param1:§+$§, param2:§%!!§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§@!d§ = new Sprite();
         super();
         this.§'!'§ = param1;
         this.§,%§ = param2;
         this.§;f§ = param3;
         this.§%"4§ = param5;
         this.§>w§ = param4;
         this.§#!o§ = param10;
         this.§"!^§ = param16;
         this.§@!h§ = param17;
         this.§="3§ = param9;
         this.§="'§ = 0;
         this.§9k§ = param8;
         this.§]!B§ = param6;
         this.§9=§ = param7;
         this.§2c§ = param15;
         this.§;5§ = param11;
         this.§&!^§ = param12;
         this.§0!-§ = param14;
         this.§+!v§ = param13;
         this.§6;§();
         this.updateRenderer();
         if(this.§%"4§ == §@b§)
         {
            this.§+!D§ = §@!S§.§2A§.§];§.ground + this.§@!d§.height * §#=§.§^!2§;
         }
      }
      
      public static function §6!X§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §4F§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §8a§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §#!t§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §3_§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §8!v§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §3!c§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WINGMAN") >= 0)
         {
            return §4F§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §-!U§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §?!$§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §[!#§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §>!9§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §#!8§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §0!6§;
         }
         return §2"4§;
      }
      
      public static function §?!7§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §[!i§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §?"4§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §``§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §4"!§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §6U§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return § ,§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return § ,§;
         }
         return §6U§;
      }
      
      public function get displayObject() : DisplayObject
      {
         return this.§@!d§;
      }
      
      public function §?!B§(param1:Number, param2:Number) : void
      {
      }
      
      protected function getParticleType() : String
      {
         return this.§;f§;
      }
      
      protected function §6;§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§;!Q§ = null;
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
            case §6"6§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §?!y§:
               this.createParticle("SMOKE_BUFF_SMALL",null,15,false);
               break;
            case §2!t§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §,!b§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §2o§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §-!0§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §#i§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §?E§:
               _loc5_ = 1 + _loc1_ % 5;
               _loc6_ = "particle" + _loc5_;
               break;
            case §+K§:
            case §+!S§:
               if(parseInt(this.§="3§) == 10000 || parseInt(this.§="3§) == 5000)
               {
                  _loc9_ = 16777215;
                  switch(this.§#!o§)
                  {
                     case §[!i§:
                        _loc9_ = 16058683;
                        break;
                     case §``§:
                        _loc9_ = 55294;
                        break;
                     case § ,§:
                        _loc9_ = 1878602;
                        break;
                     case §4"!§:
                        _loc9_ = 3552822;
                        break;
                     case §6U§:
                        break;
                     case §?"4§:
                        _loc9_ = 16705792;
                  }
                  if(parseInt(this.§="3§) == 5000)
                  {
                     _loc9_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§'!'§.§6"%§("NUMBERS");
                  this.§`!4§ = new § F§(_loc2_,_loc3_,true);
                  this.§`!4§.§4A§(parseInt(this.§="3§));
                  this.§@!d§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc9_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§'!'§.§6"%§("NUMBERS");
               this.§`!4§ = new § F§(_loc2_,_loc3_);
               this.§`!4§.§4A§(parseInt(this.§="3§));
               this.§@!d§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §?!q§:
               switch(this.§#!o§)
               {
                  case §[!#§:
                     _loc7_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc7_);
                     break;
                  case §0!6§:
                     _loc7_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §>!9§:
                     _loc7_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc7_);
                     break;
                  case §#!8§:
                     _loc7_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc7_);
                     break;
                  case §2"4§:
                     _loc7_ = 1 + _loc1_ % 5;
               }
               if(this.§@!d§)
               {
                  this.§@!d§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §-J§:
               _loc8_ = 1 + _loc1_ % 3;
               switch(this.§#!o§)
               {
                  case §4F§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc8_);
                     break;
                  case §3_§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc8_);
                     break;
                  case §#!t§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc8_);
                     break;
                  case §3!c§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc8_);
                     break;
                  case §8!v§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc8_);
                     break;
                  case §8a§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc8_);
                     break;
                  case §-!U§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc8_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc8_);
               }
               if(this.§@!d§)
               {
                  this.§@!d§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(_loc4_,null,this.§"!^§,this.§@!h§);
         }
      }
      
      private function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§5E§ = null;
         var _loc6_:Texture = null;
         var _loc8_:DisplayObject = null;
         if(param1 == "??")
         {
            return;
         }
         this.§,U§ = param4;
         var _loc7_:Number = 1;
         this.§@!5§ = this.§'!'§.§6"%§(param1);
         this.§,U§ = param4;
         if(this.§@!5§)
         {
            _loc8_ = this.§@!5§.getFrame(0);
         }
         else
         {
            if(!(_loc5_ = this.§,%§.§5!X§(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
            _loc8_ = new §4!2§(_loc6_,false);
         }
         this.§#!,§ = param3;
         _loc8_.scaleX *= this.§2c§;
         _loc8_.scaleY *= this.§2c§;
         this.§@!d§.addChild(_loc8_);
         _loc8_.x = -this.§@!d§.width / 2;
         _loc8_.y = -this.§@!d§.height / 2;
      }
      
      public function updateRenderer() : void
      {
         if(this.§@!d§)
         {
            this.§@!d§.x = this.§]!B§ / §#=§.§^!2§;
            this.§@!d§.y = this.§9=§ / §#=§.§^!2§;
         }
      }
      
      public function §?,§(param1:§@_§) : void
      {
         this.§4+§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:DisplayObject = null;
         this.§="'§ += param1;
         var _loc2_:Boolean = false;
         if(this.§4+§)
         {
            if(this.§4+§.sprite == null || this.§4+§.levelItem == null)
            {
               return false;
            }
            this.§]!B§ = this.§4+§.§!!I§().GetPosition().x;
            this.§9=§ = this.§4+§.§!!I§().GetPosition().y;
         }
         if(this.§#!,§ > 0 && this.§@!5§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§="'§ / 1000 / (1 / _loc3_)) < this.§@!5§.frameCount)
            {
               _loc5_ = this.§@!5§.getFrame(_loc4_);
               this.§@!d§.§8V§(0,-1,true);
               this.§@!d§.addChild(_loc5_);
               _loc5_.scaleX *= this.§2c§;
               _loc5_.scaleY *= this.§2c§;
            }
            else if(this.§,U§)
            {
               this.§@!d§.§8V§(0,-1,true);
            }
         }
         if(this.§%"4§ == §@b§)
         {
            this.§+r§(param1);
            _loc2_ = this.§[!;§(param1);
            if(this.§+!D§ > 0 && this.§9=§ > this.§+!D§)
            {
               return false;
            }
         }
         else
         {
            this.§+r§(param1);
            _loc2_ = this.§[!;§(param1);
         }
         if(this.§9k§ > 0 && this.§="'§ >= this.§9k§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.updateRenderer();
         }
         return true;
      }
      
      public function §+r§(param1:Number) : void
      {
         this.§&!^§ += param1 * this.§+!v§ / 1000;
         this.§9=§ += this.§&!^§ * param1 / 1000;
         this.§]!B§ += this.§;5§ * param1 / 1000;
         if(this.§0!-§ != 0)
         {
            this.§@!d§.rotation += this.§0!-§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §[!;§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§%"4§ == §7`§)
         {
            if(this.§9k§ > 0)
            {
               _loc2_ = 1;
               if(this.§;f§ == §+!S§)
               {
                  if((_loc4_ = this.§="'§ / this.§9k§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§="3§) / 5000);
               }
               this.§@!d§.scaleX = _loc2_;
               this.§@!d§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§%"4§ == §@b§)
         {
            if(this.§;f§ == §?E§)
            {
               this.§@!d§.alpha = Math.max(0,Math.min(1,2 * §,"2§.§+!u§((this.§9k§ - this.§="'§) / this.§9k§,false)));
               _loc5_ = Math.atan2(-this.§&!^§,this.§;5§) * (180 / Math.PI);
               this.§@!d§.scaleX = Math.max(0.2,this.§@!d§.alpha);
               this.§@!d§.scaleY = Math.max(0.2,this.§@!d§.alpha);
               this.§@!d§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§;f§ == §-J§ || this.§;f§ == §-!0§)
            {
               this.§@!d§.scaleX = this.§@!d§.scaleY = 0.2 + (this.§9k§ - this.§="'§) / this.§9k§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§`!4§)
         {
            this.§`!4§.clear();
            this.§`!4§ = null;
         }
         if(this.§@!d§)
         {
            this.§@!d§.dispose();
            this.§@!d§ = null;
         }
         if(this.§4+§)
         {
            this.§4+§ = null;
         }
      }
   }
}
