package §>X§
{
   import § N§.§,8§;
   import §+![§.Texture;
   import §0V§.§?<§;
   import §0V§.§`!O§;
   import §3§.§4!!§;
   import §3§.DisplayObject;
   import §3§.Sprite;
   import §3d§.§20§;
   import §^Q§.§,^§;
   import §`n§.§#H§;
   import §`n§.§-!D§;
   import §`n§.§2!"§;
   import §`n§.§6o§;
   
   public class §7!%§
   {
      
      public static const §3!7§:int = 0;
      
      public static const §!w§:int = 1;
      
      public static const §%<§:int = 2;
      
      public static const §9!?§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §,b§:String = "Effect_TrailBig_Bird";
      
      public static const §#!4§:String = "Effect_Trail_Sparkle";
      
      public static const §+V§:String = "Effect_Floating_Score";
      
      public static const §`!!§:String = "Effect_Floating_Text";
      
      public static const §<=§:String = "Effect_Explosion_Particle";
      
      public static const §9! §:String = "Effect_Explosion_Core";
      
      public static const §#!<§:String = "Effect_Pig_Destruction";
      
      public static const §81§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §7,§:String = "Effect_Bird_Destruction";
      
      public static const §[!b§:String = "Effect_Block_Destruction_Particles";
      
      public static const §'!W§:String = "Effect_Block_Destruction_Core";
      
      public static const §?!]§:int = 0;
      
      public static const §3]§:int = 1;
      
      public static const §<!X§:int = 2;
      
      public static const §9`§:int = 3;
      
      public static const §2o§:int = 4;
      
      public static const §&#§:int = 5;
      
      public static const §4!"§:int = 6;
      
      public static const §8!]§:int = 7;
      
      public static const §8!<§:int = 8;
      
      public static const §;!B§:int = 9;
      
      public static const §,p§:int = 10;
      
      public static const §%!§:int = 11;
      
      public static const §@s§:int = 12;
      
      public static const §<!O§:int = 13;
      
      public static const §@3§:int = 14;
      
      public static const §`V§:int = 15;
      
      public static const §0O§:int = 16;
      
      public static const §=G§:int = 17;
      
      public static const §!T§:int = 18;
      
      public static const §&Q§:int = 19;
      
      public static const §@!R§:Boolean = true;
       
      
      public var §6F§:int;
      
      public var §6!J§:int;
      
      public var §6V§:String;
      
      public var §?y§:Number;
      
      public var §12§:Number;
      
      public var §6!V§:Number;
      
      public var §>!^§:Number;
      
      public var §],§:Number = 0;
      
      public var §3&§:Number;
      
      public var §0=§:Number;
      
      public var §-'§:String;
      
      public var §#!T§:Number = -1;
      
      public var §@@§:int;
      
      public var § W§:Number;
      
      public var §9!9§:Number;
      
      private var §'!Y§:Sprite;
      
      private var §1!N§:§?<§;
      
      private var §%!Z§:int;
      
      protected var §6a§:int;
      
      protected var §9!J§:Boolean;
      
      private var §5!U§:§-!D§;
      
      private var §!c§:Boolean;
      
      private var § D§:§2!"§;
      
      private var §4=§:§#H§;
      
      private var §=i§:§20§;
      
      public function §7!%§(param1:§2!"§, param2:§#H§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§'!Y§ = new Sprite();
         super();
         this.§ D§ = param1;
         this.§4=§ = param2;
         this.§6V§ = param3;
         this.§6F§ = param5;
         this.§6!J§ = param4;
         this.§@@§ = param10;
         this.§6a§ = param16;
         this.§9!J§ = param17;
         this.§-'§ = param9;
         this.§?y§ = 0;
         this.§0=§ = param8;
         this.§ W§ = param6;
         this.§9!9§ = param7;
         this.§3&§ = param15;
         this.§6!V§ = param11;
         this.§12§ = param12;
         this.§],§ = param14;
         this.§>!^§ = param13;
         this.createVisuals();
         this.§7B§();
         if(this.§6F§ == §!w§)
         {
            this.§#!T§ = §,^§.§0K§.§-6§.§+!Z§ + this.§'!Y§.height * §`!O§.§?!O§;
         }
      }
      
      public static function §8k§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §?!]§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §<!X§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §3]§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §&#§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §2o§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §9`§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §!T§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §4!"§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §;!B§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §8!]§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §8!<§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §,p§;
         }
         return §%!§;
      }
      
      public static function §4B§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §@s§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §@3§;
         }
         if(param1.toUpperCase().indexOf("BIRD_ORANGE") >= 0)
         {
            return §&Q§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §<!O§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §=G§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §0O§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §`V§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §`V§;
         }
         return §0O§;
      }
      
      public function get §`!P§() : DisplayObject
      {
         return this.§'!Y§;
      }
      
      public function §57§(param1:Number, param2:Number) : void
      {
      }
      
      protected function createVisuals() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§-!D§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§6V§)
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
            case §,b§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §#!4§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §#!<§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §81§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §'!W§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §9! §:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §<=§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §+V§:
            case §`!!§:
               if(parseInt(this.§-'§) == 10000 || parseInt(this.§-'§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§@@§)
                  {
                     case §@s§:
                        _loc8_ = 16058683;
                        break;
                     case §<!O§:
                        _loc8_ = 55294;
                        break;
                     case §`V§:
                        _loc8_ = 1878602;
                        break;
                     case §=G§:
                        _loc8_ = 3552822;
                        break;
                     case §0O§:
                        break;
                     case §@3§:
                        _loc8_ = 16705792;
                        break;
                     case §&Q§:
                        _loc8_ = 16753152;
                  }
                  if(parseInt(this.§-'§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§ D§.§7!<§("NUMBERS");
                  this.§1!N§ = new §?<§(_loc2_,_loc3_,true);
                  this.§1!N§.§`,§(parseInt(this.§-'§));
                  this.§'!Y§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§ D§.§7!<§("NUMBERS");
               this.§1!N§ = new §?<§(_loc2_,_loc3_);
               this.§1!N§.§`,§(parseInt(this.§-'§));
               this.§'!Y§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §[!b§:
               switch(this.§@@§)
               {
                  case §;!B§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §,p§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §8!]§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §8!<§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §%!§:
                     _loc6_ = 1 + _loc1_ % 3;
               }
               if(this.§'!Y§)
               {
                  this.§'!Y§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §7,§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§@@§)
               {
                  case §?!]§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §&#§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §3]§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §9`§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §2o§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §<!X§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §!T§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§'!Y§)
               {
                  this.§'!Y§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§6V§,null,this.§6a§,this.§9!J§);
         }
      }
      
      protected function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§6o§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§!c§ = param4;
         var _loc7_:Number = 1;
         this.§5!U§ = this.§ D§.§7!<§(param1);
         if(this.§5!U§)
         {
            _loc6_ = (_loc5_ = this.§5!U§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            if(!(_loc5_ = this.§4=§.§&3§(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
         }
         this.§%!Z§ = param3;
         var _loc8_:§4!!§ = this.§4#§(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§3&§ * _loc7_;
         this.§'!Y§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§3&§;
            _loc8_.y = -_loc5_.pivotY * this.§3&§;
         }
         else
         {
            _loc8_.x = -this.§'!Y§.width / 2;
            _loc8_.y = -this.§'!Y§.height / 2;
         }
      }
      
      protected function §4#§(param1:Texture) : §4!!§
      {
         return new §4!!§(param1,false);
      }
      
      public function §7B§() : void
      {
         if(this.§'!Y§)
         {
            this.§'!Y§.x = this.§ W§ / §`!O§.§?!O§;
            this.§'!Y§.y = this.§9!9§ / §`!O§.§?!O§;
         }
      }
      
      public function §#!Q§(param1:§20§) : void
      {
         this.§=i§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§6o§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§4!!§ = null;
         this.§?y§ += param1;
         var _loc2_:Boolean = false;
         if(this.§=i§)
         {
            if(this.§=i§.sprite == null || this.§=i§.§+k§ == null)
            {
               return false;
            }
            this.§ W§ = this.§=i§.§=!,§().GetPosition().x;
            this.§9!9§ = this.§=i§.§=!,§().GetPosition().y;
         }
         if(this.§%!Z§ > 0 && this.§5!U§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§?y§ / 1000 / (1 / _loc3_)) < this.§5!U§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§5!U§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.§4#§(_loc6_);
               this.§'!Y§.§"!b§(0,-1,true);
               this.§'!Y§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§3&§;
               _loc8_.y = -_loc5_.pivotY * this.§3&§;
               _loc8_.scaleX = _loc8_.scaleY = this.§3&§ * _loc7_;
            }
            else if(this.§!c§)
            {
               this.§'!Y§.§"!b§(0,-1,true);
            }
         }
         if(this.§6F§ == §!w§)
         {
            this.§`j§(param1);
            _loc2_ = this.§+!@§(param1);
            if(this.§#!T§ > 0 && this.§9!9§ > this.§#!T§)
            {
               return false;
            }
         }
         else
         {
            this.§`j§(param1);
            _loc2_ = this.§+!@§(param1);
         }
         if(this.§0=§ > 0 && this.§?y§ >= this.§0=§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§7B§();
         }
         return true;
      }
      
      public function §`j§(param1:Number) : void
      {
         this.§12§ += param1 * this.§>!^§ / 1000;
         this.§9!9§ += this.§12§ * param1 / 1000;
         this.§ W§ += this.§6!V§ * param1 / 1000;
         if(this.§],§ != 0)
         {
            this.§'!Y§.rotation += this.§],§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §+!@§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§6F§ == §3!7§)
         {
            if(this.§0=§ > 0)
            {
               _loc2_ = 1;
               if(this.§6V§ == §`!!§)
               {
                  if((_loc4_ = this.§?y§ / this.§0=§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§-'§) / 5000);
               }
               this.§'!Y§.scaleX = _loc2_;
               this.§'!Y§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§6F§ == §!w§)
         {
            if(this.§6V§ == §<=§)
            {
               this.§'!Y§.alpha = Math.max(0,Math.min(1,2 * §,8§.§ !2§((this.§0=§ - this.§?y§) / this.§0=§,false)));
               _loc5_ = Math.atan2(-this.§12§,this.§6!V§) * (180 / Math.PI);
               this.§'!Y§.scaleX = Math.max(0.2,this.§'!Y§.alpha);
               this.§'!Y§.scaleY = Math.max(0.2,this.§'!Y§.alpha);
               this.§'!Y§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§6V§ == §7,§ || this.§6V§ == §'!W§)
            {
               this.§'!Y§.scaleX = this.§'!Y§.scaleY = 0.2 + (this.§0=§ - this.§?y§) / this.§0=§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§1!N§)
         {
            this.§1!N§.clear();
            this.§1!N§ = null;
         }
         if(this.§'!Y§)
         {
            this.§'!Y§.dispose();
            this.§'!Y§ = null;
         }
         if(this.§=i§)
         {
            this.§=i§ = null;
         }
      }
   }
}
