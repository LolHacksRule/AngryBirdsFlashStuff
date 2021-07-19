package §1!4§
{
   import §&!8§.§[g§;
   import §,§.§ p§;
   import §,§.§&!M§;
   import §9t§.§"h§;
   import §9t§.§&!W§;
   import §9t§.§35§;
   import §9t§.§=!>§;
   import §>^§.§"z§;
   import §]!a§.Texture;
   import §^a§.§6p§;
   import §^a§.DisplayObject;
   import §^a§.Sprite;
   import §`h§.§@!Z§;
   
   public class §7!?§
   {
      
      public static const §"L§:int = 0;
      
      public static const §22§:int = 1;
      
      public static const §2B§:int = 2;
      
      public static const §<!h§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §`f§:String = "Effect_TrailBig_Bird";
      
      public static const §;m§:String = "Effect_Trail_Sparkle";
      
      public static const §6X§:String = "Effect_Floating_Score";
      
      public static const §@I§:String = "Effect_Floating_Text";
      
      public static const §,M§:String = "Effect_Explosion_Particle";
      
      public static const §[!M§:String = "Effect_Explosion_Core";
      
      public static const §7V§:String = "Effect_Pig_Destruction";
      
      public static const §!o§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §=!E§:String = "Effect_Bird_Destruction";
      
      public static const §0!;§:String = "Effect_Block_Destruction_Particles";
      
      public static const §=!H§:String = "Effect_Block_Destruction_Core";
      
      public static const §7^§:int = 0;
      
      public static const §#!]§:int = 1;
      
      public static const §`4§:int = 2;
      
      public static const §3P§:int = 3;
      
      public static const §+!g§:int = 4;
      
      public static const §=2§:int = 5;
      
      public static const §=6§:int = 6;
      
      public static const §`c§:int = 7;
      
      public static const §0!D§:int = 8;
      
      public static const §7P§:int = 9;
      
      public static const §"a§:int = 10;
      
      public static const §%!>§:int = 11;
      
      public static const §26§:int = 12;
      
      public static const §!<§:int = 13;
      
      public static const §!N§:int = 14;
      
      public static const §0i§:int = 15;
      
      public static const §'!!§:int = 16;
      
      public static const §8!N§:int = 17;
      
      public static const §>F§:int = 18;
      
      public static const §-Y§:int = 19;
      
      public static const §7!>§:Boolean = true;
       
      
      public var §1B§:int;
      
      public var §[!Y§:int;
      
      public var §6R§:String;
      
      public var §5z§:Number;
      
      public var §@8§:Number;
      
      public var §=!#§:Number;
      
      public var §<;§:Number;
      
      public var §!!&§:Number = 0;
      
      public var §#![§:Number;
      
      public var §>V§:Number;
      
      public var §@&§:String;
      
      public var §-!T§:Number = -1;
      
      public var §`!!§:int;
      
      public var §7F§:Number;
      
      public var §6_§:Number;
      
      protected var § u§:Sprite;
      
      private var §]S§:§&!M§;
      
      private var §&!+§:int;
      
      protected var §5`§:int;
      
      protected var §4w§:Boolean;
      
      private var §,!2§:§"h§;
      
      private var §&o§:Boolean;
      
      private var §^H§:§&!W§;
      
      private var §>!K§:§=!>§;
      
      private var §1S§:§[g§;
      
      public function §7!?§(param1:§&!W§, param2:§=!>§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§ u§ = new Sprite();
         super();
         this.§^H§ = param1;
         this.§>!K§ = param2;
         this.§6R§ = param3;
         this.§1B§ = param5;
         this.§[!Y§ = param4;
         this.§`!!§ = param10;
         this.§5`§ = param16;
         this.§4w§ = param17;
         this.§@&§ = param9;
         this.§5z§ = 0;
         this.§>V§ = param8;
         this.§7F§ = param6;
         this.§6_§ = param7;
         this.§#![§ = param15;
         this.§=!#§ = param11;
         this.§@8§ = param12;
         this.§!!&§ = param14;
         this.§<;§ = param13;
         this.createVisuals();
         this.§3u§();
         if(this.§1B§ == §22§)
         {
            this.§-!T§ = §@!Z§.§;!,§.§@2§.§-S§ + this.§ u§.height * § p§.§]!E§;
         }
      }
      
      public static function §7R§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §7^§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §`4§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §#!]§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §=2§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §+!g§;
         }
         if(param1.toUpperCase().indexOf("BIRD_ORANGE") >= 0)
         {
            return §`4§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §3P§;
         }
         if(param1.toUpperCase().indexOf("BIRD_CHRISTMAS") >= 0)
         {
            return §=2§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §>F§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §=6§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §7P§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §`c§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §0!D§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §"a§;
         }
         return §%!>§;
      }
      
      public static function §=I§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §26§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §!N§;
         }
         if(param1.toUpperCase().indexOf("BIRD_ORANGE") >= 0)
         {
            return §-Y§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §!<§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §8!N§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §'!!§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §0i§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §0i§;
         }
         return §'!!§;
      }
      
      public function get §<L§() : DisplayObject
      {
         return this.§ u§;
      }
      
      public function §9q§(param1:Number, param2:Number) : void
      {
      }
      
      protected function createVisuals() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§"h§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§6R§)
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
            case §`f§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §;m§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §7V§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §!o§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §=!H§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §[!M§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §,M§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §6X§:
            case §@I§:
               if(parseInt(this.§@&§) == 10000 || parseInt(this.§@&§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§`!!§)
                  {
                     case §26§:
                        _loc8_ = 16058683;
                        break;
                     case §!<§:
                        _loc8_ = 55294;
                        break;
                     case §0i§:
                        _loc8_ = 1878602;
                        break;
                     case §8!N§:
                        _loc8_ = 3552822;
                        break;
                     case §'!!§:
                        break;
                     case §!N§:
                        _loc8_ = 16705792;
                        break;
                     case §-Y§:
                        _loc8_ = 16753152;
                  }
                  if(parseInt(this.§@&§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§^H§.§;5§("NUMBERS");
                  this.§]S§ = new §&!M§(_loc2_,_loc3_,true);
                  this.§]S§.§8V§(parseInt(this.§@&§));
                  this.§ u§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
               }
               else
               {
                  _loc2_ = new Sprite();
                  _loc3_ = this.§^H§.§;5§("NUMBERS");
                  this.§]S§ = new §&!M§(_loc2_,_loc3_);
                  this.§]S§.§8V§(parseInt(this.§@&§));
                  this.§ u§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
               }
               break;
            case §0!;§:
               switch(this.§`!!§)
               {
                  case §7P§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §"a§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §`c§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §0!D§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §%!>§:
                     _loc6_ = 1 + _loc1_ % 3;
               }
               if(this.§ u§)
               {
                  this.§ u§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §=!E§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§`!!§)
               {
                  case §7^§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §=2§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §#!]§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §3P§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §+!g§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §`4§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §>F§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§ u§)
               {
                  this.§ u§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            default:
               this.createParticle(this.§6R§,null,this.§5`§,this.§4w§);
         }
      }
      
      protected function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§35§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§&o§ = param4;
         var _loc7_:Number = 1;
         this.§,!2§ = this.§^H§.§;5§(param1);
         if(this.§,!2§)
         {
            _loc6_ = (_loc5_ = this.§,!2§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            if(!(_loc5_ = this.§>!K§.§=!+§(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
         }
         this.§&!+§ = param3;
         var _loc8_:§6p§ = this.§8!;§(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§#![§ * _loc7_;
         this.§ u§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§#![§;
            _loc8_.y = -_loc5_.pivotY * this.§#![§;
         }
         else
         {
            _loc8_.x = -this.§ u§.width / 2;
            _loc8_.y = -this.§ u§.height / 2;
         }
      }
      
      protected function §8!;§(param1:Texture) : §6p§
      {
         return new §6p§(param1,false);
      }
      
      public function §3u§() : void
      {
         if(this.§ u§)
         {
            this.§ u§.x = this.§7F§ / § p§.§]!E§;
            this.§ u§.y = this.§6_§ / § p§.§]!E§;
         }
      }
      
      public function §%1§(param1:§[g§) : void
      {
         this.§1S§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§35§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§6p§ = null;
         this.§5z§ += param1;
         var _loc2_:Boolean = false;
         if(this.§1S§)
         {
            if(this.§1S§.sprite == null || this.§1S§.§-!6§ == null)
            {
               return false;
            }
            this.§7F§ = this.§1S§.§`e§().GetPosition().x;
            this.§6_§ = this.§1S§.§`e§().GetPosition().y;
         }
         if(this.§&!+§ > 0 && this.§,!2§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§5z§ / 1000 / (1 / _loc3_)) < this.§,!2§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§,!2§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.§8!;§(_loc6_);
               this.§ u§.§7!X§(0,-1,true);
               this.§ u§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§#![§;
               _loc8_.y = -_loc5_.pivotY * this.§#![§;
               _loc8_.scaleX = _loc8_.scaleY = this.§#![§ * _loc7_;
            }
            else if(this.§&o§)
            {
               this.§ u§.§7!X§(0,-1,true);
            }
         }
         if(this.§1B§ == §22§)
         {
            this.§4?§(param1);
            _loc2_ = this.§34§(param1);
            if(this.§-!T§ > 0 && this.§6_§ > this.§-!T§)
            {
               return false;
            }
         }
         else
         {
            this.§4?§(param1);
            _loc2_ = this.§34§(param1);
         }
         if(this.§>V§ > 0 && this.§5z§ >= this.§>V§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§3u§();
         }
         return true;
      }
      
      public function §4?§(param1:Number) : void
      {
         this.§@8§ += param1 * this.§<;§ / 1000;
         this.§6_§ += this.§@8§ * param1 / 1000;
         this.§7F§ += this.§=!#§ * param1 / 1000;
         if(this.§!!&§ != 0)
         {
            this.§ u§.rotation += this.§!!&§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §34§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§1B§ == §"L§)
         {
            if(this.§>V§ > 0)
            {
               _loc2_ = 1;
               if(this.§6R§ == §@I§)
               {
                  if((_loc4_ = this.§5z§ / this.§>V§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§@&§) / 5000);
               }
               this.§ u§.scaleX = _loc2_;
               this.§ u§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§1B§ == §22§)
         {
            if(this.§6R§ == §,M§)
            {
               this.§ u§.alpha = Math.max(0,Math.min(1,2 * §"z§.§,j§((this.§>V§ - this.§5z§) / this.§>V§,false)));
               _loc5_ = Math.atan2(-this.§@8§,this.§=!#§) * (180 / Math.PI);
               this.§ u§.scaleX = Math.max(0.2,this.§ u§.alpha);
               this.§ u§.scaleY = Math.max(0.2,this.§ u§.alpha);
               this.§ u§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§6R§ == §=!E§ || this.§6R§ == §=!H§)
            {
               this.§ u§.scaleX = this.§ u§.scaleY = 0.2 + (this.§>V§ - this.§5z§) / this.§>V§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§]S§)
         {
            this.§]S§.clear();
            this.§]S§ = null;
         }
         if(this.§ u§)
         {
            this.§ u§.dispose();
            this.§ u§ = null;
         }
         if(this.§1S§)
         {
            this.§1S§ = null;
         }
      }
   }
}
