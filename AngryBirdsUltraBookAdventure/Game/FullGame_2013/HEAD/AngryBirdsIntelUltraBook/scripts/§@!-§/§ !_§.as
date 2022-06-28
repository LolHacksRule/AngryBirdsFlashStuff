package §@!-§
{
   import §#!,§.§0!b§;
   import §#!,§.DisplayObject;
   import §#!,§.Sprite;
   import §,!7§.§ H§;
   import §,!7§.Animation;
   import §,!7§.AnimationManager;
   import §,!7§.TextureManager;
   import §6!!§.LevelObject;
   import §6!J§.Texture;
   import §<u§.§!t§;
   import §?!Y§.§`S§;
   import §]!@§.LevelMain;
   import §]!@§.§]!1§;
   
   public class § !_§
   {
      
      public static const §?D§:int = 0;
      
      public static const §0o§:int = 1;
      
      public static const §=_§:int = 2;
      
      public static const §'!R§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §%!!§:String = "Effect_TrailBig_Bird";
      
      public static const §,D§:String = "Effect_Trail_Sparkle";
      
      public static const §"A§:String = "Effect_Floating_Score";
      
      public static const §<x§:String = "Effect_Floating_Text";
      
      public static const §8W§:String = "Effect_Explosion_Particle";
      
      public static const §]!e§:String = "Effect_Explosion_Core";
      
      public static const §9y§:String = "Effect_Pig_Destruction";
      
      public static const §59§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §8,§:String = "Effect_Bird_Destruction";
      
      public static const §4b§:String = "Effect_Block_Destruction_Particles";
      
      public static const §3!d§:String = "Effect_Block_Destruction_Core";
      
      public static const §>N§:int = 0;
      
      public static const §+!G§:int = 1;
      
      public static const §-,§:int = 2;
      
      public static const §`A§:int = 3;
      
      public static const §%!3§:int = 4;
      
      public static const §4l§:int = 5;
      
      public static const §<!W§:int = 6;
      
      public static const §;!O§:int = 7;
      
      public static const §]4§:int = 8;
      
      public static const §,p§:int = 9;
      
      public static const §5!F§:int = 10;
      
      public static const §`!9§:int = 11;
      
      public static const § i§:int = 12;
      
      public static const §%!J§:int = 13;
      
      public static const §5!!§:int = 14;
      
      public static const §`;§:int = 15;
      
      public static const §!M§:int = 16;
      
      public static const §&I§:int = 17;
      
      public static const §!!R§:int = 18;
      
      public static const §+!W§:Boolean = true;
       
      
      public var §"@§:int;
      
      public var §3!+§:int;
      
      public var §]!$§:String;
      
      public var §,F§:Number;
      
      public var §7!j§:Number;
      
      public var §&#§:Number;
      
      public var §+[§:Number;
      
      public var §&Z§:Number = 0;
      
      public var §?C§:Number;
      
      public var §1W§:Number;
      
      public var §!!Y§:String;
      
      public var §#!^§:Number = -1;
      
      public var §&!@§:int;
      
      public var §1X§:Number;
      
      public var §`J§:Number;
      
      private var §+G§:Sprite;
      
      private var §],§:§]!1§;
      
      private var §8D§:int;
      
      protected var §2W§:int;
      
      protected var §,i§:Boolean;
      
      private var §;]§:Animation;
      
      private var §'!4§:Boolean;
      
      private var §,!%§:AnimationManager;
      
      private var §7!`§:TextureManager;
      
      private var §-!_§:LevelObject;
      
      public function § !_§(param1:AnimationManager, param2:TextureManager, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§+G§ = new Sprite();
         super();
         this.§,!%§ = param1;
         this.§7!`§ = param2;
         this.§]!$§ = param3;
         this.§"@§ = param5;
         this.§3!+§ = param4;
         this.§&!@§ = param10;
         this.§2W§ = param16;
         this.§,i§ = param17;
         this.§!!Y§ = param9;
         this.§,F§ = 0;
         this.§1W§ = param8;
         this.§1X§ = param6;
         this.§`J§ = param7;
         this.§?C§ = param15;
         this.§&#§ = param11;
         this.§7!j§ = param12;
         this.§&Z§ = param14;
         this.§+[§ = param13;
         this.createVisuals();
         this.§@!F§();
         if(this.§"@§ == §0o§)
         {
            this.§#!^§ = §`S§.§[o§.§!![§.§-!J§ + this.§+G§.height * LevelMain.§@!d§;
         }
      }
      
      public static function § do§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §>N§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §-,§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §+!G§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §4l§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §%!3§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §`A§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §!!R§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §<!W§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §,p§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §;!O§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §]4§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §5!F§;
         }
         return §`!9§;
      }
      
      public static function §5U§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return § i§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §5!!§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §%!J§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §&I§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §!M§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §`;§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §`;§;
         }
         return §!M§;
      }
      
      public function get displayObject() : DisplayObject
      {
         return this.§+G§;
      }
      
      public function §3!b§(param1:Number, param2:Number) : void
      {
      }
      
      protected function createVisuals() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:Animation = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§]!$§)
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
            case §%!!§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §,D§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §9y§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §59§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §3!d§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §]!e§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §8W§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §"A§:
            case §<x§:
               if(parseInt(this.§!!Y§) == 10000 || parseInt(this.§!!Y§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§&!@§)
                  {
                     case § i§:
                        _loc8_ = 16058683;
                        break;
                     case §%!J§:
                        _loc8_ = 55294;
                        break;
                     case §`;§:
                        _loc8_ = 1878602;
                        break;
                     case §&I§:
                        _loc8_ = 3552822;
                        break;
                     case §!M§:
                        break;
                     case §5!!§:
                        _loc8_ = 16705792;
                  }
                  if(parseInt(this.§!!Y§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§,!%§.getAnimation("NUMBERS");
                  this.§],§ = new §]!1§(_loc2_,_loc3_,true);
                  this.§],§.§=>§(parseInt(this.§!!Y§));
                  this.§+G§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§,!%§.getAnimation("NUMBERS");
               this.§],§ = new §]!1§(_loc2_,_loc3_);
               this.§],§.§=>§(parseInt(this.§!!Y§));
               this.§+G§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §4b§:
               switch(this.§&!@§)
               {
                  case §,p§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §5!F§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §;!O§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §]4§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §`!9§:
                     _loc6_ = 1 + _loc1_ % 3;
               }
               if(this.§+G§)
               {
                  this.§+G§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §8,§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§&!@§)
               {
                  case §>N§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §4l§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §+!G§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §`A§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §%!3§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §-,§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §!!R§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§+G§)
               {
                  this.§+G§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§]!$§,null,this.§2W§,this.§,i§);
         }
      }
      
      protected function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§ H§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§'!4§ = param4;
         var _loc7_:Number = 1;
         this.§;]§ = this.§,!%§.getAnimation(param1);
         if(this.§;]§)
         {
            _loc5_ = this.§;]§.getFrame(0);
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            _loc5_ = this.§7!`§.§]w§(param1);
            if(!_loc5_)
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
         }
         this.§8D§ = param3;
         var _loc8_:§0!b§ = this.§@T§(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§?C§ * _loc7_;
         this.§+G§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§?C§;
            _loc8_.y = -_loc5_.pivotY * this.§?C§;
         }
         else
         {
            _loc8_.x = -this.§+G§.width / 2;
            _loc8_.y = -this.§+G§.height / 2;
         }
      }
      
      protected function §@T§(param1:Texture) : §0!b§
      {
         return new §0!b§(param1,false);
      }
      
      public function §@!F§() : void
      {
         if(this.§+G§)
         {
            this.§+G§.x = this.§1X§ / LevelMain.§@!d§;
            this.§+G§.y = this.§`J§ / LevelMain.§@!d§;
         }
      }
      
      public function §5Y§(param1:LevelObject) : void
      {
         this.§-!_§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§ H§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§0!b§ = null;
         this.§,F§ += param1;
         var _loc2_:Boolean = false;
         if(this.§-!_§)
         {
            if(this.§-!_§.sprite == null || this.§-!_§.§0[§ == null)
            {
               return false;
            }
            this.§1X§ = this.§-!_§.§@!'§().GetPosition().x;
            this.§`J§ = this.§-!_§.§@!'§().GetPosition().y;
         }
         if(this.§8D§ > 0 && this.§;]§)
         {
            _loc3_ = 15;
            _loc4_ = this.§,F§ / 1000 / (1 / _loc3_);
            if(_loc4_ < this.§;]§.getFrameCount())
            {
               _loc5_ = this.§;]§.getFrame(_loc4_);
               _loc6_ = _loc5_.texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.§@T§(_loc6_);
               this.§+G§.§ E§(0,-1,true);
               this.§+G§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§?C§;
               _loc8_.y = -_loc5_.pivotY * this.§?C§;
               _loc8_.scaleX = _loc8_.scaleY = this.§?C§ * _loc7_;
            }
            else if(this.§'!4§)
            {
               this.§+G§.§ E§(0,-1,true);
            }
         }
         if(this.§"@§ == §0o§)
         {
            this.§;W§(param1);
            _loc2_ = this.§9]§(param1);
            if(this.§#!^§ > 0 && this.§`J§ > this.§#!^§)
            {
               return false;
            }
         }
         else
         {
            this.§;W§(param1);
            _loc2_ = this.§9]§(param1);
         }
         if(this.§1W§ > 0 && this.§,F§ >= this.§1W§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§@!F§();
         }
         return true;
      }
      
      public function §;W§(param1:Number) : void
      {
         this.§7!j§ += param1 * this.§+[§ / 1000;
         this.§`J§ += this.§7!j§ * param1 / 1000;
         this.§1X§ += this.§&#§ * param1 / 1000;
         if(this.§&Z§ != 0)
         {
            this.§+G§.rotation += this.§&Z§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §9]§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§"@§ == §?D§)
         {
            if(this.§1W§ > 0)
            {
               _loc2_ = 1;
               if(this.§]!$§ == §<x§)
               {
                  _loc4_ = this.§,F§ / this.§1W§;
                  if(_loc4_ <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§!!Y§) / 5000);
               }
               this.§+G§.scaleX = _loc2_;
               this.§+G§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§"@§ == §0o§)
         {
            if(this.§]!$§ == §8W§)
            {
               this.§+G§.alpha = Math.max(0,Math.min(1,2 * §!t§.§>j§((this.§1W§ - this.§,F§) / this.§1W§,false)));
               _loc5_ = Math.atan2(-this.§7!j§,this.§&#§) * (180 / Math.PI);
               this.§+G§.scaleX = Math.max(0.2,this.§+G§.alpha);
               this.§+G§.scaleY = Math.max(0.2,this.§+G§.alpha);
               this.§+G§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§]!$§ == §8,§ || this.§]!$§ == §3!d§)
            {
               this.§+G§.scaleX = this.§+G§.scaleY = 0.2 + (this.§1W§ - this.§,F§) / this.§1W§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§],§)
         {
            this.§],§.clear();
            this.§],§ = null;
         }
         if(this.§+G§)
         {
            this.§+G§.dispose();
            this.§+G§ = null;
         }
         if(this.§-!_§)
         {
            this.§-!_§ = null;
         }
      }
   }
}
