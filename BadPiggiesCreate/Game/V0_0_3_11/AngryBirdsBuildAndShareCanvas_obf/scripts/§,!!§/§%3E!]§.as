package §,!!§
{
   import § ""§.§%,§;
   import §'x§.§?z§;
   import §1!Y§.§8C§;
   import §1!Y§.DisplayObject;
   import §1!Y§.Sprite;
   import §1!v§.§!Y§;
   import §1!v§.§@%§;
   import §;X§.§1!R§;
   import §[_§.§'!N§;
   import §[_§.§+!P§;
   import §[_§.§2!B§;
   import §[_§.§6G§;
   import §^i§.Texture;
   
   public class §>!]§
   {
      
      public static const §!"5§:int = 0;
      
      public static const §@!q§:int = 1;
      
      public static const §97§:int = 2;
      
      public static const §2!f§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §?!T§:String = "Effect_TrailBig_Bird";
      
      public static const §?![§:String = "Effect_Trail_Sparkle";
      
      public static const §%!J§:String = "Effect_Floating_Score";
      
      public static const §9-§:String = "Effect_Floating_Text";
      
      public static const §>]§:String = "Effect_Explosion_Particle";
      
      public static const §7" §:String = "Effect_Explosion_Core";
      
      public static const §[C§:String = "Effect_Pig_Destruction";
      
      public static const §9"+§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §]!&§:String = "Effect_Bird_Destruction";
      
      public static const §#&§:String = "Effect_Block_Destruction_Particles";
      
      public static const §;%§:String = "Effect_Block_Destruction_Core";
      
      public static const §!E§:int = 0;
      
      public static const §%!8§:int = 1;
      
      public static const §&!6§:int = 2;
      
      public static const §5!?§:int = 3;
      
      public static const §+S§:int = 4;
      
      public static const §^! §:int = 5;
      
      public static const §^Y§:int = 6;
      
      public static const §3F§:int = 7;
      
      public static const §;l§:int = 8;
      
      public static const §4!_§:int = 9;
      
      public static const § 9§:int = 10;
      
      public static const §+!l§:int = 11;
      
      public static const §4",§:int = 12;
      
      public static const §[!"§:int = 13;
      
      public static const § U§:int = 14;
      
      public static const §0m§:int = 15;
      
      public static const §=!a§:int = 16;
      
      public static const §!!a§:int = 17;
      
      public static const §0"0§:int = 18;
      
      public static const §@!L§:Boolean = true;
       
      
      public var §[w§:int;
      
      public var §[!O§:int;
      
      public var §""3§:String;
      
      public var §7!v§:Number;
      
      public var §<!u§:Number;
      
      public var §>F§:Number;
      
      public var §3!u§:Number;
      
      public var §-U§:Number = 0;
      
      public var §"!f§:Number;
      
      public var §,o§:Number;
      
      public var §+"7§:String;
      
      public var §]!Q§:Number = -1;
      
      public var §4$§:int;
      
      public var mX:Number;
      
      public var mY:Number;
      
      private var §3r§:Sprite;
      
      private var §]h§:§!Y§;
      
      private var §%"%§:int;
      
      protected var §`y§:int;
      
      protected var §[N§:Boolean;
      
      private var §5O§:§+!P§;
      
      private var §2!p§:Boolean;
      
      private var §,!A§:§6G§;
      
      private var §3!W§:§2!B§;
      
      private var §'D§:§%,§;
      
      public function §>!]§(param1:§6G§, param2:§2!B§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§3r§ = new Sprite();
         super();
         this.§,!A§ = param1;
         this.§3!W§ = param2;
         this.§""3§ = param3;
         this.§[w§ = param5;
         this.§[!O§ = param4;
         this.§4$§ = param10;
         this.§`y§ = param16;
         this.§[N§ = param17;
         this.§+"7§ = param9;
         this.§7!v§ = 0;
         this.§,o§ = param8;
         this.mX = param6;
         this.mY = param7;
         this.§"!f§ = param15;
         this.§>F§ = param11;
         this.§<!u§ = param12;
         this.§-U§ = param14;
         this.§3!u§ = param13;
         this.createVisuals();
         this.§"!N§();
         if(this.§[w§ == §@!q§)
         {
            this.§]!Q§ = §?z§.§=7§.borders.mBorderGround_B2 + this.§3r§.height * §@%§.§?k§;
         }
      }
      
      public static function §`!9§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §!E§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §&!6§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §%!8§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §^! §;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §+S§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §5!?§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §0"0§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §^Y§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §4!_§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §3F§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §;l§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return § 9§;
         }
         return §+!l§;
      }
      
      public static function §9!`§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §4",§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return § U§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §[!"§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §!!a§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §=!a§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §0m§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §0m§;
         }
         return §=!a§;
      }
      
      public function get §-!y§() : DisplayObject
      {
         return this.§3r§;
      }
      
      public function §5J§(param1:Number, param2:Number) : void
      {
      }
      
      protected function createVisuals() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§+!P§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§""3§)
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
            case §?!T§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §?![§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §[C§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §9"+§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §;%§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §7" §:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §>]§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §%!J§:
            case §9-§:
               if(parseInt(this.§+"7§) == 10000 || parseInt(this.§+"7§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§4$§)
                  {
                     case §4",§:
                        _loc8_ = 16058683;
                        break;
                     case §[!"§:
                        _loc8_ = 55294;
                        break;
                     case §0m§:
                        _loc8_ = 1878602;
                        break;
                     case §!!a§:
                        _loc8_ = 3552822;
                        break;
                     case §=!a§:
                        break;
                     case § U§:
                        _loc8_ = 16705792;
                  }
                  if(parseInt(this.§+"7§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§,!A§.§5m§("NUMBERS");
                  this.§]h§ = new §!Y§(_loc2_,_loc3_,true);
                  this.§]h§.§#"#§(parseInt(this.§+"7§));
                  this.§3r§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§,!A§.§5m§("NUMBERS");
               this.§]h§ = new §!Y§(_loc2_,_loc3_);
               this.§]h§.§#"#§(parseInt(this.§+"7§));
               this.§3r§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §#&§:
               switch(this.§4$§)
               {
                  case §4!_§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case § 9§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §3F§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §;l§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §+!l§:
                     _loc6_ = 1 + _loc1_ % 3;
               }
               if(this.§3r§)
               {
                  this.§3r§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §]!&§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§4$§)
               {
                  case §!E§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §^! §:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §%!8§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §5!?§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §+S§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §&!6§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §0"0§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§3r§)
               {
                  this.§3r§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§""3§,null,this.§`y§,this.§[N§);
         }
      }
      
      protected function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§'!N§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§2!p§ = param4;
         var _loc7_:Number = 1;
         this.§5O§ = this.§,!A§.§5m§(param1);
         if(this.§5O§)
         {
            _loc6_ = (_loc5_ = this.§5O§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            if(!(_loc5_ = this.§3!W§.§+!p§(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
         }
         this.§%"%§ = param3;
         var _loc8_:§8C§ = this.§2V§(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§"!f§ * _loc7_;
         this.§3r§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§"!f§;
            _loc8_.y = -_loc5_.pivotY * this.§"!f§;
         }
         else
         {
            _loc8_.x = -this.§3r§.width / 2;
            _loc8_.y = -this.§3r§.height / 2;
         }
      }
      
      protected function §2V§(param1:Texture) : §8C§
      {
         return new §8C§(param1,false);
      }
      
      public function §"!N§() : void
      {
         if(this.§3r§)
         {
            this.§3r§.x = this.mX / §@%§.§?k§;
            this.§3r§.y = this.mY / §@%§.§?k§;
         }
      }
      
      public function §@p§(param1:§%,§) : void
      {
         this.§'D§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§'!N§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§8C§ = null;
         this.§7!v§ += param1;
         var _loc2_:Boolean = false;
         if(this.§'D§)
         {
            if(this.§'D§.sprite == null || this.§'D§.§switch§ == null)
            {
               return false;
            }
            this.mX = this.§'D§.getBody().GetPosition().x;
            this.mY = this.§'D§.getBody().GetPosition().y;
         }
         if(this.§%"%§ > 0 && this.§5O§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§7!v§ / 1000 / (1 / _loc3_)) < this.§5O§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§5O§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.§2V§(_loc6_);
               this.§3r§.removeChildren(0,-1,true);
               this.§3r§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§"!f§;
               _loc8_.y = -_loc5_.pivotY * this.§"!f§;
               _loc8_.scaleX = _loc8_.scaleY = this.§"!f§ * _loc7_;
            }
            else if(this.§2!p§)
            {
               this.§3r§.removeChildren(0,-1,true);
            }
         }
         if(this.§[w§ == §@!q§)
         {
            this.§5z§(param1);
            _loc2_ = this.§6x§(param1);
            if(this.§]!Q§ > 0 && this.mY > this.§]!Q§)
            {
               return false;
            }
         }
         else
         {
            this.§5z§(param1);
            _loc2_ = this.§6x§(param1);
         }
         if(this.§,o§ > 0 && this.§7!v§ >= this.§,o§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§"!N§();
         }
         return true;
      }
      
      public function §5z§(param1:Number) : void
      {
         this.§<!u§ += param1 * this.§3!u§ / 1000;
         this.mY += this.§<!u§ * param1 / 1000;
         this.mX += this.§>F§ * param1 / 1000;
         if(this.§-U§ != 0)
         {
            this.§3r§.rotation += this.§-U§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §6x§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§[w§ == §!"5§)
         {
            if(this.§,o§ > 0)
            {
               _loc2_ = 1;
               if(this.§""3§ == §9-§)
               {
                  if((_loc4_ = this.§7!v§ / this.§,o§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§+"7§) / 5000);
               }
               this.§3r§.scaleX = _loc2_;
               this.§3r§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§[w§ == §@!q§)
         {
            if(this.§""3§ == §>]§)
            {
               this.§3r§.alpha = Math.max(0,Math.min(1,2 * §1!R§.§+!m§((this.§,o§ - this.§7!v§) / this.§,o§,false)));
               _loc5_ = Math.atan2(-this.§<!u§,this.§>F§) * (180 / Math.PI);
               this.§3r§.scaleX = Math.max(0.2,this.§3r§.alpha);
               this.§3r§.scaleY = Math.max(0.2,this.§3r§.alpha);
               this.§3r§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§""3§ == §]!&§ || this.§""3§ == §;%§)
            {
               this.§3r§.scaleX = this.§3r§.scaleY = 0.2 + (this.§,o§ - this.§7!v§) / this.§,o§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§]h§)
         {
            this.§]h§.clear();
            this.§]h§ = null;
         }
         if(this.§3r§)
         {
            this.§3r§.dispose();
            this.§3r§ = null;
         }
         if(this.§'D§)
         {
            this.§'D§ = null;
         }
      }
   }
}
