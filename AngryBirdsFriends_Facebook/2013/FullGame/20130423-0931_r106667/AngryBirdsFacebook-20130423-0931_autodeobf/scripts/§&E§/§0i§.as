package §&E§
{
   import §'!6§.§ "E§;
   import §'!6§.DisplayObject;
   import §'!6§.Sprite;
   import §+!c§.§6!r§;
   import §4!<§.§'!S§;
   import §4!<§.§,!%§;
   import §<5§.Texture;
   import §<T§.§4!N§;
   import §<T§.§^!Y§;
   import §<T§.§^"5§;
   import §<T§.§`m§;
   import §@!"§.§?l§;
   import §`!G§.§[!8§;
   
   public class §0i§
   {
      
      public static const §[!A§:int = 0;
      
      public static const PARTICLE_TYPE_KINETIC_PARTICLE:int = 1;
      
      public static const §2L§:int = 2;
      
      public static const §>!c§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §4"[§:String = "Effect_TrailBig_Bird";
      
      public static const §%9§:String = "Effect_Trail_Sparkle";
      
      public static const §3!D§:String = "Effect_Floating_Score";
      
      public static const §+![§:String = "Effect_Floating_Text";
      
      public static const §<!F§:String = "Effect_Explosion_Particle";
      
      public static const §^,§:String = "Effect_Explosion_Core";
      
      public static const §^"X§:String = "Effect_Pig_Destruction";
      
      public static const §^">§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §#"D§:String = "Effect_Bird_Destruction";
      
      public static const PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES:String = "Effect_Block_Destruction_Particles";
      
      public static const §'!N§:String = "Effect_Block_Destruction_Core";
      
      public static const §7!z§:int = 0;
      
      public static const §+"U§:int = 1;
      
      public static const §]!6§:int = 2;
      
      public static const §1t§:int = 3;
      
      public static const §=!l§:int = 4;
      
      public static const §?!N§:int = 5;
      
      public static const §?"Z§:int = 6;
      
      public static const §2!&§:int = 7;
      
      public static const §3!+§:int = 8;
      
      public static const §0F§:int = 9;
      
      public static const §?!k§:int = 10;
      
      public static const §%r§:int = 11;
      
      public static const §<`§:int = 12;
      
      public static const §3!r§:int = 13;
      
      public static const §%!!§:int = 14;
      
      public static const §9Y§:int = 15;
      
      public static const §#F§:int = 16;
      
      public static const §3!v§:int = 17;
      
      public static const §<c§:int = 18;
      
      public static const §'!M§:int = 19;
      
      public static const §9!8§:Boolean = true;
       
      
      public var §62§:int;
      
      public var §+B§:int;
      
      public var §,!o§:String;
      
      public var §;z§:Number;
      
      public var §@!7§:Number;
      
      public var §>!,§:Number;
      
      public var §`!g§:Number;
      
      public var §!"W§:Number = 0;
      
      public var §<[§:Number;
      
      public var §^"!§:Number;
      
      public var §0!v§:String;
      
      public var §="3§:Number = -1;
      
      public var §3E§:int;
      
      public var §4!K§:Number;
      
      public var §7!#§:Number;
      
      protected var §"$§:Sprite;
      
      private var §2![§:§,!%§;
      
      private var §>=§:int;
      
      protected var §3"8§:int;
      
      protected var §+a§:Boolean;
      
      private var §4",§:§4!N§;
      
      private var §,!-§:Boolean;
      
      private var §8"+§:§^!Y§;
      
      private var §=!2§:§`m§;
      
      private var §9!!§:§[!8§;
      
      public function §0i§(param1:§^!Y§, param2:§`m§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§"$§ = new Sprite();
         super();
         this.§8"+§ = param1;
         this.§=!2§ = param2;
         this.§,!o§ = param3;
         this.§62§ = param5;
         this.§+B§ = param4;
         this.§3E§ = param10;
         this.§3"8§ = param16;
         this.§+a§ = param17;
         this.§0!v§ = param9;
         this.§;z§ = 0;
         this.§^"!§ = param8;
         this.§4!K§ = param6;
         this.§7!#§ = param7;
         this.§<[§ = param15;
         this.§>!,§ = param11;
         this.§@!7§ = param12;
         this.§!"W§ = param14;
         this.§`!g§ = param13;
         this.createVisuals();
         this.§]`§();
         if(this.§62§ == PARTICLE_TYPE_KINETIC_PARTICLE)
         {
            this.§="3§ = §?l§.§'h§.§-!z§.§]2§ + this.§"$§.height * §'!S§.§2"<§;
         }
      }
      
      public static function getParticleMaterialFromEngineMaterial(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §7!z§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §]!6§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §+"U§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §?!N§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §=!l§;
         }
         if(param1.toUpperCase().indexOf("BIRD_ORANGE") >= 0)
         {
            return §]!6§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §1t§;
         }
         if(param1.toUpperCase().indexOf("BIRD_CHRISTMAS") >= 0)
         {
            return §?!N§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WINGMAN") >= 0)
         {
            return §7!z§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §<c§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §?"Z§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §0F§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §2!&§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §3!+§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §?!k§;
         }
         return §%r§;
      }
      
      public static function §7R§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §<`§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §%!!§;
         }
         if(param1.toUpperCase().indexOf("BIRD_ORANGE") >= 0)
         {
            return §'!M§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §3!r§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §3!v§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §#F§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §9Y§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §9Y§;
         }
         return §#F§;
      }
      
      public function get §>R§() : DisplayObject
      {
         return this.§"$§;
      }
      
      public function § B§(param1:Number, param2:Number) : void
      {
      }
      
      protected function createVisuals() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§4!N§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§,!o§)
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
            case §4"[§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §%9§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §^"X§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §^">§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §'!N§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §^,§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §<!F§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §3!D§:
            case §+![§:
               if(parseInt(this.§0!v§) == 10000 || parseInt(this.§0!v§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§3E§)
                  {
                     case §<`§:
                        _loc8_ = 16058683;
                        break;
                     case §3!r§:
                        _loc8_ = 55294;
                        break;
                     case §9Y§:
                        _loc8_ = 1878602;
                        break;
                     case §3!v§:
                        _loc8_ = 3552822;
                        break;
                     case §#F§:
                        break;
                     case §%!!§:
                        _loc8_ = 16705792;
                        break;
                     case §'!M§:
                        _loc8_ = 16753152;
                  }
                  if(parseInt(this.§0!v§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§8"+§.getAnimation("NUMBERS");
                  this.§2![§ = new §,!%§(_loc2_,_loc3_,true);
                  this.§2![§.§ P§(parseInt(this.§0!v§));
                  this.§"$§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§8"+§.getAnimation("NUMBERS");
               this.§2![§ = new §,!%§(_loc2_,_loc3_);
               this.§2![§.§ P§(parseInt(this.§0!v§));
               this.§"$§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES:
               switch(this.§3E§)
               {
                  case §0F§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §?!k§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §2!&§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §3!+§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §%r§:
                     _loc6_ = 1 + _loc1_ % 3;
               }
               if(this.§"$§)
               {
                  this.§"$§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §#"D§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§3E§)
               {
                  case §7!z§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §?!N§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §+"U§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §1t§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §=!l§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §]!6§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §<c§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§"$§)
               {
                  this.§"$§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§,!o§,null,this.§3"8§,this.§+a§);
         }
      }
      
      protected function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§^"5§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§,!-§ = param4;
         var _loc7_:Number = 1;
         this.§4",§ = this.§8"+§.getAnimation(param1);
         if(this.§4",§)
         {
            _loc6_ = (_loc5_ = this.§4",§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            if(!(_loc5_ = this.§=!2§.§#!L§(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
         }
         this.§>=§ = param3;
         var _loc8_:§ "E§ = this.§2S§(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§<[§ * _loc7_;
         this.§"$§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§<[§;
            _loc8_.y = -_loc5_.pivotY * this.§<[§;
         }
         else
         {
            _loc8_.x = -this.§"$§.width / 2;
            _loc8_.y = -this.§"$§.height / 2;
         }
      }
      
      protected function §2S§(param1:Texture) : § "E§
      {
         return new § "E§(param1,false);
      }
      
      public function §]`§() : void
      {
         if(this.§"$§)
         {
            this.§"$§.x = this.§4!K§ / §'!S§.§2"<§;
            this.§"$§.y = this.§7!#§ / §'!S§.§2"<§;
         }
      }
      
      public function §3X§(param1:§[!8§) : void
      {
         this.§9!!§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§^"5§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§ "E§ = null;
         this.§;z§ += param1;
         var _loc2_:Boolean = false;
         if(this.§9!!§)
         {
            if(this.§9!!§.sprite == null || this.§9!!§.§^!f§ == null)
            {
               return false;
            }
            this.§4!K§ = this.§9!!§.getBody().GetPosition().x;
            this.§7!#§ = this.§9!!§.getBody().GetPosition().y;
         }
         if(this.§>=§ > 0 && this.§4",§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§;z§ / 1000 / (1 / _loc3_)) < this.§4",§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§4",§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.§2S§(_loc6_);
               this.§"$§.§<!7§(0,-1,true);
               this.§"$§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§<[§;
               _loc8_.y = -_loc5_.pivotY * this.§<[§;
               _loc8_.scaleX = _loc8_.scaleY = this.§<[§ * _loc7_;
            }
            else if(this.§,!-§)
            {
               this.§"$§.§<!7§(0,-1,true);
            }
         }
         if(this.§62§ == PARTICLE_TYPE_KINETIC_PARTICLE)
         {
            this.§-"9§(param1);
            _loc2_ = this.§[!W§(param1);
            if(this.§="3§ > 0 && this.§7!#§ > this.§="3§)
            {
               return false;
            }
         }
         else
         {
            this.§-"9§(param1);
            _loc2_ = this.§[!W§(param1);
         }
         if(this.§^"!§ > 0 && this.§;z§ >= this.§^"!§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§]`§();
         }
         return true;
      }
      
      public function §-"9§(param1:Number) : void
      {
         this.§@!7§ += param1 * this.§`!g§ / 1000;
         this.§7!#§ += this.§@!7§ * param1 / 1000;
         this.§4!K§ += this.§>!,§ * param1 / 1000;
         if(this.§!"W§ != 0)
         {
            this.§"$§.rotation += this.§!"W§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §[!W§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§62§ == §[!A§)
         {
            if(this.§^"!§ > 0)
            {
               _loc2_ = 1;
               if(this.§,!o§ == §+![§)
               {
                  if((_loc4_ = this.§;z§ / this.§^"!§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§0!v§) / 5000);
               }
               this.§"$§.scaleX = _loc2_;
               this.§"$§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§62§ == PARTICLE_TYPE_KINETIC_PARTICLE)
         {
            if(this.§,!o§ == §<!F§)
            {
               this.§"$§.alpha = Math.max(0,Math.min(1,2 * §6!r§.§+3§((this.§^"!§ - this.§;z§) / this.§^"!§,false)));
               _loc5_ = Math.atan2(-this.§@!7§,this.§>!,§) * (180 / Math.PI);
               this.§"$§.scaleX = Math.max(0.2,this.§"$§.alpha);
               this.§"$§.scaleY = Math.max(0.2,this.§"$§.alpha);
               this.§"$§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§,!o§ == §#"D§ || this.§,!o§ == §'!N§)
            {
               this.§"$§.scaleX = this.§"$§.scaleY = 0.2 + (this.§^"!§ - this.§;z§) / this.§^"!§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§2![§)
         {
            this.§2![§.clear();
            this.§2![§ = null;
         }
         if(this.§"$§)
         {
            this.§"$§.dispose();
            this.§"$§ = null;
         }
         if(this.§9!!§)
         {
            this.§9!!§ = null;
         }
      }
   }
}
