package §,7§
{
   import §""<§.§ g§;
   import §'!&§.DisplayObject;
   import §'!&§.Sprite;
   import §+!9§.§;0§;
   import §8o§.§""4§;
   import §8o§.§5"%§;
   import §8o§.§]!U§;
   import §?!<§.§'!1§;
   import §?!<§.§>!5§;
   import §[,§.§5,§;
   
   public class §9!v§
   {
      
      public static const §8!!§:int = 0;
      
      public static const §7!@§:int = 1;
      
      public static const §?"A§:int = 2;
      
      public static const §;"0§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §3!x§:String = "Effect_TrailBig_Bird";
      
      public static const §8"0§:String = "Effect_Trail_Sparkle";
      
      public static const §@!j§:String = "Effect_Floating_Score";
      
      public static const §5!j§:String = "Effect_Floating_Text";
      
      public static const §7!Q§:String = "Effect_Explosion_Particle";
      
      public static const §;!3§:String = "Effect_Explosion_Core";
      
      public static const §8"%§:String = "Effect_Pig_Destruction";
      
      public static const §="4§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §=!`§:String = "Effect_Bird_Destruction";
      
      public static const §,B§:String = "Effect_Block_Destruction_Particles";
      
      public static const §"a§:String = "Effect_Block_Destruction_Core";
      
      public static const §2!@§:int = 0;
      
      public static const §;"G§:int = 1;
      
      public static const §8!"§:int = 2;
      
      public static const §?a§:int = 3;
      
      public static const §^!,§:int = 4;
      
      public static const § !W§:int = 5;
      
      public static const §<b§:int = 6;
      
      public static const §5c§:int = 7;
      
      public static const §8!I§:int = 8;
      
      public static const §8+§:int = 9;
      
      public static const §`3§:int = 10;
      
      public static const §-""§:int = 11;
      
      public static const §;"!§:int = 12;
      
      public static const §0!m§:int = 13;
      
      public static const §-i§:int = 14;
      
      public static const §&"&§:int = 15;
      
      public static const §<"#§:int = 16;
      
      public static const §7!P§:int = 17;
      
      public static const §&z§:int = 18;
      
      public static const §"f§:Boolean = true;
       
      
      public var §#§:int;
      
      public var §+]§:int;
      
      public var §#!1§:String;
      
      public var §^"F§:Number;
      
      public var §+"=§:Number;
      
      public var §"0§:Number;
      
      public var §2y§:Number;
      
      public var §^8§:Number = 0;
      
      public var §-!Y§:Number;
      
      public var §?!;§:Number;
      
      public var §;"1§:String;
      
      public var §55§:Number = -1;
      
      public var §[N§:int;
      
      public var §>!J§:Number;
      
      public var §;`§:Number;
      
      private var §'"9§:Sprite;
      
      private var §2!i§:§>!5§;
      
      private var §,!!§:int;
      
      private var §`y§:int;
      
      private var §7!Z§:Boolean;
      
      private var §"">§:§]!U§;
      
      private var §+Y§:Boolean;
      
      private var §13§:§""4§;
      
      private var §3'§:§5"%§;
      
      private var §&,§:§5,§;
      
      public function §9!v§(param1:§""4§, param2:§5"%§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§'"9§ = new Sprite();
         super();
         this.§13§ = param1;
         this.§3'§ = param2;
         this.§#!1§ = param3;
         this.§#§ = param5;
         this.§+]§ = param4;
         this.§[N§ = param10;
         this.§`y§ = param16;
         this.§7!Z§ = param17;
         this.§;"1§ = param9;
         this.§^"F§ = 0;
         this.§?!;§ = param8;
         this.§>!J§ = param6;
         this.§;`§ = param7;
         this.§-!Y§ = param15;
         this.§"0§ = param11;
         this.§+"=§ = param12;
         this.§^8§ = param14;
         this.§2y§ = param13;
         this.§<[§();
         this.updateRenderer();
         if(this.§#§ == §7!@§)
         {
            this.§55§ = §;0§.§@!^§.§'!I§.ground + this.§'"9§.height * §'!1§.§<!@§;
         }
      }
      
      public static function §'!Y§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §2!@§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §8!"§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §;"G§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return § !W§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §^!,§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §?a§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §&z§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §<b§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §8+§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §5c§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §8!I§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §`3§;
         }
         return §-""§;
      }
      
      public static function §#8§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §;"!§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §-i§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §0!m§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §7!P§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §<"#§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §&"&§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §&"&§;
         }
         return §<"#§;
      }
      
      public function get §&§() : DisplayObject
      {
         return this.§'"9§;
      }
      
      public function §<!'§(param1:Number, param2:Number) : void
      {
      }
      
      protected function §<[§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§]!U§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§#!1§)
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
            case §3!x§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §8"0§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §8"%§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §="4§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §"a§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §;!3§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §7!Q§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §@!j§:
            case §5!j§:
               if(parseInt(this.§;"1§) == 10000 || parseInt(this.§;"1§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§[N§)
                  {
                     case §;"!§:
                        _loc8_ = 16058683;
                        break;
                     case §0!m§:
                        _loc8_ = 55294;
                        break;
                     case §&"&§:
                        _loc8_ = 1878602;
                        break;
                     case §7!P§:
                        _loc8_ = 3552822;
                        break;
                     case §<"#§:
                        break;
                     case §-i§:
                        _loc8_ = 16705792;
                  }
                  if(parseInt(this.§;"1§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§13§.getAnimation("NUMBERS");
                  this.§2!i§ = new §>!5§(_loc2_,_loc3_,true);
                  this.§2!i§.§+!o§(parseInt(this.§;"1§));
                  this.§'"9§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§13§.getAnimation("NUMBERS");
               this.§2!i§ = new §>!5§(_loc2_,_loc3_);
               this.§2!i§.§+!o§(parseInt(this.§;"1§));
               this.§'"9§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §,B§:
               switch(this.§[N§)
               {
                  case §8+§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §`3§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §5c§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §8!I§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §-""§:
                     _loc6_ = 1 + _loc1_ % 5;
               }
               if(this.§'"9§)
               {
                  this.§'"9§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §=!`§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§[N§)
               {
                  case §2!@§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case § !W§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §;"G§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §?a§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §^!,§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §8!"§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §&z§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§'"9§)
               {
                  this.§'"9§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§#!1§,null,this.§`y§,this.§7!Z§);
         }
      }
      
      private function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:DisplayObject = null;
         if(param1 == "??")
         {
            return;
         }
         this.§"">§ = this.§13§.getAnimation(param1);
         this.§+Y§ = param4;
         if(this.§"">§)
         {
            _loc5_ = this.§"">§.getFrame(0);
            this.§,!!§ = param3;
            _loc5_.scaleX *= this.§-!Y§;
            _loc5_.scaleY *= this.§-!Y§;
            this.§'"9§.addChild(_loc5_);
            _loc5_.x = -this.§'"9§.width / 2;
            _loc5_.y = -this.§'"9§.height / 2;
            return;
         }
      }
      
      public function updateRenderer() : void
      {
         if(this.§'"9§)
         {
            this.§'"9§.x = this.§>!J§ / §'!1§.§<!@§;
            this.§'"9§.y = this.§;`§ / §'!1§.§<!@§;
         }
      }
      
      public function §5>§(param1:§5,§) : void
      {
         this.§&,§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:DisplayObject = null;
         this.§^"F§ += param1;
         var _loc2_:Boolean = false;
         if(this.§&,§)
         {
            if(this.§&,§.sprite == null || this.§&,§.levelItem == null)
            {
               return false;
            }
            this.§>!J§ = this.§&,§.§ <§().GetPosition().x;
            this.§;`§ = this.§&,§.§ <§().GetPosition().y;
         }
         if(this.§,!!§ > 0 && this.§"">§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§^"F§ / 1000 / (1 / _loc3_)) < this.§"">§.frameCount)
            {
               _loc5_ = this.§"">§.getFrame(_loc4_);
               this.§'"9§.§&G§(0,-1,true);
               this.§'"9§.addChild(_loc5_);
               _loc5_.scaleX *= this.§-!Y§;
               _loc5_.scaleY *= this.§-!Y§;
            }
            else if(this.§+Y§)
            {
               this.§'"9§.§&G§(0,-1,true);
            }
         }
         if(this.§#§ == §7!@§)
         {
            this.§7T§(param1);
            _loc2_ = this.§+"A§(param1);
            if(this.§55§ > 0 && this.§;`§ > this.§55§)
            {
               return false;
            }
         }
         else
         {
            this.§7T§(param1);
            _loc2_ = this.§+"A§(param1);
         }
         if(this.§?!;§ > 0 && this.§^"F§ >= this.§?!;§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.updateRenderer();
         }
         return true;
      }
      
      public function §7T§(param1:Number) : void
      {
         this.§+"=§ += param1 * this.§2y§ / 1000;
         this.§;`§ += this.§+"=§ * param1 / 1000;
         this.§>!J§ += this.§"0§ * param1 / 1000;
         if(this.§^8§ != 0)
         {
            this.§'"9§.rotation += this.§^8§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §+"A§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§#§ == §8!!§)
         {
            if(this.§?!;§ > 0)
            {
               _loc2_ = 1;
               if(this.§#!1§ == §5!j§)
               {
                  if((_loc4_ = this.§^"F§ / this.§?!;§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§;"1§) / 5000);
               }
               this.§'"9§.scaleX = _loc2_;
               this.§'"9§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§#§ == §7!@§)
         {
            if(this.§#!1§ == §7!Q§)
            {
               this.§'"9§.alpha = Math.max(0,Math.min(1,2 * § g§.§`6§((this.§?!;§ - this.§^"F§) / this.§?!;§,false)));
               _loc5_ = Math.atan2(-this.§+"=§,this.§"0§) * (180 / Math.PI);
               this.§'"9§.scaleX = Math.max(0.2,this.§'"9§.alpha);
               this.§'"9§.scaleY = Math.max(0.2,this.§'"9§.alpha);
               this.§'"9§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§#!1§ == §=!`§ || this.§#!1§ == §"a§)
            {
               this.§'"9§.scaleX = this.§'"9§.scaleY = 0.2 + (this.§?!;§ - this.§^"F§) / this.§?!;§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§2!i§)
         {
            this.§2!i§.clear();
            this.§2!i§ = null;
         }
         if(this.§'"9§)
         {
            this.§'"9§.dispose();
            this.§'"9§ = null;
         }
         if(this.§&,§)
         {
            this.§&,§ = null;
         }
      }
   }
}
