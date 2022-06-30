package §,!A§
{
   import § !$§.§>C§;
   import §!!S§.Texture;
   import §&!b§.§ !+§;
   import §+!]§.§!,§;
   import §+!]§.§+!=§;
   import §+!]§.§0!B§;
   import §+!]§.§6H§;
   import §6!;§.§!>§;
   import §6!;§.DisplayObject;
   import §6!;§.Sprite;
   import §8O§.§&#§;
   import §9!'§.§0!%§;
   import §9!'§.§;`§;
   
   public class §-q§
   {
      
      public static const §!T§:int = 0;
      
      public static const §5[§:int = 1;
      
      public static const §,!f§:int = 2;
      
      public static const §#!2§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §=%§:String = "Effect_TrailBig_Bird";
      
      public static const §0k§:String = "Effect_Trail_Sparkle";
      
      public static const §3!L§:String = "Effect_Floating_Score";
      
      public static const §4!b§:String = "Effect_Floating_Text";
      
      public static const §=!2§:String = "Effect_Explosion_Particle";
      
      public static const §0!T§:String = "Effect_Explosion_Core";
      
      public static const §-!L§:String = "Effect_Pig_Destruction";
      
      public static const §+%§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §]!^§:String = "Effect_Bird_Destruction";
      
      public static const §-,§:String = "Effect_Block_Destruction_Particles";
      
      public static const §3!!§:String = "Effect_Block_Destruction_Core";
      
      public static const §%u§:int = 0;
      
      public static const §5!@§:int = 1;
      
      public static const § a§:int = 2;
      
      public static const §8!V§:int = 3;
      
      public static const §;!B§:int = 4;
      
      public static const §=S§:int = 5;
      
      public static const §]Z§:int = 6;
      
      public static const §?W§:int = 7;
      
      public static const §>!R§:int = 8;
      
      public static const §9v§:int = 9;
      
      public static const §3E§:int = 10;
      
      public static const §5t§:int = 11;
      
      public static const §2!E§:int = 12;
      
      public static const §<!H§:int = 13;
      
      public static const §4!I§:int = 14;
      
      public static const §-!T§:int = 15;
      
      public static const §>!E§:int = 16;
      
      public static const §%0§:int = 17;
      
      public static const §6$§:int = 18;
      
      public static const §&Y§:int = 19;
      
      public static const §@Y§:Boolean = true;
       
      
      public var §>!c§:int;
      
      public var §6S§:int;
      
      public var §3>§:String;
      
      public var §5!;§:Number;
      
      public var §;!S§:Number;
      
      public var §4!J§:Number;
      
      public var §1!Z§:Number;
      
      public var §+U§:Number = 0;
      
      public var §8=§:Number;
      
      public var §3j§:Number;
      
      public var §3p§:String;
      
      public var §1!I§:Number = -1;
      
      public var §'!<§:int;
      
      public var §5T§:Number;
      
      public var §![§:Number;
      
      protected var §9-§:Sprite;
      
      private var §[u§:§;`§;
      
      private var §0!U§:int;
      
      protected var §<G§:int;
      
      protected var §4!Z§:Boolean;
      
      private var §&b§:§6H§;
      
      private var §1G§:Boolean;
      
      private var §[&§:§0!B§;
      
      private var §[G§:§!,§;
      
      private var §-b§:§>C§;
      
      public function §-q§(param1:§0!B§, param2:§!,§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§9-§ = new Sprite();
         super();
         this.§[&§ = param1;
         this.§[G§ = param2;
         this.§3>§ = param3;
         this.§>!c§ = param5;
         this.§6S§ = param4;
         this.§'!<§ = param10;
         this.§<G§ = param16;
         this.§4!Z§ = param17;
         this.§3p§ = param9;
         this.§5!;§ = 0;
         this.§3j§ = param8;
         this.§5T§ = param6;
         this.§![§ = param7;
         this.§8=§ = param15;
         this.§4!J§ = param11;
         this.§;!S§ = param12;
         this.§+U§ = param14;
         this.§1!Z§ = param13;
         this.createVisuals();
         this.§>4§();
         if(this.§>!c§ == §5[§)
         {
            this.§1!I§ = §&#§.§3!D§.§%!E§.§3m§ + this.§9-§.height * §0!%§.§"m§;
         }
      }
      
      public static function §]8§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §%u§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return § a§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §5!@§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §=S§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §;!B§;
         }
         if(param1.toUpperCase().indexOf("BIRD_ORANGE") >= 0)
         {
            return § a§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §8!V§;
         }
         if(param1.toUpperCase().indexOf("BIRD_CHRISTMAS") >= 0)
         {
            return §=S§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §6$§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §]Z§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §9v§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §?W§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §>!R§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §3E§;
         }
         return §5t§;
      }
      
      public static function §^v§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §2!E§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §4!I§;
         }
         if(param1.toUpperCase().indexOf("BIRD_ORANGE") >= 0)
         {
            return §&Y§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §<!H§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §%0§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §>!E§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §-!T§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §-!T§;
         }
         return §>!E§;
      }
      
      public function get §`!Y§() : DisplayObject
      {
         return this.§9-§;
      }
      
      public function §8&§(param1:Number, param2:Number) : void
      {
      }
      
      protected function createVisuals() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§6H§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§3>§)
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
            case §=%§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §0k§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §-!L§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §+%§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §3!!§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §0!T§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §=!2§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §3!L§:
            case §4!b§:
               if(parseInt(this.§3p§) == 10000 || parseInt(this.§3p§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§'!<§)
                  {
                     case §2!E§:
                        _loc8_ = 16058683;
                        break;
                     case §<!H§:
                        _loc8_ = 55294;
                        break;
                     case §-!T§:
                        _loc8_ = 1878602;
                        break;
                     case §%0§:
                        _loc8_ = 3552822;
                        break;
                     case §>!E§:
                        break;
                     case §4!I§:
                        _loc8_ = 16705792;
                        break;
                     case §&Y§:
                        _loc8_ = 16753152;
                  }
                  if(parseInt(this.§3p§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§[&§.§>n§("NUMBERS");
                  this.§[u§ = new §;`§(_loc2_,_loc3_,true);
                  this.§[u§.§4!,§(parseInt(this.§3p§));
                  this.§9-§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§[&§.§>n§("NUMBERS");
               this.§[u§ = new §;`§(_loc2_,_loc3_);
               this.§[u§.§4!,§(parseInt(this.§3p§));
               this.§9-§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §-,§:
               switch(this.§'!<§)
               {
                  case §9v§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §3E§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §?W§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §>!R§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §5t§:
                     _loc6_ = 1 + _loc1_ % 3;
               }
               if(this.§9-§)
               {
                  this.§9-§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §]!^§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§'!<§)
               {
                  case §%u§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §=S§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §5!@§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §8!V§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §;!B§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case § a§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §6$§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§9-§)
               {
                  this.§9-§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§3>§,null,this.§<G§,this.§4!Z§);
         }
      }
      
      protected function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§+!=§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§1G§ = param4;
         var _loc7_:Number = 1;
         this.§&b§ = this.§[&§.§>n§(param1);
         if(this.§&b§)
         {
            _loc6_ = (_loc5_ = this.§&b§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            if(!(_loc5_ = this.§[G§.§#P§(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
         }
         this.§0!U§ = param3;
         var _loc8_:§!>§ = this.createParticleImage(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§8=§ * _loc7_;
         this.§9-§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§8=§;
            _loc8_.y = -_loc5_.pivotY * this.§8=§;
         }
         else
         {
            _loc8_.x = -this.§9-§.width / 2;
            _loc8_.y = -this.§9-§.height / 2;
         }
      }
      
      protected function createParticleImage(param1:Texture) : §!>§
      {
         return new §!>§(param1,false);
      }
      
      public function §>4§() : void
      {
         if(this.§9-§)
         {
            this.§9-§.x = this.§5T§ / §0!%§.§"m§;
            this.§9-§.y = this.§![§ / §0!%§.§"m§;
         }
      }
      
      public function §<H§(param1:§>C§) : void
      {
         this.§-b§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§+!=§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§!>§ = null;
         this.§5!;§ += param1;
         var _loc2_:Boolean = false;
         if(this.§-b§)
         {
            if(this.§-b§.sprite == null || this.§-b§.§]1§ == null)
            {
               return false;
            }
            this.§5T§ = this.§-b§.§]!2§().GetPosition().x;
            this.§![§ = this.§-b§.§]!2§().GetPosition().y;
         }
         if(this.§0!U§ > 0 && this.§&b§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§5!;§ / 1000 / (1 / _loc3_)) < this.§&b§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§&b§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.createParticleImage(_loc6_);
               this.§9-§.§,N§(0,-1,true);
               this.§9-§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§8=§;
               _loc8_.y = -_loc5_.pivotY * this.§8=§;
               _loc8_.scaleX = _loc8_.scaleY = this.§8=§ * _loc7_;
            }
            else if(this.§1G§)
            {
               this.§9-§.§,N§(0,-1,true);
            }
         }
         if(this.§>!c§ == §5[§)
         {
            this.§@!$§(param1);
            _loc2_ = this.updateParticles(param1);
            if(this.§1!I§ > 0 && this.§![§ > this.§1!I§)
            {
               return false;
            }
         }
         else
         {
            this.§@!$§(param1);
            _loc2_ = this.updateParticles(param1);
         }
         if(this.§3j§ > 0 && this.§5!;§ >= this.§3j§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§>4§();
         }
         return true;
      }
      
      public function §@!$§(param1:Number) : void
      {
         this.§;!S§ += param1 * this.§1!Z§ / 1000;
         this.§![§ += this.§;!S§ * param1 / 1000;
         this.§5T§ += this.§4!J§ * param1 / 1000;
         if(this.§+U§ != 0)
         {
            this.§9-§.rotation += this.§+U§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function updateParticles(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§>!c§ == §!T§)
         {
            if(this.§3j§ > 0)
            {
               _loc2_ = 1;
               if(this.§3>§ == §4!b§)
               {
                  if((_loc4_ = this.§5!;§ / this.§3j§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§3p§) / 5000);
               }
               this.§9-§.scaleX = _loc2_;
               this.§9-§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§>!c§ == §5[§)
         {
            if(this.§3>§ == §=!2§)
            {
               this.§9-§.alpha = Math.max(0,Math.min(1,2 * § !+§.§?%§((this.§3j§ - this.§5!;§) / this.§3j§,false)));
               _loc5_ = Math.atan2(-this.§;!S§,this.§4!J§) * (180 / Math.PI);
               this.§9-§.scaleX = Math.max(0.2,this.§9-§.alpha);
               this.§9-§.scaleY = Math.max(0.2,this.§9-§.alpha);
               this.§9-§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§3>§ == §]!^§ || this.§3>§ == §3!!§)
            {
               this.§9-§.scaleX = this.§9-§.scaleY = 0.2 + (this.§3j§ - this.§5!;§) / this.§3j§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§[u§)
         {
            this.§[u§.clear();
            this.§[u§ = null;
         }
         if(this.§9-§)
         {
            this.§9-§.dispose();
            this.§9-§ = null;
         }
         if(this.§-b§)
         {
            this.§-b§ = null;
         }
      }
   }
}
