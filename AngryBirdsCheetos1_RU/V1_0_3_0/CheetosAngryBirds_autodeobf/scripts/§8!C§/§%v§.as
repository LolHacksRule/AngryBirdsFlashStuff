package §8!C§
{
   import §+!^§.§'Y§;
   import §+a§.Texture;
   import §7!P§.§%=§;
   import §9!a§.§"z§;
   import §9!a§.DisplayObject;
   import §9!a§.Sprite;
   import §9T§.§2j§;
   import §9T§.§=!^§;
   import §=0§.§ !C§;
   import §=0§.§>O§;
   import §=0§.§@_§;
   import §=0§.§^L§;
   import §[>§.§`,§;
   
   public class §%v§
   {
      
      public static const §]P§:int = 0;
      
      public static const §[H§:int = 1;
      
      public static const §'c§:int = 2;
      
      public static const §&!0§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §-D§:String = "Effect_TrailBig_Bird";
      
      public static const §`'§:String = "Effect_Trail_Sparkle";
      
      public static const §+_§:String = "Effect_Floating_Score";
      
      public static const §7b§:String = "Effect_Floating_Text";
      
      public static const §'N§:String = "Effect_Explosion_Particle";
      
      public static const §%5§:String = "Effect_Explosion_Core";
      
      public static const §-;§:String = "Effect_Pig_Destruction";
      
      public static const §"!U§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §4!W§:String = "Effect_Bird_Destruction";
      
      public static const §<g§:String = "Effect_Block_Destruction_Particles";
      
      public static const §6!8§:String = "Effect_Block_Destruction_Core";
      
      public static const §`<§:int = 0;
      
      public static const §#!Z§:int = 1;
      
      public static const §@!%§:int = 2;
      
      public static const §5c§:int = 3;
      
      public static const §=!2§:int = 4;
      
      public static const §4!O§:int = 5;
      
      public static const §0e§:int = 6;
      
      public static const §4!H§:int = 7;
      
      public static const §]C§:int = 8;
      
      public static const §->§:int = 9;
      
      public static const §2>§:int = 10;
      
      public static const §1!^§:int = 11;
      
      public static const §7<§:int = 12;
      
      public static const §1=§:int = 13;
      
      public static const §=N§:int = 14;
      
      public static const §5]§:int = 15;
      
      public static const §?T§:int = 16;
      
      public static const §=8§:int = 17;
      
      public static const §!n§:int = 18;
      
      public static const §,!K§:Boolean = true;
       
      
      public var §4!K§:int;
      
      public var §^!]§:int;
      
      public var §for §:String;
      
      public var §@N§:Number;
      
      public var §-,§:Number;
      
      public var §[![§:Number;
      
      public var §[!T§:Number;
      
      public var §0x§:Number = 0;
      
      public var §;!X§:Number;
      
      public var §1x§:Number;
      
      public var §5§:String;
      
      public var §?p§:Number = -1;
      
      public var §`!6§:int;
      
      public var §!-§:Number;
      
      public var §[4§:Number;
      
      private var §#A§:Sprite;
      
      private var §@b§:§2j§;
      
      private var §0!'§:int;
      
      protected var §6!3§:int;
      
      protected var §]G§:Boolean;
      
      private var §]!,§:§@_§;
      
      private var §&S§:Boolean;
      
      private var §6y§:§ !C§;
      
      private var §<!P§:§>O§;
      
      private var §&!F§:§`,§;
      
      public function §%v§(param1:§ !C§, param2:§>O§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§#A§ = new Sprite();
         super();
         this.§6y§ = param1;
         this.§<!P§ = param2;
         this.§for § = param3;
         this.§4!K§ = param5;
         this.§^!]§ = param4;
         this.§`!6§ = param10;
         this.§6!3§ = param16;
         this.§]G§ = param17;
         this.§5§ = param9;
         this.§@N§ = 0;
         this.§1x§ = param8;
         this.§!-§ = param6;
         this.§[4§ = param7;
         this.§;!X§ = param15;
         this.§[![§ = param11;
         this.§-,§ = param12;
         this.§0x§ = param14;
         this.§[!T§ = param13;
         this.createVisuals();
         this.§'!L§();
         if(this.§4!K§ == §[H§)
         {
            this.§?p§ = §'Y§.§@j§.§5!V§.§?!$§ + this.§#A§.height * §=!^§.§4#§;
         }
      }
      
      public static function §!v§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §`<§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §@!%§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §#!Z§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §4!O§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §=!2§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §5c§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §!n§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §0e§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §->§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §4!H§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §]C§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §2>§;
         }
         return §1!^§;
      }
      
      public static function §]§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §7<§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §=N§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §1=§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §=8§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §?T§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §5]§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §5]§;
         }
         return §?T§;
      }
      
      public function get §<!=§() : DisplayObject
      {
         return this.§#A§;
      }
      
      public function §,$§(param1:Number, param2:Number) : void
      {
      }
      
      protected function createVisuals() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§@_§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§for §)
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
            case §-D§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §`'§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §-;§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §"!U§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §6!8§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §%5§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §'N§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §+_§:
            case §7b§:
               if(parseInt(this.§5§) == 10000 || parseInt(this.§5§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§`!6§)
                  {
                     case §7<§:
                        _loc8_ = 16058683;
                        break;
                     case §1=§:
                        _loc8_ = 55294;
                        break;
                     case §5]§:
                        _loc8_ = 1878602;
                        break;
                     case §=8§:
                        _loc8_ = 3552822;
                        break;
                     case §?T§:
                        break;
                     case §=N§:
                        _loc8_ = 16705792;
                  }
                  if(parseInt(this.§5§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§6y§.§#!E§("NUMBERS");
                  this.§@b§ = new §2j§(_loc2_,_loc3_,true);
                  this.§@b§.§68§(parseInt(this.§5§));
                  this.§#A§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§6y§.§#!E§("NUMBERS");
               this.§@b§ = new §2j§(_loc2_,_loc3_);
               this.§@b§.§68§(parseInt(this.§5§));
               this.§#A§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §<g§:
               switch(this.§`!6§)
               {
                  case §->§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §2>§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §4!H§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §]C§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §1!^§:
                     _loc6_ = 1 + _loc1_ % 3;
               }
               if(this.§#A§)
               {
                  this.§#A§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §4!W§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§`!6§)
               {
                  case §`<§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §4!O§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §#!Z§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §5c§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §=!2§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §@!%§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §!n§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§#A§)
               {
                  this.§#A§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§for §,null,this.§6!3§,this.§]G§);
         }
      }
      
      protected function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§^L§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§&S§ = param4;
         var _loc7_:Number = 1;
         this.§]!,§ = this.§6y§.§#!E§(param1);
         if(this.§]!,§)
         {
            _loc6_ = (_loc5_ = this.§]!,§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            if(!(_loc5_ = this.§<!P§.§ r§(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
         }
         this.§0!'§ = param3;
         var _loc8_:§"z§ = this.§[!5§(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§;!X§ * _loc7_;
         this.§#A§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§;!X§;
            _loc8_.y = -_loc5_.pivotY * this.§;!X§;
         }
         else
         {
            _loc8_.x = -this.§#A§.width / 2;
            _loc8_.y = -this.§#A§.height / 2;
         }
      }
      
      protected function §[!5§(param1:Texture) : §"z§
      {
         return new §"z§(param1,false);
      }
      
      public function §'!L§() : void
      {
         if(this.§#A§)
         {
            this.§#A§.x = this.§!-§ / §=!^§.§4#§;
            this.§#A§.y = this.§[4§ / §=!^§.§4#§;
         }
      }
      
      public function § d§(param1:§`,§) : void
      {
         this.§&!F§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§^L§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§"z§ = null;
         this.§@N§ += param1;
         var _loc2_:Boolean = false;
         if(this.§&!F§)
         {
            if(this.§&!F§.sprite == null || this.§&!F§.§!P§ == null)
            {
               return false;
            }
            this.§!-§ = this.§&!F§.§7!<§().GetPosition().x;
            this.§[4§ = this.§&!F§.§7!<§().GetPosition().y;
         }
         if(this.§0!'§ > 0 && this.§]!,§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§@N§ / 1000 / (1 / _loc3_)) < this.§]!,§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§]!,§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.§[!5§(_loc6_);
               this.§#A§.§4!=§(0,-1,true);
               this.§#A§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§;!X§;
               _loc8_.y = -_loc5_.pivotY * this.§;!X§;
               _loc8_.scaleX = _loc8_.scaleY = this.§;!X§ * _loc7_;
            }
            else if(this.§&S§)
            {
               this.§#A§.§4!=§(0,-1,true);
            }
         }
         if(this.§4!K§ == §[H§)
         {
            this.§^0§(param1);
            _loc2_ = this.§>!R§(param1);
            if(this.§?p§ > 0 && this.§[4§ > this.§?p§)
            {
               return false;
            }
         }
         else
         {
            this.§^0§(param1);
            _loc2_ = this.§>!R§(param1);
         }
         if(this.§1x§ > 0 && this.§@N§ >= this.§1x§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§'!L§();
         }
         return true;
      }
      
      public function §^0§(param1:Number) : void
      {
         this.§-,§ += param1 * this.§[!T§ / 1000;
         this.§[4§ += this.§-,§ * param1 / 1000;
         this.§!-§ += this.§[![§ * param1 / 1000;
         if(this.§0x§ != 0)
         {
            this.§#A§.rotation += this.§0x§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §>!R§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§4!K§ == §]P§)
         {
            if(this.§1x§ > 0)
            {
               _loc2_ = 1;
               if(this.§for § == §7b§)
               {
                  if((_loc4_ = this.§@N§ / this.§1x§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§5§) / 5000);
               }
               this.§#A§.scaleX = _loc2_;
               this.§#A§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§4!K§ == §[H§)
         {
            if(this.§for § == §'N§)
            {
               this.§#A§.alpha = Math.max(0,Math.min(1,2 * §%=§.§9h§((this.§1x§ - this.§@N§) / this.§1x§,false)));
               _loc5_ = Math.atan2(-this.§-,§,this.§[![§) * (180 / Math.PI);
               this.§#A§.scaleX = Math.max(0.2,this.§#A§.alpha);
               this.§#A§.scaleY = Math.max(0.2,this.§#A§.alpha);
               this.§#A§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§for § == §4!W§ || this.§for § == §6!8§)
            {
               this.§#A§.scaleX = this.§#A§.scaleY = 0.2 + (this.§1x§ - this.§@N§) / this.§1x§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§@b§)
         {
            this.§@b§.clear();
            this.§@b§ = null;
         }
         if(this.§#A§)
         {
            this.§#A§.dispose();
            this.§#A§ = null;
         }
         if(this.§&!F§)
         {
            this.§&!F§ = null;
         }
      }
   }
}
