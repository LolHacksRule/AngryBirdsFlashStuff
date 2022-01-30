package §!m§
{
   import § 2§.§=+§;
   import § 2§.§><§;
   import §%Z§.§&!-§;
   import §0!_§.§!!G§;
   import §0!_§.§+!?§;
   import §0!_§.§19§;
   import §0!_§.§7!3§;
   import §3!0§.§`i§;
   import §6s§.Texture;
   import §8!$§.§'f§;
   import §`!B§.§ l§;
   import §`!B§.DisplayObject;
   import §`!B§.Sprite;
   
   public class §'!P§
   {
      
      public static const §^x§:int = 0;
      
      public static const §>]§:int = 1;
      
      public static const §8"0§:int = 2;
      
      public static const §?+§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §1[§:String = "Effect_TrailBig_Bird";
      
      public static const §"T§:String = "Effect_Trail_Sparkle";
      
      public static const §#<§:String = "Effect_Floating_Score";
      
      public static const §+!;§:String = "Effect_Floating_Text";
      
      public static const §5!$§:String = "Effect_Explosion_Particle";
      
      public static const §,!A§:String = "Effect_Explosion_Core";
      
      public static const §3!3§:String = "Effect_Pig_Destruction";
      
      public static const §4!"§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §^3§:String = "Effect_Bird_Destruction";
      
      public static const §>!^§:String = "Effect_Block_Destruction_Particles";
      
      public static const §#!G§:String = "Effect_Block_Destruction_Core";
      
      public static const §2!;§:String = "Effect_TrailBig_Bird_Rebel";
      
      public static const §]!R§:int = 0;
      
      public static const §0"#§:int = 1;
      
      public static const §1!+§:int = 2;
      
      public static const §@n§:int = 3;
      
      public static const §,P§:int = 4;
      
      public static const §#!k§:int = 5;
      
      public static const §7!A§:int = 6;
      
      public static const §]"0§:int = 7;
      
      public static const §>0§:int = 8;
      
      public static const §'N§:int = 9;
      
      public static const §'"'§:int = 10;
      
      public static const §0!2§:int = 11;
      
      public static const §4@§:int = 12;
      
      public static const §9B§:int = 13;
      
      public static const §^!x§:int = 14;
      
      public static const §9!'§:int = 15;
      
      public static const §@"6§:int = 16;
      
      public static const §?#§:int = 17;
      
      public static const §>!H§:int = 18;
       
      
      public var §5!1§:int;
      
      public var §>v§:int;
      
      public var §&!z§:String;
      
      public var §6"6§:Number;
      
      public var §0!I§:Number;
      
      public var §=!G§:Number;
      
      public var §"9§:Number;
      
      public var §2!j§:Number = 0;
      
      public var §0y§:Number;
      
      public var §<"5§:Number;
      
      public var §%o§:String;
      
      public var §9T§:Number = -1;
      
      public var §`!j§:int;
      
      public var §0O§:Number;
      
      public var §=!v§:Number;
      
      private var §[!q§:Sprite;
      
      private var §9!w§:§><§;
      
      private var §9",§:int;
      
      private var § ?§:int;
      
      private var § E§:Boolean;
      
      private var §3z§:§+!?§;
      
      private var §-"4§:Boolean;
      
      private var §,W§:§7!3§;
      
      private var §=!Q§:§!!G§;
      
      private var §`!6§:§&!-§;
      
      public function §'!P§(param1:§7!3§, param2:§!!G§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§[!q§ = new Sprite();
         super();
         this.§,W§ = param1;
         this.§=!Q§ = param2;
         this.§&!z§ = param3;
         this.§5!1§ = param5;
         this.§>v§ = param4;
         this.§`!j§ = param10;
         this.§ ?§ = param16;
         this.§ E§ = param17;
         this.§%o§ = param9;
         this.§6"6§ = 0;
         this.§<"5§ = param8;
         this.§0O§ = param6;
         this.§=!v§ = param7;
         this.§0y§ = param15;
         this.§=!G§ = param11;
         this.§0!I§ = param12;
         this.§2!j§ = param14;
         this.§"9§ = param13;
         this.§?!h§();
         this.updateRenderer();
         if(this.§5!1§ == §>]§)
         {
            this.§9T§ = §`i§.§&!L§.§#"3§.ground + this.§[!q§.height * §=+§.§5!w§;
         }
      }
      
      public static function §&%§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §]!R§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §1!+§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §0"#§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §#!k§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §,P§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §@n§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WINGMAN") >= 0)
         {
            return §]!R§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §>!H§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §7!A§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §'N§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §]"0§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §>0§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §'"'§;
         }
         return §0!2§;
      }
      
      public static function §^!l§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §4@§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §^!x§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §9B§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §?#§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §@"6§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §9!'§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §9!'§;
         }
         return §@"6§;
      }
      
      public function get displayObject() : DisplayObject
      {
         return this.§[!q§;
      }
      
      public function §4u§(param1:Number, param2:Number) : void
      {
      }
      
      protected function getParticleType() : String
      {
         return this.§&!z§;
      }
      
      protected function §?!h§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§+!?§ = null;
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
            case §1[§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §2!;§:
               this.createParticle("SMOKE_BUFF_SMALL",null,15,false);
               break;
            case §"T§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §3!3§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §4!"§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §#!G§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §,!A§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §5!$§:
               _loc5_ = 1 + _loc1_ % 5;
               _loc6_ = "particle" + _loc5_;
               break;
            case §#<§:
            case §+!;§:
               if(parseInt(this.§%o§) == 10000 || parseInt(this.§%o§) == 5000)
               {
                  _loc9_ = 16777215;
                  switch(this.§`!j§)
                  {
                     case §4@§:
                        _loc9_ = 16058683;
                        break;
                     case §9B§:
                        _loc9_ = 55294;
                        break;
                     case §9!'§:
                        _loc9_ = 1878602;
                        break;
                     case §?#§:
                        _loc9_ = 3552822;
                        break;
                     case §@"6§:
                        break;
                     case §^!x§:
                        _loc9_ = 16705792;
                  }
                  if(parseInt(this.§%o§) == 5000)
                  {
                     _loc9_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§,W§.§%h§("NUMBERS");
                  this.§9!w§ = new §><§(_loc2_,_loc3_,true);
                  this.§9!w§.§9!F§(parseInt(this.§%o§));
                  this.§[!q§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc9_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§,W§.§%h§("NUMBERS");
               this.§9!w§ = new §><§(_loc2_,_loc3_);
               this.§9!w§.§9!F§(parseInt(this.§%o§));
               this.§[!q§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §>!^§:
               switch(this.§`!j§)
               {
                  case §'N§:
                     _loc7_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc7_);
                     break;
                  case §'"'§:
                     _loc7_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §]"0§:
                     _loc7_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc7_);
                     break;
                  case §>0§:
                     _loc7_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc7_);
                     break;
                  case §0!2§:
                     _loc7_ = 1 + _loc1_ % 5;
               }
               if(this.§[!q§)
               {
                  this.§[!q§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §^3§:
               _loc8_ = 1 + _loc1_ % 3;
               switch(this.§`!j§)
               {
                  case §]!R§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc8_);
                     break;
                  case §#!k§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc8_);
                     break;
                  case §0"#§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc8_);
                     break;
                  case §@n§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc8_);
                     break;
                  case §,P§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc8_);
                     break;
                  case §1!+§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc8_);
                     break;
                  case §>!H§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc8_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc8_);
               }
               if(this.§[!q§)
               {
                  this.§[!q§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(_loc4_,null,this.§ ?§,this.§ E§);
         }
      }
      
      private function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§19§ = null;
         var _loc6_:Texture = null;
         var _loc8_:DisplayObject = null;
         if(param1 == "??")
         {
            return;
         }
         this.§-"4§ = param4;
         var _loc7_:Number = 1;
         this.§3z§ = this.§,W§.§%h§(param1);
         this.§-"4§ = param4;
         if(this.§3z§)
         {
            _loc8_ = this.§3z§.getFrame(0);
         }
         else
         {
            if(!(_loc5_ = this.§=!Q§.§<!z§(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
            _loc8_ = new § l§(_loc6_,false);
         }
         this.§9",§ = param3;
         _loc8_.scaleX *= this.§0y§;
         _loc8_.scaleY *= this.§0y§;
         this.§[!q§.addChild(_loc8_);
         _loc8_.x = -this.§[!q§.width / 2;
         _loc8_.y = -this.§[!q§.height / 2;
      }
      
      public function updateRenderer() : void
      {
         if(this.§[!q§)
         {
            this.§[!q§.x = this.§0O§ / §=+§.§5!w§;
            this.§[!q§.y = this.§=!v§ / §=+§.§5!w§;
         }
      }
      
      public function §&"2§(param1:§&!-§) : void
      {
         this.§`!6§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:DisplayObject = null;
         this.§6"6§ += param1;
         var _loc2_:Boolean = false;
         if(this.§`!6§)
         {
            if(this.§`!6§.sprite == null || this.§`!6§.levelItem == null)
            {
               return false;
            }
            this.§0O§ = this.§`!6§.§-!N§().GetPosition().x;
            this.§=!v§ = this.§`!6§.§-!N§().GetPosition().y;
         }
         if(this.§9",§ > 0 && this.§3z§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§6"6§ / 1000 / (1 / _loc3_)) < this.§3z§.frameCount)
            {
               _loc5_ = this.§3z§.getFrame(_loc4_);
               this.§[!q§.§!,§(0,-1,true);
               this.§[!q§.addChild(_loc5_);
               _loc5_.scaleX *= this.§0y§;
               _loc5_.scaleY *= this.§0y§;
            }
            else if(this.§-"4§)
            {
               this.§[!q§.§!,§(0,-1,true);
            }
         }
         if(this.§5!1§ == §>]§)
         {
            this.§=![§(param1);
            _loc2_ = this.§1!H§(param1);
            if(this.§9T§ > 0 && this.§=!v§ > this.§9T§)
            {
               return false;
            }
         }
         else
         {
            this.§=![§(param1);
            _loc2_ = this.§1!H§(param1);
         }
         if(this.§<"5§ > 0 && this.§6"6§ >= this.§<"5§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.updateRenderer();
         }
         return true;
      }
      
      public function §=![§(param1:Number) : void
      {
         this.§0!I§ += param1 * this.§"9§ / 1000;
         this.§=!v§ += this.§0!I§ * param1 / 1000;
         this.§0O§ += this.§=!G§ * param1 / 1000;
         if(this.§2!j§ != 0)
         {
            this.§[!q§.rotation += this.§2!j§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §1!H§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§5!1§ == §^x§)
         {
            if(this.§<"5§ > 0)
            {
               _loc2_ = 1;
               if(this.§&!z§ == §+!;§)
               {
                  if((_loc4_ = this.§6"6§ / this.§<"5§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§%o§) / 5000);
               }
               this.§[!q§.scaleX = _loc2_;
               this.§[!q§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§5!1§ == §>]§)
         {
            if(this.§&!z§ == §5!$§)
            {
               this.§[!q§.alpha = Math.max(0,Math.min(1,2 * §'f§.§`!Z§((this.§<"5§ - this.§6"6§) / this.§<"5§,false)));
               _loc5_ = Math.atan2(-this.§0!I§,this.§=!G§) * (180 / Math.PI);
               this.§[!q§.scaleX = Math.max(0.2,this.§[!q§.alpha);
               this.§[!q§.scaleY = Math.max(0.2,this.§[!q§.alpha);
               this.§[!q§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§&!z§ == §^3§ || this.§&!z§ == §#!G§)
            {
               this.§[!q§.scaleX = this.§[!q§.scaleY = 0.2 + (this.§<"5§ - this.§6"6§) / this.§<"5§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§9!w§)
         {
            this.§9!w§.clear();
            this.§9!w§ = null;
         }
         if(this.§[!q§)
         {
            this.§[!q§.dispose();
            this.§[!q§ = null;
         }
         if(this.§`!6§)
         {
            this.§`!6§ = null;
         }
      }
   }
}
