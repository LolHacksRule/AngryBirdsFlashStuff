package § "?§
{
   import §%c§.§=!X§;
   import §&"5§.§+2§;
   import §&"5§.§1!A§;
   import §&"5§.§6!L§;
   import §&"5§.§7!P§;
   import §+!o§.§]"5§;
   import §5!V§.§!w§;
   import §5!V§.§%!h§;
   import §7R§.Texture;
   import §=!M§.§-!4§;
   import §default§.§=!Z§;
   import §default§.DisplayObject;
   import §default§.Sprite;
   
   public class §&!>§
   {
      
      public static const §,"+§:int = 0;
      
      public static const §&W§:int = 1;
      
      public static const §0!+§:int = 2;
      
      public static const §?"0§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §5"5§:String = "Effect_TrailBig_Bird";
      
      public static const §`V§:String = "Effect_Trail_Sparkle";
      
      public static const §%"%§:String = "Effect_Floating_Score";
      
      public static const §^"%§:String = "Effect_Floating_Text";
      
      public static const §?!A§:String = "Effect_Explosion_Particle";
      
      public static const §1!F§:String = "Effect_Explosion_Core";
      
      public static const §;!E§:String = "Effect_Pig_Destruction";
      
      public static const §6!3§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §]!c§:String = "Effect_Bird_Destruction";
      
      public static const §<!Y§:String = "Effect_Block_Destruction_Particles";
      
      public static const §^!R§:String = "Effect_Block_Destruction_Core";
      
      public static const §`!g§:int = 0;
      
      public static const §3"!§:int = 1;
      
      public static const §7+§:int = 2;
      
      public static const §;!z§:int = 3;
      
      public static const §^#§:int = 4;
      
      public static const §9w§:int = 5;
      
      public static const §4%§:int = 6;
      
      public static const §0C§:int = 7;
      
      public static const §?v§:int = 8;
      
      public static const §3Z§:int = 9;
      
      public static const §]!O§:int = 10;
      
      public static const §-]§:int = 11;
      
      public static const §2"8§:int = 12;
      
      public static const §+M§:int = 13;
      
      public static const §1O§:int = 14;
      
      public static const §#!@§:int = 15;
      
      public static const §8"+§:int = 16;
      
      public static const §>!"§:int = 17;
      
      public static const §'"'§:int = 18;
      
      public static const §<"'§:int = 19;
      
      public static const §"!6§:Boolean = true;
       
      
      public var §1!t§:int;
      
      public var §>"'§:int;
      
      public var §?"7§:String;
      
      public var §6#§:Number;
      
      public var §6W§:Number;
      
      public var §6+§:Number;
      
      public var §#!m§:Number;
      
      public var §]$§:Number = 0;
      
      public var §?a§:Number;
      
      public var §^!F§:Number;
      
      public var §!!N§:String;
      
      public var §0!z§:Number = -1;
      
      public var §4! §:int;
      
      public var mX:Number;
      
      public var mY:Number;
      
      private var §5" §:Sprite;
      
      private var §+N§:§%!h§;
      
      private var §=! §:int;
      
      protected var §7@§:int;
      
      protected var §]a§:Boolean;
      
      private var §<!1§:§+2§;
      
      private var §4!l§:Boolean;
      
      private var §7!a§:§1!A§;
      
      private var §2"!§:§7!P§;
      
      private var §1"0§:§]"5§;
      
      public function §&!>§(param1:§1!A§, param2:§7!P§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§5" § = new Sprite();
         super();
         this.§7!a§ = param1;
         this.§2"!§ = param2;
         this.§?"7§ = param3;
         this.§1!t§ = param5;
         this.§>"'§ = param4;
         this.§4! § = param10;
         this.§7@§ = param16;
         this.§]a§ = param17;
         this.§!!N§ = param9;
         this.§6#§ = 0;
         this.§^!F§ = param8;
         this.mX = param6;
         this.mY = param7;
         this.§?a§ = param15;
         this.§6+§ = param11;
         this.§6W§ = param12;
         this.§]$§ = param14;
         this.§#!m§ = param13;
         this.createVisuals();
         this.§@O§();
         if(this.§1!t§ == §&W§)
         {
            this.§0!z§ = §=!X§.§!'§.borders.mBorderGround_B2 + this.§5" §.height * §!w§.§4!-§;
         }
      }
      
      public static function §6H§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §`!g§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §7+§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §3"!§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §9w§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §^#§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §;!z§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §'"'§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §4%§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §3Z§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §0C§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §?v§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §]!O§;
         }
         return §-]§;
      }
      
      public static function §6[§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §2"8§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §1O§;
         }
         if(param1.toUpperCase().indexOf("BIRD_ORANGE") >= 0)
         {
            return §<"'§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §+M§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §>!"§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §8"+§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §#!@§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §#!@§;
         }
         return §8"+§;
      }
      
      public function get §;!1§() : DisplayObject
      {
         return this.§5" §;
      }
      
      public function §@!-§(param1:Number, param2:Number) : void
      {
      }
      
      protected function createVisuals() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§+2§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§?"7§)
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
            case §5"5§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §`V§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §;!E§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §6!3§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §^!R§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §1!F§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §?!A§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §%"%§:
            case §^"%§:
               if(parseInt(this.§!!N§) == 10000 || parseInt(this.§!!N§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§4! §)
                  {
                     case §2"8§:
                        _loc8_ = 16058683;
                        break;
                     case §+M§:
                        _loc8_ = 55294;
                        break;
                     case §#!@§:
                        _loc8_ = 1878602;
                        break;
                     case §>!"§:
                        _loc8_ = 3552822;
                        break;
                     case §8"+§:
                        break;
                     case §1O§:
                        _loc8_ = 16705792;
                        break;
                     case §<"'§:
                        _loc8_ = 16753152;
                  }
                  if(parseInt(this.§!!N§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§7!a§.§@7§("NUMBERS");
                  this.§+N§ = new §%!h§(_loc2_,_loc3_,true);
                  this.§+N§.§!!=§(parseInt(this.§!!N§));
                  this.§5" §.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
               }
               else
               {
                  _loc2_ = new Sprite();
                  _loc3_ = this.§7!a§.§@7§("NUMBERS");
                  this.§+N§ = new §%!h§(_loc2_,_loc3_);
                  this.§+N§.§!!=§(parseInt(this.§!!N§));
                  this.§5" §.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
               }
               break;
            case §<!Y§:
               switch(this.§4! §)
               {
                  case §3Z§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §]!O§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §0C§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §?v§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §-]§:
                     _loc6_ = 1 + _loc1_ % 3;
               }
               if(this.§5" §)
               {
                  this.§5" §.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §]!c§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§4! §)
               {
                  case §`!g§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §9w§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §3"!§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §;!z§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §^#§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §7+§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §'"'§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§5" §)
               {
                  this.§5" §.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            default:
               this.createParticle(this.§?"7§,null,this.§7@§,this.§]a§);
         }
      }
      
      protected function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§6!L§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§4!l§ = param4;
         var _loc7_:Number = 1;
         this.§<!1§ = this.§7!a§.§@7§(param1);
         if(this.§<!1§)
         {
            _loc6_ = (_loc5_ = this.§<!1§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            if(!(_loc5_ = this.§2"!§.§12§(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
         }
         this.§=! § = param3;
         var _loc8_:§=!Z§ = this.§8l§(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§?a§ * _loc7_;
         this.§5" §.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§?a§;
            _loc8_.y = -_loc5_.pivotY * this.§?a§;
         }
         else
         {
            _loc8_.x = -this.§5" §.width / 2;
            _loc8_.y = -this.§5" §.height / 2;
         }
      }
      
      protected function §8l§(param1:Texture) : §=!Z§
      {
         return new §=!Z§(param1,false);
      }
      
      public function §@O§() : void
      {
         if(this.§5" §)
         {
            this.§5" §.x = this.mX / §!w§.§4!-§;
            this.§5" §.y = this.mY / §!w§.§4!-§;
         }
      }
      
      public function §&!"§(param1:§]"5§) : void
      {
         this.§1"0§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§6!L§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§=!Z§ = null;
         this.§6#§ += param1;
         var _loc2_:Boolean = false;
         if(this.§1"0§)
         {
            if(this.§1"0§.sprite == null || this.§1"0§.§+!y§ == null)
            {
               return false;
            }
            this.mX = this.§1"0§.getBody().GetPosition().x;
            this.mY = this.§1"0§.getBody().GetPosition().y;
         }
         if(this.§=! § > 0 && this.§<!1§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§6#§ / 1000 / (1 / _loc3_)) < this.§<!1§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§<!1§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.§8l§(_loc6_);
               this.§5" §.removeChildren(0,-1,true);
               this.§5" §.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§?a§;
               _loc8_.y = -_loc5_.pivotY * this.§?a§;
               _loc8_.scaleX = _loc8_.scaleY = this.§?a§ * _loc7_;
            }
            else if(this.§4!l§)
            {
               this.§5" §.removeChildren(0,-1,true);
            }
         }
         if(this.§1!t§ == §&W§)
         {
            this.§4,§(param1);
            _loc2_ = this.§;"2§(param1);
            if(this.§0!z§ > 0 && this.mY > this.§0!z§)
            {
               return false;
            }
         }
         else
         {
            this.§4,§(param1);
            _loc2_ = this.§;"2§(param1);
         }
         if(this.§^!F§ > 0 && this.§6#§ >= this.§^!F§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§@O§();
         }
         return true;
      }
      
      public function §4,§(param1:Number) : void
      {
         this.§6W§ += param1 * this.§#!m§ / 1000;
         this.mY += this.§6W§ * param1 / 1000;
         this.mX += this.§6+§ * param1 / 1000;
         if(this.§]$§ != 0)
         {
            this.§5" §.rotation += this.§]$§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §;"2§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§1!t§ == §,"+§)
         {
            if(this.§^!F§ > 0)
            {
               _loc2_ = 1;
               if(this.§?"7§ == §^"%§)
               {
                  if((_loc4_ = this.§6#§ / this.§^!F§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§!!N§) / 5000);
               }
               this.§5" §.scaleX = _loc2_;
               this.§5" §.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§1!t§ == §&W§)
         {
            if(this.§?"7§ == §?!A§)
            {
               this.§5" §.alpha = Math.max(0,Math.min(1,2 * §-!4§.§66§((this.§^!F§ - this.§6#§) / this.§^!F§,false)));
               _loc5_ = Math.atan2(-this.§6W§,this.§6+§) * (180 / Math.PI);
               this.§5" §.scaleX = Math.max(0.2,this.§5" §.alpha);
               this.§5" §.scaleY = Math.max(0.2,this.§5" §.alpha);
               this.§5" §.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§?"7§ == §]!c§ || this.§?"7§ == §^!R§)
            {
               this.§5" §.scaleX = this.§5" §.scaleY = 0.2 + (this.§^!F§ - this.§6#§) / this.§^!F§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§+N§)
         {
            this.§+N§.clear();
            this.§+N§ = null;
         }
         if(this.§5" §)
         {
            this.§5" §.dispose();
            this.§5" § = null;
         }
         if(this.§1"0§)
         {
            this.§1"0§ = null;
         }
      }
   }
}
