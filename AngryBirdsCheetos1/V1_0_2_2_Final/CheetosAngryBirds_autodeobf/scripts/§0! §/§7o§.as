package §0! §
{
   import § !G§.§%S§;
   import § `§.§2w§;
   import § `§.§5L§;
   import § `§.§6!=§;
   import § `§.§^1§;
   import §!X§.§86§;
   import §!X§.§@!'§;
   import §,h§.§+0§;
   import §?m§.§7?§;
   import §]!B§.Texture;
   import §]@§.DisplayObject;
   import §]@§.Sprite;
   import §]@§.§`!C§;
   
   public class §7o§
   {
      
      public static const §%!C§:int = 0;
      
      public static const §%u§:int = 1;
      
      public static const §&!'§:int = 2;
      
      public static const §4;§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §?!J§:String = "Effect_TrailBig_Bird";
      
      public static const §7!+§:String = "Effect_Trail_Sparkle";
      
      public static const §`O§:String = "Effect_Floating_Score";
      
      public static const §>!#§:String = "Effect_Floating_Text";
      
      public static const §0V§:String = "Effect_Explosion_Particle";
      
      public static const §40§:String = "Effect_Explosion_Core";
      
      public static const §>[§:String = "Effect_Pig_Destruction";
      
      public static const §-! §:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §8!I§:String = "Effect_Bird_Destruction";
      
      public static const §6!D§:String = "Effect_Block_Destruction_Particles";
      
      public static const §39§:String = "Effect_Block_Destruction_Core";
      
      public static const §]!4§:int = 0;
      
      public static const §5h§:int = 1;
      
      public static const §=j§:int = 2;
      
      public static const §&$§:int = 3;
      
      public static const §;V§:int = 4;
      
      public static const §1!6§:int = 5;
      
      public static const §+#§:int = 6;
      
      public static const § !E§:int = 7;
      
      public static const §&8§:int = 8;
      
      public static const §;!3§:int = 9;
      
      public static const §#z§:int = 10;
      
      public static const §?2§:int = 11;
      
      public static const §!s§:int = 12;
      
      public static const §=Z§:int = 13;
      
      public static const §'_§:int = 14;
      
      public static const §#$§:int = 15;
      
      public static const §<!M§:int = 16;
      
      public static const §^!<§:int = 17;
      
      public static const §%!<§:int = 18;
      
      public static const §<u§:Boolean = true;
       
      
      public var §%O§:int;
      
      public var §9Y§:int;
      
      public var §1!Z§:String;
      
      public var §^!,§:Number;
      
      public var §+!5§:Number;
      
      public var §5!]§:Number;
      
      public var §8!3§:Number;
      
      public var §50§:Number = 0;
      
      public var §1R§:Number;
      
      public var §32§:Number;
      
      public var §?W§:String;
      
      public var §=$§:Number = -1;
      
      public var §;!#§:int;
      
      public var §<!Y§:Number;
      
      public var § l§:Number;
      
      private var §[![§:Sprite;
      
      private var §=!O§:§@!'§;
      
      private var §!L§:int;
      
      private var §!!_§:int;
      
      private var §,W§:Boolean;
      
      private var §<,§:§^1§;
      
      private var §@i§:Boolean;
      
      private var §>n§:§5L§;
      
      private var §8!M§:§2w§;
      
      private var §]N§:§+0§;
      
      public function §7o§(param1:§5L§, param2:§2w§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§[![§ = new Sprite();
         super();
         this.§>n§ = param1;
         this.§8!M§ = param2;
         this.§1!Z§ = param3;
         this.§%O§ = param5;
         this.§9Y§ = param4;
         this.§;!#§ = param10;
         this.§!!_§ = param16;
         this.§,W§ = param17;
         this.§?W§ = param9;
         this.§^!,§ = 0;
         this.§32§ = param8;
         this.§<!Y§ = param6;
         this.§ l§ = param7;
         this.§1R§ = param15;
         this.§5!]§ = param11;
         this.§+!5§ = param12;
         this.§50§ = param14;
         this.§8!3§ = param13;
         this.§'e§();
         this.§>!Q§();
         if(this.§%O§ == §%u§)
         {
            this.§=$§ = §7?§.§4!H§.§%-§.§[w§ + this.§[![§.height * §86§.§7!4§;
         }
      }
      
      public static function §3E§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §]!4§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §=j§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §5h§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §1!6§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §;V§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §&$§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §%!<§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §+#§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §;!3§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return § !E§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §&8§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §#z§;
         }
         return §?2§;
      }
      
      public static function §=F§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §!s§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §'_§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §=Z§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §^!<§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §<!M§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §#$§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §#$§;
         }
         return §<!M§;
      }
      
      public function get §'!W§() : DisplayObject
      {
         return this.§[![§;
      }
      
      public function §6!#§(param1:Number, param2:Number) : void
      {
      }
      
      protected function §'e§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§^1§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§1!Z§)
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
            case §?!J§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §7!+§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §>[§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §-! §:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §39§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §40§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §0V§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §`O§:
            case §>!#§:
               if(parseInt(this.§?W§) == 10000 || parseInt(this.§?W§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§;!#§)
                  {
                     case §!s§:
                        _loc8_ = 16058683;
                        break;
                     case §=Z§:
                        _loc8_ = 55294;
                        break;
                     case §#$§:
                        _loc8_ = 1878602;
                        break;
                     case §^!<§:
                        _loc8_ = 3552822;
                        break;
                     case §<!M§:
                        break;
                     case §'_§:
                        _loc8_ = 16705792;
                  }
                  if(parseInt(this.§?W§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§>n§.§>f§("NUMBERS");
                  this.§=!O§ = new §@!'§(_loc2_,_loc3_,true);
                  this.§=!O§.§ x§(parseInt(this.§?W§));
                  this.§[![§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§>n§.§>f§("NUMBERS");
               this.§=!O§ = new §@!'§(_loc2_,_loc3_);
               this.§=!O§.§ x§(parseInt(this.§?W§));
               this.§[![§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §6!D§:
               switch(this.§;!#§)
               {
                  case §;!3§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §#z§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case § !E§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §&8§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §?2§:
                     _loc6_ = 1 + _loc1_ % 5;
               }
               if(this.§[![§)
               {
                  this.§[![§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §8!I§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§;!#§)
               {
                  case §]!4§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §1!6§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §5h§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §&$§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §;V§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §=j§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §%!<§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§[![§)
               {
                  this.§[![§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§1!Z§,null,this.§!!_§,this.§,W§);
         }
      }
      
      private function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§6!=§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§<,§ = this.§>n§.§>f§(param1);
         this.§@i§ = param4;
         var _loc7_:Number = 1;
         if(this.§<,§)
         {
            _loc6_ = (_loc5_ = this.§<,§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            _loc6_ = this.§8!M§.§-!D§();
         }
         this.§!L§ = param3;
         var _loc8_:§`!C§ = this.§+!#§(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§1R§ * _loc7_;
         this.§[![§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§1R§;
            _loc8_.y = -_loc5_.pivotY * this.§1R§;
         }
         else
         {
            _loc8_.x = -this.§[![§.width / 2;
            _loc8_.y = -this.§[![§.height / 2;
         }
      }
      
      protected function §+!#§(param1:Texture) : §`!C§
      {
         return new §`!C§(param1,false);
      }
      
      public function §>!Q§() : void
      {
         if(this.§[![§)
         {
            this.§[![§.x = this.§<!Y§ / §86§.§7!4§;
            this.§[![§.y = this.§ l§ / §86§.§7!4§;
         }
      }
      
      public function §%A§(param1:§+0§) : void
      {
         this.§]N§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§6!=§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§`!C§ = null;
         this.§^!,§ += param1;
         var _loc2_:Boolean = false;
         if(this.§]N§)
         {
            if(this.§]N§.sprite == null || this.§]N§.§7Z§ == null)
            {
               return false;
            }
            this.§<!Y§ = this.§]N§.§?!7§().GetPosition().x;
            this.§ l§ = this.§]N§.§?!7§().GetPosition().y;
         }
         if(this.§!L§ > 0 && this.§<,§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§^!,§ / 1000 / (1 / _loc3_)) < this.§<,§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§<,§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.§+!#§(_loc6_);
               this.§[![§.§7i§(0,-1,true);
               this.§[![§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§1R§;
               _loc8_.y = -_loc5_.pivotY * this.§1R§;
               _loc8_.scaleX = _loc8_.scaleY = this.§1R§ * _loc7_;
            }
            else if(this.§@i§)
            {
               this.§[![§.§7i§(0,-1,true);
            }
         }
         if(this.§%O§ == §%u§)
         {
            this.§#G§(param1);
            _loc2_ = this.§!,§(param1);
            if(this.§=$§ > 0 && this.§ l§ > this.§=$§)
            {
               return false;
            }
         }
         else
         {
            this.§#G§(param1);
            _loc2_ = this.§!,§(param1);
         }
         if(this.§32§ > 0 && this.§^!,§ >= this.§32§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§>!Q§();
         }
         return true;
      }
      
      public function §#G§(param1:Number) : void
      {
         this.§+!5§ += param1 * this.§8!3§ / 1000;
         this.§ l§ += this.§+!5§ * param1 / 1000;
         this.§<!Y§ += this.§5!]§ * param1 / 1000;
         if(this.§50§ != 0)
         {
            this.§[![§.rotation += this.§50§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §!,§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§%O§ == §%!C§)
         {
            if(this.§32§ > 0)
            {
               _loc2_ = 1;
               if(this.§1!Z§ == §>!#§)
               {
                  if((_loc4_ = this.§^!,§ / this.§32§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§?W§) / 5000);
               }
               this.§[![§.scaleX = _loc2_;
               this.§[![§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§%O§ == §%u§)
         {
            if(this.§1!Z§ == §0V§)
            {
               this.§[![§.alpha = Math.max(0,Math.min(1,2 * §%S§.§6b§((this.§32§ - this.§^!,§) / this.§32§,false)));
               _loc5_ = Math.atan2(-this.§+!5§,this.§5!]§) * (180 / Math.PI);
               this.§[![§.scaleX = Math.max(0.2,this.§[![§.alpha);
               this.§[![§.scaleY = Math.max(0.2,this.§[![§.alpha);
               this.§[![§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§1!Z§ == §8!I§ || this.§1!Z§ == §39§)
            {
               this.§[![§.scaleX = this.§[![§.scaleY = 0.2 + (this.§32§ - this.§^!,§) / this.§32§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§=!O§)
         {
            this.§=!O§.clear();
            this.§=!O§ = null;
         }
         if(this.§[![§)
         {
            this.§[![§.dispose();
            this.§[![§ = null;
         }
         if(this.§]N§)
         {
            this.§]N§ = null;
         }
      }
   }
}
