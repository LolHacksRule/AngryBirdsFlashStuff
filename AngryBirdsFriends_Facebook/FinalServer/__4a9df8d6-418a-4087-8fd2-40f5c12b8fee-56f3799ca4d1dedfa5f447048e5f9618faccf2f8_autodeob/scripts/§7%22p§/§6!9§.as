package §7"p§
{
   import §"#z§.Texture;
   import §'G§.§3$§;
   import §'G§.§3$B§;
   import §'G§.§;D§;
   import §'G§.§^"[§;
   import §1#v§.§%_§;
   import §6!3§.§;!U§;
   import §6#H§.DisplayObject;
   import §6#H§.Image;
   import §6#H§.Sprite;
   import §>2§.§!"T§;
   import §>2§.§!6§;
   import §`#@§.§7n§;
   
   public class §6!9§
   {
      
      public static const §-D§:int = 0;
      
      public static const PARTICLE_TYPE_KINETIC_PARTICLE:int = 1;
      
      public static const PARTICLE_TYPE_STATIC_PARTICLE:int = 2;
      
      public static const §1"g§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §>w§:String = "Effect_TrailBig_Bird";
      
      public static const §#"j§:String = "Effect_Trail_Sparkle";
      
      public static const §&!%§:String = "Effect_Floating_Score";
      
      public static const §]"X§:String = "Effect_Floating_Text";
      
      public static const §2!w§:String = "Effect_Explosion_Particle";
      
      public static const §]!a§:String = "Effect_Explosion_Core";
      
      public static const §5!L§:String = "Effect_Pig_Destruction";
      
      public static const §]!J§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §?!R§:String = "Effect_Bird_Destruction";
      
      public static const PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES:String = "Effect_Block_Destruction_Particles";
      
      public static const §"B§:String = "Effect_Block_Destruction_Core";
      
      public static const §&!n§:String = "Effect_TrailBig_Bird_Rebel";
      
      public static const §3!$§:String = "Effect_Block_Destruction_Powerup";
      
      public static const §5"l§:int = -1;
      
      public static const §`$ §:int = 0;
      
      public static const §4%§:int = 1;
      
      public static const §-r§:int = 2;
      
      public static const §+$D§:int = 3;
      
      public static const §[!i§:int = 4;
      
      public static const §break§:int = 5;
      
      public static const §'s§:int = 6;
      
      public static const §9"W§:int = 7;
      
      public static const §8!S§:int = 8;
      
      public static const §5!7§:int = 9;
      
      public static const §#!r§:int = 10;
      
      public static const §^!+§:int = 11;
      
      public static const §2!H§:int = 12;
      
      public static const §#"U§:int = 13;
      
      public static const §["b§:int = 14;
      
      public static const §<$;§:int = 15;
      
      public static const §=#g§:int = 16;
      
      public static const §?#1§:int = 17;
      
      public static const §5w§:int = 18;
      
      public static const §<"F§:int = 19;
      
      public static const §#!s§:int = 20;
      
      public static const §;#v§:int = 21;
      
      public static const §-!^§:int = 22;
       
      
      public var §>M§:int;
      
      public var §0""§:int;
      
      public var §,e§:String;
      
      public var §%"<§:Number;
      
      public var §`#v§:Number;
      
      public var §@@§:Number;
      
      public var §5#Z§:Number;
      
      public var §'$5§:Number = 0;
      
      public var §5>§:Number;
      
      public var §6J§:String;
      
      public var §&$!§:Number;
      
      public var § &§:String;
      
      public var §`!B§:Number = -1;
      
      public var §5!x§:int;
      
      public var §["d§:Number;
      
      public var §%#z§:Number;
      
      protected var §&#W§:Sprite;
      
      private var §%!9§:§!"T§;
      
      private var §<#g§:Number;
      
      private var §1n§:Number;
      
      private var §#l§:Boolean;
      
      private var §&#N§:§;D§;
      
      private var §+";§:Boolean;
      
      private var §7!w§:§^"[§;
      
      private var §?#r§:§3$§;
      
      private var §!!u§:§;!U§;
      
      public function §6!9§(param1:§^"[§, param2:§3$§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:Number = -1, param17:Boolean = false, param18:String = null)
      {
         this.§&#W§ = new Sprite();
         super();
         this.§7!w§ = param1;
         this.§?#r§ = param2;
         this.§,e§ = param3;
         this.§>M§ = param5;
         this.§0""§ = param4;
         this.§5!x§ = param10;
         this.§1n§ = param16;
         this.§#l§ = param17;
         this.§ &§ = param9;
         this.§%"<§ = 0;
         this.§&$!§ = param8;
         this.§["d§ = param6;
         this.§%#z§ = param7;
         this.§5>§ = param15;
         this.§@@§ = param11;
         this.§`#v§ = param12;
         this.§'$5§ = param14;
         this.§5#Z§ = param13;
         this.§6J§ = param18;
         this.§8!g§();
         this.updateRenderer();
         if(this.§>M§ == PARTICLE_TYPE_KINETIC_PARTICLE)
         {
            this.§`!B§ = §7n§.§6#K§.§;$5§.ground + this.§&#W§.height * §!6§.§[#v§;
         }
      }
      
      public static function getParticleMaterialFromEngineMaterial(param1:String) : int
      {
         param1 = param1.toUpperCase();
         if(param1.indexOf("BIRD_RED") >= 0)
         {
            return §`$ §;
         }
         if(param1.indexOf("BIRD_YELLOW") >= 0)
         {
            return §-r§;
         }
         if(param1.indexOf("BIRD_BLUE") >= 0)
         {
            return §4%§;
         }
         if(param1.indexOf("BIRD_BLACK") >= 0)
         {
            return §break§;
         }
         if(param1.indexOf("BIRD_WHITE") >= 0)
         {
            return §[!i§;
         }
         if(param1.indexOf("BIRD_GREEN") >= 0)
         {
            return §+$D§;
         }
         if(param1.indexOf("BIRD_WINGMAN") >= 0)
         {
            return §`$ §;
         }
         if(param1.indexOf("BIRD_ORANGE") >= 0)
         {
            return §-r§;
         }
         if(param1.indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §;#v§;
         }
         if(param1.indexOf("BIRD_PINK") >= 0)
         {
            return §-!^§;
         }
         if(param1.indexOf("PIG") >= 0)
         {
            return §'s§;
         }
         if(param1.indexOf("ICE") >= 0)
         {
            return §5!7§;
         }
         if(param1.indexOf("WOOD") >= 0)
         {
            return §9"W§;
         }
         if(param1.indexOf("STONE") >= 0)
         {
            return §8!S§;
         }
         if(param1.indexOf("SNOW") >= 0)
         {
            return §#!r§;
         }
         if(param1.indexOf("INVISIBLE") >= 0)
         {
            return §5"l§;
         }
         return §^!+§;
      }
      
      public static function §[T§(param1:String, param2:Boolean = false) : int
      {
         if(param2)
         {
            return §=#g§;
         }
         param1 = param1.toUpperCase();
         if(param1.indexOf("BIRD_RED") >= 0 || param1 == "BIRD_WINGMAN")
         {
            return §2!H§;
         }
         if(param1.indexOf("BIRD_YELLOW") >= 0 || param1 == "POWERUP_BOOMBOX" || param1 == "FIRE_BLOCK")
         {
            return §["b§;
         }
         if(param1.indexOf("BIRD_BLUE") >= 0)
         {
            return §#"U§;
         }
         if(param1.indexOf("BIRD_BLACK") >= 0)
         {
            return §5w§;
         }
         if(param1.indexOf("BIRD_WHITE") >= 0)
         {
            return §?#1§;
         }
         if(param1.indexOf("BIRD_GREEN") >= 0)
         {
            return §<$;§;
         }
         if(param1.indexOf("BIRD_ORANGE") >= 0)
         {
            return §<"F§;
         }
         if(param1.indexOf("BIRD_PINK") >= 0)
         {
            return §#!s§;
         }
         return §?#1§;
      }
      
      public function get displayObject() : DisplayObject
      {
         return this.§&#W§;
      }
      
      public function §1#X§(param1:Number, param2:Number) : void
      {
      }
      
      protected function getParticleType() : String
      {
         return this.§,e§;
      }
      
      protected function §8!g§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§;D§ = null;
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
            case §>w§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §&!n§:
               this.createParticle("SMOKE_BUFF_SMALL",null,15,false);
               break;
            case §#"j§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §5!L§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §]!J§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §"B§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §3!$§:
               this.createParticle("POWERUP_EFFECT_POTIONCLOUD",null,15,false);
               break;
            case §]!a§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §2!w§:
               _loc5_ = 1 + _loc1_ % 5;
               _loc6_ = "particle" + _loc5_;
               break;
            case §&!%§:
            case §]"X§:
               _loc7_ = 16777215;
               if(this.§6J§)
               {
                  switch(this.§6J§)
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
                  switch(this.§5!x§)
                  {
                     case §2!H§:
                        _loc7_ = 16058683;
                        break;
                     case §#"U§:
                        _loc7_ = 55294;
                        break;
                     case §<$;§:
                        _loc7_ = 1878602;
                        break;
                     case §=#g§:
                        _loc7_ = 7201353;
                        break;
                     case §5w§:
                        _loc7_ = 3552822;
                        break;
                     case §?#1§:
                        break;
                     case §["b§:
                        _loc7_ = 16705792;
                        break;
                     case §<"F§:
                        _loc7_ = 16763136;
                        break;
                     case §#!s§:
                        _loc7_ = 16168904;
                  }
               }
               _loc2_ = new Sprite();
               _loc8_ = _loc7_ != 16777215;
               _loc3_ = this.§7!w§.getAnimation("NUMBERS");
               this.§%!9§ = new §!"T§(_loc2_,_loc3_,_loc8_);
               this.§%!9§.§+$7§(parseInt(this.§ &§));
               this.§&#W§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               if(_loc8_)
               {
                  _loc2_.color = _loc7_;
                  _loc2_.flatten();
               }
               break;
            case PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES:
               switch(this.§5!x§)
               {
                  case §5!7§:
                     _loc9_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc9_);
                     break;
                  case §#!r§:
                     _loc9_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §9"W§:
                     _loc9_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc9_);
                     break;
                  case §8!S§:
                     _loc9_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc9_);
                     break;
                  case §^!+§:
                     this.createParticle("SMOKE_BIG",null,20,true);
               }
               if(this.§&#W§)
               {
                  this.§&#W§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §?!R§:
               _loc10_ = 1 + _loc1_ % 3;
               switch(this.§5!x§)
               {
                  case §`$ §:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc10_);
                     break;
                  case §break§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc10_);
                     break;
                  case §4%§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc10_);
                     break;
                  case §+$D§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc10_);
                     break;
                  case §[!i§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc10_);
                     break;
                  case §-r§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc10_);
                     break;
                  case §;#v§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc10_);
                     break;
                  case §-!^§:
                     this.createParticle("PARTICLE_BIRDPINK_" + _loc10_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc10_);
               }
               if(this.§&#W§)
               {
                  this.§&#W§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            default:
               this.createParticle(_loc4_,null,this.§1n§,this.§#l§);
         }
      }
      
      private function createParticle(param1:String, param2:String = null, param3:Number = -1, param4:Boolean = false) : void
      {
         var _loc5_:§3$B§ = null;
         var _loc6_:Texture = null;
         var _loc8_:DisplayObject = null;
         if(param1 == "??")
         {
            return;
         }
         this.§+";§ = param4;
         var _loc7_:Number = 1;
         this.§&#N§ = this.§7!w§.getAnimation(param1);
         this.§+";§ = param4;
         if(this.§&#N§)
         {
            _loc8_ = this.§&#N§.getFrame(0);
         }
         else
         {
            if(!(_loc5_ = this.§?#r§.getTexture(param1)))
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
         this.§<#g§ = param3;
         _loc8_.scaleX *= this.§5>§;
         _loc8_.scaleY *= this.§5>§;
         this.§&#W§.addChild(_loc8_);
         _loc8_.x = -this.§&#W§.width / 2;
         _loc8_.y = -this.§&#W§.height / 2;
      }
      
      public function updateRenderer() : void
      {
         if(this.§&#W§)
         {
            this.§&#W§.x = this.§["d§ / §!6§.§[#v§;
            this.§&#W§.y = this.§%#z§ / §!6§.§[#v§;
         }
      }
      
      public function §=",§(param1:§;!U§) : void
      {
         this.§!!u§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:DisplayObject = null;
         this.§%"<§ += param1;
         var _loc2_:Boolean = false;
         if(this.§!!u§)
         {
            if(this.§!!u§.sprite == null || this.§!!u§.levelItem == null)
            {
               return false;
            }
            this.§["d§ = this.§!!u§.getBody().GetPosition().x;
            this.§%#z§ = this.§!!u§.getBody().GetPosition().y;
         }
         if(this.§<#g§ > 0 && this.§&#N§)
         {
            _loc3_ = this.§%"<§ / 1000 / (1 / this.§<#g§);
            if(_loc3_ < this.§&#N§.frameCount)
            {
               _loc4_ = this.§&#N§.getFrame(_loc3_);
               this.§&#W§.removeChildren(0,-1,true);
               this.§&#W§.addChild(_loc4_);
               _loc4_.scaleX *= this.§5>§;
               _loc4_.scaleY *= this.§5>§;
            }
            else if(this.§+";§)
            {
               this.§&#W§.removeChildren(0,-1,true);
            }
         }
         if(this.§>M§ == PARTICLE_TYPE_KINETIC_PARTICLE)
         {
            this.§&#F§(param1);
            _loc2_ = this.updateParticles(param1);
            if(this.§`!B§ > 0 && this.§%#z§ > this.§`!B§)
            {
               return false;
            }
         }
         else
         {
            this.§&#F§(param1);
            _loc2_ = this.updateParticles(param1);
         }
         if(this.§&$!§ > 0 && this.§%"<§ >= this.§&$!§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.updateRenderer();
         }
         return true;
      }
      
      public function §&#F§(param1:Number) : void
      {
         this.§`#v§ += param1 * this.§5#Z§ / 1000;
         this.§%#z§ += this.§`#v§ * param1 / 1000;
         this.§["d§ += this.§@@§ * param1 / 1000;
         if(this.§'$5§ != 0)
         {
            this.§&#W§.rotation += this.§'$5§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function updateParticles(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§>M§ == §-D§)
         {
            if(this.§&$!§ > 0)
            {
               _loc2_ = 1;
               if(this.§,e§ == §]"X§)
               {
                  if((_loc4_ = this.§%"<§ / this.§&$!§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§ &§) / 5000);
                  if(_loc2_ < -3)
                  {
                     _loc2_ = -3;
                  }
                  else if(_loc2_ > 3)
                  {
                     _loc2_ = 3;
                  }
               }
               this.§&#W§.scaleX = _loc2_;
               this.§&#W§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§>M§ == PARTICLE_TYPE_KINETIC_PARTICLE)
         {
            if(this.§,e§ == §2!w§)
            {
               this.§&#W§.alpha = Math.max(0,Math.min(1,2 * §%_§.§30§((this.§&$!§ - this.§%"<§) / this.§&$!§,false)));
               _loc5_ = Math.atan2(-this.§`#v§,this.§@@§) * (180 / Math.PI);
               this.§&#W§.scaleX = Math.max(0.2,this.§&#W§.alpha);
               this.§&#W§.scaleY = Math.max(0.2,this.§&#W§.alpha);
               this.§&#W§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§,e§ == §?!R§ || this.§,e§ == §"B§)
            {
               this.§&#W§.scaleX = this.§&#W§.scaleY = 0.2 + (this.§&$!§ - this.§%"<§) / this.§&$!§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§%!9§)
         {
            this.§%!9§.clear();
            this.§%!9§ = null;
         }
         if(this.§&#W§)
         {
            this.§&#W§.dispose();
            this.§&#W§ = null;
         }
         if(this.§!!u§)
         {
            this.§!!u§ = null;
         }
      }
   }
}
