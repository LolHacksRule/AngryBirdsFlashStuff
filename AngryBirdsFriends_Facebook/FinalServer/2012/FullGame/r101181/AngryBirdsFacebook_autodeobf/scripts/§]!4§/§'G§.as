package §]!4§
{
   import §0!R§.Texture;
   import §1!$§.§0!N§;
   import §1!$§.DisplayObject;
   import §1!$§.Sprite;
   import §6!D§.§"A§;
   import §6!D§.§0Y§;
   import §6!D§.§3!K§;
   import §6!D§.§[t§;
   import §6o§.§>L§;
   import §9"!§.§%"6§;
   import §9"!§.§9"3§;
   import §9"%§.§&!r§;
   import §]!A§.;
   
   public class §'G§
   {
      
      public static const §7!e§:int = 0;
      
      public static const §+";§:int = 1;
      
      public static const §5!l§:int = 2;
      
      public static const §9"4§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §5!&§:String = "Effect_TrailBig_Bird";
      
      public static const §'!>§:String = "Effect_Trail_Sparkle";
      
      public static const §@!7§:String = "Effect_Floating_Score";
      
      public static const §"2§:String = "Effect_Floating_Text";
      
      public static const §34§:String = "Effect_Explosion_Particle";
      
      public static const §,W§:String = "Effect_Explosion_Core";
      
      public static const §9!>§:String = "Effect_Pig_Destruction";
      
      public static const §?!s§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §`!O§:String = "Effect_Bird_Destruction";
      
      public static const §"!z§:String = "Effect_Block_Destruction_Particles";
      
      public static const §0!;§:String = "Effect_Block_Destruction_Core";
      
      public static const §9!q§:int = 0;
      
      public static const § !7§:int = 1;
      
      public static const §45§:int = 2;
      
      public static const §9!d§:int = 3;
      
      public static const §6C§:int = 4;
      
      public static const §1"A§:int = 5;
      
      public static const §0=§:int = 6;
      
      public static const §3!k§:int = 7;
      
      public static const §7§:int = 8;
      
      public static const §'F§:int = 9;
      
      public static const §^v§:int = 10;
      
      public static const §4!Q§:int = 11;
      
      public static const §>R§:int = 12;
      
      public static const §6!Y§:int = 13;
      
      public static const §3!v§:int = 14;
      
      public static const §9;§:int = 15;
      
      public static const §=!4§:int = 16;
      
      public static const §6"7§:int = 17;
      
      public static const §=5§:int = 18;
      
      public static const §!!n§:int = 19;
      
      public static const §-F§:Boolean = true;
       
      
      public var §0!h§:int;
      
      public var §0!x§:int;
      
      public var §1"'§:String;
      
      public var §]"1§:Number;
      
      public var §;"9§:Number;
      
      public var §6" §:Number;
      
      public var §<1§:Number;
      
      public var §@P§:Number = 0;
      
      public var §[!q§:Number;
      
      public var §]!a§:Number;
      
      public var §0"F§:String;
      
      public var §7j§:Number = -1;
      
      public var §%!z§:int;
      
      public var §,!k§:Number;
      
      public var §!Q§:Number;
      
      private var §'!o§:Sprite;
      
      private var §3!+§:§%"6§;
      
      private var §7!n§:int;
      
      protected var §-f§:int;
      
      protected var §,"§:Boolean;
      
      private var §,s§:§"A§;
      
      private var §-!7§:Boolean;
      
      private var §]!V§:§[t§;
      
      private var § !@§:§0Y§;
      
      private var §7!B§:§&!r§;
      
      public function §'G§(param1:§[t§, param2:§0Y§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§'!o§ = new Sprite();
         super();
         this.§]!V§ = param1;
         this.§ !@§ = param2;
         this.§1"'§ = param3;
         this.§0!h§ = param5;
         this.§0!x§ = param4;
         this.§%!z§ = param10;
         this.§-f§ = param16;
         this.§,"§ = param17;
         this.§0"F§ = param9;
         this.§]"1§ = 0;
         this.§]!a§ = param8;
         this.§,!k§ = param6;
         this.§!Q§ = param7;
         this.§[!q§ = param15;
         this.§6" § = param11;
         this.§;"9§ = param12;
         this.§@P§ = param14;
         this.§<1§ = param13;
         this.createVisuals();
         this.§,!7§();
         if(this.§0!h§ == §+";§)
         {
            this.§7j§ = §#6§.§6!z§.§?l§.§'I§ + this.§'!o§.height * §9"3§.§'"F§;
         }
      }
      
      public static function §,">§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §9!q§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §45§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return § !7§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §1"A§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §6C§;
         }
         if(param1.toUpperCase().indexOf("BIRD_ORANGE") >= 0)
         {
            return §45§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §9!d§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §=5§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §0=§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §'F§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §3!k§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §7§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §^v§;
         }
         return §4!Q§;
      }
      
      public static function §>!&§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §>R§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §3!v§;
         }
         if(param1.toUpperCase().indexOf("BIRD_ORANGE") >= 0)
         {
            return §!!n§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §6!Y§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §6"7§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §=!4§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §9;§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §9;§;
         }
         return §=!4§;
      }
      
      public function get §[%§() : DisplayObject
      {
         return this.§'!o§;
      }
      
      public function §!G§(param1:Number, param2:Number) : void
      {
      }
      
      protected function createVisuals() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§"A§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§1"'§)
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
            case §5!&§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §'!>§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §9!>§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §?!s§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §0!;§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §,W§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §34§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §@!7§:
            case §"2§:
               if(parseInt(this.§0"F§) == 10000 || parseInt(this.§0"F§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§%!z§)
                  {
                     case §>R§:
                        _loc8_ = 16058683;
                        break;
                     case §6!Y§:
                        _loc8_ = 55294;
                        break;
                     case §9;§:
                        _loc8_ = 1878602;
                        break;
                     case §6"7§:
                        _loc8_ = 3552822;
                        break;
                     case §=!4§:
                        break;
                     case §3!v§:
                        _loc8_ = 16705792;
                        break;
                     case §!!n§:
                        _loc8_ = 16753152;
                  }
                  if(parseInt(this.§0"F§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§]!V§.getAnimation("NUMBERS");
                  this.§3!+§ = new §%"6§(_loc2_,_loc3_,true);
                  this.§3!+§.§3"<§(parseInt(this.§0"F§));
                  this.§'!o§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§]!V§.getAnimation("NUMBERS");
               this.§3!+§ = new §%"6§(_loc2_,_loc3_);
               this.§3!+§.§3"<§(parseInt(this.§0"F§));
               this.§'!o§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §"!z§:
               switch(this.§%!z§)
               {
                  case §'F§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §^v§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §3!k§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §7§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §4!Q§:
                     _loc6_ = 1 + _loc1_ % 3;
               }
               if(this.§'!o§)
               {
                  this.§'!o§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §`!O§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§%!z§)
               {
                  case §9!q§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §1"A§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case § !7§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §9!d§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §6C§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §45§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §=5§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§'!o§)
               {
                  this.§'!o§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§1"'§,null,this.§-f§,this.§,"§);
         }
      }
      
      protected function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§3!K§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§-!7§ = param4;
         var _loc7_:Number = 1;
         this.§,s§ = this.§]!V§.getAnimation(param1);
         if(this.§,s§)
         {
            _loc6_ = (_loc5_ = this.§,s§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            if(!(_loc5_ = this.§ !@§.§>s§(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
         }
         this.§7!n§ = param3;
         var _loc8_:§0!N§ = this.§["<§(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§[!q§ * _loc7_;
         this.§'!o§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§[!q§;
            _loc8_.y = -_loc5_.pivotY * this.§[!q§;
         }
         else
         {
            _loc8_.x = -this.§'!o§.width / 2;
            _loc8_.y = -this.§'!o§.height / 2;
         }
      }
      
      protected function §["<§(param1:Texture) : §0!N§
      {
         return new §0!N§(param1,false);
      }
      
      public function §,!7§() : void
      {
         if(this.§'!o§)
         {
            this.§'!o§.x = this.§,!k§ / §9"3§.§'"F§;
            this.§'!o§.y = this.§!Q§ / §9"3§.§'"F§;
         }
      }
      
      public function §,#§(param1:§&!r§) : void
      {
         this.§7!B§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§3!K§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§0!N§ = null;
         this.§]"1§ += param1;
         var _loc2_:Boolean = false;
         if(this.§7!B§)
         {
            if(this.§7!B§.sprite == null || this.§7!B§.§3!4§ == null)
            {
               return false;
            }
            this.§,!k§ = this.§7!B§.§=!y§().GetPosition().x;
            this.§!Q§ = this.§7!B§.§=!y§().GetPosition().y;
         }
         if(this.§7!n§ > 0 && this.§,s§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§]"1§ / 1000 / (1 / _loc3_)) < this.§,s§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§,s§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.§["<§(_loc6_);
               this.§'!o§.§8!,§(0,-1,true);
               this.§'!o§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§[!q§;
               _loc8_.y = -_loc5_.pivotY * this.§[!q§;
               _loc8_.scaleX = _loc8_.scaleY = this.§[!q§ * _loc7_;
            }
            else if(this.§-!7§)
            {
               this.§'!o§.§8!,§(0,-1,true);
            }
         }
         if(this.§0!h§ == §+";§)
         {
            this.§2v§(param1);
            _loc2_ = this.§<"!§(param1);
            if(this.§7j§ > 0 && this.§!Q§ > this.§7j§)
            {
               return false;
            }
         }
         else
         {
            this.§2v§(param1);
            _loc2_ = this.§<"!§(param1);
         }
         if(this.§]!a§ > 0 && this.§]"1§ >= this.§]!a§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§,!7§();
         }
         return true;
      }
      
      public function §2v§(param1:Number) : void
      {
         this.§;"9§ += param1 * this.§<1§ / 1000;
         this.§!Q§ += this.§;"9§ * param1 / 1000;
         this.§,!k§ += this.§6" § * param1 / 1000;
         if(this.§@P§ != 0)
         {
            this.§'!o§.rotation += this.§@P§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §<"!§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§0!h§ == §7!e§)
         {
            if(this.§]!a§ > 0)
            {
               _loc2_ = 1;
               if(this.§1"'§ == §"2§)
               {
                  if((_loc4_ = this.§]"1§ / this.§]!a§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§0"F§) / 5000);
               }
               this.§'!o§.scaleX = _loc2_;
               this.§'!o§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§0!h§ == §+";§)
         {
            if(this.§1"'§ == §34§)
            {
               this.§'!o§.alpha = Math.max(0,Math.min(1,2 * §>L§.§"1§((this.§]!a§ - this.§]"1§) / this.§]!a§,false)));
               _loc5_ = Math.atan2(-this.§;"9§,this.§6" §) * (180 / Math.PI);
               this.§'!o§.scaleX = Math.max(0.2,this.§'!o§.alpha);
               this.§'!o§.scaleY = Math.max(0.2,this.§'!o§.alpha);
               this.§'!o§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§1"'§ == §`!O§ || this.§1"'§ == §0!;§)
            {
               this.§'!o§.scaleX = this.§'!o§.scaleY = 0.2 + (this.§]!a§ - this.§]"1§) / this.§]!a§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§3!+§)
         {
            this.§3!+§.clear();
            this.§3!+§ = null;
         }
         if(this.§'!o§)
         {
            this.§'!o§.dispose();
            this.§'!o§ = null;
         }
         if(this.§7!B§)
         {
            this.§7!B§ = null;
         }
      }
   }
}
