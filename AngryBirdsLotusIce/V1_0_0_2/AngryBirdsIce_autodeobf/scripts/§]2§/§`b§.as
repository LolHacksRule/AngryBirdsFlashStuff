package §]2§
{
   import §"o§.§ M§;
   import §"o§.§,,§;
   import §%?§.Texture;
   import §&V§.§,_§;
   import §&V§.§,w§;
   import §&V§.§;Q§;
   import §&V§.§^!8§;
   import §'m§.§%N§;
   import §;j§.§8[§;
   import §@!=§.§"S§;
   import §@!=§.DisplayObject;
   import §@!=§.Sprite;
   import §finally§.§%!7§;
   
   public class §`b§
   {
      
      public static const §catch§:int = 0;
      
      public static const § "§:int = 1;
      
      public static const §67§:int = 2;
      
      public static const §!-§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §?E§:String = "Effect_TrailBig_Bird";
      
      public static const §6]§:String = "Effect_Trail_Sparkle";
      
      public static const §]t§:String = "Effect_Floating_Score";
      
      public static const §0g§:String = "Effect_Floating_Text";
      
      public static const §+1§:String = "Effect_Explosion_Particle";
      
      public static const §'Q§:String = "Effect_Explosion_Core";
      
      public static const §!p§:String = "Effect_Pig_Destruction";
      
      public static const §,m§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §7M§:String = "Effect_Bird_Destruction";
      
      public static const §^e§:String = "Effect_Block_Destruction_Particles";
      
      public static const § !0§:String = "Effect_Block_Destruction_Core";
      
      public static const §-Q§:int = 0;
      
      public static const §&K§:int = 1;
      
      public static const §3n§:int = 2;
      
      public static const §+!>§:int = 3;
      
      public static const §,R§:int = 4;
      
      public static const §<!+§:int = 5;
      
      public static const §>8§:int = 6;
      
      public static const §05§:int = 7;
      
      public static const §%>§:int = 8;
      
      public static const §]!7§:int = 9;
      
      public static const §<>§:int = 10;
      
      public static const §@b§:int = 11;
      
      public static const §>!A§:int = 12;
      
      public static const §&%§:int = 13;
      
      public static const §+2§:int = 14;
      
      public static const §[!9§:int = 15;
      
      public static const §?$§:int = 16;
      
      public static const §?-§:int = 17;
      
      public static const §77§:int = 18;
      
      public static const §0!E§:Boolean = true;
       
      
      public var §2e§:int;
      
      public var §4l§:int;
      
      public var §=]§:String;
      
      public var §6w§:Number;
      
      public var §39§:Number;
      
      public var §>!?§:Number;
      
      public var §?5§:Number;
      
      public var §@k§:Number = 0;
      
      public var §50§:Number;
      
      public var §7Q§:Number;
      
      public var §'w§:String;
      
      public var §+R§:Number = -1;
      
      public var §2!F§:int;
      
      public var §2!2§:Number;
      
      public var §9!3§:Number;
      
      private var §[o§:Sprite;
      
      private var §`!>§:§,,§;
      
      private var §1c§:int;
      
      private var §^,§:int;
      
      private var §=V§:Boolean;
      
      private var §6!E§:§,_§;
      
      private var §%I§:Boolean;
      
      private var §7?§:§^!8§;
      
      private var §^!&§:§,w§;
      
      private var §@!§:§%!7§;
      
      public function §`b§(param1:§^!8§, param2:§,w§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§[o§ = new Sprite();
         super();
         this.§7?§ = param1;
         this.§^!&§ = param2;
         this.§=]§ = param3;
         this.§2e§ = param5;
         this.§4l§ = param4;
         this.§2!F§ = param10;
         this.§^,§ = param16;
         this.§=V§ = param17;
         this.§'w§ = param9;
         this.§6w§ = 0;
         this.§7Q§ = param8;
         this.§2!2§ = param6;
         this.§9!3§ = param7;
         this.§50§ = param15;
         this.§>!?§ = param11;
         this.§39§ = param12;
         this.§@k§ = param14;
         this.§?5§ = param13;
         this.§5?§();
         this.§;r§();
         if(this.§2e§ == § "§)
         {
            this.§+R§ = §8[§.§import§.§2!§.§1n§ + this.§[o§.height * § M§.§%v§;
         }
      }
      
      public static function §>!6§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §-Q§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §3n§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §&K§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §<!+§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §,R§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §+!>§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §77§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §>8§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §]!7§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §05§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §%>§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §<>§;
         }
         return §@b§;
      }
      
      public static function §1!E§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §>!A§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §+2§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §&%§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §?-§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §?$§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §[!9§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §[!9§;
         }
         return §?$§;
      }
      
      public function get §7@§() : DisplayObject
      {
         return this.§[o§;
      }
      
      public function §#W§(param1:Number, param2:Number) : void
      {
      }
      
      protected function §5?§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§,_§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§=]§)
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
            case §?E§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §6]§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §!p§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §,m§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case § !0§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §'Q§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §+1§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §]t§:
            case §0g§:
               if(parseInt(this.§'w§) == 10000 || parseInt(this.§'w§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§2!F§)
                  {
                     case §>!A§:
                        _loc8_ = 16058683;
                        break;
                     case §&%§:
                        _loc8_ = 55294;
                        break;
                     case §[!9§:
                        _loc8_ = 1878602;
                        break;
                     case §?-§:
                        _loc8_ = 3552822;
                        break;
                     case §?$§:
                        break;
                     case §+2§:
                        _loc8_ = 16705792;
                  }
                  if(parseInt(this.§'w§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§7?§.§!D§("NUMBERS");
                  this.§`!>§ = new §,,§(_loc2_,_loc3_,true);
                  this.§`!>§.§6@§(parseInt(this.§'w§));
                  this.§[o§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§7?§.§!D§("NUMBERS");
               this.§`!>§ = new §,,§(_loc2_,_loc3_);
               this.§`!>§.§6@§(parseInt(this.§'w§));
               this.§[o§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §^e§:
               switch(this.§2!F§)
               {
                  case §]!7§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §<>§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §05§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §%>§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §@b§:
                     _loc6_ = 1 + _loc1_ % 5;
               }
               if(this.§[o§)
               {
                  this.§[o§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §7M§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§2!F§)
               {
                  case §-Q§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §<!+§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §&K§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §+!>§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §,R§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §3n§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §77§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§[o§)
               {
                  this.§[o§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§=]§,null,this.§^,§,this.§=V§);
         }
      }
      
      private function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§;Q§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§6!E§ = this.§7?§.§!D§(param1);
         this.§%I§ = param4;
         var _loc7_:Number = 1;
         if(this.§6!E§)
         {
            _loc6_ = (_loc5_ = this.§6!E§.getFrame(0)).texture;
            _loc7_ = _loc5_.scale;
         }
         else
         {
            _loc6_ = this.§^!&§.§#w§();
         }
         this.§1c§ = param3;
         var _loc8_:§"S§ = this.§7!=§(_loc6_);
         _loc8_.scaleX = _loc8_.scaleY = this.§50§ * _loc7_;
         this.§[o§.addChild(_loc8_);
         if(_loc5_)
         {
            _loc8_.x = -_loc5_.pivotX * this.§50§;
            _loc8_.y = -_loc5_.pivotY * this.§50§;
         }
         else
         {
            _loc8_.x = -this.§[o§.width / 2;
            _loc8_.y = -this.§[o§.height / 2;
         }
      }
      
      protected function §7!=§(param1:Texture) : §"S§
      {
         return new §"S§(param1,false);
      }
      
      public function §;r§() : void
      {
         if(this.§[o§)
         {
            this.§[o§.x = this.§2!2§ / § M§.§%v§;
            this.§[o§.y = this.§9!3§ / § M§.§%v§;
         }
      }
      
      public function §3h§(param1:§%!7§) : void
      {
         this.§@!§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§;Q§ = null;
         var _loc6_:Texture = null;
         var _loc7_:Number = NaN;
         var _loc8_:§"S§ = null;
         this.§6w§ += param1;
         var _loc2_:Boolean = false;
         if(this.§@!§)
         {
            if(this.§@!§.sprite == null || this.§@!§.§5M§ == null)
            {
               return false;
            }
            this.§2!2§ = this.§@!§.§+!-§().GetPosition().x;
            this.§9!3§ = this.§@!§.§+!-§().GetPosition().y;
         }
         if(this.§1c§ > 0 && this.§6!E§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§6w§ / 1000 / (1 / _loc3_)) < this.§6!E§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§6!E§.getFrame(_loc4_)).texture;
               _loc7_ = _loc5_.scale;
               _loc8_ = this.§7!=§(_loc6_);
               this.§[o§.§=H§(0,-1,true);
               this.§[o§.addChild(_loc8_);
               _loc8_.x = -_loc5_.pivotX * this.§50§;
               _loc8_.y = -_loc5_.pivotY * this.§50§;
               _loc8_.scaleX = _loc8_.scaleY = this.§50§ * _loc7_;
            }
            else if(this.§%I§)
            {
               this.§[o§.§=H§(0,-1,true);
            }
         }
         if(this.§2e§ == § "§)
         {
            this.§1>§(param1);
            _loc2_ = this.§<!1§(param1);
            if(this.§+R§ > 0 && this.§9!3§ > this.§+R§)
            {
               return false;
            }
         }
         else
         {
            this.§1>§(param1);
            _loc2_ = this.§<!1§(param1);
         }
         if(this.§7Q§ > 0 && this.§6w§ >= this.§7Q§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§;r§();
         }
         return true;
      }
      
      public function §1>§(param1:Number) : void
      {
         this.§39§ += param1 * this.§?5§ / 1000;
         this.§9!3§ += this.§39§ * param1 / 1000;
         this.§2!2§ += this.§>!?§ * param1 / 1000;
         if(this.§@k§ != 0)
         {
            this.§[o§.rotation += this.§@k§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §<!1§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§2e§ == §catch§)
         {
            if(this.§7Q§ > 0)
            {
               _loc2_ = 1;
               if(this.§=]§ == §0g§)
               {
                  if((_loc4_ = this.§6w§ / this.§7Q§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§'w§) / 5000);
               }
               this.§[o§.scaleX = _loc2_;
               this.§[o§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§2e§ == § "§)
         {
            if(this.§=]§ == §+1§)
            {
               this.§[o§.alpha = Math.max(0,Math.min(1,2 * §%N§.§6V§((this.§7Q§ - this.§6w§) / this.§7Q§,false)));
               _loc5_ = Math.atan2(-this.§39§,this.§>!?§) * (180 / Math.PI);
               this.§[o§.scaleX = Math.max(0.2,this.§[o§.alpha);
               this.§[o§.scaleY = Math.max(0.2,this.§[o§.alpha);
               this.§[o§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§=]§ == §7M§ || this.§=]§ == § !0§)
            {
               this.§[o§.scaleX = this.§[o§.scaleY = 0.2 + (this.§7Q§ - this.§6w§) / this.§7Q§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§`!>§)
         {
            this.§`!>§.clear();
            this.§`!>§ = null;
         }
         if(this.§[o§)
         {
            this.§[o§.dispose();
            this.§[o§ = null;
         }
         if(this.§@!§)
         {
            this.§@!§ = null;
         }
      }
   }
}
