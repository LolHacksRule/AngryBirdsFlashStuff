package §#J§
{
   import §!Y§.§[o§;
   import §1n§.§,!0§;
   import §1n§.§1D§;
   import §1n§.§5#§;
   import §1n§.§?!C§;
   import §9_§.§+>§;
   import §;8§.§4m§;
   import §[P§.Texture;
   import §[x§.§'t§;
   import §[x§.§2^§;
   import §^V§.§1!,§;
   import §^V§.DisplayObject;
   import §^V§.Sprite;
   
   public class §'b§
   {
      
      public static const §-N§:int = 0;
      
      public static const §=<§:int = 1;
      
      public static const §`F§:int = 2;
      
      public static const §6D§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §]V§:String = "Effect_TrailBig_Bird";
      
      public static const §<b§:String = "Effect_Trail_Sparkle";
      
      public static const §5t§:String = "Effect_Floating_Score";
      
      public static const §]!F§:String = "Effect_Floating_Text";
      
      public static const §^g§:String = "Effect_Explosion_Particle";
      
      public static const §"s§:String = "Effect_Explosion_Core";
      
      public static const §28§:String = "Effect_Pig_Destruction";
      
      public static const §9'§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §"x§:String = "Effect_Bird_Destruction";
      
      public static const §=!A§:String = "Effect_Block_Destruction_Particles";
      
      public static const §,U§:String = "Effect_Block_Destruction_Core";
      
      public static const §9X§:int = 0;
      
      public static const §%,§:int = 1;
      
      public static const §87§:int = 2;
      
      public static const §4Q§:int = 3;
      
      public static const §74§:int = 4;
      
      public static const §1[§:int = 5;
      
      public static const §"_§:int = 6;
      
      public static const §<I§:int = 7;
      
      public static const §!!F§:int = 8;
      
      public static const §!!6§:int = 9;
      
      public static const §&!&§:int = 10;
      
      public static const §'e§:int = 11;
      
      public static const §"!9§:int = 12;
      
      public static const §^u§:int = 13;
      
      public static const §<n§:int = 14;
      
      public static const §?9§:int = 15;
      
      public static const §%0§:int = 16;
      
      public static const §,!8§:int = 17;
      
      public static const §%d§:int = 18;
      
      public static const §0P§:Boolean = true;
       
      
      public var §?v§:int;
      
      public var §%!§:int;
      
      public var §>!3§:String;
      
      public var §+9§:Number;
      
      public var §?_§:Number;
      
      public var §2!<§:Number;
      
      public var §,_§:Number;
      
      public var §]!=§:Number = 0;
      
      public var §,&§:Number;
      
      public var §-!8§:Number;
      
      public var §[5§:String;
      
      public var §-!F§:Number = -1;
      
      public var §&!A§:int;
      
      public var §-Y§:Number;
      
      public var §%!;§:Number;
      
      private var §&C§:Sprite;
      
      private var §2!6§:§'t§;
      
      private var §4O§:int;
      
      private var §4=§:int;
      
      private var §=!-§:Boolean;
      
      private var §,k§:§?!C§;
      
      private var §+$§:Boolean;
      
      private var §<H§:§,!0§;
      
      private var §1y§:§5#§;
      
      private var §>0§:§+>§;
      
      public function §'b§(param1:§,!0§, param2:§5#§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§&C§ = new Sprite();
         super();
         this.§<H§ = param1;
         this.§1y§ = param2;
         this.§>!3§ = param3;
         this.§?v§ = param5;
         this.§%!§ = param4;
         this.§&!A§ = param10;
         this.§4=§ = param16;
         this.§=!-§ = param17;
         this.§[5§ = param9;
         this.§+9§ = 0;
         this.§-!8§ = param8;
         this.§-Y§ = param6;
         this.§%!;§ = param7;
         this.§,&§ = param15;
         this.§2!<§ = param11;
         this.§?_§ = param12;
         this.§]!=§ = param14;
         this.§,_§ = param13;
         this.§8!?§();
         this.§]z§();
         if(this.§?v§ == §=<§)
         {
            this.§-!F§ = §[o§.§='§.§1!6§.§&p§ + this.§&C§.height * §2^§.§,]§;
         }
      }
      
      public static function §@#§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §9X§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §87§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §%,§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §1[§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §74§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §4Q§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §%d§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §"_§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §!!6§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §<I§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §!!F§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §&!&§;
         }
         return §'e§;
      }
      
      public static function §+[§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §"!9§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §<n§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §^u§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §,!8§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §%0§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §?9§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §?9§;
         }
         return §%0§;
      }
      
      public function get §return§() : DisplayObject
      {
         return this.§&C§;
      }
      
      public function §9W§(param1:Number, param2:Number) : void
      {
      }
      
      protected function §8!?§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§?!C§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§>!3§)
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
            case §]V§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §<b§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §28§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §9'§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §,U§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §"s§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §^g§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §5t§:
            case §]!F§:
               if(parseInt(this.§[5§) == 10000 || parseInt(this.§[5§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§&!A§)
                  {
                     case §"!9§:
                        _loc8_ = 16058683;
                        break;
                     case §^u§:
                        _loc8_ = 55294;
                        break;
                     case §?9§:
                        _loc8_ = 1878602;
                        break;
                     case §,!8§:
                        _loc8_ = 3552822;
                        break;
                     case §%0§:
                        break;
                     case §<n§:
                        _loc8_ = 16705792;
                  }
                  if(parseInt(this.§[5§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§<H§.§9$§("NUMBERS");
                  this.§2!6§ = new §'t§(_loc2_,_loc3_,true);
                  this.§2!6§.§;7§(parseInt(this.§[5§));
                  this.§&C§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
               }
               else
               {
                  _loc2_ = new Sprite();
                  _loc3_ = this.§<H§.§9$§("NUMBERS");
                  this.§2!6§ = new §'t§(_loc2_,_loc3_);
                  this.§2!6§.§;7§(parseInt(this.§[5§));
                  this.§&C§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
               }
               break;
            case §=!A§:
               switch(this.§&!A§)
               {
                  case §!!6§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §&!&§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §<I§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §!!F§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §'e§:
                     _loc6_ = 1 + _loc1_ % 5;
               }
               if(this.§&C§)
               {
                  this.§&C§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §"x§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§&!A§)
               {
                  case §9X§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §1[§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §%,§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §4Q§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §74§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §87§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §%d§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§&C§)
               {
                  this.§&C§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            default:
               this.createParticle(this.§>!3§,null,this.§4=§,this.§=!-§);
         }
      }
      
      private function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§1D§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§,k§ = this.§<H§.§9$§(param1);
         this.§+$§ = param4;
         var _loc7_:Number = 1;
         if(this.§,k§)
         {
            _loc6_ = (_loc5_ = this.§,k§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            _loc6_ = this.§1y§.§9!5§();
         }
         this.§4O§ = param3;
         var _loc8_:§1!,§ = this.§;s§(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§,&§ * _loc7_;
         this.§&C§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§,&§;
            _loc8_.y = -_loc5_.pivotY * this.§,&§;
         }
         else
         {
            _loc8_.x = -this.§&C§.width / 2;
            _loc8_.y = -this.§&C§.height / 2;
         }
      }
      
      protected function §;s§(param1:Texture) : §1!,§
      {
         return new §1!,§(param1,false);
      }
      
      public function §]z§() : void
      {
         if(this.§&C§)
         {
            this.§&C§.x = this.§-Y§ / §2^§.§,]§;
            this.§&C§.y = this.§%!;§ / §2^§.§,]§;
         }
      }
      
      public function §6?§(param1:§+>§) : void
      {
         this.§>0§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§1D§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§1!,§ = null;
         this.§+9§ += param1;
         var _loc2_:Boolean = false;
         if(this.§>0§)
         {
            if(this.§>0§.sprite == null || this.§>0§.§&$§ == null)
            {
               return false;
            }
            this.§-Y§ = this.§>0§.§>b§().GetPosition().x;
            this.§%!;§ = this.§>0§.§>b§().GetPosition().y;
         }
         if(this.§4O§ > 0 && this.§,k§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§+9§ / 1000 / (1 / _loc3_)) < this.§,k§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§,k§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.§;s§(_loc6_);
               this.§&C§.§"4§(0,-1,true);
               this.§&C§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§,&§;
               _loc8_.y = -_loc5_.pivotY * this.§,&§;
               _loc8_.scaleX = _loc8_.scaleY = this.§,&§ * _loc7_;
            }
            else if(this.§+$§)
            {
               this.§&C§.§"4§(0,-1,true);
            }
         }
         if(this.§?v§ == §=<§)
         {
            this.§0F§(param1);
            _loc2_ = this.§-!>§(param1);
            if(this.§-!F§ > 0 && this.§%!;§ > this.§-!F§)
            {
               return false;
            }
         }
         else
         {
            this.§0F§(param1);
            _loc2_ = this.§-!>§(param1);
         }
         if(this.§-!8§ > 0 && this.§+9§ >= this.§-!8§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§]z§();
         }
         return true;
      }
      
      public function §0F§(param1:Number) : void
      {
         this.§?_§ += param1 * this.§,_§ / 1000;
         this.§%!;§ += this.§?_§ * param1 / 1000;
         this.§-Y§ += this.§2!<§ * param1 / 1000;
         if(this.§]!=§ != 0)
         {
            this.§&C§.rotation += this.§]!=§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §-!>§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§?v§ == §-N§)
         {
            if(this.§-!8§ > 0)
            {
               _loc2_ = 1;
               if(this.§>!3§ == §]!F§)
               {
                  if((_loc4_ = this.§+9§ / this.§-!8§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§[5§) / 5000);
               }
               this.§&C§.scaleX = _loc2_;
               this.§&C§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§?v§ == §=<§)
         {
            if(this.§>!3§ == §^g§)
            {
               this.§&C§.alpha = Math.max(0,Math.min(1,2 * §4m§.§5v§((this.§-!8§ - this.§+9§) / this.§-!8§,false)));
               _loc5_ = Math.atan2(-this.§?_§,this.§2!<§) * (180 / Math.PI);
               this.§&C§.scaleX = Math.max(0.2,this.§&C§.alpha);
               this.§&C§.scaleY = Math.max(0.2,this.§&C§.alpha);
               this.§&C§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§>!3§ == §"x§ || this.§>!3§ == §,U§)
            {
               this.§&C§.scaleX = this.§&C§.scaleY = 0.2 + (this.§-!8§ - this.§+9§) / this.§-!8§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§2!6§)
         {
            this.§2!6§.clear();
            this.§2!6§ = null;
         }
         if(this.§&C§)
         {
            this.§&C§.dispose();
            this.§&C§ = null;
         }
         if(this.§>0§)
         {
            this.§>0§ = null;
         }
      }
   }
}
