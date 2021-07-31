package §!!>§
{
   import §!+§.§>G§;
   import §'k§.§ >§;
   import §'k§.§#k§;
   import §'k§.§2v§;
   import §'k§.§7x§;
   import §+!"§.§2+§;
   import §5!@§.Texture;
   import §5H§.§[k§;
   import §9W§.§6!0§;
   import §9W§.DisplayObject;
   import §9W§.Sprite;
   import §?b§.§0h§;
   import §?b§.§7!,§;
   
   public class §!8§
   {
      
      public static const §'!B§:int = 0;
      
      public static const §3!'§:int = 1;
      
      public static const §0!H§:int = 2;
      
      public static const §"_§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const § !3§:String = "Effect_TrailBig_Bird";
      
      public static const §&D§:String = "Effect_Trail_Sparkle";
      
      public static const §"!,§:String = "Effect_Floating_Score";
      
      public static const §=>§:String = "Effect_Floating_Text";
      
      public static const §+U§:String = "Effect_Explosion_Particle";
      
      public static const §`[§:String = "Effect_Explosion_Core";
      
      public static const §0E§:String = "Effect_Pig_Destruction";
      
      public static const §2]§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const dynamic:String = "Effect_Bird_Destruction";
      
      public static const §!!;§:String = "Effect_Block_Destruction_Particles";
      
      public static const §7_§:String = "Effect_Block_Destruction_Core";
      
      public static const §!;§:int = 0;
      
      public static const §6C§:int = 1;
      
      public static const §`!#§:int = 2;
      
      public static const §%n§:int = 3;
      
      public static const §2m§:int = 4;
      
      public static const §1n§:int = 5;
      
      public static const §<!§:int = 6;
      
      public static const §;!6§:int = 7;
      
      public static const §#&§:int = 8;
      
      public static const §5!!§:int = 9;
      
      public static const §&s§:int = 10;
      
      public static const §true §:int = 11;
      
      public static const §3P§:int = 12;
      
      public static const §=!@§:int = 13;
      
      public static const §%B§:int = 14;
      
      public static const §-!$§:int = 15;
      
      public static const §%6§:int = 16;
      
      public static const §%H§:int = 17;
      
      public static const §+&§:int = 18;
      
      public static const §+%§:Boolean = true;
       
      
      public var §&L§:int;
      
      public var §@L§:int;
      
      public var §%F§:String;
      
      public var §with§:Number;
      
      public var §-! §:Number;
      
      public var §"!I§:Number;
      
      public var §%'§:Number;
      
      public var §]!C§:Number = 0;
      
      public var §!!%§:Number;
      
      public var §0^§:Number;
      
      public var §3&§:String;
      
      public var § !7§:Number = -1;
      
      public var §1!8§:int;
      
      public var §<!B§:Number;
      
      public var §,k§:Number;
      
      private var §'!>§:Sprite;
      
      private var §#,§:§0h§;
      
      private var §@!<§:int;
      
      protected var §-A§:int;
      
      protected var §%w§:Boolean;
      
      private var §;&§:§7x§;
      
      private var §&l§:Boolean;
      
      private var §!m§:§#k§;
      
      private var §`!8§:§ >§;
      
      private var §?!5§:§>G§;
      
      public function §!8§(param1:§#k§, param2:§ >§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§'!>§ = new Sprite();
         super();
         this.§!m§ = param1;
         this.§`!8§ = param2;
         this.§%F§ = param3;
         this.§&L§ = param5;
         this.§@L§ = param4;
         this.§1!8§ = param10;
         this.§-A§ = param16;
         this.§%w§ = param17;
         this.§3&§ = param9;
         this.§with§ = 0;
         this.§0^§ = param8;
         this.§<!B§ = param6;
         this.§,k§ = param7;
         this.§!!%§ = param15;
         this.§"!I§ = param11;
         this.§-! § = param12;
         this.§]!C§ = param14;
         this.§%'§ = param13;
         this.createVisuals();
         this.§#n§();
         if(this.§&L§ == §3!'§)
         {
            this.§ !7§ = §[k§.§&@§.§+4§.§6o§ + this.§'!>§.height * §7!,§.§ '§;
         }
      }
      
      public static function §3^§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §!;§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §`!#§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §6C§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §1n§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §2m§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §%n§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §+&§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §<!§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §5!!§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §;!6§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §#&§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §&s§;
         }
         return §true §;
      }
      
      public static function §>n§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §3P§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §%B§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §=!@§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §%H§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §%6§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §-!$§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §-!$§;
         }
         return §%6§;
      }
      
      public function get §@p§() : DisplayObject
      {
         return this.§'!>§;
      }
      
      public function § ,§(param1:Number, param2:Number) : void
      {
      }
      
      protected function createVisuals() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§7x§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§%F§)
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
            case § !3§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §&D§:
               this.createParticle("??");
               break;
            case §0E§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §2]§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §7_§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §`[§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §+U§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §"!,§:
            case §=>§:
               if(parseInt(this.§3&§) == 10000 || parseInt(this.§3&§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§1!8§)
                  {
                     case §3P§:
                        _loc8_ = 16058683;
                        break;
                     case §=!@§:
                        _loc8_ = 55294;
                        break;
                     case §-!$§:
                        _loc8_ = 1878602;
                        break;
                     case §%H§:
                        _loc8_ = 3552822;
                        break;
                     case §%6§:
                        break;
                     case §%B§:
                        _loc8_ = 16705792;
                  }
                  if(parseInt(this.§3&§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§!m§.§`l§("NUMBERS");
                  this.§#,§ = new §0h§(_loc2_,_loc3_,true);
                  this.§#,§.§<C§(parseInt(this.§3&§));
                  this.§'!>§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
               }
               else
               {
                  _loc2_ = new Sprite();
                  _loc3_ = this.§!m§.§`l§("NUMBERS");
                  this.§#,§ = new §0h§(_loc2_,_loc3_);
                  this.§#,§.§<C§(parseInt(this.§3&§));
                  this.§'!>§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
               }
               break;
            case §!!;§:
               switch(this.§1!8§)
               {
                  case §5!!§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §&s§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §;!6§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §#&§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §true §:
                     _loc6_ = 1 + _loc1_ % 3;
               }
               if(this.§'!>§)
               {
                  this.§'!>§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case dynamic:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§1!8§)
               {
                  case §!;§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §1n§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §6C§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §%n§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §2m§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §`!#§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §+&§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§'!>§)
               {
                  this.§'!>§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            default:
               this.createParticle(this.§%F§,null,this.§-A§,this.§%w§);
         }
      }
      
      protected function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§2v§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§&l§ = param4;
         var _loc7_:Number = 1;
         this.§;&§ = this.§!m§.§`l§(param1);
         if(this.§;&§)
         {
            _loc6_ = (_loc5_ = this.§;&§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            if(!(_loc5_ = this.§`!8§.§8!<§(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
         }
         this.§@!<§ = param3;
         var _loc8_:§6!0§ = this.§&I§(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§!!%§ * _loc7_;
         this.§'!>§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§!!%§;
            _loc8_.y = -_loc5_.pivotY * this.§!!%§;
         }
         else
         {
            _loc8_.x = -this.§'!>§.width / 2;
            _loc8_.y = -this.§'!>§.height / 2;
         }
      }
      
      protected function §&I§(param1:Texture) : §6!0§
      {
         return new §6!0§(param1,false);
      }
      
      public function §#n§() : void
      {
         if(this.§'!>§)
         {
            this.§'!>§.x = this.§<!B§ / §7!,§.§ '§;
            this.§'!>§.y = this.§,k§ / §7!,§.§ '§;
         }
      }
      
      public function §>w§(param1:§>G§) : void
      {
         this.§?!5§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§2v§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§6!0§ = null;
         this.§with§ += param1;
         var _loc2_:Boolean = false;
         if(this.§?!5§)
         {
            if(this.§?!5§.sprite == null || this.§?!5§.§9O§ == null)
            {
               return false;
            }
            this.§<!B§ = this.§?!5§.§`t§().GetPosition().x;
            this.§,k§ = this.§?!5§.§`t§().GetPosition().y;
         }
         if(this.§@!<§ > 0 && this.§;&§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§with§ / 1000 / (1 / _loc3_)) < this.§;&§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§;&§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.§&I§(_loc6_);
               this.§'!>§.§9_§(0,-1,true);
               this.§'!>§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§!!%§;
               _loc8_.y = -_loc5_.pivotY * this.§!!%§;
               _loc8_.scaleX = _loc8_.scaleY = this.§!!%§ * _loc7_;
            }
            else if(this.§&l§)
            {
               this.§'!>§.§9_§(0,-1,true);
            }
         }
         if(this.§&L§ == §3!'§)
         {
            this.§<!C§(param1);
            _loc2_ = this.§;H§(param1);
            if(this.§ !7§ > 0 && this.§,k§ > this.§ !7§)
            {
               return false;
            }
         }
         else
         {
            this.§<!C§(param1);
            _loc2_ = this.§;H§(param1);
         }
         if(this.§0^§ > 0 && this.§with§ >= this.§0^§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§#n§();
         }
         return true;
      }
      
      public function §<!C§(param1:Number) : void
      {
         this.§-! § += param1 * this.§%'§ / 1000;
         this.§,k§ += this.§-! § * param1 / 1000;
         this.§<!B§ += this.§"!I§ * param1 / 1000;
         if(this.§]!C§ != 0)
         {
            this.§'!>§.rotation += this.§]!C§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §;H§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§&L§ == §'!B§)
         {
            if(this.§0^§ > 0)
            {
               _loc2_ = 1;
               if(this.§%F§ == §=>§)
               {
                  if((_loc4_ = this.§with§ / this.§0^§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§3&§) / 5000);
               }
               this.§'!>§.scaleX = _loc2_;
               this.§'!>§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§&L§ == §3!'§)
         {
            if(this.§%F§ == §+U§)
            {
               this.§'!>§.alpha = Math.max(0,Math.min(1,2 * §2+§.§5r§((this.§0^§ - this.§with§) / this.§0^§,false)));
               _loc5_ = Math.atan2(-this.§-! §,this.§"!I§) * (180 / Math.PI);
               this.§'!>§.scaleX = Math.max(0.2,this.§'!>§.alpha);
               this.§'!>§.scaleY = Math.max(0.2,this.§'!>§.alpha);
               this.§'!>§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§%F§ == dynamic || this.§%F§ == §7_§)
            {
               this.§'!>§.scaleX = this.§'!>§.scaleY = 0.2 + (this.§0^§ - this.§with§) / this.§0^§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§#,§)
         {
            this.§#,§.clear();
            this.§#,§ = null;
         }
         if(this.§'!>§)
         {
            this.§'!>§.dispose();
            this.§'!>§ = null;
         }
         if(this.§?!5§)
         {
            this.§?!5§ = null;
         }
      }
   }
}
