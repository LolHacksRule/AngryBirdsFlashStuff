package §^9§
{
   import §!!k§.§'!j§;
   import §!!k§.§0!B§;
   import §!!k§.§1!^§;
   import §!!k§.§?!3§;
   import §!r§.§0N§;
   import §"§.§3!g§;
   import §"§.§;!E§;
   import §&"s§.Texture;
   import §9"`§.§>"^§;
   import com.angrybirds.§<!J§;
   import §use§.§,!u§;
   import §use§.DisplayObject;
   import §use§.Sprite;
   
   public class §?"E§
   {
      
      public static const §4v§:int = 0;
      
      public static const §3y§:int = 1;
      
      public static const §`"H§:int = 2;
      
      public static const §["4§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §]"B§:String = "Effect_TrailBig_Bird";
      
      public static const § #5§:String = "Effect_Trail_Sparkle";
      
      public static const §-!j§:String = "Effect_Floating_Score";
      
      public static const §^"m§:String = "Effect_Floating_Text";
      
      public static const §6"q§:String = "Effect_Explosion_Particle";
      
      public static const §5J§:String = "Effect_Explosion_Core";
      
      public static const §[1§:String = "Effect_Pig_Destruction";
      
      public static const §>"4§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §[J§:String = "Effect_Bird_Destruction";
      
      public static const §,^§:String = "Effect_Block_Destruction_Particles";
      
      public static const §+"1§:String = "Effect_Block_Destruction_Core";
      
      public static const §4z§:String = "Effect_TrailBig_Bird_Rebel";
      
      public static const §0!P§:int = 0;
      
      public static const §1<§:int = 1;
      
      public static const §>#6§:int = 2;
      
      public static const § #&§:int = 3;
      
      public static const §@"i§:int = 4;
      
      public static const §4!U§:int = 5;
      
      public static const §7`§:int = 6;
      
      public static const §=;§:int = 7;
      
      public static const §"q§:int = 8;
      
      public static const §'"-§:int = 9;
      
      public static const §"!4§:int = 10;
      
      public static const §?"x§:int = 11;
      
      public static const §>&§:int = 12;
      
      public static const §'W§:int = 13;
      
      public static const §8!z§:int = 14;
      
      public static const §0"J§:int = 15;
      
      public static const §"!Q§:int = 16;
      
      public static const §1c§:int = 17;
      
      public static const §+x§:int = 18;
       
      
      public var §^"J§:int;
      
      public var § #!§:int;
      
      public var §?!S§:String;
      
      public var §1"p§:Number;
      
      public var §"!c§:Number;
      
      public var §;"g§:Number;
      
      public var §># §:Number;
      
      public var §-T§:Number = 0;
      
      public var §#"5§:Number;
      
      public var §3! §:Number;
      
      public var §-!<§:String;
      
      public var §@6§:Number = -1;
      
      public var §'?§:int;
      
      public var §0U§:Number;
      
      public var §3"[§:Number;
      
      private var §&"#§:Sprite;
      
      private var §8B§:§3!g§;
      
      private var §9"B§:int;
      
      private var §=!s§:int;
      
      private var §`!]§:Boolean;
      
      private var §#!9§:§1!^§;
      
      private var §'F§:Boolean;
      
      private var §9"v§:§?!3§;
      
      private var §9!G§:§0!B§;
      
      private var §#"U§:§0N§;
      
      public function §?"E§(param1:§?!3§, param2:§0!B§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§&"#§ = new Sprite();
         super();
         this.§9"v§ = param1;
         this.§9!G§ = param2;
         this.§?!S§ = param3;
         this.§^"J§ = param5;
         this.§ #!§ = param4;
         this.§'?§ = param10;
         this.§=!s§ = param16;
         this.§`!]§ = param17;
         this.§-!<§ = param9;
         this.§1"p§ = 0;
         this.§3! § = param8;
         this.§0U§ = param6;
         this.§3"[§ = param7;
         this.§#"5§ = param15;
         this.§;"g§ = param11;
         this.§"!c§ = param12;
         this.§-T§ = param14;
         this.§># § = param13;
         this.§0"D§();
         this.updateRenderer();
         if(this.§^"J§ == §3y§)
         {
            this.§@6§ = §<!J§.§=!%§.§""P§.ground + this.§&"#§.height * §;!E§.§0"?§;
         }
      }
      
      public static function §##+§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §0!P§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §>#6§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §1<§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §4!U§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §@"i§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return § #&§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §+x§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §7`§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §'"-§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §=;§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §"q§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §"!4§;
         }
         return §?"x§;
      }
      
      public static function §@G§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §>&§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §8!z§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §'W§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §1c§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §"!Q§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §0"J§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §0"J§;
         }
         return §"!Q§;
      }
      
      public function get §>#3§() : DisplayObject
      {
         return this.§&"#§;
      }
      
      public function §8#!§(param1:Number, param2:Number) : void
      {
      }
      
      protected function getParticleType() : String
      {
         return this.§?!S§;
      }
      
      protected function §0"D§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§1!^§ = null;
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
            case §]"B§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §4z§:
               this.createParticle("SMOKE_BUFF_SMALL",null,15,false);
               break;
            case § #5§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §[1§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §>"4§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §+"1§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §5J§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §6"q§:
               _loc5_ = 1 + _loc1_ % 5;
               _loc6_ = "particle" + _loc5_;
               break;
            case §-!j§:
            case §^"m§:
               if(parseInt(this.§-!<§) == 10000 || parseInt(this.§-!<§) == 5000)
               {
                  _loc9_ = 16777215;
                  switch(this.§'?§)
                  {
                     case §>&§:
                        _loc9_ = 16058683;
                        break;
                     case §'W§:
                        _loc9_ = 55294;
                        break;
                     case §0"J§:
                        _loc9_ = 1878602;
                        break;
                     case §1c§:
                        _loc9_ = 3552822;
                        break;
                     case §"!Q§:
                        break;
                     case §8!z§:
                        _loc9_ = 16705792;
                  }
                  if(parseInt(this.§-!<§) == 5000)
                  {
                     _loc9_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§9"v§.getAnimation("NUMBERS");
                  this.§8B§ = new §3!g§(_loc2_,_loc3_,true);
                  this.§8B§.§4"e§(parseInt(this.§-!<§));
                  this.§&"#§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc9_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§9"v§.getAnimation("NUMBERS");
               this.§8B§ = new §3!g§(_loc2_,_loc3_);
               this.§8B§.§4"e§(parseInt(this.§-!<§));
               this.§&"#§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §,^§:
               switch(this.§'?§)
               {
                  case §'"-§:
                     _loc7_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc7_);
                     break;
                  case §"!4§:
                     _loc7_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §=;§:
                     _loc7_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc7_);
                     break;
                  case §"q§:
                     _loc7_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc7_);
                     break;
                  case §?"x§:
                     _loc7_ = 1 + _loc1_ % 5;
               }
               if(this.§&"#§)
               {
                  this.§&"#§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §[J§:
               _loc8_ = 1 + _loc1_ % 3;
               switch(this.§'?§)
               {
                  case §0!P§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc8_);
                     break;
                  case §4!U§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc8_);
                     break;
                  case §1<§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc8_);
                     break;
                  case § #&§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc8_);
                     break;
                  case §@"i§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc8_);
                     break;
                  case §>#6§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc8_);
                     break;
                  case §+x§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc8_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc8_);
               }
               if(this.§&"#§)
               {
                  this.§&"#§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(_loc4_,null,this.§=!s§,this.§`!]§);
         }
      }
      
      private function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§'!j§ = null;
         var _loc6_:Texture = null;
         var _loc8_:DisplayObject = null;
         if(param1 == "??")
         {
            return;
         }
         this.§'F§ = param4;
         var _loc7_:Number = 1;
         this.§#!9§ = this.§9"v§.getAnimation(param1);
         this.§'F§ = param4;
         if(this.§#!9§)
         {
            _loc8_ = this.§#!9§.getFrame(0);
         }
         else
         {
            if(!(_loc5_ = this.§9!G§.getTexture(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
            _loc8_ = new §,!u§(_loc6_,false);
         }
         this.§9"B§ = param3;
         _loc8_.scaleX *= this.§#"5§;
         _loc8_.scaleY *= this.§#"5§;
         this.§&"#§.addChild(_loc8_);
         _loc8_.x = -this.§&"#§.width / 2;
         _loc8_.y = -this.§&"#§.height / 2;
      }
      
      public function updateRenderer() : void
      {
         if(this.§&"#§)
         {
            this.§&"#§.x = this.§0U§ / §;!E§.§0"?§;
            this.§&"#§.y = this.§3"[§ / §;!E§.§0"?§;
         }
      }
      
      public function §!S§(param1:§0N§) : void
      {
         this.§#"U§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:DisplayObject = null;
         this.§1"p§ += param1;
         var _loc2_:Boolean = false;
         if(this.§#"U§)
         {
            if(this.§#"U§.sprite == null || this.§#"U§.levelItem == null)
            {
               return false;
            }
            this.§0U§ = this.§#"U§.§3"s§().GetPosition().x;
            this.§3"[§ = this.§#"U§.§3"s§().GetPosition().y;
         }
         if(this.§9"B§ > 0 && this.§#!9§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§1"p§ / 1000 / (1 / _loc3_)) < this.§#!9§.frameCount)
            {
               _loc5_ = this.§#!9§.getFrame(_loc4_);
               this.§&"#§.§]"X§(0,-1,true);
               this.§&"#§.addChild(_loc5_);
               _loc5_.scaleX *= this.§#"5§;
               _loc5_.scaleY *= this.§#"5§;
            }
            else if(this.§'F§)
            {
               this.§&"#§.§]"X§(0,-1,true);
            }
         }
         if(this.§^"J§ == §3y§)
         {
            this.§""x§(param1);
            _loc2_ = this.§'#3§(param1);
            if(this.§@6§ > 0 && this.§3"[§ > this.§@6§)
            {
               return false;
            }
         }
         else
         {
            this.§""x§(param1);
            _loc2_ = this.§'#3§(param1);
         }
         if(this.§3! § > 0 && this.§1"p§ >= this.§3! §)
         {
            return false;
         }
         if(_loc2_)
         {
            this.updateRenderer();
         }
         return true;
      }
      
      public function §""x§(param1:Number) : void
      {
         this.§"!c§ += param1 * this.§># § / 1000;
         this.§3"[§ += this.§"!c§ * param1 / 1000;
         this.§0U§ += this.§;"g§ * param1 / 1000;
         if(this.§-T§ != 0)
         {
            this.§&"#§.rotation += this.§-T§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §'#3§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§^"J§ == §4v§)
         {
            if(this.§3! § > 0)
            {
               _loc2_ = 1;
               if(this.§?!S§ == §^"m§)
               {
                  if((_loc4_ = this.§1"p§ / this.§3! §) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§-!<§) / 5000);
               }
               this.§&"#§.scaleX = _loc2_;
               this.§&"#§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§^"J§ == §3y§)
         {
            if(this.§?!S§ == §6"q§)
            {
               this.§&"#§.alpha = Math.max(0,Math.min(1,2 * §>"^§.§7G§((this.§3! § - this.§1"p§) / this.§3! §,false)));
               _loc5_ = Math.atan2(-this.§"!c§,this.§;"g§) * (180 / Math.PI);
               this.§&"#§.scaleX = Math.max(0.2,this.§&"#§.alpha);
               this.§&"#§.scaleY = Math.max(0.2,this.§&"#§.alpha);
               this.§&"#§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§?!S§ == §[J§ || this.§?!S§ == §+"1§)
            {
               this.§&"#§.scaleX = this.§&"#§.scaleY = 0.2 + (this.§3! § - this.§1"p§) / this.§3! § * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§8B§)
         {
            this.§8B§.clear();
            this.§8B§ = null;
         }
         if(this.§&"#§)
         {
            this.§&"#§.dispose();
            this.§&"#§ = null;
         }
         if(this.§#"U§)
         {
            this.§#"U§ = null;
         }
      }
   }
}
