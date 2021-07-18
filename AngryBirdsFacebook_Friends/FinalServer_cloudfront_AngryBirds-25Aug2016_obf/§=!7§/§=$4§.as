package §=!7§
{
   import §!x§.§`#E§;
   import §1&§.Texture;
   import §52§.§#!,§;
   import §52§.§13§;
   import §9$§.DisplayObject;
   import §9$§.Image;
   import §9$§.Sprite;
   import §?§.§>"$§;
   import §@"§.§&!=§;
   import §@"§.§+!3§;
   import §@"§.§]!-§;
   import §@"§.§`"W§;
   import §[#a§.§="@§;
   
   public class §=$4§
   {
      
      public static const §6!e§:int = 0;
      
      public static const PARTICLE_TYPE_KINETIC_PARTICLE:int = 1;
      
      public static const §;";§:int = 2;
      
      public static const §9"J§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §[!q§:String = "Effect_TrailBig_Bird";
      
      public static const §@$,§:String = "Effect_Trail_Sparkle";
      
      public static const §5T§:String = "Effect_Floating_Score";
      
      public static const § S§:String = "Effect_Floating_Text";
      
      public static const §+#X§:String = "Effect_Explosion_Particle";
      
      public static const §<"=§:String = "Effect_Explosion_Core";
      
      public static const §<#h§:String = "Effect_Pig_Destruction";
      
      public static const §]!L§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §9J§:String = "Effect_Bird_Destruction";
      
      public static const PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES:String = "Effect_Block_Destruction_Particles";
      
      public static const §=!_§:String = "Effect_Block_Destruction_Core";
      
      public static const §6B§:String = "Effect_TrailBig_Bird_Rebel";
      
      public static const §2O§:String = "Effect_Block_Destruction_Powerup";
      
      public static const §,"P§:int = -1;
      
      public static const §8$8§:int = 0;
      
      public static const §`";§:int = 1;
      
      public static const §`!R§:int = 2;
      
      public static const §3;§:int = 3;
      
      public static const §'Y§:int = 4;
      
      public static const §?#e§:int = 5;
      
      public static const §-!0§:int = 6;
      
      public static const §;D§:int = 7;
      
      public static const §^$-§:int = 8;
      
      public static const §]$0§:int = 9;
      
      public static const §6!R§:int = 10;
      
      public static const §[!Q§:int = 11;
      
      public static const §&<§:int = 12;
      
      public static const §<$§:int = 13;
      
      public static const §&#i§:int = 14;
      
      public static const §""@§:int = 15;
      
      public static const §+#a§:int = 16;
      
      public static const §+!K§:int = 17;
      
      public static const §,a§:int = 18;
      
      public static const §=#7§:int = 19;
       
      
      public var §>#S§:int;
      
      public var §3#i§:int;
      
      public var §5R§:String;
      
      public var §?"i§:Number;
      
      public var §7<§:Number;
      
      public var §="W§:Number;
      
      public var §,"d§:Number;
      
      public var §%##§:Number = 0;
      
      public var §]"?§:Number;
      
      public var §'# §:Number;
      
      public var §'3§:String;
      
      public var §9$+§:Number = -1;
      
      public var §,"r§:int;
      
      public var §+!5§:Number;
      
      public var §'! §:Number;
      
      protected var §#P§:Sprite;
      
      private var §0P§:§13§;
      
      private var §4"l§:Number;
      
      private var §1#y§:Number;
      
      private var §"$#§:Boolean;
      
      private var §"!c§:§`"W§;
      
      private var §+#i§:Boolean;
      
      private var §@">§:§]!-§;
      
      private var §5!H§:§&!=§;
      
      private var §#i§:§="@§;
      
      public function §=$4§(param1:§]!-§, param2:§&!=§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:Number = -1, param17:Boolean = false)
      {
         this.§#P§ = new Sprite();
         super();
         this.§@">§ = param1;
         this.§5!H§ = param2;
         this.§5R§ = param3;
         this.§>#S§ = param5;
         this.§3#i§ = param4;
         this.§,"r§ = param10;
         this.§1#y§ = param16;
         this.§"$#§ = param17;
         this.§'3§ = param9;
         this.§?"i§ = 0;
         this.§'# § = param8;
         this.§+!5§ = param6;
         this.§'! § = param7;
         this.§]"?§ = param15;
         this.§="W§ = param11;
         this.§7<§ = param12;
         this.§%##§ = param14;
         this.§,"d§ = param13;
         this.§-"O§();
         this.updateRenderer();
         if(this.§>#S§ == PARTICLE_TYPE_KINETIC_PARTICLE)
         {
            this.§9$+§ = §>"$§.§3#'§.§8!X§.ground + this.§#P§.height * §#!,§.§?$#§;
         }
      }
      
      public static function getParticleMaterialFromEngineMaterial(param1:String) : int
      {
         param1 = param1.toUpperCase();
         if(param1.indexOf("BIRD_RED") >= 0)
         {
            return §8$8§;
         }
         if(param1.indexOf("BIRD_YELLOW") >= 0)
         {
            return §`!R§;
         }
         if(param1.indexOf("BIRD_BLUE") >= 0)
         {
            return §`";§;
         }
         if(param1.indexOf("BIRD_BLACK") >= 0)
         {
            return §?#e§;
         }
         if(param1.indexOf("BIRD_WHITE") >= 0)
         {
            return §'Y§;
         }
         if(param1.indexOf("BIRD_GREEN") >= 0)
         {
            return §3;§;
         }
         if(param1.indexOf("BIRD_WINGMAN") >= 0)
         {
            return §8$8§;
         }
         if(param1.indexOf("BIRD_ORANGE") >= 0)
         {
            return §`!R§;
         }
         if(param1.indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §=#7§;
         }
         if(param1.indexOf("PIG") >= 0)
         {
            return §-!0§;
         }
         if(param1.indexOf("ICE") >= 0)
         {
            return §]$0§;
         }
         if(param1.indexOf("WOOD") >= 0)
         {
            return §;D§;
         }
         if(param1.indexOf("STONE") >= 0)
         {
            return §^$-§;
         }
         if(param1.indexOf("SNOW") >= 0)
         {
            return §6!R§;
         }
         if(param1.indexOf("INVISIBLE") >= 0)
         {
            return §,"P§;
         }
         return §[!Q§;
      }
      
      public static function §2"]§(param1:String, param2:Boolean = false) : int
      {
         if(param2)
         {
            return §+#a§;
         }
         param1 = param1.toUpperCase();
         if(param1.indexOf("BIRD_RED") >= 0 || param1 == "BIRD_WINGMAN")
         {
            return §&<§;
         }
         if(param1.indexOf("BIRD_YELLOW") >= 0)
         {
            return §&#i§;
         }
         if(param1.indexOf("BIRD_BLUE") >= 0)
         {
            return §<$§;
         }
         if(param1.indexOf("BIRD_BLACK") >= 0)
         {
            return §,a§;
         }
         if(param1.indexOf("BIRD_WHITE") >= 0)
         {
            return §+!K§;
         }
         if(param1.indexOf("BIRD_GREEN") >= 0)
         {
            return §""@§;
         }
         return §+!K§;
      }
      
      public function get displayObject() : DisplayObject
      {
         return this.§#P§;
      }
      
      public function §@!7§(param1:Number, param2:Number) : void
      {
      }
      
      protected function getParticleType() : String
      {
         return this.§5R§;
      }
      
      protected function §-"O§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§`"W§ = null;
         var _loc5_:int = 0;
         null;
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
            case §[!q§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §6B§:
               this.createParticle("SMOKE_BUFF_SMALL",null,15,false);
               break;
            case §@$,§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §<#h§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §]!L§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §=!_§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §2O§:
               this.createParticle("POWERUP_EFFECT_POTIONCLOUD",null,15,false);
               break;
            case §<"=§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §+#X§:
               _loc5_ = 1 + _loc1_ % 5;
               "particle" + _loc5_;
               break;
            case §5T§:
            case § S§:
               if(parseInt(this.§'3§) == 10000 || parseInt(this.§'3§) == 5000)
               {
                  _loc9_ = 16777215;
                  switch(this.§,"r§)
                  {
                     case §&<§:
                        _loc9_ = 16058683;
                        break;
                     case §<$§:
                        _loc9_ = 55294;
                        break;
                     case §""@§:
                        _loc9_ = 1878602;
                        break;
                     case §+#a§:
                        _loc9_ = 7201353;
                        break;
                     case §,a§:
                        _loc9_ = 3552822;
                        break;
                     case §+!K§:
                        break;
                     case §&#i§:
                        _loc9_ = 16705792;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§@">§.getAnimation("NUMBERS");
                  this.§0P§ = new §13§(_loc2_,_loc3_,true);
                  this.§0P§.§;$§(parseInt(this.§'3§));
                  this.§#P§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc9_;
                  _loc2_.flatten();
               }
               else
               {
                  _loc2_ = new Sprite();
                  _loc3_ = this.§@">§.getAnimation("NUMBERS");
                  this.§0P§ = new §13§(_loc2_,_loc3_);
                  this.§0P§.§;$§(parseInt(this.§'3§));
                  this.§#P§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
               }
               break;
            case PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES:
               switch(this.§,"r§)
               {
                  case §]$0§:
                     _loc7_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc7_);
                     break;
                  case §6!R§:
                     _loc7_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §;D§:
                     _loc7_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc7_);
                     break;
                  case §^$-§:
                     _loc7_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc7_);
                     break;
                  case §[!Q§:
                     this.createParticle("SMOKE_BIG",null,20,true);
               }
               if(this.§#P§)
               {
                  this.§#P§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §9J§:
               _loc8_ = 1 + _loc1_ % 3;
               switch(this.§,"r§)
               {
                  case §8$8§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc8_);
                     break;
                  case §?#e§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc8_);
                     break;
                  case §`";§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc8_);
                     break;
                  case §3;§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc8_);
                     break;
                  case §'Y§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc8_);
                     break;
                  case §`!R§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc8_);
                     break;
                  case §=#7§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc8_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc8_);
               }
               if(this.§#P§)
               {
                  this.§#P§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            default:
               this.createParticle(_loc4_,null,this.§1#y§,this.§"$#§);
         }
      }
      
      private function createParticle(param1:String, param2:String = null, param3:Number = -1, param4:Boolean = false) : void
      {
         var _loc5_:§+!3§ = null;
         var _loc6_:Texture = null;
         var _loc8_:DisplayObject = null;
         if(param1 == "??")
         {
            return;
         }
         this.§+#i§ = param4;
         Number(1);
         this.§"!c§ = this.§@">§.getAnimation(param1);
         this.§+#i§ = param4;
         if(this.§"!c§)
         {
            _loc8_ = this.§"!c§.getFrame(0);
         }
         else if(_loc5_ = this.§5!H§.getTexture(param1))
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
         this.§4"l§ = param3;
         _loc8_.scaleX *= this.§]"?§;
         _loc8_.scaleY *= this.§]"?§;
         this.§#P§.addChild(_loc8_);
         _loc8_.x = -this.§#P§.width / 2;
         _loc8_.y = -this.§#P§.height / 2;
      }
      
      public function updateRenderer() : void
      {
         if(this.§#P§)
         {
            this.§#P§.x = this.§+!5§ / §#!,§.§?$#§;
            this.§#P§.y = this.§'! § / §#!,§.§?$#§;
         }
      }
      
      public function §>s§(param1:§="@§) : void
      {
         this.§#i§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:DisplayObject = null;
         this.§?"i§ += param1;
         var _loc2_:Boolean = false;
         if(this.§#i§)
         {
            if(this.§#i§.sprite == null || this.§#i§.levelItem == null)
            {
               return false;
            }
            this.§+!5§ = this.§#i§.getBody().GetPosition().x;
            this.§'! § = this.§#i§.getBody().GetPosition().y;
         }
         if(this.§4"l§ > 0 && this.§"!c§)
         {
            _loc3_ = this.§?"i§ / 1000 / (1 / this.§4"l§);
            if(_loc3_ < this.§"!c§.frameCount)
            {
               _loc4_ = this.§"!c§.getFrame(_loc3_);
               this.§#P§.removeChildren(0,-1,true);
               this.§#P§.addChild(_loc4_);
               _loc4_.scaleX *= this.§]"?§;
               _loc4_.scaleY *= this.§]"?§;
            }
            else if(this.§+#i§)
            {
               this.§#P§.removeChildren(0,-1,true);
            }
         }
         if(this.§>#S§ == PARTICLE_TYPE_KINETIC_PARTICLE)
         {
            this.§`!z§(param1);
            _loc2_ = this.updateParticles(param1);
            if(this.§9$+§ > 0 && this.§'! § > this.§9$+§)
            {
               return false;
            }
         }
         else
         {
            this.§`!z§(param1);
            _loc2_ = this.updateParticles(param1);
         }
         if(this.§'# § > 0 && this.§?"i§ >= this.§'# §)
         {
            return false;
         }
         if(_loc2_)
         {
            this.updateRenderer();
         }
         return true;
      }
      
      public function §`!z§(param1:Number) : void
      {
         this.§7<§ += param1 * this.§,"d§ / 1000;
         this.§'! § += this.§7<§ * param1 / 1000;
         this.§+!5§ += this.§="W§ * param1 / 1000;
         if(this.§%##§ != 0)
         {
            this.§#P§.rotation += this.§%##§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function updateParticles(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§>#S§ == §6!e§)
         {
            if(this.§'# § > 0)
            {
               _loc2_ = 1;
               if(this.§5R§ == § S§)
               {
                  if((_loc4_ = this.§?"i§ / this.§'# §) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§'3§) / 5000);
               }
               this.§#P§.scaleX = _loc2_;
               this.§#P§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§>#S§ == PARTICLE_TYPE_KINETIC_PARTICLE)
         {
            if(this.§5R§ == §+#X§)
            {
               this.§#P§.alpha = Math.max(0,Math.min(1,2 * §`#E§.§`"k§((this.§'# § - this.§?"i§) / this.§'# §,false)));
               _loc5_ = Math.atan2(-this.§7<§,this.§="W§) * (180 / Math.PI);
               this.§#P§.scaleX = Math.max(0.2,this.§#P§.alpha);
               this.§#P§.scaleY = Math.max(0.2,this.§#P§.alpha);
               this.§#P§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§5R§ == §9J§ || this.§5R§ == §=!_§)
            {
               this.§#P§.scaleX = this.§#P§.scaleY = 0.2 + (this.§'# § - this.§?"i§) / this.§'# § * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§0P§)
         {
            this.§0P§.clear();
            this.§0P§ = null;
         }
         if(this.§#P§)
         {
            this.§#P§.dispose();
            this.§#P§ = null;
         }
         if(this.§#i§)
         {
            this.§#i§ = null;
         }
      }
   }
}
