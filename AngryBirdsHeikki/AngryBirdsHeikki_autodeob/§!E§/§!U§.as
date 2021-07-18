package §!E§
{
   import §"!I§.§^!2§;
   import §"!I§.§`!X§;
   import §+!8§.§,_§;
   import §2Y§.§7!f§;
   import §2Y§.DisplayObject;
   import §2Y§.Sprite;
   import §9b§.§"!S§;
   import §=!<§.§!x§;
   import §=!<§.§8!!§;
   import §=!<§.§>"§;
   import §=!<§.§>a§;
   import §@R§.§;U§;
   
   public class §!U§
   {
      
      public static const §"i§:int = 0;
      
      public static const §"R§:int = 1;
      
      public static const §8;§:int = 2;
      
      public static const §<x§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §7!G§:String = "Effect_TrailBig_Bird";
      
      public static const §<+§:String = "Effect_Trail_Sparkle";
      
      public static const §9!1§:String = "Effect_Floating_Score";
      
      public static const §-G§:String = "Effect_Floating_Text";
      
      public static const §2a§:String = "Effect_Explosion_Particle";
      
      public static const §each §:String = "Effect_Explosion_Core";
      
      public static const §-!_§:String = "Effect_Pig_Destruction";
      
      public static const §,V§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §&§:String = "Effect_Bird_Destruction";
      
      public static const §4!I§:String = "Effect_Block_Destruction_Particles";
      
      public static const §5!Y§:String = "Effect_Block_Destruction_Core";
      
      public static const §^!J§:int = 0;
      
      public static const §-!`§:int = 1;
      
      public static const §@! §:int = 2;
      
      public static const §?![§:int = 3;
      
      public static const §5"§:int = 4;
      
      public static const §?!7§:int = 5;
      
      public static const §9!,§:int = 6;
      
      public static const §]D§:int = 7;
      
      public static const §<!;§:int = 8;
      
      public static const §4!R§:int = 9;
      
      public static const §`E§:int = 10;
      
      public static const §]6§:int = 11;
      
      public static const §8r§:int = 12;
      
      public static const §6y§:int = 13;
      
      public static const §0!&§:int = 14;
      
      public static const §8L§:int = 15;
      
      public static const §5!9§:int = 16;
      
      public static const §7!R§:int = 17;
      
      public static const §1^§:int = 18;
      
      public static const §?d§:Boolean = true;
       
      
      public var §+!?§:int;
      
      public var §=+§:int;
      
      public var §,;§:String;
      
      public var §'!C§:Number;
      
      public var §0!@§:Number;
      
      public var §7_§:Number;
      
      public var §&7§:Number;
      
      public var §^Y§:Number = 0;
      
      public var get:Number;
      
      public var §7!T§:Number;
      
      public var §+!6§:String;
      
      public var §-!&§:Number = -1;
      
      public var §<a§:int;
      
      public var §"!d§:Number;
      
      public var §,!W§:Number;
      
      private var §2r§:Sprite;
      
      private var §4!T§:§`!X§;
      
      private var §'b§:int;
      
      protected var §<d§:int;
      
      protected var §81§:Boolean;
      
      private var §&!e§:§!x§;
      
      private var §=!+§:Boolean;
      
      private var §>!7§:§>"§;
      
      private var §;u§:§>a§;
      
      private var §++§:§,_§;
      
      public function §!U§(param1:§>"§, param2:§>a§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§2r§ = new Sprite();
         super();
         this.§>!7§ = param1;
         this.§;u§ = param2;
         this.§,;§ = param3;
         this.§+!?§ = param5;
         this.§=+§ = param4;
         this.§<a§ = param10;
         this.§<d§ = param16;
         this.§81§ = param17;
         this.§+!6§ = param9;
         this.§'!C§ = 0;
         this.§7!T§ = param8;
         this.§"!d§ = param6;
         this.§,!W§ = param7;
         this.get = param15;
         this.§7_§ = param11;
         this.§0!@§ = param12;
         this.§^Y§ = param14;
         this.§&7§ = param13;
         this.createVisuals();
         this.§1![§();
         if(this.§+!?§ == §"R§)
         {
            this.§-!&§ = §"!S§.§-!7§.§8z§.§"N§ + this.§2r§.height * §^!2§.§3!S§;
         }
      }
      
      public static function §9Z§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §^!J§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §@! §;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §-!`§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §?!7§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §5"§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §?![§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §1^§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §9!,§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §4!R§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §]D§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §<!;§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §`E§;
         }
         return §]6§;
      }
      
      public static function §03§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §8r§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §0!&§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §6y§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §7!R§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §5!9§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §8L§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §8L§;
         }
         return §5!9§;
      }
      
      public function get §-L§() : DisplayObject
      {
         return this.§2r§;
      }
      
      public function §?!J§(param1:Number, param2:Number) : void
      {
      }
      
      protected function createVisuals() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§!x§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§,;§)
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
            case §7!G§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §<+§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §-!_§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §,V§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §5!Y§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §each §:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §2a§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §9!1§:
            case §-G§:
               if(parseInt(this.§+!6§) == 10000 || parseInt(this.§+!6§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§<a§)
                  {
                     case §8r§:
                        _loc8_ = 16058683;
                        break;
                     case §6y§:
                        _loc8_ = 55294;
                        break;
                     case §8L§:
                        _loc8_ = 1878602;
                        break;
                     case §7!R§:
                        _loc8_ = 3552822;
                        break;
                     case §5!9§:
                        break;
                     case §0!&§:
                        _loc8_ = 16705792;
                  }
                  if(parseInt(this.§+!6§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§>!7§.§!5§("NUMBERS");
                  this.§4!T§ = new §`!X§(_loc2_,_loc3_,true);
                  this.§4!T§.§8#§(parseInt(this.§+!6§));
                  this.§2r§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
               }
               else
               {
                  _loc2_ = new Sprite();
                  _loc3_ = this.§>!7§.§!5§("NUMBERS");
                  this.§4!T§ = new §`!X§(_loc2_,_loc3_);
                  this.§4!T§.§8#§(parseInt(this.§+!6§));
                  this.§2r§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
               }
               break;
            case §4!I§:
               switch(this.§<a§)
               {
                  case §4!R§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §`E§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §]D§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §<!;§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §]6§:
                     _loc6_ = 1 + _loc1_ % 3;
               }
               if(this.§2r§)
               {
                  this.§2r§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §&§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§<a§)
               {
                  case §^!J§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §?!7§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §-!`§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §?![§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §5"§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §@! §:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §1^§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§2r§)
               {
                  this.§2r§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            default:
               this.createParticle(this.§,;§,null,this.§<d§,this.§81§);
         }
      }
      
      protected function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§8!!§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§=!+§ = param4;
         var _loc7_:Number = 1;
         this.§&!e§ = this.§>!7§.§!5§(param1);
         if(this.§&!e§)
         {
            _loc6_ = (_loc5_ = this.§&!e§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            if(!(_loc5_ = this.§;u§.§8t§(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
         }
         this.§'b§ = param3;
         var _loc8_:§7!f§ = this.createParticleImage(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.get * _loc7_;
         this.§2r§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.get;
            _loc8_.y = -_loc5_.pivotY * this.get;
         }
         else
         {
            _loc8_.x = -this.§2r§.width / 2;
            _loc8_.y = -this.§2r§.height / 2;
         }
      }
      
      protected function createParticleImage(param1:Texture) : §7!f§
      {
         return new §7!f§(param1,false);
      }
      
      public function §1![§() : void
      {
         if(this.§2r§)
         {
            this.§2r§.x = this.§"!d§ / §^!2§.§3!S§;
            this.§2r§.y = this.§,!W§ / §^!2§.§3!S§;
         }
      }
      
      public function §29§(param1:§,_§) : void
      {
         this.§++§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§8!!§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§7!f§ = null;
         this.§'!C§ += param1;
         var _loc2_:Boolean = false;
         if(this.§++§)
         {
            if(this.§++§.sprite == null || this.§++§.§-h§ == null)
            {
               return false;
            }
            this.§"!d§ = this.§++§.§0c§().GetPosition().x;
            this.§,!W§ = this.§++§.§0c§().GetPosition().y;
         }
         if(this.§'b§ > 0 && this.§&!e§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§'!C§ / 1000 / (1 / _loc3_)) < this.§&!e§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§&!e§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.createParticleImage(_loc6_);
               this.§2r§.§`!C§(0,-1,true);
               this.§2r§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.get;
               _loc8_.y = -_loc5_.pivotY * this.get;
               _loc8_.scaleX = _loc8_.scaleY = this.get * _loc7_;
            }
            else if(this.§=!+§)
            {
               this.§2r§.§`!C§(0,-1,true);
            }
         }
         if(this.§+!?§ == §"R§)
         {
            this.§]2§(param1);
            _loc2_ = this.updateParticles(param1);
            if(this.§-!&§ > 0 && this.§,!W§ > this.§-!&§)
            {
               return false;
            }
         }
         else
         {
            this.§]2§(param1);
            _loc2_ = this.updateParticles(param1);
         }
         if(this.§7!T§ > 0 && this.§'!C§ >= this.§7!T§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§1![§();
         }
         return true;
      }
      
      public function §]2§(param1:Number) : void
      {
         this.§0!@§ += param1 * this.§&7§ / 1000;
         this.§,!W§ += this.§0!@§ * param1 / 1000;
         this.§"!d§ += this.§7_§ * param1 / 1000;
         if(this.§^Y§ != 0)
         {
            this.§2r§.rotation += this.§^Y§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function updateParticles(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§+!?§ == §"i§)
         {
            if(this.§7!T§ > 0)
            {
               _loc2_ = 1;
               if(this.§,;§ == §-G§)
               {
                  if((_loc4_ = this.§'!C§ / this.§7!T§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§+!6§) / 5000);
               }
               this.§2r§.scaleX = _loc2_;
               this.§2r§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§+!?§ == §"R§)
         {
            if(this.§,;§ == §2a§)
            {
               this.§2r§.alpha = Math.max(0,Math.min(1,2 * §;U§.§+r§((this.§7!T§ - this.§'!C§) / this.§7!T§,false)));
               _loc5_ = Math.atan2(-this.§0!@§,this.§7_§) * (180 / Math.PI);
               this.§2r§.scaleX = Math.max(0.2,this.§2r§.alpha);
               this.§2r§.scaleY = Math.max(0.2,this.§2r§.alpha);
               this.§2r§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§,;§ == §&§ || this.§,;§ == §5!Y§)
            {
               this.§2r§.scaleX = this.§2r§.scaleY = 0.2 + (this.§7!T§ - this.§'!C§) / this.§7!T§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§4!T§)
         {
            this.§4!T§.clear();
            this.§4!T§ = null;
         }
         if(this.§2r§)
         {
            this.§2r§.dispose();
            this.§2r§ = null;
         }
         if(this.§++§)
         {
            this.§++§ = null;
         }
      }
   }
}
