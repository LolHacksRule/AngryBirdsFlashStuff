package §3v§
{
   import §!!9§.Texture;
   import §+&§.§-!7§;
   import §+&§.§0!,§;
   import §,6§.§!o§;
   import §,6§.§5z§;
   import §,6§.§>N§;
   import §,6§.§^!>§;
   import §5i§.§4!]§;
   import §6z§.§4!u§;
   import §9E§.§;!U§;
   import §9E§.DisplayObject;
   import §9E§.Sprite;
   import §]![§.§4!H§;
   
   public class §6Q§
   {
      
      public static const §#@§:int = 0;
      
      public static const §?G§:int = 1;
      
      public static const §5!]§:int = 2;
      
      public static const §,e§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §2!+§:String = "Effect_TrailBig_Bird";
      
      public static const §6!p§:String = "Effect_Trail_Sparkle";
      
      public static const §-!T§:String = "Effect_Floating_Score";
      
      public static const § ^§:String = "Effect_Floating_Text";
      
      public static const § t§:String = "Effect_Explosion_Particle";
      
      public static const §,!p§:String = "Effect_Explosion_Core";
      
      public static const §?@§:String = "Effect_Pig_Destruction";
      
      public static const §6F§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §&4§:String = "Effect_Bird_Destruction";
      
      public static const §"!?§:String = "Effect_Block_Destruction_Particles";
      
      public static const §['§:String = "Effect_Block_Destruction_Core";
      
      public static const §-@§:int = 0;
      
      public static const §`!f§:int = 1;
      
      public static const §^!R§:int = 2;
      
      public static const §+!f§:int = 3;
      
      public static const §^!&§:int = 4;
      
      public static const §5?§:int = 5;
      
      public static const §'!q§:int = 6;
      
      public static const §,H§:int = 7;
      
      public static const §7I§:int = 8;
      
      public static const §6>§:int = 9;
      
      public static const § !f§:int = 10;
      
      public static const §&!$§:int = 11;
      
      public static const §6!d§:int = 12;
      
      public static const §81§:int = 13;
      
      public static const § !n§:int = 14;
      
      public static const §[!Q§:int = 15;
      
      public static const §9Z§:int = 16;
      
      public static const §7h§:int = 17;
      
      public static const §#+§:int = 18;
      
      public static const §=&§:Boolean = true;
       
      
      public var §`U§:int;
      
      public var §;!c§:int;
      
      public var §4!I§:String;
      
      public var §1!<§:Number;
      
      public var §;E§:Number;
      
      public var §^y§:Number;
      
      public var §#!R§:Number;
      
      public var §3!f§:Number = 0;
      
      public var §!+§:Number;
      
      public var §87§:Number;
      
      public var §>!U§:String;
      
      public var §'d§:Number = -1;
      
      public var §%!"§:int;
      
      public var §;!@§:Number;
      
      public var §3L§:Number;
      
      private var §0!<§:Sprite;
      
      private var §;!5§:§0!,§;
      
      private var §[l§:int;
      
      protected var §+y§:int;
      
      protected var §^! §:Boolean;
      
      private var §?I§:§^!>§;
      
      private var § !_§:Boolean;
      
      private var §'@§:§>N§;
      
      private var §3!L§:§!o§;
      
      private var §"K§:§4!H§;
      
      public function §6Q§(param1:§>N§, param2:§!o§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§0!<§ = new Sprite();
         super();
         this.§'@§ = param1;
         this.§3!L§ = param2;
         this.§4!I§ = param3;
         this.§`U§ = param5;
         this.§;!c§ = param4;
         this.§%!"§ = param10;
         this.§+y§ = param16;
         this.§^! § = param17;
         this.§>!U§ = param9;
         this.§1!<§ = 0;
         this.§87§ = param8;
         this.§;!@§ = param6;
         this.§3L§ = param7;
         this.§!+§ = param15;
         this.§^y§ = param11;
         this.§;E§ = param12;
         this.§3!f§ = param14;
         this.§#!R§ = param13;
         this.createVisuals();
         this.§ a§();
         if(this.§`U§ == §?G§)
         {
            this.§'d§ = §4!]§.§8C§.§<!x§.§;2§ + this.§0!<§.height * §-!7§.§8!r§;
         }
      }
      
      public static function §5r§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §-@§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §^!R§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §`!f§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §5?§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §^!&§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §+!f§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §#+§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §'!q§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §6>§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §,H§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §7I§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return § !f§;
         }
         return §&!$§;
      }
      
      public static function §>k§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §6!d§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return § !n§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §81§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §7h§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §9Z§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §[!Q§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §[!Q§;
         }
         return §9Z§;
      }
      
      public function get §74§() : DisplayObject
      {
         return this.§0!<§;
      }
      
      public function §<6§(param1:Number, param2:Number) : void
      {
      }
      
      protected function createVisuals() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§^!>§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§4!I§)
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
            case §2!+§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §6!p§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §?@§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §6F§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §['§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §,!p§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case § t§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §-!T§:
            case § ^§:
               if(parseInt(this.§>!U§) == 10000 || parseInt(this.§>!U§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§%!"§)
                  {
                     case §6!d§:
                        _loc8_ = 16058683;
                        break;
                     case §81§:
                        _loc8_ = 55294;
                        break;
                     case §[!Q§:
                        _loc8_ = 1878602;
                        break;
                     case §7h§:
                        _loc8_ = 3552822;
                        break;
                     case §9Z§:
                        break;
                     case § !n§:
                        _loc8_ = 16705792;
                  }
                  if(parseInt(this.§>!U§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§'@§.getAnimation("NUMBERS");
                  this.§;!5§ = new §0!,§(_loc2_,_loc3_,true);
                  this.§;!5§.§[R§(parseInt(this.§>!U§));
                  this.§0!<§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§'@§.getAnimation("NUMBERS");
               this.§;!5§ = new §0!,§(_loc2_,_loc3_);
               this.§;!5§.§[R§(parseInt(this.§>!U§));
               this.§0!<§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §"!?§:
               switch(this.§%!"§)
               {
                  case §6>§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case § !f§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §,H§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §7I§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §&!$§:
                     _loc6_ = 1 + _loc1_ % 3;
               }
               if(this.§0!<§)
               {
                  this.§0!<§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §&4§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§%!"§)
               {
                  case §-@§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §5?§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §`!f§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §+!f§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §^!&§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §^!R§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §#+§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§0!<§)
               {
                  this.§0!<§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§4!I§,null,this.§+y§,this.§^! §);
         }
      }
      
      protected function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§5z§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§ !_§ = param4;
         var _loc7_:Number = 1;
         this.§?I§ = this.§'@§.getAnimation(param1);
         if(this.§?I§)
         {
            _loc6_ = (_loc5_ = this.§?I§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            if(!(_loc5_ = this.§3!L§.§`F§(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
         }
         this.§[l§ = param3;
         var _loc8_:§;!U§ = this.§;^§(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§!+§ * _loc7_;
         this.§0!<§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§!+§;
            _loc8_.y = -_loc5_.pivotY * this.§!+§;
         }
         else
         {
            _loc8_.x = -this.§0!<§.width / 2;
            _loc8_.y = -this.§0!<§.height / 2;
         }
      }
      
      protected function §;^§(param1:Texture) : §;!U§
      {
         return new §;!U§(param1,false);
      }
      
      public function § a§() : void
      {
         if(this.§0!<§)
         {
            this.§0!<§.x = this.§;!@§ / §-!7§.§8!r§;
            this.§0!<§.y = this.§3L§ / §-!7§.§8!r§;
         }
      }
      
      public function §"&§(param1:§4!H§) : void
      {
         this.§"K§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§5z§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§;!U§ = null;
         this.§1!<§ += param1;
         var _loc2_:Boolean = false;
         if(this.§"K§)
         {
            if(this.§"K§.sprite == null || this.§"K§.§&!'§ == null)
            {
               return false;
            }
            this.§;!@§ = this.§"K§.§+$§().GetPosition().x;
            this.§3L§ = this.§"K§.§+$§().GetPosition().y;
         }
         if(this.§[l§ > 0 && this.§?I§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§1!<§ / 1000 / (1 / _loc3_)) < this.§?I§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§?I§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.§;^§(_loc6_);
               this.§0!<§.§[!G§(0,-1,true);
               this.§0!<§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§!+§;
               _loc8_.y = -_loc5_.pivotY * this.§!+§;
               _loc8_.scaleX = _loc8_.scaleY = this.§!+§ * _loc7_;
            }
            else if(this.§ !_§)
            {
               this.§0!<§.§[!G§(0,-1,true);
            }
         }
         if(this.§`U§ == §?G§)
         {
            this.§"]§(param1);
            _loc2_ = this.§8D§(param1);
            if(this.§'d§ > 0 && this.§3L§ > this.§'d§)
            {
               return false;
            }
         }
         else
         {
            this.§"]§(param1);
            _loc2_ = this.§8D§(param1);
         }
         if(this.§87§ > 0 && this.§1!<§ >= this.§87§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§ a§();
         }
         return true;
      }
      
      public function §"]§(param1:Number) : void
      {
         this.§;E§ += param1 * this.§#!R§ / 1000;
         this.§3L§ += this.§;E§ * param1 / 1000;
         this.§;!@§ += this.§^y§ * param1 / 1000;
         if(this.§3!f§ != 0)
         {
            this.§0!<§.rotation += this.§3!f§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §8D§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§`U§ == §#@§)
         {
            if(this.§87§ > 0)
            {
               _loc2_ = 1;
               if(this.§4!I§ == § ^§)
               {
                  if((_loc4_ = this.§1!<§ / this.§87§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§>!U§) / 5000);
               }
               this.§0!<§.scaleX = _loc2_;
               this.§0!<§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§`U§ == §?G§)
         {
            if(this.§4!I§ == § t§)
            {
               this.§0!<§.alpha = Math.max(0,Math.min(1,2 * §4!u§.§4!W§((this.§87§ - this.§1!<§) / this.§87§,false)));
               _loc5_ = Math.atan2(-this.§;E§,this.§^y§) * (180 / Math.PI);
               this.§0!<§.scaleX = Math.max(0.2,this.§0!<§.alpha);
               this.§0!<§.scaleY = Math.max(0.2,this.§0!<§.alpha);
               this.§0!<§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§4!I§ == §&4§ || this.§4!I§ == §['§)
            {
               this.§0!<§.scaleX = this.§0!<§.scaleY = 0.2 + (this.§87§ - this.§1!<§) / this.§87§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§;!5§)
         {
            this.§;!5§.clear();
            this.§;!5§ = null;
         }
         if(this.§0!<§)
         {
            this.§0!<§.dispose();
            this.§0!<§ = null;
         }
         if(this.§"K§)
         {
            this.§"K§ = null;
         }
      }
   }
}
