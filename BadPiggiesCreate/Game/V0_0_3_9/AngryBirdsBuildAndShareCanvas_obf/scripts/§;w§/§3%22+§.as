package §;w§
{
   import §3!S§.§%s§;
   import §7q§.§0!§;
   import §7q§.DisplayObject;
   import §7q§.Sprite;
   import §8Y§.Texture;
   import §;!<§.§!!F§;
   import §;!<§.§7!f§;
   import §;!<§.§9B§;
   import §;!<§.§<!D§;
   import §=b§.§-!K§;
   import §=b§.§<!<§;
   import §@!;§.§"!%§;
   import §]r§.§9!R§;
   
   public class §3"+§
   {
      
      public static const §,!Z§:int = 0;
      
      public static const §^!q§:int = 1;
      
      public static const §&a§:int = 2;
      
      public static const §4"1§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §7"4§:String = "Effect_TrailBig_Bird";
      
      public static const §0!+§:String = "Effect_Trail_Sparkle";
      
      public static const §]A§:String = "Effect_Floating_Score";
      
      public static const §4!V§:String = "Effect_Floating_Text";
      
      public static const §-!4§:String = "Effect_Explosion_Particle";
      
      public static const §+Z§:String = "Effect_Explosion_Core";
      
      public static const §'!J§:String = "Effect_Pig_Destruction";
      
      public static const §8?§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §2s§:String = "Effect_Bird_Destruction";
      
      public static const §2!6§:String = "Effect_Block_Destruction_Particles";
      
      public static const §7"!§:String = "Effect_Block_Destruction_Core";
      
      public static const §<K§:int = 0;
      
      public static const §+!$§:int = 1;
      
      public static const §6J§:int = 2;
      
      public static const §,x§:int = 3;
      
      public static const §%-§:int = 4;
      
      public static const §&3§:int = 5;
      
      public static const §'!F§:int = 6;
      
      public static const §+"1§:int = 7;
      
      public static const §'T§:int = 8;
      
      public static const §0!u§:int = 9;
      
      public static const §9!_§:int = 10;
      
      public static const §extends§:int = 11;
      
      public static const §1-§:int = 12;
      
      public static const §!!Q§:int = 13;
      
      public static const §9"6§:int = 14;
      
      public static const §"y§:int = 15;
      
      public static const §`!3§:int = 16;
      
      public static const §[m§:int = 17;
      
      public static const §%!!§:int = 18;
      
      public static const §%!+§:Boolean = true;
       
      
      public var §5w§:int;
      
      public var §[s§:int;
      
      public var §%<§:String;
      
      public var §<"#§:Number;
      
      public var §#!i§:Number;
      
      public var §"`§:Number;
      
      public var §9"5§:Number;
      
      public var §-3§:Number = 0;
      
      public var §`"§:Number;
      
      public var §^"8§:Number;
      
      public var § !N§:String;
      
      public var §2k§:Number = -1;
      
      public var §6!Z§:int;
      
      public var mX:Number;
      
      public var mY:Number;
      
      private var §+!e§:Sprite;
      
      private var §0=§:§<!<§;
      
      private var §]"+§:int;
      
      protected var §+!>§:int;
      
      protected var § ""§:Boolean;
      
      private var §3O§:§9B§;
      
      private var §!!<§:Boolean;
      
      private var §%L§:§!!F§;
      
      private var §0<§:§7!f§;
      
      private var override:§9!R§;
      
      public function §3"+§(param1:§!!F§, param2:§7!f§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§+!e§ = new Sprite();
         super();
         this.§%L§ = param1;
         this.§0<§ = param2;
         this.§%<§ = param3;
         this.§5w§ = param5;
         this.§[s§ = param4;
         this.§6!Z§ = param10;
         this.§+!>§ = param16;
         this.§ ""§ = param17;
         this.§ !N§ = param9;
         this.§<"#§ = 0;
         this.§^"8§ = param8;
         this.mX = param6;
         this.mY = param7;
         this.§`"§ = param15;
         this.§"`§ = param11;
         this.§#!i§ = param12;
         this.§-3§ = param14;
         this.§9"5§ = param13;
         this.createVisuals();
         this.§@!a§();
         if(this.§5w§ == §^!q§)
         {
            this.§2k§ = §%s§.§`!f§.borders.mBorderGround_B2 + this.§+!e§.height * §-!K§.§"!C§;
         }
      }
      
      public static function §`d§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §<K§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §6J§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §+!$§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §&3§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §%-§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §,x§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §%!!§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §'!F§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §0!u§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §+"1§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §'T§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §9!_§;
         }
         return §extends§;
      }
      
      public static function §%"0§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §1-§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §9"6§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §!!Q§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §[m§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §`!3§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §"y§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §"y§;
         }
         return §`!3§;
      }
      
      public function get §@i§() : DisplayObject
      {
         return this.§+!e§;
      }
      
      public function § !q§(param1:Number, param2:Number) : void
      {
      }
      
      protected function createVisuals() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§9B§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§%<§)
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
            case §7"4§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §0!+§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §'!J§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §8?§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §7"!§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §+Z§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §-!4§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §]A§:
            case §4!V§:
               if(parseInt(this.§ !N§) == 10000 || parseInt(this.§ !N§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§6!Z§)
                  {
                     case §1-§:
                        _loc8_ = 16058683;
                        break;
                     case §!!Q§:
                        _loc8_ = 55294;
                        break;
                     case §"y§:
                        _loc8_ = 1878602;
                        break;
                     case §[m§:
                        _loc8_ = 3552822;
                        break;
                     case §`!3§:
                        break;
                     case §9"6§:
                        _loc8_ = 16705792;
                  }
                  if(parseInt(this.§ !N§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§%L§.§]@§("NUMBERS");
                  this.§0=§ = new §<!<§(_loc2_,_loc3_,true);
                  this.§0=§.§'!c§(parseInt(this.§ !N§));
                  this.§+!e§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§%L§.§]@§("NUMBERS");
               this.§0=§ = new §<!<§(_loc2_,_loc3_);
               this.§0=§.§'!c§(parseInt(this.§ !N§));
               this.§+!e§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §2!6§:
               switch(this.§6!Z§)
               {
                  case §0!u§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §9!_§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §+"1§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §'T§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §extends§:
                     _loc6_ = 1 + _loc1_ % 3;
               }
               if(this.§+!e§)
               {
                  this.§+!e§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §2s§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§6!Z§)
               {
                  case §<K§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §&3§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §+!$§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §,x§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §%-§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §6J§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §%!!§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§+!e§)
               {
                  this.§+!e§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§%<§,null,this.§+!>§,this.§ ""§);
         }
      }
      
      protected function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§<!D§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§!!<§ = param4;
         var _loc7_:Number = 1;
         this.§3O§ = this.§%L§.§]@§(param1);
         if(this.§3O§)
         {
            _loc6_ = (_loc5_ = this.§3O§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            if(!(_loc5_ = this.§0<§.§>",§(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
         }
         this.§]"+§ = param3;
         var _loc8_:§0!§ = this.§!Q§(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§`"§ * _loc7_;
         this.§+!e§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§`"§;
            _loc8_.y = -_loc5_.pivotY * this.§`"§;
         }
         else
         {
            _loc8_.x = -this.§+!e§.width / 2;
            _loc8_.y = -this.§+!e§.height / 2;
         }
      }
      
      protected function §!Q§(param1:Texture) : §0!§
      {
         return new §0!§(param1,false);
      }
      
      public function §@!a§() : void
      {
         if(this.§+!e§)
         {
            this.§+!e§.x = this.mX / §-!K§.§"!C§;
            this.§+!e§.y = this.mY / §-!K§.§"!C§;
         }
      }
      
      public function §8!8§(param1:§9!R§) : void
      {
         this.override = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§<!D§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§0!§ = null;
         this.§<"#§ += param1;
         var _loc2_:Boolean = false;
         if(this.override)
         {
            if(this.override.sprite == null || this.override.§<3§ == null)
            {
               return false;
            }
            this.mX = this.override.getBody().GetPosition().x;
            this.mY = this.override.getBody().GetPosition().y;
         }
         if(this.§]"+§ > 0 && this.§3O§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§<"#§ / 1000 / (1 / _loc3_)) < this.§3O§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§3O§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.§!Q§(_loc6_);
               this.§+!e§.removeChildren(0,-1,true);
               this.§+!e§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§`"§;
               _loc8_.y = -_loc5_.pivotY * this.§`"§;
               _loc8_.scaleX = _loc8_.scaleY = this.§`"§ * _loc7_;
            }
            else if(this.§!!<§)
            {
               this.§+!e§.removeChildren(0,-1,true);
            }
         }
         if(this.§5w§ == §^!q§)
         {
            this.§-E§(param1);
            _loc2_ = this.§;5§(param1);
            if(this.§2k§ > 0 && this.mY > this.§2k§)
            {
               return false;
            }
         }
         else
         {
            this.§-E§(param1);
            _loc2_ = this.§;5§(param1);
         }
         if(this.§^"8§ > 0 && this.§<"#§ >= this.§^"8§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§@!a§();
         }
         return true;
      }
      
      public function §-E§(param1:Number) : void
      {
         this.§#!i§ += param1 * this.§9"5§ / 1000;
         this.mY += this.§#!i§ * param1 / 1000;
         this.mX += this.§"`§ * param1 / 1000;
         if(this.§-3§ != 0)
         {
            this.§+!e§.rotation += this.§-3§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §;5§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§5w§ == §,!Z§)
         {
            if(this.§^"8§ > 0)
            {
               _loc2_ = 1;
               if(this.§%<§ == §4!V§)
               {
                  if((_loc4_ = this.§<"#§ / this.§^"8§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§ !N§) / 5000);
               }
               this.§+!e§.scaleX = _loc2_;
               this.§+!e§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§5w§ == §^!q§)
         {
            if(this.§%<§ == §-!4§)
            {
               this.§+!e§.alpha = Math.max(0,Math.min(1,2 * §"!%§.§5"%§((this.§^"8§ - this.§<"#§) / this.§^"8§,false)));
               _loc5_ = Math.atan2(-this.§#!i§,this.§"`§) * (180 / Math.PI);
               this.§+!e§.scaleX = Math.max(0.2,this.§+!e§.alpha);
               this.§+!e§.scaleY = Math.max(0.2,this.§+!e§.alpha);
               this.§+!e§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§%<§ == §2s§ || this.§%<§ == §7"!§)
            {
               this.§+!e§.scaleX = this.§+!e§.scaleY = 0.2 + (this.§^"8§ - this.§<"#§) / this.§^"8§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§0=§)
         {
            this.§0=§.clear();
            this.§0=§ = null;
         }
         if(this.§+!e§)
         {
            this.§+!e§.dispose();
            this.§+!e§ = null;
         }
         if(this.override)
         {
            this.override = null;
         }
      }
   }
}
