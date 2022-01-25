package §@!>§
{
   import §#!a§.Texture;
   import §4!O§.§&+§;
   import §5!?§.§4>§;
   import §5!?§.§>"§;
   import §6!Q§.§8!_§;
   import §8r§.§ "§;
   import §8r§.§-!$§;
   import §8r§.§@V§;
   import §8r§.§^!a§;
   import §;t§.§=_§;
   import §;t§.DisplayObject;
   import §;t§.Sprite;
   import §=F§.§"n§;
   
   public class §<!J§
   {
      
      public static const §1!5§:int = 0;
      
      public static const §"@§:int = 1;
      
      public static const §-E§:int = 2;
      
      public static const §@!^§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §`>§:String = "Effect_TrailBig_Bird";
      
      public static const §'n§:String = "Effect_Trail_Sparkle";
      
      public static const §5!A§:String = "Effect_Floating_Score";
      
      public static const §[!E§:String = "Effect_Floating_Text";
      
      public static const §^!<§:String = "Effect_Explosion_Particle";
      
      public static const §%q§:String = "Effect_Explosion_Core";
      
      public static const §0!E§:String = "Effect_Pig_Destruction";
      
      public static const §9E§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §9s§:String = "Effect_Bird_Destruction";
      
      public static const §7_§:String = "Effect_Block_Destruction_Particles";
      
      public static const §9x§:String = "Effect_Block_Destruction_Core";
      
      public static const §'!4§:int = 0;
      
      public static const §6!<§:int = 1;
      
      public static const §2O§:int = 2;
      
      public static const §8!R§:int = 3;
      
      public static const §-!#§:int = 4;
      
      public static const §^!R§:int = 5;
      
      public static const §"3§:int = 6;
      
      public static const §9!R§:int = 7;
      
      public static const §;J§:int = 8;
      
      public static const §`!-§:int = 9;
      
      public static const §,'§:int = 10;
      
      public static const §2!_§:int = 11;
      
      public static const §3!V§:int = 12;
      
      public static const §6X§:int = 13;
      
      public static const §@!;§:int = 14;
      
      public static const §2E§:int = 15;
      
      public static const § %§:int = 16;
      
      public static const §&!<§:int = 17;
      
      public static const §3!D§:int = 18;
      
      public static const §6!>§:Boolean = true;
       
      
      public var §[R§:int;
      
      public var §?b§:int;
      
      public var §8!K§:String;
      
      public var §0+§:Number;
      
      public var §1O§:Number;
      
      public var §@!X§:Number;
      
      public var §`!E§:Number;
      
      public var §+!6§:Number = 0;
      
      public var §`z§:Number;
      
      public var §69§:Number;
      
      public var §]!W§:String;
      
      public var §6!c§:Number = -1;
      
      public var §@A§:int;
      
      public var §?H§:Number;
      
      public var §>!a§:Number;
      
      private var §3!&§:Sprite;
      
      private var §@!,§:§4>§;
      
      private var §2!0§:int;
      
      private var §0`§:int;
      
      private var §&!4§:Boolean;
      
      private var §9!G§:§^!a§;
      
      private var §?!_§:Boolean;
      
      private var §0h§:§ "§;
      
      private var § u§:§@V§;
      
      private var § i§:§&+§;
      
      public function §<!J§(param1:§ "§, param2:§@V§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§3!&§ = new Sprite();
         super();
         this.§0h§ = param1;
         this.§ u§ = param2;
         this.§8!K§ = param3;
         this.§[R§ = param5;
         this.§?b§ = param4;
         this.§@A§ = param10;
         this.§0`§ = param16;
         this.§&!4§ = param17;
         this.§]!W§ = param9;
         this.§0+§ = 0;
         this.§69§ = param8;
         this.§?H§ = param6;
         this.§>!a§ = param7;
         this.§`z§ = param15;
         this.§@!X§ = param11;
         this.§1O§ = param12;
         this.§+!6§ = param14;
         this.§`!E§ = param13;
         this.§5!'§();
         this.§%!9§();
         if(this.§[R§ == §"@§)
         {
            this.§6!c§ = §"n§.§[b§.§>!J§.§09§ + this.§3!&§.height * §>"§.§'!S§;
         }
      }
      
      public static function §7D§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §'!4§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §2O§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §6!<§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §^!R§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §-!#§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §8!R§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §3!D§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §"3§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §`!-§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §9!R§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §;J§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §,'§;
         }
         return §2!_§;
      }
      
      public static function §'!B§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §3!V§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §@!;§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §6X§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §&!<§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return § %§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §2E§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §2E§;
         }
         return § %§;
      }
      
      public function get §=o§() : DisplayObject
      {
         return this.§3!&§;
      }
      
      public function §?!R§(param1:Number, param2:Number) : void
      {
      }
      
      protected function §5!'§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§^!a§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§8!K§)
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
            case §`>§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §'n§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §0!E§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §9E§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §9x§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §%q§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §^!<§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §5!A§:
            case §[!E§:
               if(parseInt(this.§]!W§) == 10000 || parseInt(this.§]!W§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§@A§)
                  {
                     case §3!V§:
                        _loc8_ = 16058683;
                        break;
                     case §6X§:
                        _loc8_ = 55294;
                        break;
                     case §2E§:
                        _loc8_ = 1878602;
                        break;
                     case §&!<§:
                        _loc8_ = 3552822;
                        break;
                     case § %§:
                        break;
                     case §@!;§:
                        _loc8_ = 16705792;
                  }
                  if(parseInt(this.§]!W§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§0h§.§8T§("NUMBERS");
                  this.§@!,§ = new §4>§(_loc2_,_loc3_,true);
                  this.§@!,§.§!!5§(parseInt(this.§]!W§));
                  this.§3!&§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§0h§.§8T§("NUMBERS");
               this.§@!,§ = new §4>§(_loc2_,_loc3_);
               this.§@!,§.§!!5§(parseInt(this.§]!W§));
               this.§3!&§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §7_§:
               switch(this.§@A§)
               {
                  case §`!-§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §,'§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §9!R§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §;J§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §2!_§:
                     _loc6_ = 1 + _loc1_ % 5;
               }
               if(this.§3!&§)
               {
                  this.§3!&§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §9s§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§@A§)
               {
                  case §'!4§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §^!R§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §6!<§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §8!R§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §-!#§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §2O§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §3!D§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§3!&§)
               {
                  this.§3!&§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§8!K§,null,this.§0`§,this.§&!4§);
         }
      }
      
      private function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§-!$§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§9!G§ = this.§0h§.§8T§(param1);
         this.§?!_§ = param4;
         var _loc7_:Number = 1;
         if(this.§9!G§)
         {
            _loc6_ = (_loc5_ = this.§9!G§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            _loc6_ = this.§ u§.§'N§();
         }
         this.§2!0§ = param3;
         var _loc8_:§=_§ = this.createParticleImage(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§`z§ * _loc7_;
         this.§3!&§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§`z§;
            _loc8_.y = -_loc5_.pivotY * this.§`z§;
         }
         else
         {
            _loc8_.x = -this.§3!&§.width / 2;
            _loc8_.y = -this.§3!&§.height / 2;
         }
      }
      
      protected function createParticleImage(param1:Texture) : §=_§
      {
         return new §=_§(param1,false);
      }
      
      public function §%!9§() : void
      {
         if(this.§3!&§)
         {
            this.§3!&§.x = this.§?H§ / §>"§.§'!S§;
            this.§3!&§.y = this.§>!a§ / §>"§.§'!S§;
         }
      }
      
      public function §5!3§(param1:§&+§) : void
      {
         this.§ i§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§-!$§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§=_§ = null;
         this.§0+§ += param1;
         var _loc2_:Boolean = false;
         if(this.§ i§)
         {
            if(this.§ i§.sprite == null || this.§ i§.§false§ == null)
            {
               return false;
            }
            this.§?H§ = this.§ i§.§?!7§().GetPosition().x;
            this.§>!a§ = this.§ i§.§?!7§().GetPosition().y;
         }
         if(this.§2!0§ > 0 && this.§9!G§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§0+§ / 1000 / (1 / _loc3_)) < this.§9!G§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§9!G§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.createParticleImage(_loc6_);
               this.§3!&§.§;u§(0,-1,true);
               this.§3!&§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§`z§;
               _loc8_.y = -_loc5_.pivotY * this.§`z§;
               _loc8_.scaleX = _loc8_.scaleY = this.§`z§ * _loc7_;
            }
            else if(this.§?!_§)
            {
               this.§3!&§.§;u§(0,-1,true);
            }
         }
         if(this.§[R§ == §"@§)
         {
            this.§9S§(param1);
            _loc2_ = this.updateParticles(param1);
            if(this.§6!c§ > 0 && this.§>!a§ > this.§6!c§)
            {
               return false;
            }
         }
         else
         {
            this.§9S§(param1);
            _loc2_ = this.updateParticles(param1);
         }
         if(this.§69§ > 0 && this.§0+§ >= this.§69§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§%!9§();
         }
         return true;
      }
      
      public function §9S§(param1:Number) : void
      {
         this.§1O§ += param1 * this.§`!E§ / 1000;
         this.§>!a§ += this.§1O§ * param1 / 1000;
         this.§?H§ += this.§@!X§ * param1 / 1000;
         if(this.§+!6§ != 0)
         {
            this.§3!&§.rotation += this.§+!6§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function updateParticles(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§[R§ == §1!5§)
         {
            if(this.§69§ > 0)
            {
               _loc2_ = 1;
               if(this.§8!K§ == §[!E§)
               {
                  if((_loc4_ = this.§0+§ / this.§69§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§]!W§) / 5000);
               }
               this.§3!&§.scaleX = _loc2_;
               this.§3!&§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§[R§ == §"@§)
         {
            if(this.§8!K§ == §^!<§)
            {
               this.§3!&§.alpha = Math.max(0,Math.min(1,2 * §8!_§.§9R§((this.§69§ - this.§0+§) / this.§69§,false)));
               _loc5_ = Math.atan2(-this.§1O§,this.§@!X§) * (180 / Math.PI);
               this.§3!&§.scaleX = Math.max(0.2,this.§3!&§.alpha);
               this.§3!&§.scaleY = Math.max(0.2,this.§3!&§.alpha);
               this.§3!&§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§8!K§ == §9s§ || this.§8!K§ == §9x§)
            {
               this.§3!&§.scaleX = this.§3!&§.scaleY = 0.2 + (this.§69§ - this.§0+§) / this.§69§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§@!,§)
         {
            this.§@!,§.clear();
            this.§@!,§ = null;
         }
         if(this.§3!&§)
         {
            this.§3!&§.dispose();
            this.§3!&§ = null;
         }
         if(this.§ i§)
         {
            this.§ i§ = null;
         }
      }
   }
}
