package §7"o§
{
   import §#g§.§&!O§;
   import §#g§.§8§;
   import §,#e§.DisplayObject;
   import §,#e§.Image;
   import §,#e§.Sprite;
   import §-#]§.Texture;
   import §6"p§.§6#F§;
   import §7"T§.§#"^§;
   import §7"T§.§4!L§;
   import §7"T§.§4#[§;
   import §7"T§.§7b§;
   import §;!=§.§>"G§;
   import §?#z§.§]$?§;
   
   public class §=,§
   {
      
      public static const §2##§:int = 0;
      
      public static const PARTICLE_TYPE_KINETIC_PARTICLE:int = 1;
      
      public static const PARTICLE_TYPE_STATIC_PARTICLE:int = 2;
      
      public static const §;!0§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §+! §:String = "Effect_TrailBig_Bird";
      
      public static const §#R§:String = "Effect_Trail_Sparkle";
      
      public static const §0z§:String = "Effect_Floating_Score";
      
      public static const §%P§:String = "Effect_Floating_Text";
      
      public static const §4#S§:String = "Effect_Explosion_Particle";
      
      public static const § !d§:String = "Effect_Explosion_Core";
      
      public static const §%!m§:String = "Effect_Pig_Destruction";
      
      public static const §,$A§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §^#Y§:String = "Effect_Bird_Destruction";
      
      public static const PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES:String = "Effect_Block_Destruction_Particles";
      
      public static const §,$?§:String = "Effect_Block_Destruction_Core";
      
      public static const §]!a§:String = "Effect_TrailBig_Bird_Rebel";
      
      public static const §0N§:String = "Effect_Block_Destruction_Powerup";
      
      public static const §%+§:int = -1;
      
      public static const §'!H§:int = 0;
      
      public static const §"$D§:int = 1;
      
      public static const §-!m§:int = 2;
      
      public static const §4$6§:int = 3;
      
      public static const §,3§:int = 4;
      
      public static const §5!b§:int = 5;
      
      public static const § a§:int = 6;
      
      public static const §5! §:int = 7;
      
      public static const §'!W§:int = 8;
      
      public static const §8"#§:int = 9;
      
      public static const §[#,§:int = 10;
      
      public static const §?E§:int = 11;
      
      public static const §0?§:int = 12;
      
      public static const §[#c§:int = 13;
      
      public static const §3"c§:int = 14;
      
      public static const §3#B§:int = 15;
      
      public static const §!#&§:int = 16;
      
      public static const §9!>§:int = 17;
      
      public static const §;$2§:int = 18;
      
      public static const §"#&§:int = 19;
      
      public static const § #x§:int = 20;
      
      public static const §<6§:int = 21;
      
      public static const §1X§:int = 22;
       
      
      public var §?u§:int;
      
      public var §=!p§:int;
      
      public var §@O§:String;
      
      public var §3%§:Number;
      
      public var §6#q§:Number;
      
      public var §1"m§:Number;
      
      public var §?t§:Number;
      
      public var §^]§:Number = 0;
      
      public var §#!1§:Number;
      
      public var §^"s§:String;
      
      public var §@"s§:Number;
      
      public var §7#A§:String;
      
      public var §4o§:Number = -1;
      
      public var §5!q§:int;
      
      public var §&$'§:Number;
      
      public var §<#-§:Number;
      
      protected var §6"z§:Sprite;
      
      private var §;!l§:§&!O§;
      
      private var §5!<§:Number;
      
      private var §9!u§:Number;
      
      private var §&#S§:Boolean;
      
      private var §#"T§:§7b§;
      
      private var §,"]§:Boolean;
      
      private var §`!§:§4#[§;
      
      private var §-i§:§#"^§;
      
      private var §4$D§:§>"G§;
      
      public function §=,§(param1:§4#[§, param2:§#"^§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:Number = -1, param17:Boolean = false, param18:String = null)
      {
         this.§6"z§ = new Sprite();
         super();
         this.§`!§ = param1;
         this.§-i§ = param2;
         this.§@O§ = param3;
         this.§?u§ = param5;
         this.§=!p§ = param4;
         this.§5!q§ = param10;
         this.§9!u§ = param16;
         this.§&#S§ = param17;
         this.§7#A§ = param9;
         this.§3%§ = 0;
         this.§@"s§ = param8;
         this.§&$'§ = param6;
         this.§<#-§ = param7;
         this.§#!1§ = param15;
         this.§1"m§ = param11;
         this.§6#q§ = param12;
         this.§^]§ = param14;
         this.§?t§ = param13;
         this.§^"s§ = param18;
         this.§>#=§();
         this.updateRenderer();
         if(this.§?u§ == PARTICLE_TYPE_KINETIC_PARTICLE)
         {
            this.§4o§ = §]$?§.§2#§.§3"b§.ground + this.§6"z§.height * §8#3§.§2K§;
         }
      }
      
      public static function getParticleMaterialFromEngineMaterial(param1:String) : int
      {
         param1 = param1.toUpperCase();
         if(param1.indexOf("BIRD_RED") >= 0)
         {
            return §'!H§;
         }
         if(param1.indexOf("BIRD_YELLOW") >= 0)
         {
            return §-!m§;
         }
         if(param1.indexOf("BIRD_BLUE") >= 0)
         {
            return §"$D§;
         }
         if(param1.indexOf("BIRD_BLACK") >= 0)
         {
            return §5!b§;
         }
         if(param1.indexOf("BIRD_WHITE") >= 0)
         {
            return §,3§;
         }
         if(param1.indexOf("BIRD_GREEN") >= 0)
         {
            return §4$6§;
         }
         if(param1.indexOf("BIRD_WINGMAN") >= 0)
         {
            return §'!H§;
         }
         if(param1.indexOf("BIRD_ORANGE") >= 0)
         {
            return §-!m§;
         }
         if(param1.indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §<6§;
         }
         if(param1.indexOf("BIRD_PINK") >= 0)
         {
            return §1X§;
         }
         if(param1.indexOf("PIG") >= 0)
         {
            return § a§;
         }
         if(param1.indexOf("ICE") >= 0)
         {
            return §8"#§;
         }
         if(param1.indexOf("WOOD") >= 0)
         {
            return §5! §;
         }
         if(param1.indexOf("STONE") >= 0)
         {
            return §'!W§;
         }
         if(param1.indexOf("SNOW") >= 0)
         {
            return §[#,§;
         }
         if(param1.indexOf("INVISIBLE") >= 0)
         {
            return §%+§;
         }
         return §?E§;
      }
      
      public static function §[!`§(param1:String, param2:Boolean = false) : int
      {
         if(param2)
         {
            return §!#&§;
         }
         param1 = param1.toUpperCase();
         if(param1.indexOf("BIRD_RED") >= 0 || param1 == "BIRD_WINGMAN")
         {
            return §0?§;
         }
         if(param1.indexOf("BIRD_YELLOW") >= 0 || param1 == "POWERUP_BOOMBOX" || param1 == "FIRE_BLOCK")
         {
            return §3"c§;
         }
         if(param1.indexOf("BIRD_BLUE") >= 0)
         {
            return §[#c§;
         }
         if(param1.indexOf("BIRD_BLACK") >= 0)
         {
            return §;$2§;
         }
         if(param1.indexOf("BIRD_WHITE") >= 0)
         {
            return §9!>§;
         }
         if(param1.indexOf("BIRD_GREEN") >= 0)
         {
            return §3#B§;
         }
         if(param1.indexOf("BIRD_ORANGE") >= 0)
         {
            return §"#&§;
         }
         if(param1.indexOf("BIRD_PINK") >= 0)
         {
            return § #x§;
         }
         return §9!>§;
      }
      
      public function get displayObject() : DisplayObject
      {
         return this.§6"z§;
      }
      
      public function §["@§(param1:Number, param2:Number) : void
      {
      }
      
      protected function getParticleType() : String
      {
         return this.§@O§;
      }
      
      protected function §>#=§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§7b§ = null;
         var _loc5_:int = 0;
         var _loc6_:String = null;
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
            case §+! §:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §]!a§:
               this.createParticle("SMOKE_BUFF_SMALL",null,15,false);
               break;
            case §#R§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §%!m§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §,$A§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §,$?§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §0N§:
               this.createParticle("POWERUP_EFFECT_POTIONCLOUD",null,15,false);
               break;
            case § !d§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §4#S§:
               _loc5_ = 1 + _loc1_ % 5;
               _loc6_ = "particle" + _loc5_;
               break;
            case §0z§:
            case §%P§:
               _loc7_ = 16777215;
               if(this.§^"s§)
               {
                  switch(this.§^"s§)
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
                  switch(this.§5!q§)
                  {
                     case §0?§:
                        _loc7_ = 16058683;
                        break;
                     case §[#c§:
                        _loc7_ = 55294;
                        break;
                     case §3#B§:
                        _loc7_ = 1878602;
                        break;
                     case §!#&§:
                        _loc7_ = 7201353;
                        break;
                     case §;$2§:
                        _loc7_ = 3552822;
                        break;
                     case §9!>§:
                        break;
                     case §3"c§:
                        _loc7_ = 16705792;
                        break;
                     case §"#&§:
                        _loc7_ = 16763136;
                        break;
                     case § #x§:
                        _loc7_ = 16168904;
                  }
               }
               _loc2_ = new Sprite();
               _loc8_ = _loc7_ != 16777215;
               _loc3_ = this.§`!§.getAnimation("NUMBERS");
               this.§;!l§ = new §&!O§(_loc2_,_loc3_,_loc8_);
               this.§;!l§.§]F§(parseInt(this.§7#A§));
               this.§6"z§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               if(_loc8_)
               {
                  _loc2_.color = _loc7_;
                  _loc2_.flatten();
               }
               break;
            case PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES:
               switch(this.§5!q§)
               {
                  case §8"#§:
                     _loc9_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc9_);
                     break;
                  case §[#,§:
                     _loc9_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §5! §:
                     _loc9_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc9_);
                     break;
                  case §'!W§:
                     _loc9_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc9_);
                     break;
                  case §?E§:
                     this.createParticle("SMOKE_BIG",null,20,true);
               }
               if(this.§6"z§)
               {
                  this.§6"z§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §^#Y§:
               _loc10_ = 1 + _loc1_ % 3;
               switch(this.§5!q§)
               {
                  case §'!H§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc10_);
                     break;
                  case §5!b§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc10_);
                     break;
                  case §"$D§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc10_);
                     break;
                  case §4$6§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc10_);
                     break;
                  case §,3§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc10_);
                     break;
                  case §-!m§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc10_);
                     break;
                  case §<6§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc10_);
                     break;
                  case §1X§:
                     this.createParticle("PARTICLE_BIRDPINK_" + _loc10_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc10_);
               }
               if(this.§6"z§)
               {
                  this.§6"z§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(_loc4_,null,this.§9!u§,this.§&#S§);
         }
      }
      
      private function createParticle(param1:String, param2:String = null, param3:Number = -1, param4:Boolean = false) : void
      {
         var _loc5_:§4!L§ = null;
         var _loc6_:Texture = null;
         var _loc8_:DisplayObject = null;
         if(param1 == "??")
         {
            return;
         }
         this.§,"]§ = param4;
         var _loc7_:Number = 1;
         this.§#"T§ = this.§`!§.getAnimation(param1);
         this.§,"]§ = param4;
         if(this.§#"T§)
         {
            _loc8_ = this.§#"T§.getFrame(0);
         }
         else
         {
            if(!(_loc5_ = this.§-i§.getTexture(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
            _loc8_ = new Image(_loc6_,false);
         }
         if(!_loc8_)
         {
            return;
         }
         this.§5!<§ = param3;
         _loc8_.scaleX *= this.§#!1§;
         _loc8_.scaleY *= this.§#!1§;
         this.§6"z§.addChild(_loc8_);
         _loc8_.x = -this.§6"z§.width / 2;
         _loc8_.y = -this.§6"z§.height / 2;
      }
      
      public function updateRenderer() : void
      {
         if(this.§6"z§)
         {
            this.§6"z§.x = this.§&$'§ / §8#3§.§2K§;
            this.§6"z§.y = this.§<#-§ / §8#3§.§2K§;
         }
      }
      
      public function §%#!§(param1:§>"G§) : void
      {
         this.§4$D§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:DisplayObject = null;
         this.§3%§ += param1;
         var _loc2_:Boolean = false;
         if(this.§4$D§)
         {
            if(this.§4$D§.sprite == null || this.§4$D§.levelItem == null)
            {
               return false;
            }
            this.§&$'§ = this.§4$D§.getBody().GetPosition().x;
            this.§<#-§ = this.§4$D§.getBody().GetPosition().y;
         }
         if(this.§5!<§ > 0 && this.§#"T§)
         {
            _loc3_ = this.§3%§ / 1000 / (1 / this.§5!<§);
            if(_loc3_ < this.§#"T§.frameCount)
            {
               _loc4_ = this.§#"T§.getFrame(_loc3_);
               this.§6"z§.removeChildren(0,-1,true);
               this.§6"z§.addChild(_loc4_);
               _loc4_.scaleX *= this.§#!1§;
               _loc4_.scaleY *= this.§#!1§;
            }
            else if(this.§,"]§)
            {
               this.§6"z§.removeChildren(0,-1,true);
            }
         }
         if(this.§?u§ == PARTICLE_TYPE_KINETIC_PARTICLE)
         {
            this.§,!m§(param1);
            _loc2_ = this.updateParticles(param1);
            if(this.§4o§ > 0 && this.§<#-§ > this.§4o§)
            {
               return false;
            }
         }
         else
         {
            this.§,!m§(param1);
            _loc2_ = this.updateParticles(param1);
         }
         if(this.§@"s§ > 0 && this.§3%§ >= this.§@"s§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.updateRenderer();
         }
         return true;
      }
      
      public function §,!m§(param1:Number) : void
      {
         this.§6#q§ += param1 * this.§?t§ / 1000;
         this.§<#-§ += this.§6#q§ * param1 / 1000;
         this.§&$'§ += this.§1"m§ * param1 / 1000;
         if(this.§^]§ != 0)
         {
            this.§6"z§.rotation += this.§^]§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function updateParticles(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§?u§ == §2##§)
         {
            if(this.§@"s§ > 0)
            {
               _loc2_ = 1;
               if(this.§@O§ == §%P§)
               {
                  if((_loc4_ = this.§3%§ / this.§@"s§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§7#A§) / 5000);
                  if(_loc2_ < -3)
                  {
                     _loc2_ = -3;
                  }
                  else if(_loc2_ > 3)
                  {
                     _loc2_ = 3;
                  }
               }
               this.§6"z§.scaleX = _loc2_;
               this.§6"z§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§?u§ == PARTICLE_TYPE_KINETIC_PARTICLE)
         {
            if(this.§@O§ == §4#S§)
            {
               this.§6"z§.alpha = Math.max(0,Math.min(1,2 * §6#F§.§,"r§((this.§@"s§ - this.§3%§) / this.§@"s§,false)));
               _loc5_ = Math.atan2(-this.§6#q§,this.§1"m§) * (180 / Math.PI);
               this.§6"z§.scaleX = Math.max(0.2,this.§6"z§.alpha);
               this.§6"z§.scaleY = Math.max(0.2,this.§6"z§.alpha);
               this.§6"z§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§@O§ == §^#Y§ || this.§@O§ == §,$?§)
            {
               this.§6"z§.scaleX = this.§6"z§.scaleY = 0.2 + (this.§@"s§ - this.§3%§) / this.§@"s§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§;!l§)
         {
            this.§;!l§.clear();
            this.§;!l§ = null;
         }
         if(this.§6"z§)
         {
            this.§6"z§.dispose();
            this.§6"z§ = null;
         }
         if(this.§4$D§)
         {
            this.§4$D§ = null;
         }
      }
   }
}
