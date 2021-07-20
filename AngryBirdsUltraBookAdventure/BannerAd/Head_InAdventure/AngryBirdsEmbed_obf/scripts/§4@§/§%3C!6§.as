package §4@§
{
   import §&o§.§?T§;
   import §&o§.DisplayObject;
   import §&o§.Sprite;
   import §0! §.Texture;
   import §3a§.§7P§;
   import §5!L§.§=w§;
   import §6A§.§ !§;
   import §6A§.§-@§;
   import §9K§.§!?§;
   import §9K§.§"!?§;
   import §9K§.§,z§;
   import §9K§.§5!H§;
   import §^!A§.§;!%§;
   
   public class §<!6§
   {
      
      public static const § ^§:int = 0;
      
      public static const §!E§:int = 1;
      
      public static const §8!<§:int = 2;
      
      public static const §8!!§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §7!M§:String = "Effect_TrailBig_Bird";
      
      public static const §8!H§:String = "Effect_Trail_Sparkle";
      
      public static const §&!-§:String = "Effect_Floating_Score";
      
      public static const §0!$§:String = "Effect_Floating_Text";
      
      public static const §=,§:String = "Effect_Explosion_Particle";
      
      public static const §#7§:String = "Effect_Explosion_Core";
      
      public static const §`7§:String = "Effect_Pig_Destruction";
      
      public static const §'l§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §9<§:String = "Effect_Bird_Destruction";
      
      public static const §1X§:String = "Effect_Block_Destruction_Particles";
      
      public static const §=#§:String = "Effect_Block_Destruction_Core";
      
      public static const §2!2§:int = 0;
      
      public static const §8V§:int = 1;
      
      public static const §#4§:int = 2;
      
      public static const §!!6§:int = 3;
      
      public static const §&#§:int = 4;
      
      public static const §4<§:int = 5;
      
      public static const §;k§:int = 6;
      
      public static const §0h§:int = 7;
      
      public static const §6k§:int = 8;
      
      public static const §9!I§:int = 9;
      
      public static const §9S§:int = 10;
      
      public static const §4Q§:int = 11;
      
      public static const §8B§:int = 12;
      
      public static const §1,§:int = 13;
      
      public static const §=!!§:int = 14;
      
      public static const §0n§:int = 15;
      
      public static const §>a§:int = 16;
      
      public static const §4L§:int = 17;
      
      public static const §6!N§:int = 18;
      
      public static const §"!C§:int = 19;
      
      public static const §6!1§:Boolean = true;
       
      
      public var §<!9§:int;
      
      public var §!7§:int;
      
      public var §`!'§:String;
      
      public var §&!,§:Number;
      
      public var §"u§:Number;
      
      public var §&q§:Number;
      
      public var §=!5§:Number;
      
      public var §&k§:Number = 0;
      
      public var §-_§:Number;
      
      public var §"8§:Number;
      
      public var §,t§:String;
      
      public var §?M§:Number = -1;
      
      public var §6E§:int;
      
      public var §-`§:Number;
      
      public var §4J§:Number;
      
      protected var §&!N§:Sprite;
      
      private var §2!+§:§-@§;
      
      private var §8%§:int;
      
      protected var §]!§:int;
      
      protected var §7e§:Boolean;
      
      private var §>!%§:§!?§;
      
      private var §+!L§:Boolean;
      
      private var §1§:§"!?§;
      
      private var §-M§:§5!H§;
      
      private var § ?§:§;!%§;
      
      public function §<!6§(param1:§"!?§, param2:§5!H§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§&!N§ = new Sprite();
         super();
         this.§1§ = param1;
         this.§-M§ = param2;
         this.§`!'§ = param3;
         this.§<!9§ = param5;
         this.§!7§ = param4;
         this.§6E§ = param10;
         this.§]!§ = param16;
         this.§7e§ = param17;
         this.§,t§ = param9;
         this.§&!,§ = 0;
         this.§"8§ = param8;
         this.§-`§ = param6;
         this.§4J§ = param7;
         this.§-_§ = param15;
         this.§&q§ = param11;
         this.§"u§ = param12;
         this.§&k§ = param14;
         this.§=!5§ = param13;
         this.createVisuals();
         this.§+>§();
         if(this.§<!9§ == §!E§)
         {
            this.§?M§ = §=w§.§ o§.§%>§.§,j§ + this.§&!N§.height * § !§.§`J§;
         }
      }
      
      public static function §4!8§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §2!2§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §#4§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §8V§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §4<§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §&#§;
         }
         if(param1.toUpperCase().indexOf("BIRD_ORANGE") >= 0)
         {
            return §#4§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §!!6§;
         }
         if(param1.toUpperCase().indexOf("BIRD_CHRISTMAS") >= 0)
         {
            return §4<§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WINGMAN") >= 0)
         {
            return §2!2§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §6!N§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §;k§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §9!I§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §0h§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §6k§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §9S§;
         }
         return §4Q§;
      }
      
      public static function §-S§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §8B§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §=!!§;
         }
         if(param1.toUpperCase().indexOf("BIRD_ORANGE") >= 0)
         {
            return §"!C§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §1,§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §4L§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §>a§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §0n§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §0n§;
         }
         return §>a§;
      }
      
      public function get §,_§() : DisplayObject
      {
         return this.§&!N§;
      }
      
      public function §case §(param1:Number, param2:Number) : void
      {
      }
      
      protected function createVisuals() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§!?§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§`!'§)
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
            case §7!M§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §8!H§:
               this.createParticle("??");
               break;
            case §`7§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §'l§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §=#§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §#7§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §=,§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §&!-§:
            case §0!$§:
               if(parseInt(this.§,t§) == 10000 || parseInt(this.§,t§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§6E§)
                  {
                     case §8B§:
                        _loc8_ = 16058683;
                        break;
                     case §1,§:
                        _loc8_ = 55294;
                        break;
                     case §0n§:
                        _loc8_ = 1878602;
                        break;
                     case §4L§:
                        _loc8_ = 3552822;
                        break;
                     case §>a§:
                        break;
                     case §=!!§:
                        _loc8_ = 16705792;
                        break;
                     case §"!C§:
                        _loc8_ = 16753152;
                  }
                  if(parseInt(this.§,t§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§1§.§8!0§("NUMBERS");
                  this.§2!+§ = new §-@§(_loc2_,_loc3_,true);
                  this.§2!+§.§>!,§(parseInt(this.§,t§));
                  this.§&!N§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
               }
               else
               {
                  _loc2_ = new Sprite();
                  _loc3_ = this.§1§.§8!0§("NUMBERS");
                  this.§2!+§ = new §-@§(_loc2_,_loc3_);
                  this.§2!+§.§>!,§(parseInt(this.§,t§));
                  this.§&!N§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
               }
               break;
            case §1X§:
               switch(this.§6E§)
               {
                  case §9!I§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §9S§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §0h§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §6k§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §4Q§:
                     _loc6_ = 1 + _loc1_ % 3;
               }
               if(this.§&!N§)
               {
                  this.§&!N§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §9<§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§6E§)
               {
                  case §2!2§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §4<§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §8V§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §!!6§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §&#§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §#4§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §6!N§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§&!N§)
               {
                  this.§&!N§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            default:
               this.createParticle(this.§`!'§,null,this.§]!§,this.§7e§);
         }
      }
      
      protected function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§,z§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§+!L§ = param4;
         var _loc7_:Number = 1;
         this.§>!%§ = this.§1§.§8!0§(param1);
         if(this.§>!%§)
         {
            _loc6_ = (_loc5_ = this.§>!%§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            if(!(_loc5_ = this.§-M§.§3!'§(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
         }
         this.§8%§ = param3;
         var _loc8_:§?T§ = this.§83§(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§-_§ * _loc7_;
         this.§&!N§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§-_§;
            _loc8_.y = -_loc5_.pivotY * this.§-_§;
         }
         else
         {
            _loc8_.x = -this.§&!N§.width / 2;
            _loc8_.y = -this.§&!N§.height / 2;
         }
      }
      
      protected function §83§(param1:Texture) : §?T§
      {
         return new §?T§(param1,false);
      }
      
      public function §+>§() : void
      {
         if(this.§&!N§)
         {
            this.§&!N§.x = this.§-`§ / § !§.§`J§;
            this.§&!N§.y = this.§4J§ / § !§.§`J§;
         }
      }
      
      public function §6!M§(param1:§;!%§) : void
      {
         this.§ ?§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§,z§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§?T§ = null;
         this.§&!,§ += param1;
         var _loc2_:Boolean = false;
         if(this.§ ?§)
         {
            if(this.§ ?§.sprite == null || this.§ ?§.§;!+§ == null)
            {
               return false;
            }
            this.§-`§ = this.§ ?§.§'[§().GetPosition().x;
            this.§4J§ = this.§ ?§.§'[§().GetPosition().y;
         }
         if(this.§8%§ > 0 && this.§>!%§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§&!,§ / 1000 / (1 / _loc3_)) < this.§>!%§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§>!%§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.§83§(_loc6_);
               this.§&!N§.§]?§(0,-1,true);
               this.§&!N§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§-_§;
               _loc8_.y = -_loc5_.pivotY * this.§-_§;
               _loc8_.scaleX = _loc8_.scaleY = this.§-_§ * _loc7_;
            }
            else if(this.§+!L§)
            {
               this.§&!N§.§]?§(0,-1,true);
            }
         }
         if(this.§<!9§ == §!E§)
         {
            this.§2J§(param1);
            _loc2_ = this.§=k§(param1);
            if(this.§?M§ > 0 && this.§4J§ > this.§?M§)
            {
               return false;
            }
         }
         else
         {
            this.§2J§(param1);
            _loc2_ = this.§=k§(param1);
         }
         if(this.§"8§ > 0 && this.§&!,§ >= this.§"8§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§+>§();
         }
         return true;
      }
      
      public function §2J§(param1:Number) : void
      {
         this.§"u§ += param1 * this.§=!5§ / 1000;
         this.§4J§ += this.§"u§ * param1 / 1000;
         this.§-`§ += this.§&q§ * param1 / 1000;
         if(this.§&k§ != 0)
         {
            this.§&!N§.rotation += this.§&k§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §=k§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§<!9§ == § ^§)
         {
            if(this.§"8§ > 0)
            {
               _loc2_ = 1;
               if(this.§`!'§ == §0!$§)
               {
                  if((_loc4_ = this.§&!,§ / this.§"8§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§,t§) / 5000);
               }
               this.§&!N§.scaleX = _loc2_;
               this.§&!N§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§<!9§ == §!E§)
         {
            if(this.§`!'§ == §=,§)
            {
               this.§&!N§.alpha = Math.max(0,Math.min(1,2 * §7P§.§2!A§((this.§"8§ - this.§&!,§) / this.§"8§,false)));
               _loc5_ = Math.atan2(-this.§"u§,this.§&q§) * (180 / Math.PI);
               this.§&!N§.scaleX = Math.max(0.2,this.§&!N§.alpha);
               this.§&!N§.scaleY = Math.max(0.2,this.§&!N§.alpha);
               this.§&!N§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§`!'§ == §9<§ || this.§`!'§ == §=#§)
            {
               this.§&!N§.scaleX = this.§&!N§.scaleY = 0.2 + (this.§"8§ - this.§&!,§) / this.§"8§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§2!+§)
         {
            this.§2!+§.clear();
            this.§2!+§ = null;
         }
         if(this.§&!N§)
         {
            this.§&!N§.dispose();
            this.§&!N§ = null;
         }
         if(this.§ ?§)
         {
            this.§ ?§ = null;
         }
      }
   }
}
