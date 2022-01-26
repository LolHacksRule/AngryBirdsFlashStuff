package §?!B§
{
   import § !9§.Texture;
   import §+D§.§"!U§;
   import §+D§.§5!P§;
   import §1!K§.§]h§;
   import §3-§.§1L§;
   import §9!T§.§;!"§;
   import §[=§.§@!#§;
   import §[=§.DisplayObject;
   import §[=§.Sprite;
   import §`!H§.§3!c§;
   import §`!H§.§5f§;
   import §`!H§.§9;§;
   import §`!H§.§@!E§;
   
   public class §^!U§
   {
      
      public static const §^H§:int = 0;
      
      public static const §&6§:int = 1;
      
      public static const §>!Y§:int = 2;
      
      public static const §=L§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §3C§:String = "Effect_TrailBig_Bird";
      
      public static const §,p§:String = "Effect_Trail_Sparkle";
      
      public static const §`[§:String = "Effect_Floating_Score";
      
      public static const §-!9§:String = "Effect_Floating_Text";
      
      public static const §6!J§:String = "Effect_Explosion_Particle";
      
      public static const §!W§:String = "Effect_Explosion_Core";
      
      public static const §^!#§:String = "Effect_Pig_Destruction";
      
      public static const §'!d§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §5!L§:String = "Effect_Bird_Destruction";
      
      public static const §`!#§:String = "Effect_Block_Destruction_Particles";
      
      public static const §4>§:String = "Effect_Block_Destruction_Core";
      
      public static const §+>§:int = 0;
      
      public static const §#!b§:int = 1;
      
      public static const §@?§:int = 2;
      
      public static const §"!T§:int = 3;
      
      public static const §0'§:int = 4;
      
      public static const §3!C§:int = 5;
      
      public static const §#!%§:int = 6;
      
      public static const §@B§:int = 7;
      
      public static const §-!]§:int = 8;
      
      public static const § &§:int = 9;
      
      public static const §[D§:int = 10;
      
      public static const §=_§:int = 11;
      
      public static const §"%§:int = 12;
      
      public static const §@_§:int = 13;
      
      public static const §[!b§:int = 14;
      
      public static const §=!Y§:int = 15;
      
      public static const §++§:int = 16;
      
      public static const §6Y§:int = 17;
      
      public static const §0W§:int = 18;
      
      public static const §>T§:Boolean = true;
       
      
      public var §2A§:int;
      
      public var §+!?§:int;
      
      public var §0S§:String;
      
      public var §]!1§:Number;
      
      public var §#C§:Number;
      
      public var §"!L§:Number;
      
      public var §9g§:Number;
      
      public var §>1§:Number = 0;
      
      public var §!!4§:Number;
      
      public var §4!%§:Number;
      
      public var §6!V§:String;
      
      public var §9B§:Number = -1;
      
      public var §3p§:int;
      
      public var §<O§:Number;
      
      public var §92§:Number;
      
      private var §]x§:Sprite;
      
      private var §+!a§:§"!U§;
      
      private var §3!P§:int;
      
      protected var §5T§:int;
      
      protected var §]!&§:Boolean;
      
      private var §9!S§:§3!c§;
      
      private var §&L§:Boolean;
      
      private var §#!I§:§9;§;
      
      private var §6!;§:§@!E§;
      
      private var §%!,§:§;!"§;
      
      public function §^!U§(param1:§9;§, param2:§@!E§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§]x§ = new Sprite();
         super();
         this.§#!I§ = param1;
         this.§6!;§ = param2;
         this.§0S§ = param3;
         this.§2A§ = param5;
         this.§+!?§ = param4;
         this.§3p§ = param10;
         this.§5T§ = param16;
         this.§]!&§ = param17;
         this.§6!V§ = param9;
         this.§]!1§ = 0;
         this.§4!%§ = param8;
         this.§<O§ = param6;
         this.§92§ = param7;
         this.§!!4§ = param15;
         this.§"!L§ = param11;
         this.§#C§ = param12;
         this.§>1§ = param14;
         this.§9g§ = param13;
         this.createVisuals();
         this.§8<§();
         if(this.§2A§ == §&6§)
         {
            this.§9B§ = §1L§.§"f§.§0r§.§6E§ + this.§]x§.height * §5!P§.§>M§;
         }
      }
      
      public static function §1!2§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §+>§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §@?§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §#!b§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §3!C§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §0'§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §"!T§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §0W§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §#!%§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return § &§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §@B§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §-!]§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §[D§;
         }
         return §=_§;
      }
      
      public static function §^!W§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §"%§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §[!b§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §@_§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §6Y§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §++§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §=!Y§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §=!Y§;
         }
         return §++§;
      }
      
      public function get §+!J§() : DisplayObject
      {
         return this.§]x§;
      }
      
      public function §^!Q§(param1:Number, param2:Number) : void
      {
      }
      
      protected function createVisuals() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§3!c§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§0S§)
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
            case §3C§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §,p§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §^!#§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §'!d§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §4>§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §!W§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §6!J§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §`[§:
            case §-!9§:
               if(parseInt(this.§6!V§) == 10000 || parseInt(this.§6!V§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§3p§)
                  {
                     case §"%§:
                        _loc8_ = 16058683;
                        break;
                     case §@_§:
                        _loc8_ = 55294;
                        break;
                     case §=!Y§:
                        _loc8_ = 1878602;
                        break;
                     case §6Y§:
                        _loc8_ = 3552822;
                        break;
                     case §++§:
                        break;
                     case §[!b§:
                        _loc8_ = 16705792;
                  }
                  if(parseInt(this.§6!V§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§#!I§.§3![§("NUMBERS");
                  this.§+!a§ = new §"!U§(_loc2_,_loc3_,true);
                  this.§+!a§.§@O§(parseInt(this.§6!V§));
                  this.§]x§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§#!I§.§3![§("NUMBERS");
               this.§+!a§ = new §"!U§(_loc2_,_loc3_);
               this.§+!a§.§@O§(parseInt(this.§6!V§));
               this.§]x§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §`!#§:
               switch(this.§3p§)
               {
                  case § &§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §[D§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §@B§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §-!]§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §=_§:
                     _loc6_ = 1 + _loc1_ % 3;
               }
               if(this.§]x§)
               {
                  this.§]x§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §5!L§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§3p§)
               {
                  case §+>§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §3!C§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §#!b§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §"!T§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §0'§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §@?§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §0W§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§]x§)
               {
                  this.§]x§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§0S§,null,this.§5T§,this.§]!&§);
         }
      }
      
      protected function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§5f§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§&L§ = param4;
         var _loc7_:Number = 1;
         this.§9!S§ = this.§#!I§.§3![§(param1);
         if(this.§9!S§)
         {
            _loc6_ = (_loc5_ = this.§9!S§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            if(!(_loc5_ = this.§6!;§.§;X§(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
         }
         this.§3!P§ = param3;
         var _loc8_:§@!#§ = this.createParticleImage(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§!!4§ * _loc7_;
         this.§]x§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§!!4§;
            _loc8_.y = -_loc5_.pivotY * this.§!!4§;
         }
         else
         {
            _loc8_.x = -this.§]x§.width / 2;
            _loc8_.y = -this.§]x§.height / 2;
         }
      }
      
      protected function createParticleImage(param1:Texture) : §@!#§
      {
         return new §@!#§(param1,false);
      }
      
      public function §8<§() : void
      {
         if(this.§]x§)
         {
            this.§]x§.x = this.§<O§ / §5!P§.§>M§;
            this.§]x§.y = this.§92§ / §5!P§.§>M§;
         }
      }
      
      public function §0g§(param1:§;!"§) : void
      {
         this.§%!,§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§5f§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§@!#§ = null;
         this.§]!1§ += param1;
         var _loc2_:Boolean = false;
         if(this.§%!,§)
         {
            if(this.§%!,§.sprite == null || this.§%!,§.§+R§ == null)
            {
               return false;
            }
            this.§<O§ = this.§%!,§.§<k§().GetPosition().x;
            this.§92§ = this.§%!,§.§<k§().GetPosition().y;
         }
         if(this.§3!P§ > 0 && this.§9!S§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§]!1§ / 1000 / (1 / _loc3_)) < this.§9!S§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§9!S§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.createParticleImage(_loc6_);
               this.§]x§.§`!!§(0,-1,true);
               this.§]x§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§!!4§;
               _loc8_.y = -_loc5_.pivotY * this.§!!4§;
               _loc8_.scaleX = _loc8_.scaleY = this.§!!4§ * _loc7_;
            }
            else if(this.§&L§)
            {
               this.§]x§.§`!!§(0,-1,true);
            }
         }
         if(this.§2A§ == §&6§)
         {
            this.§1a§(param1);
            _loc2_ = this.updateParticles(param1);
            if(this.§9B§ > 0 && this.§92§ > this.§9B§)
            {
               return false;
            }
         }
         else
         {
            this.§1a§(param1);
            _loc2_ = this.updateParticles(param1);
         }
         if(this.§4!%§ > 0 && this.§]!1§ >= this.§4!%§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§8<§();
         }
         return true;
      }
      
      public function §1a§(param1:Number) : void
      {
         this.§#C§ += param1 * this.§9g§ / 1000;
         this.§92§ += this.§#C§ * param1 / 1000;
         this.§<O§ += this.§"!L§ * param1 / 1000;
         if(this.§>1§ != 0)
         {
            this.§]x§.rotation += this.§>1§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function updateParticles(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§2A§ == §^H§)
         {
            if(this.§4!%§ > 0)
            {
               _loc2_ = 1;
               if(this.§0S§ == §-!9§)
               {
                  if((_loc4_ = this.§]!1§ / this.§4!%§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§6!V§) / 5000);
               }
               this.§]x§.scaleX = _loc2_;
               this.§]x§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§2A§ == §&6§)
         {
            if(this.§0S§ == §6!J§)
            {
               this.§]x§.alpha = Math.max(0,Math.min(1,2 * §]h§.§47§((this.§4!%§ - this.§]!1§) / this.§4!%§,false)));
               _loc5_ = Math.atan2(-this.§#C§,this.§"!L§) * (180 / Math.PI);
               this.§]x§.scaleX = Math.max(0.2,this.§]x§.alpha);
               this.§]x§.scaleY = Math.max(0.2,this.§]x§.alpha);
               this.§]x§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§0S§ == §5!L§ || this.§0S§ == §4>§)
            {
               this.§]x§.scaleX = this.§]x§.scaleY = 0.2 + (this.§4!%§ - this.§]!1§) / this.§4!%§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§+!a§)
         {
            this.§+!a§.clear();
            this.§+!a§ = null;
         }
         if(this.§]x§)
         {
            this.§]x§.dispose();
            this.§]x§ = null;
         }
         if(this.§%!,§)
         {
            this.§%!,§ = null;
         }
      }
   }
}
