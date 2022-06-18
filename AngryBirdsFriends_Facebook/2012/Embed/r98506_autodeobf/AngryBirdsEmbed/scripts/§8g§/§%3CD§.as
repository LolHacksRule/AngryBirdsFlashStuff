package §8g§
{
   import §"a§.§#c§;
   import §"a§.§8P§;
   import §"a§.§>X§;
   import §"a§.§^>§;
   import §#;§.§4!8§;
   import §#;§.§5!E§;
   import §&c§.§9h§;
   import §-p§.§6!G§;
   import §5@§.Texture;
   import §;q§.DisplayObject;
   import §;q§.Sprite;
   import §;q§.§[E§;
   import §`t§.§^?§;
   
   public class §<D§
   {
      
      public static const §0!2§:int = 0;
      
      public static const §'K§:int = 1;
      
      public static const §"#§:int = 2;
      
      public static const §6#§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §<-§:String = "Effect_TrailBig_Bird";
      
      public static const §+!$§:String = "Effect_Trail_Sparkle";
      
      public static const §'!1§:String = "Effect_Floating_Score";
      
      public static const §#w§:String = "Effect_Floating_Text";
      
      public static const §@!?§:String = "Effect_Explosion_Particle";
      
      public static const §>F§:String = "Effect_Explosion_Core";
      
      public static const §]i§:String = "Effect_Pig_Destruction";
      
      public static const §#!I§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §"W§:String = "Effect_Bird_Destruction";
      
      public static const §"!4§:String = "Effect_Block_Destruction_Particles";
      
      public static const §`0§:String = "Effect_Block_Destruction_Core";
      
      public static const §!!&§:int = 0;
      
      public static const §48§:int = 1;
      
      public static const §;!C§:int = 2;
      
      public static const §'1§:int = 3;
      
      public static const §@!=§:int = 4;
      
      public static const § do§:int = 5;
      
      public static const §5!6§:int = 6;
      
      public static const §0r§:int = 7;
      
      public static const §@2§:int = 8;
      
      public static const § Y§:int = 9;
      
      public static const §;6§:int = 10;
      
      public static const §#b§:int = 11;
      
      public static const §&!?§:int = 12;
      
      public static const §>6§:int = 13;
      
      public static const §,X§:int = 14;
      
      public static const §^w§:int = 15;
      
      public static const §"!G§:int = 16;
      
      public static const §@!E§:int = 17;
      
      public static const §3!4§:int = 18;
      
      public static const §>H§:Boolean = true;
       
      
      public var §8$§:int;
      
      public var §class§:int;
      
      public var §6"§:String;
      
      public var §-!F§:Number;
      
      public var §3+§:Number;
      
      public var §-6§:Number;
      
      public var §]7§:Number;
      
      public var §!S§:Number = 0;
      
      public var §&p§:Number;
      
      public var §>!G§:Number;
      
      public var §<k§:String;
      
      public var §7<§:Number = -1;
      
      public var §6N§:int;
      
      public var §9r§:Number;
      
      public var §!0§:Number;
      
      private var §4_§:Sprite;
      
      private var §1N§:§5!E§;
      
      private var §<H§:int;
      
      protected var §0`§:int;
      
      protected var §0F§:Boolean;
      
      private var §=>§:§#c§;
      
      private var §<I§:Boolean;
      
      private var §,3§:§8P§;
      
      private var §>t§:§>X§;
      
      private var §+!D§:§9h§;
      
      public function §<D§(param1:§8P§, param2:§>X§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§4_§ = new Sprite();
         super();
         this.§,3§ = param1;
         this.§>t§ = param2;
         this.§6"§ = param3;
         this.§8$§ = param5;
         this.§class§ = param4;
         this.§6N§ = param10;
         this.§0`§ = param16;
         this.§0F§ = param17;
         this.§<k§ = param9;
         this.§-!F§ = 0;
         this.§>!G§ = param8;
         this.§9r§ = param6;
         this.§!0§ = param7;
         this.§&p§ = param15;
         this.§-6§ = param11;
         this.§3+§ = param12;
         this.§!S§ = param14;
         this.§]7§ = param13;
         this.createVisuals();
         this.§1!"§();
         if(this.§8$§ == §'K§)
         {
            this.§7<§ = §^?§.§]!%§.§-x§.§in § + this.§4_§.height * §4!8§.§5+§;
         }
      }
      
      public static function §;5§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §!!&§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §;!C§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §48§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return § do§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §@!=§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §'1§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §3!4§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §5!6§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return § Y§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §0r§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §@2§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §;6§;
         }
         return §#b§;
      }
      
      public static function §;L§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §&!?§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §,X§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §>6§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §@!E§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §"!G§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §^w§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §^w§;
         }
         return §"!G§;
      }
      
      public function get §!!>§() : DisplayObject
      {
         return this.§4_§;
      }
      
      public function §7p§(param1:Number, param2:Number) : void
      {
      }
      
      protected function createVisuals() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§#c§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§6"§)
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
            case §<-§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §+!$§:
               this.createParticle("??");
               break;
            case §]i§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §#!I§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §`0§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §>F§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §@!?§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §'!1§:
            case §#w§:
               if(parseInt(this.§<k§) == 10000 || parseInt(this.§<k§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§6N§)
                  {
                     case §&!?§:
                        _loc8_ = 16058683;
                        break;
                     case §>6§:
                        _loc8_ = 55294;
                        break;
                     case §^w§:
                        _loc8_ = 1878602;
                        break;
                     case §@!E§:
                        _loc8_ = 3552822;
                        break;
                     case §"!G§:
                        break;
                     case §,X§:
                        _loc8_ = 16705792;
                  }
                  if(parseInt(this.§<k§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§,3§.§12§("NUMBERS");
                  this.§1N§ = new §5!E§(_loc2_,_loc3_,true);
                  this.§1N§.§switch§(parseInt(this.§<k§));
                  this.§4_§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§,3§.§12§("NUMBERS");
               this.§1N§ = new §5!E§(_loc2_,_loc3_);
               this.§1N§.§switch§(parseInt(this.§<k§));
               this.§4_§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §"!4§:
               switch(this.§6N§)
               {
                  case § Y§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §;6§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §0r§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §@2§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §#b§:
                     _loc6_ = 1 + _loc1_ % 3;
               }
               if(this.§4_§)
               {
                  this.§4_§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            case §"W§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§6N§)
               {
                  case §!!&§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case § do§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §48§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §'1§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §@!=§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §;!C§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §3!4§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§4_§)
               {
                  this.§4_§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§6"§,null,this.§0`§,this.§0F§);
         }
      }
      
      protected function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§^>§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§<I§ = param4;
         var _loc7_:Number = 1;
         this.§=>§ = this.§,3§.§12§(param1);
         if(this.§=>§)
         {
            _loc6_ = (_loc5_ = this.§=>§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            if(!(_loc5_ = this.§>t§.§>]§(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
         }
         this.§<H§ = param3;
         var _loc8_:§[E§ = this.§;!%§(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§&p§ * _loc7_;
         this.§4_§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§&p§;
            _loc8_.y = -_loc5_.pivotY * this.§&p§;
         }
         else
         {
            _loc8_.x = -this.§4_§.width / 2;
            _loc8_.y = -this.§4_§.height / 2;
         }
      }
      
      protected function §;!%§(param1:Texture) : §[E§
      {
         return new §[E§(param1,false);
      }
      
      public function §1!"§() : void
      {
         if(this.§4_§)
         {
            this.§4_§.x = this.§9r§ / §4!8§.§5+§;
            this.§4_§.y = this.§!0§ / §4!8§.§5+§;
         }
      }
      
      public function §`!,§(param1:§9h§) : void
      {
         this.§+!D§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§^>§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§[E§ = null;
         this.§-!F§ += param1;
         var _loc2_:Boolean = false;
         if(this.§+!D§)
         {
            if(this.§+!D§.sprite == null || this.§+!D§.§21§ == null)
            {
               return false;
            }
            this.§9r§ = this.§+!D§.§68§().GetPosition().x;
            this.§!0§ = this.§+!D§.§68§().GetPosition().y;
         }
         if(this.§<H§ > 0 && this.§=>§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§-!F§ / 1000 / (1 / _loc3_)) < this.§=>§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§=>§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.§;!%§(_loc6_);
               this.§4_§.§%k§(0,-1,true);
               this.§4_§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§&p§;
               _loc8_.y = -_loc5_.pivotY * this.§&p§;
               _loc8_.scaleX = _loc8_.scaleY = this.§&p§ * _loc7_;
            }
            else if(this.§<I§)
            {
               this.§4_§.§%k§(0,-1,true);
            }
         }
         if(this.§8$§ == §'K§)
         {
            this.§8E§(param1);
            _loc2_ = this.§-Y§(param1);
            if(this.§7<§ > 0 && this.§!0§ > this.§7<§)
            {
               return false;
            }
         }
         else
         {
            this.§8E§(param1);
            _loc2_ = this.§-Y§(param1);
         }
         if(this.§>!G§ > 0 && this.§-!F§ >= this.§>!G§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§1!"§();
         }
         return true;
      }
      
      public function §8E§(param1:Number) : void
      {
         this.§3+§ += param1 * this.§]7§ / 1000;
         this.§!0§ += this.§3+§ * param1 / 1000;
         this.§9r§ += this.§-6§ * param1 / 1000;
         if(this.§!S§ != 0)
         {
            this.§4_§.rotation += this.§!S§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §-Y§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§8$§ == §0!2§)
         {
            if(this.§>!G§ > 0)
            {
               _loc2_ = 1;
               if(this.§6"§ == §#w§)
               {
                  if((_loc4_ = this.§-!F§ / this.§>!G§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§<k§) / 5000);
               }
               this.§4_§.scaleX = _loc2_;
               this.§4_§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§8$§ == §'K§)
         {
            if(this.§6"§ == §@!?§)
            {
               this.§4_§.alpha = Math.max(0,Math.min(1,2 * §6!G§.§,]§((this.§>!G§ - this.§-!F§) / this.§>!G§,false)));
               _loc5_ = Math.atan2(-this.§3+§,this.§-6§) * (180 / Math.PI);
               this.§4_§.scaleX = Math.max(0.2,this.§4_§.alpha);
               this.§4_§.scaleY = Math.max(0.2,this.§4_§.alpha);
               this.§4_§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§6"§ == §"W§ || this.§6"§ == §`0§)
            {
               this.§4_§.scaleX = this.§4_§.scaleY = 0.2 + (this.§>!G§ - this.§-!F§) / this.§>!G§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§1N§)
         {
            this.§1N§.clear();
            this.§1N§ = null;
         }
         if(this.§4_§)
         {
            this.§4_§.dispose();
            this.§4_§ = null;
         }
         if(this.§+!D§)
         {
            this.§+!D§ = null;
         }
      }
   }
}
