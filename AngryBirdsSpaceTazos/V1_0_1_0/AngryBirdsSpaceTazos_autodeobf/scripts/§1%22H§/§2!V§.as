package §1"H§
{
   import §'4§.§^!!§;
   import §'4§.§^g§;
   import §,"&§.§9q§;
   import §0N§.§8!z§;
   import §4&§.§#r§;
   import §4&§.§'!,§;
   import §4&§.§,C§;
   import §7!8§.DisplayObject;
   import §7!8§.Sprite;
   import §]">§.§1!0§;
   
   public class §2!V§
   {
      
      public static const §@x§:int = 0;
      
      public static const §#!N§:int = 1;
      
      public static const §?v§:int = 2;
      
      public static const §'"$§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §^"F§:String = "Effect_TrailBig_Bird";
      
      public static const §`!f§:String = "Effect_Trail_Sparkle";
      
      public static const §<"@§:String = "Effect_Floating_Score";
      
      public static const §[r§:String = "Effect_Floating_Text";
      
      public static const §?![§:String = "Effect_Explosion_Particle";
      
      public static const §3Z§:String = "Effect_Explosion_Core";
      
      public static const §`"G§:String = "Effect_Pig_Destruction";
      
      public static const §2"1§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §^"9§:String = "Effect_Bird_Destruction";
      
      public static const §[!e§:String = "Effect_Block_Destruction_Particles";
      
      public static const §7G§:String = "Effect_Block_Destruction_Core";
      
      public static const §3j§:int = 0;
      
      public static const §#!2§:int = 1;
      
      public static const §,";§:int = 2;
      
      public static const §@!y§:int = 3;
      
      public static const §]'§:int = 4;
      
      public static const §&]§:int = 5;
      
      public static const §7!W§:int = 6;
      
      public static const §]<§:int = 7;
      
      public static const §4!h§:int = 8;
      
      public static const §#" §:int = 9;
      
      public static const §!!f§:int = 10;
      
      public static const §["8§:int = 11;
      
      public static const §2!n§:int = 12;
      
      public static const §&!r§:int = 13;
      
      public static const §=p§:int = 14;
      
      public static const §8!f§:int = 15;
      
      public static const §#!J§:int = 16;
      
      public static const §-!$§:int = 17;
      
      public static const §8!K§:int = 18;
      
      public static const §switch§:Boolean = true;
       
      
      public var §"G§:int;
      
      public var §5!x§:int;
      
      public var §9l§:String;
      
      public var §&Q§:Number;
      
      public var §5@§:Number;
      
      public var §3>§:Number;
      
      public var §`"D§:Number;
      
      public var §1"3§:Number = 0;
      
      public var §=T§:Number;
      
      public var §1!?§:Number;
      
      public var §'"B§:String;
      
      public var §,"-§:Number = -1;
      
      public var §'"2§:int;
      
      public var §""4§:Number;
      
      public var §%W§:Number;
      
      private var §@!]§:Sprite;
      
      private var §`!>§:§^!!§;
      
      private var §""0§:int;
      
      private var § 7§:int;
      
      private var §3!p§:Boolean;
      
      private var §]!k§:§#r§;
      
      private var §2!r§:Boolean;
      
      private var §8-§:§'!,§;
      
      private var §7!T§:§,C§;
      
      private var §6!>§:§1!0§;
      
      public function §2!V§(param1:§'!,§, param2:§,C§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§@!]§ = new Sprite();
         super();
         this.§8-§ = param1;
         this.§7!T§ = param2;
         this.§9l§ = param3;
         this.§"G§ = param5;
         this.§5!x§ = param4;
         this.§'"2§ = param10;
         this.§ 7§ = param16;
         this.§3!p§ = param17;
         this.§'"B§ = param9;
         this.§&Q§ = 0;
         this.§1!?§ = param8;
         this.§""4§ = param6;
         this.§%W§ = param7;
         this.§=T§ = param15;
         this.§3>§ = param11;
         this.§5@§ = param12;
         this.§1"3§ = param14;
         this.§`"D§ = param13;
         this.§5^§();
         this.updateRenderer();
         if(this.§"G§ == §#!N§)
         {
            this.§,"-§ = §9q§.§>!L§.§&+§.ground + this.§@!]§.height * §^g§.§5!-§;
         }
      }
      
      public static function §+9§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §3j§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §,";§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §#!2§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §&]§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §]'§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §@!y§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §8!K§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §7!W§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §#" §;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §]<§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §4!h§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §!!f§;
         }
         return §["8§;
      }
      
      public static function §-"§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §2!n§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §=p§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §&!r§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §-!$§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §#!J§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §8!f§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §8!f§;
         }
         return §#!J§;
      }
      
      public function get §,"F§() : DisplayObject
      {
         return this.§@!]§;
      }
      
      public function §0[§(param1:Number, param2:Number) : void
      {
      }
      
      protected function §5^§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§#r§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§9l§)
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
            case §^"F§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §`!f§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §`"G§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §2"1§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §7G§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §3Z§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §?![§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §<"@§:
            case §[r§:
               if(parseInt(this.§'"B§) == 10000 || parseInt(this.§'"B§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§'"2§)
                  {
                     case §2!n§:
                        _loc8_ = 16058683;
                        break;
                     case §&!r§:
                        _loc8_ = 55294;
                        break;
                     case §8!f§:
                        _loc8_ = 1878602;
                        break;
                     case §-!$§:
                        _loc8_ = 3552822;
                        break;
                     case §#!J§:
                        break;
                     case §=p§:
                        _loc8_ = 16705792;
                  }
                  if(parseInt(this.§'"B§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§8-§.getAnimation("NUMBERS");
                  this.§`!>§ = new §^!!§(_loc2_,_loc3_,true);
                  this.§`!>§.§`S§(parseInt(this.§'"B§));
                  this.§@!]§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§8-§.getAnimation("NUMBERS");
               this.§`!>§ = new §^!!§(_loc2_,_loc3_);
               this.§`!>§.§`S§(parseInt(this.§'"B§));
               this.§@!]§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §[!e§:
               switch(this.§'"2§)
               {
                  case §#" §:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §!!f§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §]<§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §4!h§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §["8§:
                     _loc6_ = 1 + _loc1_ % 5;
               }
               if(this.§@!]§)
               {
                  this.§@!]§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §^"9§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§'"2§)
               {
                  case §3j§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §&]§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §#!2§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §@!y§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §]'§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §,";§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §8!K§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§@!]§)
               {
                  this.§@!]§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§9l§,null,this.§ 7§,this.§3!p§);
         }
      }
      
      private function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:DisplayObject = null;
         if(param1 == "??")
         {
            return;
         }
         this.§]!k§ = this.§8-§.getAnimation(param1);
         this.§2!r§ = param4;
         if(this.§]!k§)
         {
            _loc5_ = this.§]!k§.getFrame(0);
            this.§""0§ = param3;
            _loc5_.scaleX *= this.§=T§;
            _loc5_.scaleY *= this.§=T§;
            this.§@!]§.addChild(_loc5_);
            _loc5_.x = -this.§@!]§.width / 2;
            _loc5_.y = -this.§@!]§.height / 2;
            return;
         }
      }
      
      public function updateRenderer() : void
      {
         if(this.§@!]§)
         {
            this.§@!]§.x = this.§""4§ / §^g§.§5!-§;
            this.§@!]§.y = this.§%W§ / §^g§.§5!-§;
         }
      }
      
      public function §^!D§(param1:§1!0§) : void
      {
         this.§6!>§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:DisplayObject = null;
         this.§&Q§ += param1;
         var _loc2_:Boolean = false;
         if(this.§6!>§)
         {
            if(this.§6!>§.sprite == null || this.§6!>§.levelItem == null)
            {
               return false;
            }
            this.§""4§ = this.§6!>§.§^!z§().GetPosition().x;
            this.§%W§ = this.§6!>§.§^!z§().GetPosition().y;
         }
         if(this.§""0§ > 0 && this.§]!k§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§&Q§ / 1000 / (1 / _loc3_)) < this.§]!k§.frameCount)
            {
               _loc5_ = this.§]!k§.getFrame(_loc4_);
               this.§@!]§.§<!7§(0,-1,true);
               this.§@!]§.addChild(_loc5_);
               _loc5_.scaleX *= this.§=T§;
               _loc5_.scaleY *= this.§=T§;
            }
            else if(this.§2!r§)
            {
               this.§@!]§.§<!7§(0,-1,true);
            }
         }
         if(this.§"G§ == §#!N§)
         {
            this.§9!T§(param1);
            _loc2_ = this.§@!v§(param1);
            if(this.§,"-§ > 0 && this.§%W§ > this.§,"-§)
            {
               return false;
            }
         }
         else
         {
            this.§9!T§(param1);
            _loc2_ = this.§@!v§(param1);
         }
         if(this.§1!?§ > 0 && this.§&Q§ >= this.§1!?§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.updateRenderer();
         }
         return true;
      }
      
      public function §9!T§(param1:Number) : void
      {
         this.§5@§ += param1 * this.§`"D§ / 1000;
         this.§%W§ += this.§5@§ * param1 / 1000;
         this.§""4§ += this.§3>§ * param1 / 1000;
         if(this.§1"3§ != 0)
         {
            this.§@!]§.rotation += this.§1"3§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §@!v§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§"G§ == §@x§)
         {
            if(this.§1!?§ > 0)
            {
               _loc2_ = 1;
               if(this.§9l§ == §[r§)
               {
                  if((_loc4_ = this.§&Q§ / this.§1!?§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§'"B§) / 5000);
               }
               this.§@!]§.scaleX = _loc2_;
               this.§@!]§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§"G§ == §#!N§)
         {
            if(this.§9l§ == §?![§)
            {
               this.§@!]§.alpha = Math.max(0,Math.min(1,2 * §8!z§.§@!I§((this.§1!?§ - this.§&Q§) / this.§1!?§,false)));
               _loc5_ = Math.atan2(-this.§5@§,this.§3>§) * (180 / Math.PI);
               this.§@!]§.scaleX = Math.max(0.2,this.§@!]§.alpha);
               this.§@!]§.scaleY = Math.max(0.2,this.§@!]§.alpha);
               this.§@!]§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§9l§ == §^"9§ || this.§9l§ == §7G§)
            {
               this.§@!]§.scaleX = this.§@!]§.scaleY = 0.2 + (this.§1!?§ - this.§&Q§) / this.§1!?§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§`!>§)
         {
            this.§`!>§.clear();
            this.§`!>§ = null;
         }
         if(this.§@!]§)
         {
            this.§@!]§.dispose();
            this.§@!]§ = null;
         }
         if(this.§6!>§)
         {
            this.§6!>§ = null;
         }
      }
   }
}
