package §!D§
{
   import §!!,§.§`Q§;
   import §#!@§.§0V§;
   import §#!@§.DisplayObject;
   import §#!@§.Sprite;
   import §1#§.Texture;
   import §6h§.§[!4§;
   import §9s§.§^9§;
   import §9s§.§var§;
   import §@!;§.§`J§;
   import §[v§.§'P§;
   import §[v§.§0&§;
   import §[v§.§03§;
   import §[v§.§7e§;
   
   public class §7D§
   {
      
      public static const §4x§:int = 0;
      
      public static const PARTICLE_TYPE_KINETIC_PARTICLE:int = 1;
      
      public static const §5B§:int = 2;
      
      public static const §+!L§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §!!K§:String = "Effect_TrailBig_Bird";
      
      public static const §"d§:String = "Effect_Trail_Sparkle";
      
      public static const §>#§:String = "Effect_Floating_Score";
      
      public static const §?a§:String = "Effect_Floating_Text";
      
      public static const §&?§:String = "Effect_Explosion_Particle";
      
      public static const §4K§:String = "Effect_Explosion_Core";
      
      public static const §0!N§:String = "Effect_Pig_Destruction";
      
      public static const §[U§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §!W§:String = "Effect_Bird_Destruction";
      
      public static const PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES:String = "Effect_Block_Destruction_Particles";
      
      public static const §[N§:String = "Effect_Block_Destruction_Core";
      
      public static const §-N§:int = 0;
      
      public static const §'8§:int = 1;
      
      public static const §1!%§:int = 2;
      
      public static const §,X§:int = 3;
      
      public static const §2R§:int = 4;
      
      public static const §while§:int = 5;
      
      public static const §;_§:int = 6;
      
      public static const §+V§:int = 7;
      
      public static const §`#§:int = 8;
      
      public static const §1!;§:int = 9;
      
      public static const §,-§:int = 10;
      
      public static const § G§:int = 11;
      
      public static const §%o§:int = 12;
      
      public static const §%4§:int = 13;
      
      public static const §7!M§:int = 14;
      
      public static const §#s§:int = 15;
      
      public static const §8z§:int = 16;
      
      public static const §-v§:int = 17;
      
      public static const §@!M§:int = 18;
      
      public static const §`§:int = 19;
      
      public static const §3!#§:Boolean = true;
       
      
      public var §?C§:int;
      
      public var §%L§:int;
      
      public var §+D§:String;
      
      public var §7!5§:Number;
      
      public var §;O§:Number;
      
      public var §;y§:Number;
      
      public var §'H§:Number;
      
      public var §4!5§:Number = 0;
      
      public var §%g§:Number;
      
      public var §const§:Number;
      
      public var §6"§:String;
      
      public var § P§:Number = -1;
      
      public var §'a§:int;
      
      public var §3y§:Number;
      
      public var §6@§:Number;
      
      protected var §%>§:Sprite;
      
      private var §3"§:§var§;
      
      private var §1!G§:int;
      
      protected var §<!D§:int;
      
      protected var §"f§:Boolean;
      
      private var §%!-§:§03§;
      
      private var §&e§:Boolean;
      
      private var §>&§:§7e§;
      
      private var §4d§:§0&§;
      
      private var §^!9§:§`Q§;
      
      public function §7D§(param1:§7e§, param2:§0&§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§%>§ = new Sprite();
         super();
         this.§>&§ = param1;
         this.§4d§ = param2;
         this.§+D§ = param3;
         this.§?C§ = param5;
         this.§%L§ = param4;
         this.§'a§ = param10;
         this.§<!D§ = param16;
         this.§"f§ = param17;
         this.§6"§ = param9;
         this.§7!5§ = 0;
         this.§const§ = param8;
         this.§3y§ = param6;
         this.§6@§ = param7;
         this.§%g§ = param15;
         this.§;y§ = param11;
         this.§;O§ = param12;
         this.§4!5§ = param14;
         this.§'H§ = param13;
         this.createVisuals();
         this.§?!C§();
         if(this.§?C§ == PARTICLE_TYPE_KINETIC_PARTICLE)
         {
            this.§ P§ = §[!4§.§continue§.§5!=§.§]!7§ + this.§%>§.height * §^9§.§5T§;
         }
      }
      
      public static function getParticleMaterialFromEngineMaterial(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §-N§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §1!%§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §'8§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §while§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §2R§;
         }
         if(param1.toUpperCase().indexOf("BIRD_ORANGE") >= 0)
         {
            return §1!%§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §,X§;
         }
         if(param1.toUpperCase().indexOf("BIRD_CHRISTMAS") >= 0)
         {
            return §while§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WINGMAN") >= 0)
         {
            return §-N§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §@!M§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §;_§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §1!;§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §+V§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §`#§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §,-§;
         }
         return § G§;
      }
      
      public static function §&$§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §%o§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §7!M§;
         }
         if(param1.toUpperCase().indexOf("BIRD_ORANGE") >= 0)
         {
            return §`§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §%4§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §-v§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §8z§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §#s§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §#s§;
         }
         return §8z§;
      }
      
      public function get §9!"§() : DisplayObject
      {
         return this.§%>§;
      }
      
      public function §!!"§(param1:Number, param2:Number) : void
      {
      }
      
      protected function createVisuals() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§03§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§+D§)
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
            case §!!K§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §"d§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §0!N§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §[U§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §[N§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §4K§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §&?§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §>#§:
            case §?a§:
               if(parseInt(this.§6"§) == 10000 || parseInt(this.§6"§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§'a§)
                  {
                     case §%o§:
                        _loc8_ = 16058683;
                        break;
                     case §%4§:
                        _loc8_ = 55294;
                        break;
                     case §#s§:
                        _loc8_ = 1878602;
                        break;
                     case §-v§:
                        _loc8_ = 3552822;
                        break;
                     case §8z§:
                        break;
                     case §7!M§:
                        _loc8_ = 16705792;
                        break;
                     case §`§:
                        _loc8_ = 16753152;
                  }
                  if(parseInt(this.§6"§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§>&§.§ +§("NUMBERS");
                  this.§3"§ = new §var§(_loc2_,_loc3_,true);
                  this.§3"§.§-8§(parseInt(this.§6"§));
                  this.§%>§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§>&§.§ +§("NUMBERS");
               this.§3"§ = new §var§(_loc2_,_loc3_);
               this.§3"§.§-8§(parseInt(this.§6"§));
               this.§%>§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES:
               switch(this.§'a§)
               {
                  case §1!;§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §,-§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §+V§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §`#§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case § G§:
                     _loc6_ = 1 + _loc1_ % 3;
               }
               if(this.§%>§)
               {
                  this.§%>§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §!W§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§'a§)
               {
                  case §-N§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §while§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §'8§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §,X§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §2R§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §1!%§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §@!M§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§%>§)
               {
                  this.§%>§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§+D§,null,this.§<!D§,this.§"f§);
         }
      }
      
      protected function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§'P§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§&e§ = param4;
         var _loc7_:Number = 1;
         this.§%!-§ = this.§>&§.§ +§(param1);
         if(this.§%!-§)
         {
            _loc6_ = (_loc5_ = this.§%!-§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            if(!(_loc5_ = this.§4d§.§4`§(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
         }
         this.§1!G§ = param3;
         var _loc8_:§0V§ = this.§6!9§(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§%g§ * _loc7_;
         this.§%>§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§%g§;
            _loc8_.y = -_loc5_.pivotY * this.§%g§;
         }
         else
         {
            _loc8_.x = -this.§%>§.width / 2;
            _loc8_.y = -this.§%>§.height / 2;
         }
      }
      
      protected function §6!9§(param1:Texture) : §0V§
      {
         return new §0V§(param1,false);
      }
      
      public function §?!C§() : void
      {
         if(this.§%>§)
         {
            this.§%>§.x = this.§3y§ / §^9§.§5T§;
            this.§%>§.y = this.§6@§ / §^9§.§5T§;
         }
      }
      
      public function §1A§(param1:§`Q§) : void
      {
         this.§^!9§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§'P§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§0V§ = null;
         this.§7!5§ += param1;
         var _loc2_:Boolean = false;
         if(this.§^!9§)
         {
            if(this.§^!9§.sprite == null || this.§^!9§.§?!6§ == null)
            {
               return false;
            }
            this.§3y§ = this.§^!9§.§ 7§().GetPosition().x;
            this.§6@§ = this.§^!9§.§ 7§().GetPosition().y;
         }
         if(this.§1!G§ > 0 && this.§%!-§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§7!5§ / 1000 / (1 / _loc3_)) < this.§%!-§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§%!-§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.§6!9§(_loc6_);
               this.§%>§.§>C§(0,-1,true);
               this.§%>§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§%g§;
               _loc8_.y = -_loc5_.pivotY * this.§%g§;
               _loc8_.scaleX = _loc8_.scaleY = this.§%g§ * _loc7_;
            }
            else if(this.§&e§)
            {
               this.§%>§.§>C§(0,-1,true);
            }
         }
         if(this.§?C§ == PARTICLE_TYPE_KINETIC_PARTICLE)
         {
            this.§%J§(param1);
            _loc2_ = this.§^3§(param1);
            if(this.§ P§ > 0 && this.§6@§ > this.§ P§)
            {
               return false;
            }
         }
         else
         {
            this.§%J§(param1);
            _loc2_ = this.§^3§(param1);
         }
         if(this.§const§ > 0 && this.§7!5§ >= this.§const§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§?!C§();
         }
         return true;
      }
      
      public function §%J§(param1:Number) : void
      {
         this.§;O§ += param1 * this.§'H§ / 1000;
         this.§6@§ += this.§;O§ * param1 / 1000;
         this.§3y§ += this.§;y§ * param1 / 1000;
         if(this.§4!5§ != 0)
         {
            this.§%>§.rotation += this.§4!5§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §^3§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§?C§ == §4x§)
         {
            if(this.§const§ > 0)
            {
               _loc2_ = 1;
               if(this.§+D§ == §?a§)
               {
                  if((_loc4_ = this.§7!5§ / this.§const§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§6"§) / 5000);
               }
               this.§%>§.scaleX = _loc2_;
               this.§%>§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§?C§ == PARTICLE_TYPE_KINETIC_PARTICLE)
         {
            if(this.§+D§ == §&?§)
            {
               this.§%>§.alpha = Math.max(0,Math.min(1,2 * §`J§.§8G§((this.§const§ - this.§7!5§) / this.§const§,false)));
               _loc5_ = Math.atan2(-this.§;O§,this.§;y§) * (180 / Math.PI);
               this.§%>§.scaleX = Math.max(0.2,this.§%>§.alpha);
               this.§%>§.scaleY = Math.max(0.2,this.§%>§.alpha);
               this.§%>§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§+D§ == §!W§ || this.§+D§ == §[N§)
            {
               this.§%>§.scaleX = this.§%>§.scaleY = 0.2 + (this.§const§ - this.§7!5§) / this.§const§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§3"§)
         {
            this.§3"§.clear();
            this.§3"§ = null;
         }
         if(this.§%>§)
         {
            this.§%>§.dispose();
            this.§%>§ = null;
         }
         if(this.§^!9§)
         {
            this.§^!9§ = null;
         }
      }
   }
}
