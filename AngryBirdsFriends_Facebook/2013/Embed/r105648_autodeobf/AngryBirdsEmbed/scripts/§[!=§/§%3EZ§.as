package §[!=§
{
   import §"X§.Texture;
   import §#]§.§'5§;
   import §4n§.§@!4§;
   import §;'§.§7K§;
   import §;'§.§?!D§;
   import §;^§.§ @§;
   import §;^§.DisplayObject;
   import §;^§.Sprite;
   import §=!K§.;
   import §=!K§.§@p§;
   import §=!K§.§]!%§;
   import §=!K§.§^Q§;
   import §?!8§.§&5§;
   
   public class §>Z§
   {
      
      public static const §70§:int = 0;
      
      public static const §%t§:int = 1;
      
      public static const §]!J§:int = 2;
      
      public static const §5T§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §8!I§:String = "Effect_TrailBig_Bird";
      
      public static const §@b§:String = "Effect_Trail_Sparkle";
      
      public static const §%K§:String = "Effect_Floating_Score";
      
      public static const §[@§:String = "Effect_Floating_Text";
      
      public static const §<&§:String = "Effect_Explosion_Particle";
      
      public static const §=g§:String = "Effect_Explosion_Core";
      
      public static const §0]§:String = "Effect_Pig_Destruction";
      
      public static const §2!8§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §5e§:String = "Effect_Bird_Destruction";
      
      public static const §6!E§:String = "Effect_Block_Destruction_Particles";
      
      public static const §=P§:String = "Effect_Block_Destruction_Core";
      
      public static const §]9§:int = 0;
      
      public static const §@K§:int = 1;
      
      public static const §,R§:int = 2;
      
      public static const §#!6§:int = 3;
      
      public static const §&o§:int = 4;
      
      public static const §"3§:int = 5;
      
      public static const §?!?§:int = 6;
      
      public static const §`Y§:int = 7;
      
      public static const §3!$§:int = 8;
      
      public static const §2!+§:int = 9;
      
      public static const §,1§:int = 10;
      
      public static const §&N§:int = 11;
      
      public static const §#T§:int = 12;
      
      public static const §96§:int = 13;
      
      public static const §8>§:int = 14;
      
      public static const §`r§:int = 15;
      
      public static const §3!;§:int = 16;
      
      public static const §<#§:int = 17;
      
      public static const §+8§:int = 18;
      
      public static const §'!6§:int = 19;
      
      public static const §@O§:Boolean = true;
       
      
      public var §!Q§:int;
      
      public var §1U§:int;
      
      public var §9i§:String;
      
      public var §>t§:Number;
      
      public var §7l§:Number;
      
      public var § a§:Number;
      
      public var §import§:Number;
      
      public var §+r§:Number = 0;
      
      public var § W§:Number;
      
      public var § !"§:Number;
      
      public var §1W§:String;
      
      public var §;P§:Number = -1;
      
      public var §=>§:int;
      
      public var § H§:Number;
      
      public var §=§:Number;
      
      protected var §"!L§:Sprite;
      
      private var § ! §:§7K§;
      
      private var §1!8§:int;
      
      protected var §]>§:int;
      
      protected var §4J§:Boolean;
      
      private var §44§:§#4§;
      
      private var §>!!§:Boolean;
      
      private var §?!1§:§]!%§;
      
      private var §9!=§:§^Q§;
      
      private var § !0§:§@!4§;
      
      public function §>Z§(param1:§]!%§, param2:§^Q§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§"!L§ = new Sprite();
         super();
         this.§?!1§ = param1;
         this.§9!=§ = param2;
         this.§9i§ = param3;
         this.§!Q§ = param5;
         this.§1U§ = param4;
         this.§=>§ = param10;
         this.§]>§ = param16;
         this.§4J§ = param17;
         this.§1W§ = param9;
         this.§>t§ = 0;
         this.§ !"§ = param8;
         this.§ H§ = param6;
         this.§=§ = param7;
         this.§ W§ = param15;
         this.§ a§ = param11;
         this.§7l§ = param12;
         this.§+r§ = param14;
         this.§import§ = param13;
         this.createVisuals();
         this.§1!L§();
         if(this.§!Q§ == §%t§)
         {
            this.§;P§ = §'5§.§^;§.§-!>§.§-1§ + this.§"!L§.height * §?!D§.§@!I§;
         }
      }
      
      public static function §'T§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §]9§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §,R§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §@K§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §"3§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §&o§;
         }
         if(param1.toUpperCase().indexOf("BIRD_ORANGE") >= 0)
         {
            return §,R§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §#!6§;
         }
         if(param1.toUpperCase().indexOf("BIRD_CHRISTMAS") >= 0)
         {
            return §"3§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WINGMAN") >= 0)
         {
            return §]9§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §+8§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §?!?§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §2!+§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §`Y§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §3!$§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §,1§;
         }
         return §&N§;
      }
      
      public static function §<!C§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §#T§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §8>§;
         }
         if(param1.toUpperCase().indexOf("BIRD_ORANGE") >= 0)
         {
            return §'!6§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §96§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §<#§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §3!;§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §`r§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §`r§;
         }
         return §3!;§;
      }
      
      public function get §]d§() : DisplayObject
      {
         return this.§"!L§;
      }
      
      public function §6q§(param1:Number, param2:Number) : void
      {
      }
      
      protected function createVisuals() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§#4§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§9i§)
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
            case §8!I§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §@b§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §0]§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §2!8§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §=P§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §=g§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §<&§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §%K§:
            case §[@§:
               if(parseInt(this.§1W§) == 10000 || parseInt(this.§1W§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§=>§)
                  {
                     case §#T§:
                        _loc8_ = 16058683;
                        break;
                     case §96§:
                        _loc8_ = 55294;
                        break;
                     case §`r§:
                        _loc8_ = 1878602;
                        break;
                     case §<#§:
                        _loc8_ = 3552822;
                        break;
                     case §3!;§:
                        break;
                     case §8>§:
                        _loc8_ = 16705792;
                        break;
                     case §'!6§:
                        _loc8_ = 16753152;
                  }
                  if(parseInt(this.§1W§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§?!1§.§]C§("NUMBERS");
                  this.§ ! § = new §7K§(_loc2_,_loc3_,true);
                  this.§ ! §.§3i§(parseInt(this.§1W§));
                  this.§"!L§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§?!1§.§]C§("NUMBERS");
               this.§ ! § = new §7K§(_loc2_,_loc3_);
               this.§ ! §.§3i§(parseInt(this.§1W§));
               this.§"!L§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §6!E§:
               switch(this.§=>§)
               {
                  case §2!+§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §,1§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §`Y§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §3!$§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §&N§:
                     _loc6_ = 1 + _loc1_ % 3;
               }
               if(this.§"!L§)
               {
                  this.§"!L§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §5e§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§=>§)
               {
                  case §]9§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §"3§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §@K§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §#!6§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §&o§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §,R§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §+8§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§"!L§)
               {
                  this.§"!L§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§9i§,null,this.§]>§,this.§4J§);
         }
      }
      
      protected function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§@p§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§>!!§ = param4;
         var _loc7_:Number = 1;
         this.§44§ = this.§?!1§.§]C§(param1);
         if(this.§44§)
         {
            _loc6_ = (_loc5_ = this.§44§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            if(!(_loc5_ = this.§9!=§.§=!B§(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
         }
         this.§1!8§ = param3;
         var _loc8_:§ @§ = this.§&"§(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§ W§ * _loc7_;
         this.§"!L§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§ W§;
            _loc8_.y = -_loc5_.pivotY * this.§ W§;
         }
         else
         {
            _loc8_.x = -this.§"!L§.width / 2;
            _loc8_.y = -this.§"!L§.height / 2;
         }
      }
      
      protected function §&"§(param1:Texture) : § @§
      {
         return new § @§(param1,false);
      }
      
      public function §1!L§() : void
      {
         if(this.§"!L§)
         {
            this.§"!L§.x = this.§ H§ / §?!D§.§@!I§;
            this.§"!L§.y = this.§=§ / §?!D§.§@!I§;
         }
      }
      
      public function §9!3§(param1:§@!4§) : void
      {
         this.§ !0§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§@p§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§ @§ = null;
         this.§>t§ += param1;
         var _loc2_:Boolean = false;
         if(this.§ !0§)
         {
            if(this.§ !0§.sprite == null || this.§ !0§.§2!"§ == null)
            {
               return false;
            }
            this.§ H§ = this.§ !0§.§^C§().GetPosition().x;
            this.§=§ = this.§ !0§.§^C§().GetPosition().y;
         }
         if(this.§1!8§ > 0 && this.§44§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§>t§ / 1000 / (1 / _loc3_)) < this.§44§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§44§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.§&"§(_loc6_);
               this.§"!L§.§;m§(0,-1,true);
               this.§"!L§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§ W§;
               _loc8_.y = -_loc5_.pivotY * this.§ W§;
               _loc8_.scaleX = _loc8_.scaleY = this.§ W§ * _loc7_;
            }
            else if(this.§>!!§)
            {
               this.§"!L§.§;m§(0,-1,true);
            }
         }
         if(this.§!Q§ == §%t§)
         {
            this.§5;§(param1);
            _loc2_ = this.§%=§(param1);
            if(this.§;P§ > 0 && this.§=§ > this.§;P§)
            {
               return false;
            }
         }
         else
         {
            this.§5;§(param1);
            _loc2_ = this.§%=§(param1);
         }
         if(this.§ !"§ > 0 && this.§>t§ >= this.§ !"§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§1!L§();
         }
         return true;
      }
      
      public function §5;§(param1:Number) : void
      {
         this.§7l§ += param1 * this.§import§ / 1000;
         this.§=§ += this.§7l§ * param1 / 1000;
         this.§ H§ += this.§ a§ * param1 / 1000;
         if(this.§+r§ != 0)
         {
            this.§"!L§.rotation += this.§+r§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §%=§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§!Q§ == §70§)
         {
            if(this.§ !"§ > 0)
            {
               _loc2_ = 1;
               if(this.§9i§ == §[@§)
               {
                  if((_loc4_ = this.§>t§ / this.§ !"§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§1W§) / 5000);
               }
               this.§"!L§.scaleX = _loc2_;
               this.§"!L§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§!Q§ == §%t§)
         {
            if(this.§9i§ == §<&§)
            {
               this.§"!L§.alpha = Math.max(0,Math.min(1,2 * §&5§.§'&§((this.§ !"§ - this.§>t§) / this.§ !"§,false)));
               _loc5_ = Math.atan2(-this.§7l§,this.§ a§) * (180 / Math.PI);
               this.§"!L§.scaleX = Math.max(0.2,this.§"!L§.alpha);
               this.§"!L§.scaleY = Math.max(0.2,this.§"!L§.alpha);
               this.§"!L§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§9i§ == §5e§ || this.§9i§ == §=P§)
            {
               this.§"!L§.scaleX = this.§"!L§.scaleY = 0.2 + (this.§ !"§ - this.§>t§) / this.§ !"§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§ ! §)
         {
            this.§ ! §.clear();
            this.§ ! § = null;
         }
         if(this.§"!L§)
         {
            this.§"!L§.dispose();
            this.§"!L§ = null;
         }
         if(this.§ !0§)
         {
            this.§ !0§ = null;
         }
      }
   }
}
