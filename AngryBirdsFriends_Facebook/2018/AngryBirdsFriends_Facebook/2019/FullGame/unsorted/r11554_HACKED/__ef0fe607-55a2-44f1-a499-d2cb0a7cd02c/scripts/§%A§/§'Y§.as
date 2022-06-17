package §%A§
{
   import § !D§.§'"u§;
   import § !D§.§3!]§;
   import §!6§.DisplayObject;
   import §!6§.Image;
   import §!6§.Sprite;
   import §""'§.Texture;
   import §-!!§.§8"J§;
   import §9#K§.§4P§;
   import §=!2§.§%"T§;
   import §^"[§.§2§;
   import §^"[§.§4!8§;
   import §^"[§.§=#;§;
   import §^"[§.§^!8§;
   
   public class §'Y§
   {
      
      public static const §1",§:int = 0;
      
      public static const PARTICLE_TYPE_KINETIC_PARTICLE:int = 1;
      
      public static const PARTICLE_TYPE_STATIC_PARTICLE:int = 2;
      
      public static const §1"J§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §2!n§:String = "Effect_TrailBig_Bird";
      
      public static const §=!d§:String = "Effect_Trail_Sparkle";
      
      public static const §`5§:String = "Effect_Floating_Score";
      
      public static const §8!N§:String = "Effect_Floating_Text";
      
      public static const §?!G§:String = "Effect_Explosion_Particle";
      
      public static const §&"u§:String = "Effect_Explosion_Core";
      
      public static const §>$?§:String = "Effect_Pig_Destruction";
      
      public static const §6b§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §7!s§:String = "Effect_Bird_Destruction";
      
      public static const PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES:String = "Effect_Block_Destruction_Particles";
      
      public static const §?#B§:String = "Effect_Block_Destruction_Core";
      
      public static const §4!k§:String = "Effect_TrailBig_Bird_Rebel";
      
      public static const §5!K§:String = "Effect_Block_Destruction_Powerup";
      
      public static const § >§:int = -1;
      
      public static const §0=§:int = 0;
      
      public static const §[j§:int = 1;
      
      public static const §+$?§:int = 2;
      
      public static const §[#I§:int = 3;
      
      public static const §@"5§:int = 4;
      
      public static const §;#>§:int = 5;
      
      public static const §,"A§:int = 6;
      
      public static const §5#q§:int = 7;
      
      public static const §9$§:int = 8;
      
      public static const §<#T§:int = 9;
      
      public static const §1"6§:int = 10;
      
      public static const §2d§:int = 11;
      
      public static const §,m§:int = 12;
      
      public static const §<B§:int = 13;
      
      public static const §6#r§:int = 14;
      
      public static const §=!A§:int = 15;
      
      public static const §9"'§:int = 16;
      
      public static const §=,§:int = 17;
      
      public static const §""@§:int = 18;
      
      public static const §?"o§:int = 19;
      
      public static const §0"E§:int = 20;
      
      public static const §`!G§:int = 21;
      
      public static const §7!+§:int = 22;
       
      
      public var §3!H§:int;
      
      public var §]$!§:int;
      
      public var §2#j§:String;
      
      public var §'v§:Number;
      
      public var §`H§:Number;
      
      public var §`!_§:Number;
      
      public var §=D§:Number;
      
      public var §%"b§:Number = 0;
      
      public var §6z§:Number;
      
      public var §@#0§:String;
      
      public var §'"Q§:Number;
      
      public var §]=§:String;
      
      public var §6w§:Number = -1;
      
      public var §'"6§:int;
      
      public var §-##§:Number;
      
      public var §0#[§:Number;
      
      protected var §^p§:Sprite;
      
      private var §5"E§:§3!]§;
      
      private var §^#y§:Number;
      
      private var §+$§:Number;
      
      private var §,!<§:Boolean;
      
      private var §"m§:§4!8§;
      
      private var § "-§:Boolean;
      
      private var § "9§:§2#6§;
      
      private var §2!b§:§=#;§;
      
      private var §[W§:§8"J§;
      
      public function §'Y§(param1:§2#6§, param2:§=#;§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:Number = -1, param17:Boolean = false, param18:String = null)
      {
         this.§^p§ = new Sprite();
         super();
         this.§ "9§ = param1;
         this.§2!b§ = param2;
         this.§2#j§ = param3;
         this.§3!H§ = param5;
         this.§]$!§ = param4;
         this.§'"6§ = param10;
         this.§+$§ = param16;
         this.§,!<§ = param17;
         this.§]=§ = param9;
         this.§'v§ = 0;
         this.§'"Q§ = param8;
         this.§-##§ = param6;
         this.§0#[§ = param7;
         this.§6z§ = param15;
         this.§`!_§ = param11;
         this.§`H§ = param12;
         this.§%"b§ = param14;
         this.§=D§ = param13;
         this.§@#0§ = param18;
         this.§"t§();
         this.updateRenderer();
         if(this.§3!H§ == PARTICLE_TYPE_KINETIC_PARTICLE)
         {
            this.§6w§ = §%"T§.§;`§.§!!,§.ground + this.§^p§.height * §'"u§.§'#e§;
         }
      }
      
      public static function getParticleMaterialFromEngineMaterial(param1:String) : int
      {
         param1 = param1.toUpperCase();
         if(param1.indexOf("BIRD_RED") >= 0)
         {
            return §0=§;
         }
         if(param1.indexOf("BIRD_YELLOW") >= 0)
         {
            return §+$?§;
         }
         if(param1.indexOf("BIRD_BLUE") >= 0)
         {
            return §[j§;
         }
         if(param1.indexOf("BIRD_BLACK") >= 0)
         {
            return §;#>§;
         }
         if(param1.indexOf("BIRD_WHITE") >= 0)
         {
            return §@"5§;
         }
         if(param1.indexOf("BIRD_GREEN") >= 0)
         {
            return §[#I§;
         }
         if(param1.indexOf("BIRD_WINGMAN") >= 0)
         {
            return §0=§;
         }
         if(param1.indexOf("BIRD_ORANGE") >= 0)
         {
            return §+$?§;
         }
         if(param1.indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §`!G§;
         }
         if(param1.indexOf("BIRD_PINK") >= 0)
         {
            return §7!+§;
         }
         if(param1.indexOf("PIG") >= 0)
         {
            return §,"A§;
         }
         if(param1.indexOf("ICE") >= 0)
         {
            return §<#T§;
         }
         if(param1.indexOf("WOOD") >= 0)
         {
            return §5#q§;
         }
         if(param1.indexOf("STONE") >= 0)
         {
            return §9$§;
         }
         if(param1.indexOf("SNOW") >= 0)
         {
            return §1"6§;
         }
         if(param1.indexOf("INVISIBLE") >= 0)
         {
            return § >§;
         }
         return §2d§;
      }
      
      public static function §!,§(param1:String, param2:Boolean = false) : int
      {
         if(param2)
         {
            return §9"'§;
         }
         param1 = param1.toUpperCase();
         if(param1.indexOf("BIRD_RED") >= 0 || param1 == "BIRD_WINGMAN")
         {
            return §,m§;
         }
         if(param1.indexOf("BIRD_YELLOW") >= 0 || param1 == "POWERUP_BOOMBOX" || param1 == "FIRE_BLOCK")
         {
            return §6#r§;
         }
         if(param1.indexOf("BIRD_BLUE") >= 0)
         {
            return §<B§;
         }
         if(param1.indexOf("BIRD_BLACK") >= 0)
         {
            return §""@§;
         }
         if(param1.indexOf("BIRD_WHITE") >= 0)
         {
            return §=,§;
         }
         if(param1.indexOf("BIRD_GREEN") >= 0)
         {
            return §=!A§;
         }
         if(param1.indexOf("BIRD_ORANGE") >= 0)
         {
            return §?"o§;
         }
         if(param1.indexOf("BIRD_PINK") >= 0)
         {
            return §0"E§;
         }
         return §=,§;
      }
      
      public function get displayObject() : DisplayObject
      {
         return this.§^p§;
      }
      
      public function §#"R§(param1:Number, param2:Number) : void
      {
      }
      
      protected function getParticleType() : String
      {
         return this.§2#j§;
      }
      
      protected function §"t§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§4!8§ = null;
         var _loc5_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:* = false;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
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
            case §2!n§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §4!k§:
               this.createParticle("SMOKE_BUFF_SMALL",null,15,false);
               break;
            case §=!d§:
               this.createParticle("??");
               break;
            case §>$?§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §6b§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §?#B§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §5!K§:
               this.createParticle("POWERUP_EFFECT_POTIONCLOUD",null,15,false);
               break;
            case §&"u§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §?!G§:
               _loc5_ = 1 + _loc1_ % 5;
               "particle" + _loc5_;
               break;
            case §`5§:
            case §8!N§:
               _loc7_ = 16777215;
               if(this.§@#0§)
               {
                  switch(this.§@#0§)
                  {
                     case "FONT_INGAME_MULTIP_SCORE_1":
                        _loc7_ = 16705792;
                        break;
                     case "FONT_INGAME_MULTIP_SCORE_2":
                        _loc7_ = 11806719;
                        break;
                     case "FONT_INGAME_MULTIP_SCORE_3":
                        _loc7_ = 7201353;
                        break;
                     case "FONT_INGAME_MULTIP_SCORE_4":
                        _loc7_ = 5692155;
                  }
               }
               else
               {
                  switch(this.§'"6§)
                  {
                     case §,m§:
                        _loc7_ = 16058683;
                        break;
                     case §<B§:
                        _loc7_ = 55294;
                        break;
                     case §=!A§:
                        _loc7_ = 1878602;
                        break;
                     case §9"'§:
                        _loc7_ = 7201353;
                        break;
                     case §""@§:
                        _loc7_ = 3552822;
                        break;
                     case §=,§:
                        break;
                     case §6#r§:
                        _loc7_ = 16705792;
                        break;
                     case §?"o§:
                        _loc7_ = 16763136;
                        break;
                     case §0"E§:
                        _loc7_ = 16168904;
                  }
               }
               _loc2_ = new Sprite();
               _loc8_ = _loc7_ != 16777215;
               _loc3_ = this.§ "9§.getAnimation("NUMBERS");
               this.§5"E§ = new §3!]§(_loc2_,_loc3_,_loc8_);
               this.§5"E§.§ g§(parseInt(this.§]=§));
               this.§^p§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               if(_loc8_)
               {
                  _loc2_.color = _loc7_;
                  _loc2_.flatten();
                  break;
               }
               break;
            case PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES:
               switch(this.§'"6§)
               {
                  case §<#T§:
                     _loc9_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc9_);
                     break;
                  case §1"6§:
                     _loc9_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §5#q§:
                     _loc9_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc9_);
                     break;
                  case §9$§:
                     _loc9_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc9_);
                     break;
                  case §2d§:
                     this.createParticle("SMOKE_BIG",null,20,true);
               }
               if(this.§^p§)
               {
                  this.§^p§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            case §7!s§:
               _loc10_ = 1 + _loc1_ % 3;
               switch(this.§'"6§)
               {
                  case §0=§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc10_);
                     break;
                  case §;#>§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc10_);
                     break;
                  case §[j§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc10_);
                     break;
                  case §[#I§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc10_);
                     break;
                  case §@"5§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc10_);
                     break;
                  case §+$?§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc10_);
                     break;
                  case §`!G§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc10_);
                     break;
                  case §7!+§:
                     this.createParticle("PARTICLE_BIRDPINK_" + _loc10_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc10_);
               }
               if(this.§^p§)
               {
                  this.§^p§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(_loc4_,null,this.§+$§,this.§,!<§);
         }
      }
      
      private function createParticle(param1:String, param2:String = null, param3:Number = -1, param4:Boolean = false) : void
      {
         var _loc5_:§^!8§ = null;
         var _loc6_:Texture = null;
         var _loc8_:DisplayObject = null;
         if(param1 == "??")
         {
            return;
         }
         this.§ "-§ = param4;
         this.§"m§ = this.§ "9§.getAnimation(param1);
         this.§ "-§ = param4;
         if(this.§"m§)
         {
            _loc8_ = this.§"m§.getFrame(0);
         }
         else if(_loc5_ = this.§2!b§.getTexture(param1))
         {
            _loc6_ = _loc5_.texture;
            Number(_loc5_.scale);
            _loc8_ = new Image(_loc6_,false);
         }
         else
         {
            return;
         }
         if(!_loc8_)
         {
            return;
         }
         this.§^#y§ = param3;
         _loc8_.scaleX *= this.§6z§;
         _loc8_.scaleY *= this.§6z§;
         this.§^p§.addChild(_loc8_);
         _loc8_.x = -this.§^p§.width / 2;
         _loc8_.y = -this.§^p§.height / 2;
      }
      
      public function updateRenderer() : void
      {
         if(this.§^p§)
         {
            this.§^p§.x = this.§-##§ / §'"u§.§'#e§;
            this.§^p§.y = this.§0#[§ / §'"u§.§'#e§;
         }
      }
      
      public function §1!t§(param1:§8"J§) : void
      {
         this.§[W§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:DisplayObject = null;
         this.§'v§ += param1;
         var _loc2_:Boolean = false;
         if(this.§[W§)
         {
            if(this.§[W§.sprite == null || this.§[W§.levelItem == null)
            {
               return false;
            }
            this.§-##§ = this.§[W§.getBody().GetPosition().x;
            this.§0#[§ = this.§[W§.getBody().GetPosition().y;
         }
         if(this.§^#y§ > 0 && this.§"m§)
         {
            _loc3_ = this.§'v§ / 1000 / (1 / this.§^#y§);
            if(_loc3_ < this.§"m§.frameCount)
            {
               _loc4_ = this.§"m§.getFrame(_loc3_);
               this.§^p§.removeChildren(0,-1,true);
               this.§^p§.addChild(_loc4_);
               _loc4_.scaleX *= this.§6z§;
               _loc4_.scaleY *= this.§6z§;
            }
            else if(this.§ "-§)
            {
               this.§^p§.removeChildren(0,-1,true);
            }
         }
         if(this.§3!H§ == PARTICLE_TYPE_KINETIC_PARTICLE)
         {
            this.§+@§(param1);
            _loc2_ = this.updateParticles(param1);
            if(this.§6w§ > 0 && this.§0#[§ > this.§6w§)
            {
               return false;
            }
         }
         else
         {
            this.§+@§(param1);
            _loc2_ = this.updateParticles(param1);
         }
         if(this.§'"Q§ > 0 && this.§'v§ >= this.§'"Q§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.updateRenderer();
         }
         return true;
      }
      
      public function §+@§(param1:Number) : void
      {
         this.§`H§ += param1 * this.§=D§ / 1000;
         this.§0#[§ += this.§`H§ * param1 / 1000;
         this.§-##§ += this.§`!_§ * param1 / 1000;
         if(this.§%"b§ != 0)
         {
            this.§^p§.rotation += this.§%"b§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function updateParticles(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§3!H§ == §1",§)
         {
            if(this.§'"Q§ > 0)
            {
               _loc2_ = 1;
               if(this.§2#j§ == §8!N§)
               {
                  if((_loc4_ = this.§'v§ / this.§'"Q§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§]=§) / 5000);
                  if(_loc2_ < -3)
                  {
                     _loc2_ = -3;
                  }
                  else if(_loc2_ > 3)
                  {
                     _loc2_ = 3;
                  }
               }
               this.§^p§.scaleX = _loc2_;
               this.§^p§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§3!H§ == PARTICLE_TYPE_KINETIC_PARTICLE)
         {
            if(this.§2#j§ == §?!G§)
            {
               this.§^p§.alpha = Math.max(0,Math.min(1,2 * §4P§.§!#R§((this.§'"Q§ - this.§'v§) / this.§'"Q§,false)));
               _loc5_ = Math.atan2(-this.§`H§,this.§`!_§) * (180 / Math.PI);
               this.§^p§.scaleX = Math.max(0.2,this.§^p§.alpha);
               this.§^p§.scaleY = Math.max(0.2,this.§^p§.alpha);
               this.§^p§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§2#j§ == §7!s§ || this.§2#j§ == §?#B§)
            {
               this.§^p§.scaleX = this.§^p§.scaleY = 0.2 + (this.§'"Q§ - this.§'v§) / this.§'"Q§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§5"E§)
         {
            this.§5"E§.clear();
            this.§5"E§ = null;
         }
         if(this.§^p§)
         {
            this.§^p§.dispose();
            this.§^p§ = null;
         }
         if(this.§[W§)
         {
            this.§[W§ = null;
         }
      }
   }
}
