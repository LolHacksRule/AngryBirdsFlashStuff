package §1"?§
{
   import §&!]§.DisplayObject;
   import §&!]§.Sprite;
   import §3"#§.§["7§;
   import §3"#§.§`"8§;
   import §9!v§.§1!_§;
   import §9!v§.§6a§;
   import §9!v§.static;
   import §9"!§.§^"3§;
   import §>"2§.§8k§;
   import §`!w§.§`T§;
   
   public class §4R§
   {
      
      public static const §9! §:int = 0;
      
      public static const §!o§:int = 1;
      
      public static const §+!'§:int = 2;
      
      public static const §-F§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §9!8§:String = "Effect_TrailBig_Bird";
      
      public static const §1!i§:String = "Effect_Trail_Sparkle";
      
      public static const § "5§:String = "Effect_Floating_Score";
      
      public static const §1!H§:String = "Effect_Floating_Text";
      
      public static const §9!@§:String = "Effect_Explosion_Particle";
      
      public static const §9!$§:String = "Effect_Explosion_Core";
      
      public static const §?%§:String = "Effect_Pig_Destruction";
      
      public static const §1!V§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §6"!§:String = "Effect_Bird_Destruction";
      
      public static const §&p§:String = "Effect_Block_Destruction_Particles";
      
      public static const §0!C§:String = "Effect_Block_Destruction_Core";
      
      public static const §!!8§:int = 0;
      
      public static const §3"0§:int = 1;
      
      public static const §7"#§:int = 2;
      
      public static const §<D§:int = 3;
      
      public static const §<"H§:int = 4;
      
      public static const §@"B§:int = 5;
      
      public static const § !0§:int = 6;
      
      public static const §%^§:int = 7;
      
      public static const § !s§:int = 8;
      
      public static const §,!b§:int = 9;
      
      public static const §!$§:int = 10;
      
      public static const §<B§:int = 11;
      
      public static const §]M§:int = 12;
      
      public static const § !h§:int = 13;
      
      public static const §2!2§:int = 14;
      
      public static const §<L§:int = 15;
      
      public static const §+!;§:int = 16;
      
      public static const §"!U§:int = 17;
      
      public static const § y§:int = 18;
      
      public static const §1!3§:Boolean = true;
       
      
      public var § "'§:int;
      
      public var §default§:int;
      
      public var §0!D§:String;
      
      public var §;!2§:Number;
      
      public var §'x§:Number;
      
      public var §0"A§:Number;
      
      public var §5!y§:Number;
      
      public var § "F§:Number = 0;
      
      public var §&!A§:Number;
      
      public var §5!F§:Number;
      
      public var §`!_§:String;
      
      public var §;P§:Number = -1;
      
      public var §["?§:int;
      
      public var §''§:Number;
      
      public var §3"<§:Number;
      
      private var §,l§:Sprite;
      
      private var §4!j§:§["7§;
      
      private var §1,§:int;
      
      private var §?1§:int;
      
      private var §1",§:Boolean;
      
      private var §?^§:§1!_§;
      
      private var §<"0§:Boolean;
      
      private var §7"9§:static;
      
      private var §@k§:§6a§;
      
      private var §'I§:§^"3§;
      
      public function §4R§(param1:static, param2:§6a§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§,l§ = new Sprite();
         super();
         this.§7"9§ = param1;
         this.§@k§ = param2;
         this.§0!D§ = param3;
         this.§ "'§ = param5;
         this.§default§ = param4;
         this.§["?§ = param10;
         this.§?1§ = param16;
         this.§1",§ = param17;
         this.§`!_§ = param9;
         this.§;!2§ = 0;
         this.§5!F§ = param8;
         this.§''§ = param6;
         this.§3"<§ = param7;
         this.§&!A§ = param15;
         this.§0"A§ = param11;
         this.§'x§ = param12;
         this.§ "F§ = param14;
         this.§5!y§ = param13;
         this.§?"'§();
         this.updateRenderer();
         if(this.§ "'§ == §!o§)
         {
            this.§;P§ = §8k§.§;!]§.§?u§.ground + this.§,l§.height * §`"8§.§3!=§;
         }
      }
      
      public static function §#!y§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §!!8§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §7"#§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §3"0§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §@"B§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §<"H§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §<D§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return § y§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return § !0§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §,!b§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §%^§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return § !s§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §!$§;
         }
         return §<B§;
      }
      
      public static function §;'§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §]M§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §2!2§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return § !h§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §"!U§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §+!;§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §<L§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §<L§;
         }
         return §+!;§;
      }
      
      public function get §'!+§() : DisplayObject
      {
         return this.§,l§;
      }
      
      public function §@G§(param1:Number, param2:Number) : void
      {
      }
      
      protected function §?"'§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§1!_§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§0!D§)
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
            case §9!8§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §1!i§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §?%§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §1!V§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §0!C§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §9!$§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §9!@§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case § "5§:
            case §1!H§:
               if(parseInt(this.§`!_§) == 10000 || parseInt(this.§`!_§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§["?§)
                  {
                     case §]M§:
                        _loc8_ = 16058683;
                        break;
                     case § !h§:
                        _loc8_ = 55294;
                        break;
                     case §<L§:
                        _loc8_ = 1878602;
                        break;
                     case §"!U§:
                        _loc8_ = 3552822;
                        break;
                     case §+!;§:
                        break;
                     case §2!2§:
                        _loc8_ = 16705792;
                  }
                  if(parseInt(this.§`!_§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§7"9§.getAnimation("NUMBERS");
                  this.§4!j§ = new §["7§(_loc2_,_loc3_,true);
                  this.§4!j§.§92§(parseInt(this.§`!_§));
                  this.§,l§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§7"9§.getAnimation("NUMBERS");
               this.§4!j§ = new §["7§(_loc2_,_loc3_);
               this.§4!j§.§92§(parseInt(this.§`!_§));
               this.§,l§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §&p§:
               switch(this.§["?§)
               {
                  case §,!b§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §!$§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §%^§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case § !s§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §<B§:
                     _loc6_ = 1 + _loc1_ % 5;
               }
               if(this.§,l§)
               {
                  this.§,l§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §6"!§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§["?§)
               {
                  case §!!8§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §@"B§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §3"0§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §<D§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §<"H§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §7"#§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case § y§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§,l§)
               {
                  this.§,l§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§0!D§,null,this.§?1§,this.§1",§);
         }
      }
      
      private function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:DisplayObject = null;
         if(param1 == "??")
         {
            return;
         }
         this.§?^§ = this.§7"9§.getAnimation(param1);
         this.§<"0§ = param4;
         if(this.§?^§)
         {
            _loc5_ = this.§?^§.getFrame(0);
            this.§1,§ = param3;
            _loc5_.scaleX *= this.§&!A§;
            _loc5_.scaleY *= this.§&!A§;
            this.§,l§.addChild(_loc5_);
            _loc5_.x = -this.§,l§.width / 2;
            _loc5_.y = -this.§,l§.height / 2;
            return;
         }
      }
      
      public function updateRenderer() : void
      {
         if(this.§,l§)
         {
            this.§,l§.x = this.§''§ / §`"8§.§3!=§;
            this.§,l§.y = this.§3"<§ / §`"8§.§3!=§;
         }
      }
      
      public function §2!'§(param1:§^"3§) : void
      {
         this.§'I§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:DisplayObject = null;
         this.§;!2§ += param1;
         var _loc2_:Boolean = false;
         if(this.§'I§)
         {
            if(this.§'I§.sprite == null || this.§'I§.levelItem == null)
            {
               return false;
            }
            this.§''§ = this.§'I§.§`I§().GetPosition().x;
            this.§3"<§ = this.§'I§.§`I§().GetPosition().y;
         }
         if(this.§1,§ > 0 && this.§?^§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§;!2§ / 1000 / (1 / _loc3_)) < this.§?^§.frameCount)
            {
               _loc5_ = this.§?^§.getFrame(_loc4_);
               this.§,l§.§7!-§(0,-1,true);
               this.§,l§.addChild(_loc5_);
               _loc5_.scaleX *= this.§&!A§;
               _loc5_.scaleY *= this.§&!A§;
            }
            else if(this.§<"0§)
            {
               this.§,l§.§7!-§(0,-1,true);
            }
         }
         if(this.§ "'§ == §!o§)
         {
            this.§2!x§(param1);
            _loc2_ = this.§3"1§(param1);
            if(this.§;P§ > 0 && this.§3"<§ > this.§;P§)
            {
               return false;
            }
         }
         else
         {
            this.§2!x§(param1);
            _loc2_ = this.§3"1§(param1);
         }
         if(this.§5!F§ > 0 && this.§;!2§ >= this.§5!F§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.updateRenderer();
         }
         return true;
      }
      
      public function §2!x§(param1:Number) : void
      {
         this.§'x§ += param1 * this.§5!y§ / 1000;
         this.§3"<§ += this.§'x§ * param1 / 1000;
         this.§''§ += this.§0"A§ * param1 / 1000;
         if(this.§ "F§ != 0)
         {
            this.§,l§.rotation += this.§ "F§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §3"1§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§ "'§ == §9! §)
         {
            if(this.§5!F§ > 0)
            {
               _loc2_ = 1;
               if(this.§0!D§ == §1!H§)
               {
                  if((_loc4_ = this.§;!2§ / this.§5!F§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§`!_§) / 5000);
               }
               this.§,l§.scaleX = _loc2_;
               this.§,l§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§ "'§ == §!o§)
         {
            if(this.§0!D§ == §9!@§)
            {
               this.§,l§.alpha = Math.max(0,Math.min(1,2 * §`T§.§@!s§((this.§5!F§ - this.§;!2§) / this.§5!F§,false)));
               _loc5_ = Math.atan2(-this.§'x§,this.§0"A§) * (180 / Math.PI);
               this.§,l§.scaleX = Math.max(0.2,this.§,l§.alpha);
               this.§,l§.scaleY = Math.max(0.2,this.§,l§.alpha);
               this.§,l§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§0!D§ == §6"!§ || this.§0!D§ == §0!C§)
            {
               this.§,l§.scaleX = this.§,l§.scaleY = 0.2 + (this.§5!F§ - this.§;!2§) / this.§5!F§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§4!j§)
         {
            this.§4!j§.clear();
            this.§4!j§ = null;
         }
         if(this.§,l§)
         {
            this.§,l§.dispose();
            this.§,l§ = null;
         }
         if(this.§'I§)
         {
            this.§'I§ = null;
         }
      }
   }
}
