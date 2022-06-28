package §%!M§
{
   import §'N§.§"3§;
   import §'_§.Texture;
   import §-!>§.§4!T§;
   import §1!&§.§&p§;
   import §1!&§.DisplayObject;
   import §1!&§.Sprite;
   import §3Y§.LevelObject;
   import §8!?§.§?!B§;
   import §8!?§.Animation;
   import §8!?§.AnimationManager;
   import §8!?§.TextureManager;
   import §?A§.§-!1§;
   import §?A§.LevelMain;
   
   public class §8!;§
   {
      
      public static const §'v§:int = 0;
      
      public static const §;Z§:int = 1;
      
      public static const §&!"§:int = 2;
      
      public static const §2!b§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §&!5§:String = "Effect_TrailBig_Bird";
      
      public static const §%"§:String = "Effect_Trail_Sparkle";
      
      public static const §&t§:String = "Effect_Floating_Score";
      
      public static const § !U§:String = "Effect_Floating_Text";
      
      public static const §8!T§:String = "Effect_Explosion_Particle";
      
      public static const §!q§:String = "Effect_Explosion_Core";
      
      public static const §!k§:String = "Effect_Pig_Destruction";
      
      public static const §7!,§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §=!5§:String = "Effect_Bird_Destruction";
      
      public static const §`Q§:String = "Effect_Block_Destruction_Particles";
      
      public static const §,>§:String = "Effect_Block_Destruction_Core";
      
      public static const §9!0§:int = 0;
      
      public static const § !-§:int = 1;
      
      public static const §5!S§:int = 2;
      
      public static const §0!Y§:int = 3;
      
      public static const §7-§:int = 4;
      
      public static const §&?§:int = 5;
      
      public static const §0J§:int = 6;
      
      public static const §"z§:int = 7;
      
      public static const §7c§:int = 8;
      
      public static const §1!`§:int = 9;
      
      public static const §^!>§:int = 10;
      
      public static const §"L§:int = 11;
      
      public static const §=!@§:int = 12;
      
      public static const §0'§:int = 13;
      
      public static const §1!;§:int = 14;
      
      public static const §!!U§:int = 15;
      
      public static const §?`§:int = 16;
      
      public static const §%]§:int = 17;
      
      public static const §6§:int = 18;
      
      public static const §92§:Boolean = true;
       
      
      public var §<?§:int;
      
      public var §9!K§:int;
      
      public var §!!Q§:String;
      
      public var §&V§:Number;
      
      public var §0!j§:Number;
      
      public var §2!&§:Number;
      
      public var §%!`§:Number;
      
      public var §#3§:Number = 0;
      
      public var §[+§:Number;
      
      public var §;![§:Number;
      
      public var §7!Y§:String;
      
      public var §]!6§:Number = -1;
      
      public var §?!c§:int;
      
      public var §`!Z§:Number;
      
      public var §[§:Number;
      
      private var §9$§:Sprite;
      
      private var §%O§:§-!1§;
      
      private var §`!'§:int;
      
      protected var §@!§:int;
      
      protected var §;!T§:Boolean;
      
      private var §9!d§:Animation;
      
      private var §`t§:Boolean;
      
      private var §[6§:AnimationManager;
      
      private var §`_§:TextureManager;
      
      private var §-P§:LevelObject;
      
      public function §8!;§(param1:AnimationManager, param2:TextureManager, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§9$§ = new Sprite();
         super();
         this.§[6§ = param1;
         this.§`_§ = param2;
         this.§!!Q§ = param3;
         this.§<?§ = param5;
         this.§9!K§ = param4;
         this.§?!c§ = param10;
         this.§@!§ = param16;
         this.§;!T§ = param17;
         this.§7!Y§ = param9;
         this.§&V§ = 0;
         this.§;![§ = param8;
         this.§`!Z§ = param6;
         this.§[§ = param7;
         this.§[+§ = param15;
         this.§2!&§ = param11;
         this.§0!j§ = param12;
         this.§#3§ = param14;
         this.§%!`§ = param13;
         this.createVisuals();
         this.§+§();
         if(this.§<?§ == §;Z§)
         {
            this.§]!6§ = §4!T§.§1t§.§7!%§.§7!5§ + this.§9$§.height * LevelMain.§!5§;
         }
      }
      
      public static function §"K§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §9!0§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §5!S§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return § !-§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §&?§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §7-§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §0!Y§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §6§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §0J§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §1!`§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §"z§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §7c§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §^!>§;
         }
         return §"L§;
      }
      
      public static function §7!i§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §=!@§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §1!;§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §0'§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §%]§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §?`§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §!!U§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §!!U§;
         }
         return §?`§;
      }
      
      public function get displayObject() : DisplayObject
      {
         return this.§9$§;
      }
      
      public function §>3§(param1:Number, param2:Number) : void
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
         switch(this.§!!Q§)
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
            case §&!5§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §%"§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §!k§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §7!,§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §,>§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §!q§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §8!T§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §&t§:
            case § !U§:
               if(parseInt(this.§7!Y§) == 10000 || parseInt(this.§7!Y§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§?!c§)
                  {
                     case §=!@§:
                        _loc8_ = 16058683;
                        break;
                     case §0'§:
                        _loc8_ = 55294;
                        break;
                     case §!!U§:
                        _loc8_ = 1878602;
                        break;
                     case §%]§:
                        _loc8_ = 3552822;
                        break;
                     case §?`§:
                        break;
                     case §1!;§:
                        _loc8_ = 16705792;
                  }
                  if(parseInt(this.§7!Y§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§[6§.getAnimation("NUMBERS");
                  this.§%O§ = new §-!1§(_loc2_,_loc3_,true);
                  this.§%O§.§9!I§(parseInt(this.§7!Y§));
                  this.§9$§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§[6§.getAnimation("NUMBERS");
               this.§%O§ = new §-!1§(_loc2_,_loc3_);
               this.§%O§.§9!I§(parseInt(this.§7!Y§));
               this.§9$§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §`Q§:
               switch(this.§?!c§)
               {
                  case §1!`§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §^!>§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §"z§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §7c§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §"L§:
                     _loc6_ = 1 + _loc1_ % 3;
               }
               if(this.§9$§)
               {
                  this.§9$§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §=!5§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§?!c§)
               {
                  case §9!0§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §&?§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case § !-§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §0!Y§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §7-§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §5!S§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §6§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§9$§)
               {
                  this.§9$§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§!!Q§,null,this.§@!§,this.§;!T§);
         }
      }
      
      protected function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§?!B§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§`t§ = param4;
         var _loc7_:Number = 1;
         this.§9!d§ = this.§[6§.getAnimation(param1);
         if(this.§9!d§)
         {
            _loc5_ = this.§9!d§.getFrame(0);
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            _loc5_ = this.§`_§.§"!'§(param1);
            if(!_loc5_)
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
         }
         this.§`!'§ = param3;
         var _loc8_:§&p§ = this.§'!k§(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§[+§ * _loc7_;
         this.§9$§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§[+§;
            _loc8_.y = -_loc5_.pivotY * this.§[+§;
         }
         else
         {
            _loc8_.x = -this.§9$§.width / 2;
            _loc8_.y = -this.§9$§.height / 2;
         }
      }
      
      protected function §'!k§(param1:Texture) : §&p§
      {
         return new §&p§(param1,false);
      }
      
      public function §+§() : void
      {
         if(this.§9$§)
         {
            this.§9$§.x = this.§`!Z§ / LevelMain.§!5§;
            this.§9$§.y = this.§[§ / LevelMain.§!5§;
         }
      }
      
      public function §"8§(param1:LevelObject) : void
      {
         this.§-P§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§?!B§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§&p§ = null;
         this.§&V§ += param1;
         var _loc2_:Boolean = false;
         if(this.§-P§)
         {
            if(this.§-P§.sprite == null || this.§-P§.§>!9§ == null)
            {
               return false;
            }
            this.§`!Z§ = this.§-P§.§8!N§().GetPosition().x;
            this.§[§ = this.§-P§.§8!N§().GetPosition().y;
         }
         if(this.§`!'§ > 0 && this.§9!d§)
         {
            _loc3_ = 15;
            _loc4_ = this.§&V§ / 1000 / (1 / _loc3_);
            if(_loc4_ < this.§9!d§.getFrameCount())
            {
               _loc5_ = this.§9!d§.getFrame(_loc4_);
               _loc6_ = _loc5_.texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.§'!k§(_loc6_);
               this.§9$§.§;!d§(0,-1,true);
               this.§9$§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§[+§;
               _loc8_.y = -_loc5_.pivotY * this.§[+§;
               _loc8_.scaleX = _loc8_.scaleY = this.§[+§ * _loc7_;
            }
            else if(this.§`t§)
            {
               this.§9$§.§;!d§(0,-1,true);
            }
         }
         if(this.§<?§ == §;Z§)
         {
            this.§9H§(param1);
            _loc2_ = this.§&E§(param1);
            if(this.§]!6§ > 0 && this.§[§ > this.§]!6§)
            {
               return false;
            }
         }
         else
         {
            this.§9H§(param1);
            _loc2_ = this.§&E§(param1);
         }
         if(this.§;![§ > 0 && this.§&V§ >= this.§;![§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§+§();
         }
         return true;
      }
      
      public function §9H§(param1:Number) : void
      {
         this.§0!j§ += param1 * this.§%!`§ / 1000;
         this.§[§ += this.§0!j§ * param1 / 1000;
         this.§`!Z§ += this.§2!&§ * param1 / 1000;
         if(this.§#3§ != 0)
         {
            this.§9$§.rotation += this.§#3§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §&E§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§<?§ == §'v§)
         {
            if(this.§;![§ > 0)
            {
               _loc2_ = 1;
               if(this.§!!Q§ == § !U§)
               {
                  _loc4_ = this.§&V§ / this.§;![§;
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§7!Y§) / 5000);
               }
               this.§9$§.scaleX = _loc2_;
               this.§9$§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§<?§ == §;Z§)
         {
            if(this.§!!Q§ == §8!T§)
            {
               this.§9$§.alpha = Math.max(0,Math.min(1,2 * §"3§.§5M§((this.§;![§ - this.§&V§) / this.§;![§,false)));
               _loc5_ = Math.atan2(-this.§0!j§,this.§2!&§) * (180 / Math.PI);
               this.§9$§.scaleX = Math.max(0.2,this.§9$§.alpha);
               this.§9$§.scaleY = Math.max(0.2,this.§9$§.alpha);
               this.§9$§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§!!Q§ == §=!5§ || this.§!!Q§ == §,>§)
            {
               this.§9$§.scaleX = this.§9$§.scaleY = 0.2 + (this.§;![§ - this.§&V§) / this.§;![§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§%O§)
         {
            this.§%O§.clear();
            this.§%O§ = null;
         }
         if(this.§9$§)
         {
            this.§9$§.dispose();
            this.§9$§ = null;
         }
         if(this.§-P§)
         {
            this.§-P§ = null;
         }
      }
   }
}
