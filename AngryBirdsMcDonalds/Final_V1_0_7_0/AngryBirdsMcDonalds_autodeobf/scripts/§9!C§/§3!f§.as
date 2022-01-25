package §9!C§
{
   import §%!5§.§7;§;
   import §&!9§.Texture;
   import §'!`§.§%!H§;
   import §0@§.§1]§;
   import §0@§.DisplayObject;
   import §0@§.Sprite;
   import §0i§.§[e§;
   import §55§.§9J§;
   import §55§.§>![§;
   import §7! §.§%!h§;
   import §7! §.§4n§;
   import §7! §.§6X§;
   import §7! §.§;!7§;
   
   public class §3!f§
   {
      
      public static const §+#§:int = 0;
      
      public static const §"!&§:int = 1;
      
      public static const §"![§:int = 2;
      
      public static const §%<§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §;§:String = "Effect_TrailBig_Bird";
      
      public static const §]O§:String = "Effect_Trail_Sparkle";
      
      public static const §32§:String = "Effect_Floating_Score";
      
      public static const §7l§:String = "Effect_Floating_Text";
      
      public static const §6p§:String = "Effect_Explosion_Particle";
      
      public static const §[>§:String = "Effect_Explosion_Core";
      
      public static const §;!R§:String = "Effect_Pig_Destruction";
      
      public static const §?V§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §1w§:String = "Effect_Bird_Destruction";
      
      public static const §#!9§:String = "Effect_Block_Destruction_Particles";
      
      public static const §>v§:String = "Effect_Block_Destruction_Core";
      
      public static const §[0§:int = 0;
      
      public static const §-!o§:int = 1;
      
      public static const §^a§:int = 2;
      
      public static const §?!i§:int = 3;
      
      public static const §^B§:int = 4;
      
      public static const §;^§:int = 5;
      
      public static const §<x§:int = 6;
      
      public static const §0,§:int = 7;
      
      public static const §<t§:int = 8;
      
      public static const §>!C§:int = 9;
      
      public static const §+t§:int = 10;
      
      public static const §'!J§:int = 11;
      
      public static const §-B§:int = 12;
      
      public static const §%V§:int = 13;
      
      public static const §7!`§:int = 14;
      
      public static const §>!P§:int = 15;
      
      public static const §^w§:int = 16;
      
      public static const §'G§:int = 17;
      
      public static const §+![§:int = 18;
      
      public static const §`!N§:int = 19;
      
      public static const §?!9§:Boolean = true;
       
      
      public var §1,§:int;
      
      public var §-!X§:int;
      
      public var §]p§:String;
      
      public var §0+§:Number;
      
      public var §0`§:Number;
      
      public var §5!f§:Number;
      
      public var §,!W§:Number;
      
      public var §?!g§:Number = 0;
      
      public var §9n§:Number;
      
      public var §+!&§:Number;
      
      public var §90§:String;
      
      public var §7!L§:Number = -1;
      
      public var §-[§:int;
      
      public var §=!=§:Number;
      
      public var §[!;§:Number;
      
      private var §]T§:Sprite;
      
      private var §>!T§:§9J§;
      
      private var §;!H§:int;
      
      protected var §'N§:int;
      
      protected var §#!"§:Boolean;
      
      private var §"y§:§;!7§;
      
      private var §^r§:Boolean;
      
      private var §'!_§:§6X§;
      
      private var §!3§:§4n§;
      
      private var §;h§:§%!H§;
      
      public function §3!f§(param1:§6X§, param2:§4n§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§]T§ = new Sprite();
         super();
         this.§'!_§ = param1;
         this.§!3§ = param2;
         this.§]p§ = param3;
         this.§1,§ = param5;
         this.§-!X§ = param4;
         this.§-[§ = param10;
         this.§'N§ = param16;
         this.§#!"§ = param17;
         this.§90§ = param9;
         this.§0+§ = 0;
         this.§+!&§ = param8;
         this.§=!=§ = param6;
         this.§[!;§ = param7;
         this.§9n§ = param15;
         this.§5!f§ = param11;
         this.§0`§ = param12;
         this.§?!g§ = param14;
         this.§,!W§ = param13;
         this.createVisuals();
         this.§75§();
         if(this.§1,§ == §"!&§)
         {
            this.§7!L§ = §7;§.§1h§.§<+§.§,!Y§ + this.§]T§.height * §>![§.§%!k§;
         }
      }
      
      public static function §-!Z§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §[0§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §^a§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §-!o§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §;^§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §^B§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §?!i§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §+![§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §<x§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §>!C§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §0,§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §<t§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §+t§;
         }
         return §'!J§;
      }
      
      public static function §?0§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §-B§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §7!`§;
         }
         if(param1.toUpperCase().indexOf("BIRD_ORANGE") >= 0)
         {
            return §`!N§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §%V§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §'G§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §^w§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §>!P§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §>!P§;
         }
         return §^w§;
      }
      
      public function get §<K§() : DisplayObject
      {
         return this.§]T§;
      }
      
      public function §&W§(param1:Number, param2:Number) : void
      {
      }
      
      protected function createVisuals() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§;!7§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§]p§)
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
            case §;§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §]O§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §;!R§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §?V§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §>v§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §[>§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §6p§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §32§:
            case §7l§:
               if(parseInt(this.§90§) == 10000 || parseInt(this.§90§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§-[§)
                  {
                     case §-B§:
                        _loc8_ = 16058683;
                        break;
                     case §%V§:
                        _loc8_ = 55294;
                        break;
                     case §>!P§:
                        _loc8_ = 1878602;
                        break;
                     case §'G§:
                        _loc8_ = 3552822;
                        break;
                     case §^w§:
                        break;
                     case §7!`§:
                        _loc8_ = 16705792;
                        break;
                     case §`!N§:
                        _loc8_ = 16753152;
                  }
                  if(parseInt(this.§90§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§'!_§.getAnimation("NUMBERS");
                  this.§>!T§ = new §9J§(_loc2_,_loc3_,true);
                  this.§>!T§.§4Y§(parseInt(this.§90§));
                  this.§]T§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§'!_§.getAnimation("NUMBERS");
               this.§>!T§ = new §9J§(_loc2_,_loc3_);
               this.§>!T§.§4Y§(parseInt(this.§90§));
               this.§]T§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §#!9§:
               switch(this.§-[§)
               {
                  case §>!C§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §+t§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §0,§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §<t§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §'!J§:
                     _loc6_ = 1 + _loc1_ % 3;
               }
               if(this.§]T§)
               {
                  this.§]T§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §1w§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§-[§)
               {
                  case §[0§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §;^§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §-!o§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §?!i§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §^B§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §^a§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §+![§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§]T§)
               {
                  this.§]T§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§]p§,null,this.§'N§,this.§#!"§);
         }
      }
      
      protected function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§%!h§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§^r§ = param4;
         var _loc7_:Number = 1;
         this.§"y§ = this.§'!_§.getAnimation(param1);
         if(this.§"y§)
         {
            _loc6_ = (_loc5_ = this.§"y§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            if(!(_loc5_ = this.§!3§.§-f§(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
         }
         this.§;!H§ = param3;
         var _loc8_:§1]§ = this.createParticleImage(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§9n§ * _loc7_;
         this.§]T§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§9n§;
            _loc8_.y = -_loc5_.pivotY * this.§9n§;
         }
         else
         {
            _loc8_.x = -this.§]T§.width / 2;
            _loc8_.y = -this.§]T§.height / 2;
         }
      }
      
      protected function createParticleImage(param1:Texture) : §1]§
      {
         return new §1]§(param1,false);
      }
      
      public function §75§() : void
      {
         if(this.§]T§)
         {
            this.§]T§.x = this.§=!=§ / §>![§.§%!k§;
            this.§]T§.y = this.§[!;§ / §>![§.§%!k§;
         }
      }
      
      public function §!,§(param1:§%!H§) : void
      {
         this.§;h§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§%!h§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§1]§ = null;
         this.§0+§ += param1;
         var _loc2_:Boolean = false;
         if(this.§;h§)
         {
            if(this.§;h§.sprite == null || this.§;h§.§<!&§ == null)
            {
               return false;
            }
            this.§=!=§ = this.§;h§.§&!p§().GetPosition().x;
            this.§[!;§ = this.§;h§.§&!p§().GetPosition().y;
         }
         if(this.§;!H§ > 0 && this.§"y§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§0+§ / 1000 / (1 / _loc3_)) < this.§"y§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§"y§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.createParticleImage(_loc6_);
               this.§]T§.§-!l§(0,-1,true);
               this.§]T§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§9n§;
               _loc8_.y = -_loc5_.pivotY * this.§9n§;
               _loc8_.scaleX = _loc8_.scaleY = this.§9n§ * _loc7_;
            }
            else if(this.§^r§)
            {
               this.§]T§.§-!l§(0,-1,true);
            }
         }
         if(this.§1,§ == §"!&§)
         {
            this.§@v§(param1);
            _loc2_ = this.updateParticles(param1);
            if(this.§7!L§ > 0 && this.§[!;§ > this.§7!L§)
            {
               return false;
            }
         }
         else
         {
            this.§@v§(param1);
            _loc2_ = this.updateParticles(param1);
         }
         if(this.§+!&§ > 0 && this.§0+§ >= this.§+!&§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§75§();
         }
         return true;
      }
      
      public function §@v§(param1:Number) : void
      {
         this.§0`§ += param1 * this.§,!W§ / 1000;
         this.§[!;§ += this.§0`§ * param1 / 1000;
         this.§=!=§ += this.§5!f§ * param1 / 1000;
         if(this.§?!g§ != 0)
         {
            this.§]T§.rotation += this.§?!g§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function updateParticles(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§1,§ == §+#§)
         {
            if(this.§+!&§ > 0)
            {
               _loc2_ = 1;
               if(this.§]p§ == §7l§)
               {
                  if((_loc4_ = this.§0+§ / this.§+!&§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§90§) / 5000);
               }
               this.§]T§.scaleX = _loc2_;
               this.§]T§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§1,§ == §"!&§)
         {
            if(this.§]p§ == §6p§)
            {
               this.§]T§.alpha = Math.max(0,Math.min(1,2 * §[e§.§"T§((this.§+!&§ - this.§0+§) / this.§+!&§,false)));
               _loc5_ = Math.atan2(-this.§0`§,this.§5!f§) * (180 / Math.PI);
               this.§]T§.scaleX = Math.max(0.2,this.§]T§.alpha);
               this.§]T§.scaleY = Math.max(0.2,this.§]T§.alpha);
               this.§]T§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§]p§ == §1w§ || this.§]p§ == §>v§)
            {
               this.§]T§.scaleX = this.§]T§.scaleY = 0.2 + (this.§+!&§ - this.§0+§) / this.§+!&§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§>!T§)
         {
            this.§>!T§.clear();
            this.§>!T§ = null;
         }
         if(this.§]T§)
         {
            this.§]T§.dispose();
            this.§]T§ = null;
         }
         if(this.§;h§)
         {
            this.§;h§ = null;
         }
      }
   }
}
