package §case§
{
   import §%!0§.§,4§;
   import §%!0§.§@W§;
   import §&!P§.§``§;
   import §+!-§.§7"#§;
   import §+!-§.DisplayObject;
   import §+!-§.Sprite;
   import §,P§.§'_§;
   import §0!%§.Texture;
   import §6]§.§=!1§;
   import §;"7§.§"!B§;
   import §;"7§.§+!I§;
   import §;"7§.§5!O§;
   import §;"7§.§="<§;
   
   public class §`!E§
   {
      
      public static const §7!6§:int = 0;
      
      public static const §]W§:int = 1;
      
      public static const §;!o§:int = 2;
      
      public static const §+"=§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §"!2§:String = "Effect_TrailBig_Bird";
      
      public static const §#!g§:String = "Effect_Trail_Sparkle";
      
      public static const § !Q§:String = "Effect_Floating_Score";
      
      public static const §5!B§:String = "Effect_Floating_Text";
      
      public static const §1[§:String = "Effect_Explosion_Particle";
      
      public static const §&q§:String = "Effect_Explosion_Core";
      
      public static const §8!&§:String = "Effect_Pig_Destruction";
      
      public static const §5!d§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §@!1§:String = "Effect_Bird_Destruction";
      
      public static const §<"9§:String = "Effect_Block_Destruction_Particles";
      
      public static const §5!p§:String = "Effect_Block_Destruction_Core";
      
      public static const §6!O§:int = 0;
      
      public static const §<!X§:int = 1;
      
      public static const §;P§:int = 2;
      
      public static const §>p§:int = 3;
      
      public static const §"=§:int = 4;
      
      public static const §3-§:int = 5;
      
      public static const §,K§:int = 6;
      
      public static const §1r§:int = 7;
      
      public static const §8f§:int = 8;
      
      public static const §6!a§:int = 9;
      
      public static const § !Y§:int = 10;
      
      public static const §-4§:int = 11;
      
      public static const §-V§:int = 12;
      
      public static const §;",§:int = 13;
      
      public static const §46§:int = 14;
      
      public static const §""<§:int = 15;
      
      public static const §,"-§:int = 16;
      
      public static const §^@§:int = 17;
      
      public static const §^"$§:int = 18;
      
      public static const §%" §:int = 19;
      
      public static const §4!N§:Boolean = true;
       
      
      public var § !,§:int;
      
      public var §3v§:int;
      
      public var §2h§:String;
      
      public var §3R§:Number;
      
      public var §>!R§:Number;
      
      public var §-I§:Number;
      
      public var §^Z§:Number;
      
      public var §0!>§:Number = 0;
      
      public var §=9§:Number;
      
      public var §%6§:Number;
      
      public var §-"1§:String;
      
      public var §-!X§:Number = -1;
      
      public var §!E§:int;
      
      public var mX:Number;
      
      public var mY:Number;
      
      private var §-!f§:Sprite;
      
      private var §[D§:§@W§;
      
      private var §8t§:int;
      
      protected var §&!>§:int;
      
      protected var §%! §:Boolean;
      
      private var §,0§:§"!B§;
      
      private var §9w§:Boolean;
      
      private var §#"@§:§5!O§;
      
      private var §7k§:§="<§;
      
      private var §!!0§:§``§;
      
      public function §`!E§(param1:§5!O§, param2:§="<§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§-!f§ = new Sprite();
         super();
         this.§#"@§ = param1;
         this.§7k§ = param2;
         this.§2h§ = param3;
         this.§ !,§ = param5;
         this.§3v§ = param4;
         this.§!E§ = param10;
         this.§&!>§ = param16;
         this.§%! § = param17;
         this.§-"1§ = param9;
         this.§3R§ = 0;
         this.§%6§ = param8;
         this.mX = param6;
         this.mY = param7;
         this.§=9§ = param15;
         this.§-I§ = param11;
         this.§>!R§ = param12;
         this.§0!>§ = param14;
         this.§^Z§ = param13;
         this.createVisuals();
         this.§83§();
         if(this.§ !,§ == §]W§)
         {
            this.§-!X§ = §'_§.§=M§.borders.mBorderGround_B2 + this.§-!f§.height * §,4§.§,^§;
         }
      }
      
      public static function §]!I§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §6!O§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §;P§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §<!X§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §3-§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §"=§;
         }
         if(param1.toUpperCase().indexOf("BIRD_ORANGE") >= 0)
         {
            return §;P§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §>p§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §^"$§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §,K§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §6!a§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §1r§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §8f§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return § !Y§;
         }
         return §-4§;
      }
      
      public static function §6!%§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §-V§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §46§;
         }
         if(param1.toUpperCase().indexOf("BIRD_ORANGE") >= 0)
         {
            return §%" §;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §;",§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §^@§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §,"-§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §""<§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §""<§;
         }
         return §,"-§;
      }
      
      public function get §1"7§() : DisplayObject
      {
         return this.§-!f§;
      }
      
      public function §;f§(param1:Number, param2:Number) : void
      {
      }
      
      protected function createVisuals() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§"!B§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§2h§)
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
            case §"!2§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §#!g§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §8!&§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §5!d§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §5!p§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §&q§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §1[§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case § !Q§:
            case §5!B§:
               if(parseInt(this.§-"1§) == 10000 || parseInt(this.§-"1§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§!E§)
                  {
                     case §-V§:
                        _loc8_ = 16058683;
                        break;
                     case §;",§:
                        _loc8_ = 55294;
                        break;
                     case §""<§:
                        _loc8_ = 1878602;
                        break;
                     case §^@§:
                        _loc8_ = 3552822;
                        break;
                     case §,"-§:
                        break;
                     case §46§:
                        _loc8_ = 16705792;
                        break;
                     case §%" §:
                        _loc8_ = 16753152;
                  }
                  if(parseInt(this.§-"1§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§#"@§.§`" §("NUMBERS");
                  this.§[D§ = new §@W§(_loc2_,_loc3_,true);
                  this.§[D§.§ "@§(parseInt(this.§-"1§));
                  this.§-!f§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
               }
               else
               {
                  _loc2_ = new Sprite();
                  _loc3_ = this.§#"@§.§`" §("NUMBERS");
                  this.§[D§ = new §@W§(_loc2_,_loc3_);
                  this.§[D§.§ "@§(parseInt(this.§-"1§));
                  this.§-!f§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
               }
               break;
            case §<"9§:
               switch(this.§!E§)
               {
                  case §6!a§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case § !Y§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §1r§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §8f§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §-4§:
                     _loc6_ = 1 + _loc1_ % 3;
               }
               if(this.§-!f§)
               {
                  this.§-!f§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §@!1§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§!E§)
               {
                  case §6!O§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §3-§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §<!X§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §>p§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §"=§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §;P§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §^"$§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§-!f§)
               {
                  this.§-!f§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            default:
               this.createParticle(this.§2h§,null,this.§&!>§,this.§%! §);
         }
      }
      
      protected function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§+!I§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§9w§ = param4;
         var _loc7_:Number = 1;
         this.§,0§ = this.§#"@§.§`" §(param1);
         if(this.§,0§)
         {
            _loc6_ = (_loc5_ = this.§,0§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            if(!(_loc5_ = this.§7k§.§5!!§(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
         }
         this.§8t§ = param3;
         var _loc8_:§7"#§ = this.§3e§(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§=9§ * _loc7_;
         this.§-!f§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§=9§;
            _loc8_.y = -_loc5_.pivotY * this.§=9§;
         }
         else
         {
            _loc8_.x = -this.§-!f§.width / 2;
            _loc8_.y = -this.§-!f§.height / 2;
         }
      }
      
      protected function §3e§(param1:Texture) : §7"#§
      {
         return new §7"#§(param1,false);
      }
      
      public function §83§() : void
      {
         if(this.§-!f§)
         {
            this.§-!f§.x = this.mX / §,4§.§,^§;
            this.§-!f§.y = this.mY / §,4§.§,^§;
         }
      }
      
      public function §"9§(param1:§``§) : void
      {
         this.§!!0§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§+!I§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§7"#§ = null;
         this.§3R§ += param1;
         var _loc2_:Boolean = false;
         if(this.§!!0§)
         {
            if(this.§!!0§.sprite == null || this.§!!0§.§4";§ == null)
            {
               return false;
            }
            this.mX = this.§!!0§.getBody().GetPosition().x;
            this.mY = this.§!!0§.getBody().GetPosition().y;
         }
         if(this.§8t§ > 0 && this.§,0§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§3R§ / 1000 / (1 / _loc3_)) < this.§,0§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§,0§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.§3e§(_loc6_);
               this.§-!f§.removeChildren(0,-1,true);
               this.§-!f§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§=9§;
               _loc8_.y = -_loc5_.pivotY * this.§=9§;
               _loc8_.scaleX = _loc8_.scaleY = this.§=9§ * _loc7_;
            }
            else if(this.§9w§)
            {
               this.§-!f§.removeChildren(0,-1,true);
            }
         }
         if(this.§ !,§ == §]W§)
         {
            this.§[!U§(param1);
            _loc2_ = this.§1D§(param1);
            if(this.§-!X§ > 0 && this.mY > this.§-!X§)
            {
               return false;
            }
         }
         else
         {
            this.§[!U§(param1);
            _loc2_ = this.§1D§(param1);
         }
         if(this.§%6§ > 0 && this.§3R§ >= this.§%6§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§83§();
         }
         return true;
      }
      
      public function §[!U§(param1:Number) : void
      {
         this.§>!R§ += param1 * this.§^Z§ / 1000;
         this.mY += this.§>!R§ * param1 / 1000;
         this.mX += this.§-I§ * param1 / 1000;
         if(this.§0!>§ != 0)
         {
            this.§-!f§.rotation += this.§0!>§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §1D§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§ !,§ == §7!6§)
         {
            if(this.§%6§ > 0)
            {
               _loc2_ = 1;
               if(this.§2h§ == §5!B§)
               {
                  if((_loc4_ = this.§3R§ / this.§%6§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§-"1§) / 5000);
               }
               this.§-!f§.scaleX = _loc2_;
               this.§-!f§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§ !,§ == §]W§)
         {
            if(this.§2h§ == §1[§)
            {
               this.§-!f§.alpha = Math.max(0,Math.min(1,2 * §=!1§.§-!1§((this.§%6§ - this.§3R§) / this.§%6§,false)));
               _loc5_ = Math.atan2(-this.§>!R§,this.§-I§) * (180 / Math.PI);
               this.§-!f§.scaleX = Math.max(0.2,this.§-!f§.alpha);
               this.§-!f§.scaleY = Math.max(0.2,this.§-!f§.alpha);
               this.§-!f§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§2h§ == §@!1§ || this.§2h§ == §5!p§)
            {
               this.§-!f§.scaleX = this.§-!f§.scaleY = 0.2 + (this.§%6§ - this.§3R§) / this.§%6§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§[D§)
         {
            this.§[D§.clear();
            this.§[D§ = null;
         }
         if(this.§-!f§)
         {
            this.§-!f§.dispose();
            this.§-!f§ = null;
         }
         if(this.§!!0§)
         {
            this.§!!0§ = null;
         }
      }
   }
}
