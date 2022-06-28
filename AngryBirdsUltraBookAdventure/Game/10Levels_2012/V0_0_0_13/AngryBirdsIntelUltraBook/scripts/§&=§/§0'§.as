package §&=§
{
   import § D§.§]!B§;
   import §,!_§.§;K§;
   import §,!_§.Animation;
   import §,!_§.AnimationManager;
   import §,!_§.TextureManager;
   import §2!H§.§7&§;
   import §2!H§.LevelMain;
   import §3p§.LevelObject;
   import §6!7§.§-m§;
   import §6!7§.DisplayObject;
   import §6!7§.Sprite;
   import §6b§.§]n§;
   import §7i§.Texture;
   
   public class §0'§
   {
      
      public static const §=!%§:int = 0;
      
      public static const §&A§:int = 1;
      
      public static const §7R§:int = 2;
      
      public static const § 6§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §6!L§:String = "Effect_TrailBig_Bird";
      
      public static const §8d§:String = "Effect_Trail_Sparkle";
      
      public static const §"G§:String = "Effect_Floating_Score";
      
      public static const §0!8§:String = "Effect_Floating_Text";
      
      public static const §%J§:String = "Effect_Explosion_Particle";
      
      public static const §-s§:String = "Effect_Explosion_Core";
      
      public static const §9_§:String = "Effect_Pig_Destruction";
      
      public static const §2!G§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §@R§:String = "Effect_Bird_Destruction";
      
      public static const §4!C§:String = "Effect_Block_Destruction_Particles";
      
      public static const §#!V§:String = "Effect_Block_Destruction_Core";
      
      public static const §&"§:int = 0;
      
      public static const §9T§:int = 1;
      
      public static const §0d§:int = 2;
      
      public static const §<A§:int = 3;
      
      public static const §'1§:int = 4;
      
      public static const §[Z§:int = 5;
      
      public static const §!!U§:int = 6;
      
      public static const §7%§:int = 7;
      
      public static const §@!H§:int = 8;
      
      public static const §9!b§:int = 9;
      
      public static const §-1§:int = 10;
      
      public static const §7!!§:int = 11;
      
      public static const §5a§:int = 12;
      
      public static const §@!Z§:int = 13;
      
      public static const §4+§:int = 14;
      
      public static const §=!P§:int = 15;
      
      public static const §&!1§:int = 16;
      
      public static const § o§:int = 17;
      
      public static const §3Z§:int = 18;
      
      public static const §;_§:Boolean = true;
       
      
      public var §,p§:int;
      
      public var §2b§:int;
      
      public var §93§:String;
      
      public var §@!_§:Number;
      
      public var §,P§:Number;
      
      public var §#!,§:Number;
      
      public var §?!a§:Number;
      
      public var §1!8§:Number = 0;
      
      public var §7!H§:Number;
      
      public var §5!i§:Number;
      
      public var §?s§:String;
      
      public var §5!D§:Number = -1;
      
      public var §%;§:int;
      
      public var §`!%§:Number;
      
      public var §else§:Number;
      
      private var §6!0§:Sprite;
      
      private var §"e§:§7&§;
      
      private var §+!$§:int;
      
      protected var §]c§:int;
      
      protected var §]h§:Boolean;
      
      private var §=n§:Animation;
      
      private var §-!%§:Boolean;
      
      private var §!!]§:AnimationManager;
      
      private var §6! §:TextureManager;
      
      private var §,,§:LevelObject;
      
      public function §0'§(param1:AnimationManager, param2:TextureManager, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§6!0§ = new Sprite();
         super();
         this.§!!]§ = param1;
         this.§6! § = param2;
         this.§93§ = param3;
         this.§,p§ = param5;
         this.§2b§ = param4;
         this.§%;§ = param10;
         this.§]c§ = param16;
         this.§]h§ = param17;
         this.§?s§ = param9;
         this.§@!_§ = 0;
         this.§5!i§ = param8;
         this.§`!%§ = param6;
         this.§else§ = param7;
         this.§7!H§ = param15;
         this.§#!,§ = param11;
         this.§,P§ = param12;
         this.§1!8§ = param14;
         this.§?!a§ = param13;
         this.createVisuals();
         this.§;E§();
         if(this.§,p§ == §&A§)
         {
            this.§5!D§ = §]!B§.§>F§.§'g§.§ !c§ + this.§6!0§.height * LevelMain.§8N§;
         }
      }
      
      public static function §%!`§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §&"§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §0d§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §9T§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §[Z§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §'1§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §<A§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §3Z§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §!!U§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §9!b§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §7%§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §@!H§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §-1§;
         }
         return §7!!§;
      }
      
      public static function §'>§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §5a§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §4+§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §@!Z§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return § o§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §&!1§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §=!P§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §=!P§;
         }
         return §&!1§;
      }
      
      public function get displayObject() : DisplayObject
      {
         return this.§6!0§;
      }
      
      public function §]r§(param1:Number, param2:Number) : void
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
         switch(this.§93§)
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
            case §6!L§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §8d§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §9_§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §2!G§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §#!V§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §-s§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §%J§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §"G§:
            case §0!8§:
               if(parseInt(this.§?s§) == 10000 || parseInt(this.§?s§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§%;§)
                  {
                     case §5a§:
                        _loc8_ = 16058683;
                        break;
                     case §@!Z§:
                        _loc8_ = 55294;
                        break;
                     case §=!P§:
                        _loc8_ = 1878602;
                        break;
                     case § o§:
                        _loc8_ = 3552822;
                        break;
                     case §&!1§:
                        break;
                     case §4+§:
                        _loc8_ = 16705792;
                  }
                  if(parseInt(this.§?s§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§!!]§.getAnimation("NUMBERS");
                  this.§"e§ = new §7&§(_loc2_,_loc3_,true);
                  this.§"e§.§1!a§(parseInt(this.§?s§));
                  this.§6!0§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§!!]§.getAnimation("NUMBERS");
               this.§"e§ = new §7&§(_loc2_,_loc3_);
               this.§"e§.§1!a§(parseInt(this.§?s§));
               this.§6!0§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §4!C§:
               switch(this.§%;§)
               {
                  case §9!b§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §-1§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §7%§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §@!H§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §7!!§:
                     _loc6_ = 1 + _loc1_ % 3;
               }
               if(this.§6!0§)
               {
                  this.§6!0§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §@R§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§%;§)
               {
                  case §&"§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §[Z§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §9T§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §<A§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §'1§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §0d§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §3Z§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§6!0§)
               {
                  this.§6!0§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§93§,null,this.§]c§,this.§]h§);
         }
      }
      
      protected function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§;K§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§-!%§ = param4;
         var _loc7_:Number = 1;
         this.§=n§ = this.§!!]§.getAnimation(param1);
         if(this.§=n§)
         {
            _loc5_ = this.§=n§.getFrame(0);
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            _loc5_ = this.§6! §.§]&§(param1);
            if(!_loc5_)
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
         }
         this.§+!$§ = param3;
         var _loc8_:§-m§ = this.§28§(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§7!H§ * _loc7_;
         this.§6!0§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§7!H§;
            _loc8_.y = -_loc5_.pivotY * this.§7!H§;
         }
         else
         {
            _loc8_.x = -this.§6!0§.width / 2;
            _loc8_.y = -this.§6!0§.height / 2;
         }
      }
      
      protected function §28§(param1:Texture) : §-m§
      {
         return new §-m§(param1,false);
      }
      
      public function §;E§() : void
      {
         if(this.§6!0§)
         {
            this.§6!0§.x = this.§`!%§ / LevelMain.§8N§;
            this.§6!0§.y = this.§else§ / LevelMain.§8N§;
         }
      }
      
      public function §;!O§(param1:LevelObject) : void
      {
         this.§,,§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§;K§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§-m§ = null;
         this.§@!_§ += param1;
         var _loc2_:Boolean = false;
         if(this.§,,§)
         {
            if(this.§,,§.sprite == null || this.§,,§.§8!&§ == null)
            {
               return false;
            }
            this.§`!%§ = this.§,,§.§9f§().GetPosition().x;
            this.§else§ = this.§,,§.§9f§().GetPosition().y;
         }
         if(this.§+!$§ > 0 && this.§=n§)
         {
            _loc3_ = 15;
            _loc4_ = this.§@!_§ / 1000 / (1 / _loc3_);
            if(_loc4_ < this.§=n§.getFrameCount())
            {
               _loc5_ = this.§=n§.getFrame(_loc4_);
               _loc6_ = _loc5_.texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.§28§(_loc6_);
               this.§6!0§.§'!C§(0,-1,true);
               this.§6!0§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§7!H§;
               _loc8_.y = -_loc5_.pivotY * this.§7!H§;
               _loc8_.scaleX = _loc8_.scaleY = this.§7!H§ * _loc7_;
            }
            else if(this.§-!%§)
            {
               this.§6!0§.§'!C§(0,-1,true);
            }
         }
         if(this.§,p§ == §&A§)
         {
            this.§9J§(param1);
            _loc2_ = this.§;!d§(param1);
            if(this.§5!D§ > 0 && this.§else§ > this.§5!D§)
            {
               return false;
            }
         }
         else
         {
            this.§9J§(param1);
            _loc2_ = this.§;!d§(param1);
         }
         if(this.§5!i§ > 0 && this.§@!_§ >= this.§5!i§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§;E§();
         }
         return true;
      }
      
      public function §9J§(param1:Number) : void
      {
         this.§,P§ += param1 * this.§?!a§ / 1000;
         this.§else§ += this.§,P§ * param1 / 1000;
         this.§`!%§ += this.§#!,§ * param1 / 1000;
         if(this.§1!8§ != 0)
         {
            this.§6!0§.rotation += this.§1!8§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §;!d§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§,p§ == §=!%§)
         {
            if(this.§5!i§ > 0)
            {
               _loc2_ = 1;
               if(this.§93§ == §0!8§)
               {
                  _loc4_ = this.§@!_§ / this.§5!i§;
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§?s§) / 5000);
               }
               this.§6!0§.scaleX = _loc2_;
               this.§6!0§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§,p§ == §&A§)
         {
            if(this.§93§ == §%J§)
            {
               this.§6!0§.alpha = Math.max(0,Math.min(1,2 * §]n§.§1!R§((this.§5!i§ - this.§@!_§) / this.§5!i§,false)));
               _loc5_ = Math.atan2(-this.§,P§,this.§#!,§) * (180 / Math.PI);
               this.§6!0§.scaleX = Math.max(0.2,this.§6!0§.alpha);
               this.§6!0§.scaleY = Math.max(0.2,this.§6!0§.alpha);
               this.§6!0§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§93§ == §@R§ || this.§93§ == §#!V§)
            {
               this.§6!0§.scaleX = this.§6!0§.scaleY = 0.2 + (this.§5!i§ - this.§@!_§) / this.§5!i§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§"e§)
         {
            this.§"e§.clear();
            this.§"e§ = null;
         }
         if(this.§6!0§)
         {
            this.§6!0§.dispose();
            this.§6!0§ = null;
         }
         if(this.§,,§)
         {
            this.§,,§ = null;
         }
      }
   }
}
