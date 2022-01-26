package §`;§
{
   import §"k§.§02§;
   import §"k§.§1s§;
   import §"k§.§5!7§;
   import §"k§.§;!Z§;
   import §'D§.§6q§;
   import §1!§.§@!Q§;
   import §8!`§.§ ?§;
   import §8!`§.§4J§;
   import §;!Q§.§%o§;
   import §;!Q§.DisplayObject;
   import §;!Q§.Sprite;
   import §]!D§.§@!]§;
   import §]p§.Texture;
   
   public class §[E§
   {
      
      public static const §%7§:int = 0;
      
      public static const §!`§:int = 1;
      
      public static const §'m§:int = 2;
      
      public static const §?g§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §;t§:String = "Effect_TrailBig_Bird";
      
      public static const §6!O§:String = "Effect_Trail_Sparkle";
      
      public static const §=w§:String = "Effect_Floating_Score";
      
      public static const §+Z§:String = "Effect_Floating_Text";
      
      public static const §=3§:String = "Effect_Explosion_Particle";
      
      public static const §]L§:String = "Effect_Explosion_Core";
      
      public static const §#U§:String = "Effect_Pig_Destruction";
      
      public static const §^^§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §4!B§:String = "Effect_Bird_Destruction";
      
      public static const §&z§:String = "Effect_Block_Destruction_Particles";
      
      public static const §=F§:String = "Effect_Block_Destruction_Core";
      
      public static const §?a§:int = 0;
      
      public static const §]a§:int = 1;
      
      public static const §#!O§:int = 2;
      
      public static const §%i§:int = 3;
      
      public static const §-?§:int = 4;
      
      public static const §=]§:int = 5;
      
      public static const §?"§:int = 6;
      
      public static const §]!P§:int = 7;
      
      public static const §##§:int = 8;
      
      public static const §<5§:int = 9;
      
      public static const §5!N§:int = 10;
      
      public static const §,! §:int = 11;
      
      public static const §"R§:int = 12;
      
      public static const §+w§:int = 13;
      
      public static const §5H§:int = 14;
      
      public static const §^!L§:int = 15;
      
      public static const §@B§:int = 16;
      
      public static const §"U§:int = 17;
      
      public static const §var §:int = 18;
      
      public static const §`w§:Boolean = true;
       
      
      public var §#§:int;
      
      public var §^!1§:int;
      
      public var §6&§:String;
      
      public var §]`§:Number;
      
      public var §3u§:Number;
      
      public var §-!4§:Number;
      
      public var §5!§:Number;
      
      public var §-w§:Number = 0;
      
      public var §-b§:Number;
      
      public var §&!G§:Number;
      
      public var §+!?§:String;
      
      public var §"'§:Number = -1;
      
      public var §5!I§:int;
      
      public var §"9§:Number;
      
      public var §[g§:Number;
      
      private var §7^§:Sprite;
      
      private var §%!+§:§ ?§;
      
      private var §`0§:int;
      
      protected var §,E§:int;
      
      protected var §93§:Boolean;
      
      private var § !7§:§;!Z§;
      
      private var §1!X§:Boolean;
      
      private var §9J§:§1s§;
      
      private var §^L§:§02§;
      
      private var §0!X§:§@!]§;
      
      public function §[E§(param1:§1s§, param2:§02§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§7^§ = new Sprite();
         super();
         this.§9J§ = param1;
         this.§^L§ = param2;
         this.§6&§ = param3;
         this.§#§ = param5;
         this.§^!1§ = param4;
         this.§5!I§ = param10;
         this.§,E§ = param16;
         this.§93§ = param17;
         this.§+!?§ = param9;
         this.§]`§ = 0;
         this.§&!G§ = param8;
         this.§"9§ = param6;
         this.§[g§ = param7;
         this.§-b§ = param15;
         this.§-!4§ = param11;
         this.§3u§ = param12;
         this.§-w§ = param14;
         this.§5!§ = param13;
         this.createVisuals();
         this.§;!+§();
         if(this.§#§ == §!`§)
         {
            this.§"'§ = §@!Q§.§7l§.§[!_§.§,!3§ + this.§7^§.height * §4J§.§<W§;
         }
      }
      
      public static function §2!<§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §?a§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §#!O§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §]a§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §=]§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §-?§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §%i§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §var §;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §?"§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §<5§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §]!P§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §##§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §5!N§;
         }
         return §,! §;
      }
      
      public static function §?!V§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §"R§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §5H§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §+w§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §"U§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §@B§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §^!L§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §^!L§;
         }
         return §@B§;
      }
      
      public function get §=!;§() : DisplayObject
      {
         return this.§7^§;
      }
      
      public function §#!"§(param1:Number, param2:Number) : void
      {
      }
      
      protected function createVisuals() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§;!Z§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§6&§)
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
            case §;t§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §6!O§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §#U§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §^^§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §=F§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §]L§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §=3§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §=w§:
            case §+Z§:
               if(parseInt(this.§+!?§) == 10000 || parseInt(this.§+!?§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§5!I§)
                  {
                     case §"R§:
                        _loc8_ = 16058683;
                        break;
                     case §+w§:
                        _loc8_ = 55294;
                        break;
                     case §^!L§:
                        _loc8_ = 1878602;
                        break;
                     case §"U§:
                        _loc8_ = 3552822;
                        break;
                     case §@B§:
                        break;
                     case §5H§:
                        _loc8_ = 16705792;
                  }
                  if(parseInt(this.§+!?§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§9J§.§-!J§("NUMBERS");
                  this.§%!+§ = new § ?§(_loc2_,_loc3_,true);
                  this.§%!+§.§4!'§(parseInt(this.§+!?§));
                  this.§7^§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§9J§.§-!J§("NUMBERS");
               this.§%!+§ = new § ?§(_loc2_,_loc3_);
               this.§%!+§.§4!'§(parseInt(this.§+!?§));
               this.§7^§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §&z§:
               switch(this.§5!I§)
               {
                  case §<5§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §5!N§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §]!P§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §##§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §,! §:
                     _loc6_ = 1 + _loc1_ % 3;
               }
               if(this.§7^§)
               {
                  this.§7^§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §4!B§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§5!I§)
               {
                  case §?a§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §=]§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §]a§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §%i§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §-?§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §#!O§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §var §:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§7^§)
               {
                  this.§7^§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§6&§,null,this.§,E§,this.§93§);
         }
      }
      
      protected function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§5!7§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§1!X§ = param4;
         var _loc7_:Number = 1;
         this.§ !7§ = this.§9J§.§-!J§(param1);
         if(this.§ !7§)
         {
            _loc6_ = (_loc5_ = this.§ !7§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            if(!(_loc5_ = this.§^L§.§'!R§(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
         }
         this.§`0§ = param3;
         var _loc8_:§%o§ = this.§1'§(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§-b§ * _loc7_;
         this.§7^§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§-b§;
            _loc8_.y = -_loc5_.pivotY * this.§-b§;
         }
         else
         {
            _loc8_.x = -this.§7^§.width / 2;
            _loc8_.y = -this.§7^§.height / 2;
         }
      }
      
      protected function §1'§(param1:Texture) : §%o§
      {
         return new §%o§(param1,false);
      }
      
      public function §;!+§() : void
      {
         if(this.§7^§)
         {
            this.§7^§.x = this.§"9§ / §4J§.§<W§;
            this.§7^§.y = this.§[g§ / §4J§.§<W§;
         }
      }
      
      public function §+d§(param1:§@!]§) : void
      {
         this.§0!X§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§5!7§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§%o§ = null;
         this.§]`§ += param1;
         var _loc2_:Boolean = false;
         if(this.§0!X§)
         {
            if(this.§0!X§.sprite == null || this.§0!X§.§-!^§ == null)
            {
               return false;
            }
            this.§"9§ = this.§0!X§.§^!_§().GetPosition().x;
            this.§[g§ = this.§0!X§.§^!_§().GetPosition().y;
         }
         if(this.§`0§ > 0 && this.§ !7§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§]`§ / 1000 / (1 / _loc3_)) < this.§ !7§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§ !7§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.§1'§(_loc6_);
               this.§7^§.§9a§(0,-1,true);
               this.§7^§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§-b§;
               _loc8_.y = -_loc5_.pivotY * this.§-b§;
               _loc8_.scaleX = _loc8_.scaleY = this.§-b§ * _loc7_;
            }
            else if(this.§1!X§)
            {
               this.§7^§.§9a§(0,-1,true);
            }
         }
         if(this.§#§ == §!`§)
         {
            this.§3H§(param1);
            _loc2_ = this.§&Q§(param1);
            if(this.§"'§ > 0 && this.§[g§ > this.§"'§)
            {
               return false;
            }
         }
         else
         {
            this.§3H§(param1);
            _loc2_ = this.§&Q§(param1);
         }
         if(this.§&!G§ > 0 && this.§]`§ >= this.§&!G§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§;!+§();
         }
         return true;
      }
      
      public function §3H§(param1:Number) : void
      {
         this.§3u§ += param1 * this.§5!§ / 1000;
         this.§[g§ += this.§3u§ * param1 / 1000;
         this.§"9§ += this.§-!4§ * param1 / 1000;
         if(this.§-w§ != 0)
         {
            this.§7^§.rotation += this.§-w§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §&Q§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§#§ == §%7§)
         {
            if(this.§&!G§ > 0)
            {
               _loc2_ = 1;
               if(this.§6&§ == §+Z§)
               {
                  if((_loc4_ = this.§]`§ / this.§&!G§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§+!?§) / 5000);
               }
               this.§7^§.scaleX = _loc2_;
               this.§7^§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§#§ == §!`§)
         {
            if(this.§6&§ == §=3§)
            {
               this.§7^§.alpha = Math.max(0,Math.min(1,2 * §6q§.§=<§((this.§&!G§ - this.§]`§) / this.§&!G§,false)));
               _loc5_ = Math.atan2(-this.§3u§,this.§-!4§) * (180 / Math.PI);
               this.§7^§.scaleX = Math.max(0.2,this.§7^§.alpha);
               this.§7^§.scaleY = Math.max(0.2,this.§7^§.alpha);
               this.§7^§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§6&§ == §4!B§ || this.§6&§ == §=F§)
            {
               this.§7^§.scaleX = this.§7^§.scaleY = 0.2 + (this.§&!G§ - this.§]`§) / this.§&!G§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§%!+§)
         {
            this.§%!+§.clear();
            this.§%!+§ = null;
         }
         if(this.§7^§)
         {
            this.§7^§.dispose();
            this.§7^§ = null;
         }
         if(this.§0!X§)
         {
            this.§0!X§ = null;
         }
      }
   }
}
