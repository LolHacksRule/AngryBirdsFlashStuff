package §;;§
{
   import §%"§.§ do§;
   import §%"§.§]M§;
   import §'R§.§&r§;
   import §<!F§.§5!+§;
   import §<!N§.§&M§;
   import §<!N§.DisplayObject;
   import §<!N§.Sprite;
   import §@M§.Texture;
   import §@V§.§"1§;
   import §^'§.§ !C§;
   import §^'§.§!!M§;
   import §^'§.§,!2§;
   import §^'§.§?!@§;
   
   public class §"!E§
   {
      
      public static const §2M§:int = 0;
      
      public static const §!b§:int = 1;
      
      public static const §2N§:int = 2;
      
      public static const §6&§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §4!$§:String = "Effect_TrailBig_Bird";
      
      public static const §%W§:String = "Effect_Trail_Sparkle";
      
      public static const §-!1§:String = "Effect_Floating_Score";
      
      public static const §#c§:String = "Effect_Floating_Text";
      
      public static const §1I§:String = "Effect_Explosion_Particle";
      
      public static const §6!$§:String = "Effect_Explosion_Core";
      
      public static const §@!§:String = "Effect_Pig_Destruction";
      
      public static const §'H§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §!!7§:String = "Effect_Bird_Destruction";
      
      public static const §2n§:String = "Effect_Block_Destruction_Particles";
      
      public static const §,T§:String = "Effect_Block_Destruction_Core";
      
      public static const §;[§:int = 0;
      
      public static const §?6§:int = 1;
      
      public static const §2!J§:int = 2;
      
      public static const §<;§:int = 3;
      
      public static const §!!H§:int = 4;
      
      public static const §>%§:int = 5;
      
      public static const §&<§:int = 6;
      
      public static const §^;§:int = 7;
      
      public static const §,J§:int = 8;
      
      public static const §3^§:int = 9;
      
      public static const §&!3§:int = 10;
      
      public static const §2[§:int = 11;
      
      public static const §;!K§:int = 12;
      
      public static const §2<§:int = 13;
      
      public static const §2R§:int = 14;
      
      public static const §7u§:int = 15;
      
      public static const §+'§:int = 16;
      
      public static const §=!&§:int = 17;
      
      public static const §%$§:int = 18;
      
      public static const §9!4§:Boolean = true;
       
      
      public var §@l§:int;
      
      public var §"_§:int;
      
      public var §0a§:String;
      
      public var §3R§:Number;
      
      public var §4!Q§:Number;
      
      public var §!!D§:Number;
      
      public var §4w§:Number;
      
      public var §-"§:Number = 0;
      
      public var §"!3§:Number;
      
      public var §>-§:Number;
      
      public var §]#§:String;
      
      public var §%!I§:Number = -1;
      
      public var §9!F§:int;
      
      public var §-o§:Number;
      
      public var §2!9§:Number;
      
      private var §,!3§:Sprite;
      
      private var §^!2§:§]M§;
      
      private var §]B§:int;
      
      protected var §3!%§:int;
      
      protected var §8!8§:Boolean;
      
      private var §"-§:§,!2§;
      
      private var §8A§:Boolean;
      
      private var §4A§:§?!@§;
      
      private var §1$§:§ !C§;
      
      private var §7!D§:§&r§;
      
      public function §"!E§(param1:§?!@§, param2:§ !C§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§,!3§ = new Sprite();
         super();
         this.§4A§ = param1;
         this.§1$§ = param2;
         this.§0a§ = param3;
         this.§@l§ = param5;
         this.§"_§ = param4;
         this.§9!F§ = param10;
         this.§3!%§ = param16;
         this.§8!8§ = param17;
         this.§]#§ = param9;
         this.§3R§ = 0;
         this.§>-§ = param8;
         this.§-o§ = param6;
         this.§2!9§ = param7;
         this.§"!3§ = param15;
         this.§!!D§ = param11;
         this.§4!Q§ = param12;
         this.§-"§ = param14;
         this.§4w§ = param13;
         this.createVisuals();
         this.§;$§();
         if(this.§@l§ == §!b§)
         {
            this.§%!I§ = §5!+§.§6!§.§#z§.§=a§ + this.§,!3§.height * § do§.§^!I§;
         }
      }
      
      public static function §3H§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §;[§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §2!J§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §?6§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §>%§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §!!H§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §<;§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §%$§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §&<§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §3^§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §^;§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §,J§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §&!3§;
         }
         return §2[§;
      }
      
      public static function §^2§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §;!K§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §2R§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §2<§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §=!&§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §+'§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §7u§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §7u§;
         }
         return §+'§;
      }
      
      public function get §<b§() : DisplayObject
      {
         return this.§,!3§;
      }
      
      public function §!;§(param1:Number, param2:Number) : void
      {
      }
      
      protected function createVisuals() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§,!2§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§0a§)
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
            case §4!$§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §%W§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §@!§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §'H§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §,T§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §6!$§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §1I§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §-!1§:
            case §#c§:
               if(parseInt(this.§]#§) == 10000 || parseInt(this.§]#§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§9!F§)
                  {
                     case §;!K§:
                        _loc8_ = 16058683;
                        break;
                     case §2<§:
                        _loc8_ = 55294;
                        break;
                     case §7u§:
                        _loc8_ = 1878602;
                        break;
                     case §=!&§:
                        _loc8_ = 3552822;
                        break;
                     case §+'§:
                        break;
                     case §2R§:
                        _loc8_ = 16705792;
                  }
                  if(parseInt(this.§]#§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§4A§.getAnimation("NUMBERS");
                  this.§^!2§ = new §]M§(_loc2_,_loc3_,true);
                  this.§^!2§.§+!3§(parseInt(this.§]#§));
                  this.§,!3§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§4A§.getAnimation("NUMBERS");
               this.§^!2§ = new §]M§(_loc2_,_loc3_);
               this.§^!2§.§+!3§(parseInt(this.§]#§));
               this.§,!3§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §2n§:
               switch(this.§9!F§)
               {
                  case §3^§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §&!3§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §^;§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §,J§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §2[§:
                     _loc6_ = 1 + _loc1_ % 3;
               }
               if(this.§,!3§)
               {
                  this.§,!3§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §!!7§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§9!F§)
               {
                  case §;[§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §>%§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §?6§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §<;§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §!!H§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §2!J§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §%$§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§,!3§)
               {
                  this.§,!3§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§0a§,null,this.§3!%§,this.§8!8§);
         }
      }
      
      protected function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§!!M§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§8A§ = param4;
         var _loc7_:Number = 1;
         this.§"-§ = this.§4A§.getAnimation(param1);
         if(this.§"-§)
         {
            _loc6_ = (_loc5_ = this.§"-§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            if(!(_loc5_ = this.§1$§.§@h§(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
         }
         this.§]B§ = param3;
         var _loc8_:§&M§ = this.§<0§(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§"!3§ * _loc7_;
         this.§,!3§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§"!3§;
            _loc8_.y = -_loc5_.pivotY * this.§"!3§;
         }
         else
         {
            _loc8_.x = -this.§,!3§.width / 2;
            _loc8_.y = -this.§,!3§.height / 2;
         }
      }
      
      protected function §<0§(param1:Texture) : §&M§
      {
         return new §&M§(param1,false);
      }
      
      public function §;$§() : void
      {
         if(this.§,!3§)
         {
            this.§,!3§.x = this.§-o§ / § do§.§^!I§;
            this.§,!3§.y = this.§2!9§ / § do§.§^!I§;
         }
      }
      
      public function §@!I§(param1:§&r§) : void
      {
         this.§7!D§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§!!M§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§&M§ = null;
         this.§3R§ += param1;
         var _loc2_:Boolean = false;
         if(this.§7!D§)
         {
            if(this.§7!D§.sprite == null || this.§7!D§.§@j§ == null)
            {
               return false;
            }
            this.§-o§ = this.§7!D§.§<!I§().GetPosition().x;
            this.§2!9§ = this.§7!D§.§<!I§().GetPosition().y;
         }
         if(this.§]B§ > 0 && this.§"-§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§3R§ / 1000 / (1 / _loc3_)) < this.§"-§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§"-§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.§<0§(_loc6_);
               this.§,!3§.§0l§(0,-1,true);
               this.§,!3§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§"!3§;
               _loc8_.y = -_loc5_.pivotY * this.§"!3§;
               _loc8_.scaleX = _loc8_.scaleY = this.§"!3§ * _loc7_;
            }
            else if(this.§8A§)
            {
               this.§,!3§.§0l§(0,-1,true);
            }
         }
         if(this.§@l§ == §!b§)
         {
            this.§1u§(param1);
            _loc2_ = this.§9!B§(param1);
            if(this.§%!I§ > 0 && this.§2!9§ > this.§%!I§)
            {
               return false;
            }
         }
         else
         {
            this.§1u§(param1);
            _loc2_ = this.§9!B§(param1);
         }
         if(this.§>-§ > 0 && this.§3R§ >= this.§>-§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§;$§();
         }
         return true;
      }
      
      public function §1u§(param1:Number) : void
      {
         this.§4!Q§ += param1 * this.§4w§ / 1000;
         this.§2!9§ += this.§4!Q§ * param1 / 1000;
         this.§-o§ += this.§!!D§ * param1 / 1000;
         if(this.§-"§ != 0)
         {
            this.§,!3§.rotation += this.§-"§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §9!B§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§@l§ == §2M§)
         {
            if(this.§>-§ > 0)
            {
               _loc2_ = 1;
               if(this.§0a§ == §#c§)
               {
                  if((_loc4_ = this.§3R§ / this.§>-§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§]#§) / 5000);
               }
               this.§,!3§.scaleX = _loc2_;
               this.§,!3§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§@l§ == §!b§)
         {
            if(this.§0a§ == §1I§)
            {
               this.§,!3§.alpha = Math.max(0,Math.min(1,2 * §"1§.§#[§((this.§>-§ - this.§3R§) / this.§>-§,false)));
               _loc5_ = Math.atan2(-this.§4!Q§,this.§!!D§) * (180 / Math.PI);
               this.§,!3§.scaleX = Math.max(0.2,this.§,!3§.alpha);
               this.§,!3§.scaleY = Math.max(0.2,this.§,!3§.alpha);
               this.§,!3§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§0a§ == §!!7§ || this.§0a§ == §,T§)
            {
               this.§,!3§.scaleX = this.§,!3§.scaleY = 0.2 + (this.§>-§ - this.§3R§) / this.§>-§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§^!2§)
         {
            this.§^!2§.clear();
            this.§^!2§ = null;
         }
         if(this.§,!3§)
         {
            this.§,!3§.dispose();
            this.§,!3§ = null;
         }
         if(this.§7!D§)
         {
            this.§7!D§ = null;
         }
      }
   }
}
