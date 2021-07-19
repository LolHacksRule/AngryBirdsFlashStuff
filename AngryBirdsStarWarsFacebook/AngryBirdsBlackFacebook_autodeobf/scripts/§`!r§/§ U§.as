package §`!r§
{
   import §!!U§.§#"t§;
   import §!!U§.DisplayObject;
   import §!!U§.Sprite;
   import §&v§.Texture;
   import §5t§.§""K§;
   import §7!F§.§7§;
   import §7!F§.§8!W§;
   import §7!F§.§>"G§;
   import §7!F§.§`y§;
   import §7P§.§&#=§;
   import §^#>§.§#_§;
   import §^#>§.§[i§;
   import com.angrybirds.§,!q§;
   
   public class § U§
   {
      
      public static const §8-§:int = 0;
      
      public static const §'# §:int = 1;
      
      public static const §>#]§:int = 2;
      
      public static const §+!Q§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §[#"§:String = "Effect_TrailBig_Bird";
      
      public static const §1!+§:String = "Effect_Trail_Sparkle";
      
      public static const §^<§:String = "Effect_Floating_Score";
      
      public static const §6?§:String = "Effect_Floating_Text";
      
      public static const §;!%§:String = "Effect_Explosion_Particle";
      
      public static const § !`§:String = "Effect_Explosion_Core";
      
      public static const §1!T§:String = "Effect_Pig_Destruction";
      
      public static const §;!a§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §7!i§:String = "Effect_Bird_Destruction";
      
      public static const §!%§:String = "Effect_Block_Destruction_Particles";
      
      public static const §?#;§:String = "Effect_Block_Destruction_Core";
      
      public static const §'"v§:String = "Effect_TrailBig_Bird_Rebel";
      
      public static const §9"W§:int = 0;
      
      public static const §,!;§:int = 1;
      
      public static const §-"W§:int = 2;
      
      public static const §;#+§:int = 3;
      
      public static const §;"u§:int = 4;
      
      public static const §@!3§:int = 5;
      
      public static const §3!]§:int = 6;
      
      public static const §#"P§:int = 7;
      
      public static const §##]§:int = 8;
      
      public static const §4"S§:int = 9;
      
      public static const §if§:int = 10;
      
      public static const §^#+§:int = 11;
      
      public static const §5"f§:int = 12;
      
      public static const §<!Z§:int = 13;
      
      public static const §1" §:int = 14;
      
      public static const §?#<§:int = 15;
      
      public static const §#!p§:int = 16;
      
      public static const §`#R§:int = 17;
      
      public static const §"!V§:int = 18;
       
      
      public var §1#N§:int;
      
      public var §"![§:int;
      
      public var §super§:String;
      
      public var §1J§:Number;
      
      public var §!#4§:Number;
      
      public var §-!H§:Number;
      
      public var §=#,§:Number;
      
      public var §<#W§:Number = 0;
      
      public var §8"2§:Number;
      
      public var §5"v§:Number;
      
      public var §;" §:String;
      
      public var §@5§:Number = -1;
      
      public var §"q§:int;
      
      public var §8!+§:Number;
      
      public var §=!Z§:Number;
      
      private var §&![§:Sprite;
      
      private var §!!M§:§[i§;
      
      private var §3K§:int;
      
      private var §6"P§:int;
      
      private var §4"n§:Boolean;
      
      private var §]!`§:§>"G§;
      
      private var §?#L§:Boolean;
      
      private var §+"4§:§`y§;
      
      private var §6V§:§7#5§;
      
      private var §1;§:§&#=§;
      
      public function § U§(param1:§`y§, param2:§7#5§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§&![§ = new Sprite();
         super();
         this.§+"4§ = param1;
         this.§6V§ = param2;
         this.§super§ = param3;
         this.§1#N§ = param5;
         this.§"![§ = param4;
         this.§"q§ = param10;
         this.§6"P§ = param16;
         this.§4"n§ = param17;
         this.§;" § = param9;
         this.§1J§ = 0;
         this.§5"v§ = param8;
         this.§8!+§ = param6;
         this.§=!Z§ = param7;
         this.§8"2§ = param15;
         this.§-!H§ = param11;
         this.§!#4§ = param12;
         this.§<#W§ = param14;
         this.§=#,§ = param13;
         this.§>!&§();
         this.updateRenderer();
         if(this.§1#N§ == §'# §)
         {
            this.§@5§ = §,!q§.§9!,§.§""?§.ground + this.§&![§.height * §#_§.§8]§;
         }
      }
      
      public static function §`"I§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §9"W§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §-"W§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §,!;§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §@!3§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §;"u§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §;#+§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §"!V§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §3!]§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §4"S§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §#"P§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §##]§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §if§;
         }
         return §^#+§;
      }
      
      public static function §0#`§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §5"f§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §1" §;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §<!Z§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §`#R§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §#!p§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §?#<§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §?#<§;
         }
         return §#!p§;
      }
      
      public function get §[!8§() : DisplayObject
      {
         return this.§&![§;
      }
      
      public function §2<§(param1:Number, param2:Number) : void
      {
      }
      
      protected function getParticleType() : String
      {
         return this.§super§;
      }
      
      protected function §>!&§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§>"G§ = null;
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
            case §[#"§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §'"v§:
               this.createParticle("SMOKE_BUFF_SMALL",null,15,false);
               break;
            case §1!+§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §1!T§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §;!a§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §?#;§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case § !`§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §;!%§:
               _loc5_ = 1 + _loc1_ % 5;
               _loc6_ = "particle" + _loc5_;
               break;
            case §^<§:
            case §6?§:
               if(parseInt(this.§;" §) == 10000 || parseInt(this.§;" §) == 5000)
               {
                  _loc9_ = 16777215;
                  switch(this.§"q§)
                  {
                     case §5"f§:
                        _loc9_ = 16058683;
                        break;
                     case §<!Z§:
                        _loc9_ = 55294;
                        break;
                     case §?#<§:
                        _loc9_ = 1878602;
                        break;
                     case §`#R§:
                        _loc9_ = 3552822;
                        break;
                     case §#!p§:
                        break;
                     case §1" §:
                        _loc9_ = 16705792;
                  }
                  if(parseInt(this.§;" §) == 5000)
                  {
                     _loc9_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§+"4§.getAnimation("NUMBERS");
                  this.§!!M§ = new §[i§(_loc2_,_loc3_,true);
                  this.§!!M§.§"!T§(parseInt(this.§;" §));
                  this.§&![§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc9_;
                  _loc2_.flatten();
               }
               else
               {
                  _loc2_ = new Sprite();
                  _loc3_ = this.§+"4§.getAnimation("NUMBERS");
                  this.§!!M§ = new §[i§(_loc2_,_loc3_);
                  this.§!!M§.§"!T§(parseInt(this.§;" §));
                  this.§&![§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
               }
               break;
            case §!%§:
               switch(this.§"q§)
               {
                  case §4"S§:
                     _loc7_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc7_);
                     break;
                  case §if§:
                     _loc7_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §#"P§:
                     _loc7_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc7_);
                     break;
                  case §##]§:
                     _loc7_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc7_);
                     break;
                  case §^#+§:
                     _loc7_ = 1 + _loc1_ % 5;
               }
               if(this.§&![§)
               {
                  this.§&![§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §7!i§:
               _loc8_ = 1 + _loc1_ % 3;
               switch(this.§"q§)
               {
                  case §9"W§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc8_);
                     break;
                  case §@!3§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc8_);
                     break;
                  case §,!;§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc8_);
                     break;
                  case §;#+§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc8_);
                     break;
                  case §;"u§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc8_);
                     break;
                  case §-"W§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc8_);
                     break;
                  case §"!V§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc8_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc8_);
               }
               if(this.§&![§)
               {
                  this.§&![§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            default:
               this.createParticle(_loc4_,null,this.§6"P§,this.§4"n§);
         }
      }
      
      private function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§8!W§ = null;
         var _loc6_:Texture = null;
         var _loc8_:DisplayObject = null;
         if(param1 == "??")
         {
            return;
         }
         this.§?#L§ = param4;
         var _loc7_:Number = 1;
         this.§]!`§ = this.§+"4§.getAnimation(param1);
         this.§?#L§ = param4;
         if(this.§]!`§)
         {
            _loc8_ = this.§]!`§.getFrame(0);
         }
         else
         {
            if(!(_loc5_ = this.§6V§.getTexture(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
            _loc8_ = new §#"t§(_loc6_,false);
         }
         this.§3K§ = param3;
         _loc8_.scaleX *= this.§8"2§;
         _loc8_.scaleY *= this.§8"2§;
         this.§&![§.addChild(_loc8_);
         _loc8_.x = -this.§&![§.width / 2;
         _loc8_.y = -this.§&![§.height / 2;
      }
      
      public function updateRenderer() : void
      {
         if(this.§&![§)
         {
            this.§&![§.x = this.§8!+§ / §#_§.§8]§;
            this.§&![§.y = this.§=!Z§ / §#_§.§8]§;
         }
      }
      
      public function §7#H§(param1:§&#=§) : void
      {
         this.§1;§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:DisplayObject = null;
         this.§1J§ += param1;
         var _loc2_:Boolean = false;
         if(this.§1;§)
         {
            if(this.§1;§.sprite == null || this.§1;§.levelItem == null)
            {
               return false;
            }
            this.§8!+§ = this.§1;§.§3!t§().GetPosition().x;
            this.§=!Z§ = this.§1;§.§3!t§().GetPosition().y;
         }
         if(this.§3K§ > 0 && this.§]!`§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§1J§ / 1000 / (1 / _loc3_)) < this.§]!`§.frameCount)
            {
               _loc5_ = this.§]!`§.getFrame(_loc4_);
               this.§&![§.§1!r§(0,-1,true);
               this.§&![§.addChild(_loc5_);
               _loc5_.scaleX *= this.§8"2§;
               _loc5_.scaleY *= this.§8"2§;
            }
            else if(this.§?#L§)
            {
               this.§&![§.§1!r§(0,-1,true);
            }
         }
         if(this.§1#N§ == §'# §)
         {
            this.§,g§(param1);
            _loc2_ = this.§&"A§(param1);
            if(this.§@5§ > 0 && this.§=!Z§ > this.§@5§)
            {
               return false;
            }
         }
         else
         {
            this.§,g§(param1);
            _loc2_ = this.§&"A§(param1);
         }
         if(this.§5"v§ > 0 && this.§1J§ >= this.§5"v§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.updateRenderer();
         }
         return true;
      }
      
      public function §,g§(param1:Number) : void
      {
         this.§!#4§ += param1 * this.§=#,§ / 1000;
         this.§=!Z§ += this.§!#4§ * param1 / 1000;
         this.§8!+§ += this.§-!H§ * param1 / 1000;
         if(this.§<#W§ != 0)
         {
            this.§&![§.rotation += this.§<#W§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §&"A§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§1#N§ == §8-§)
         {
            if(this.§5"v§ > 0)
            {
               _loc2_ = 1;
               if(this.§super§ == §6?§)
               {
                  if((_loc4_ = this.§1J§ / this.§5"v§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§;" §) / 5000);
               }
               this.§&![§.scaleX = _loc2_;
               this.§&![§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§1#N§ == §'# §)
         {
            if(this.§super§ == §;!%§)
            {
               this.§&![§.alpha = Math.max(0,Math.min(1,2 * §""K§.§,#K§((this.§5"v§ - this.§1J§) / this.§5"v§,false)));
               _loc5_ = Math.atan2(-this.§!#4§,this.§-!H§) * (180 / Math.PI);
               this.§&![§.scaleX = Math.max(0.2,this.§&![§.alpha);
               this.§&![§.scaleY = Math.max(0.2,this.§&![§.alpha);
               this.§&![§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§super§ == §7!i§ || this.§super§ == §?#;§)
            {
               this.§&![§.scaleX = this.§&![§.scaleY = 0.2 + (this.§5"v§ - this.§1J§) / this.§5"v§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§!!M§)
         {
            this.§!!M§.clear();
            this.§!!M§ = null;
         }
         if(this.§&![§)
         {
            this.§&![§.dispose();
            this.§&![§ = null;
         }
         if(this.§1;§)
         {
            this.§1;§ = null;
         }
      }
   }
}
