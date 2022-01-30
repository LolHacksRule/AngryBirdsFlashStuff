package §!f§
{
   import §"P§.§^!x§;
   import §&!;§.Texture;
   import §-![§.§3!i§;
   import §-![§.DisplayObject;
   import §-![§.Sprite;
   import §6`§.§-!i§;
   import §6`§.§2a§;
   import §6`§.§8"&§;
   import §6`§.§`!&§;
   import §9G§.§2F§;
   import §9G§.§4!9§;
   import §;4§.§77§;
   import com.angrybirds.§4"6§;
   
   public class §@"§
   {
      
      public static const §=X§:int = 0;
      
      public static const §7![§:int = 1;
      
      public static const §2"+§:int = 2;
      
      public static const §6!^§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §&L§:String = "Effect_TrailBig_Bird";
      
      public static const §<!,§:String = "Effect_Trail_Sparkle";
      
      public static const §&"1§:String = "Effect_Floating_Score";
      
      public static const § y§:String = "Effect_Floating_Text";
      
      public static const §3_§:String = "Effect_Explosion_Particle";
      
      public static const §'V§:String = "Effect_Explosion_Core";
      
      public static const static:String = "Effect_Pig_Destruction";
      
      public static const §`!3§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §]!w§:String = "Effect_Bird_Destruction";
      
      public static const §50§:String = "Effect_Block_Destruction_Particles";
      
      public static const §^V§:String = "Effect_Block_Destruction_Core";
      
      public static const § o§:String = "Effect_TrailBig_Bird_Rebel";
      
      public static const §7a§:int = 0;
      
      public static const §#F§:int = 1;
      
      public static const §@!$§:int = 2;
      
      public static const §+3§:int = 3;
      
      public static const §@?§:int = 4;
      
      public static const §=!j§:int = 5;
      
      public static const §9"%§:int = 6;
      
      public static const §%o§:int = 7;
      
      public static const §9Y§:int = 8;
      
      public static const §5"&§:int = 9;
      
      public static const §1H§:int = 10;
      
      public static const §>H§:int = 11;
      
      public static const §5D§:int = 12;
      
      public static const §'x§:int = 13;
      
      public static const §^m§:int = 14;
      
      public static const §6!W§:int = 15;
      
      public static const §7_§:int = 16;
      
      public static const §70§:int = 17;
      
      public static const §#I§:int = 18;
       
      
      public var §2!J§:int;
      
      public var §4#§:int;
      
      public var §4a§:String;
      
      public var §-!`§:Number;
      
      public var §5V§:Number;
      
      public var §+n§:Number;
      
      public var §?#§:Number;
      
      public var §4D§:Number = 0;
      
      public var §1+§:Number;
      
      public var §8r§:Number;
      
      public var §`!c§:String;
      
      public var §<2§:Number = -1;
      
      public var §&!z§:int;
      
      public var §@!-§:Number;
      
      public var §'!0§:Number;
      
      private var §1"3§:Sprite;
      
      private var §#R§:§4!9§;
      
      private var §^!g§:int;
      
      private var §&t§:int;
      
      private var §0!1§:Boolean;
      
      private var §!r§:§-!i§;
      
      private var §4b§:Boolean;
      
      private var §!!l§:§`!&§;
      
      private var §1!5§:§2a§;
      
      private var §0+§:§^!x§;
      
      public function §@"§(param1:§`!&§, param2:§2a§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§1"3§ = new Sprite();
         super();
         this.§!!l§ = param1;
         this.§1!5§ = param2;
         this.§4a§ = param3;
         this.§2!J§ = param5;
         this.§4#§ = param4;
         this.§&!z§ = param10;
         this.§&t§ = param16;
         this.§0!1§ = param17;
         this.§`!c§ = param9;
         this.§-!`§ = 0;
         this.§8r§ = param8;
         this.§@!-§ = param6;
         this.§'!0§ = param7;
         this.§1+§ = param15;
         this.§+n§ = param11;
         this.§5V§ = param12;
         this.§4D§ = param14;
         this.§?#§ = param13;
         this.§4"-§();
         this.updateRenderer();
         if(this.§2!J§ == §7![§)
         {
            this.§<2§ = §4"6§.§;!k§.§&"§.ground + this.§1"3§.height * §2F§.§6+§;
         }
      }
      
      public static function §?"1§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §7a§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §@!$§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §#F§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §=!j§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §@?§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §+3§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §#I§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §9"%§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §5"&§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §%o§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §9Y§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §1H§;
         }
         return §>H§;
      }
      
      public static function §'9§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §5D§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §^m§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §'x§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §70§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §7_§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §6!W§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §6!W§;
         }
         return §7_§;
      }
      
      public function get displayObject() : DisplayObject
      {
         return this.§1"3§;
      }
      
      public function §;y§(param1:Number, param2:Number) : void
      {
      }
      
      protected function getParticleType() : String
      {
         return this.§4a§;
      }
      
      protected function §4"-§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§-!i§ = null;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         _loc1_ = Math.random() * 100;
         var _loc4_:String = this.getParticleType();
         switch(_loc4_)
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
            case §&L§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case § o§:
               this.createParticle("SMOKE_BUFF_SMALL",null,15,false);
               break;
            case §<!,§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case static:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §`!3§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §^V§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §'V§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §3_§:
               _loc5_ = 1 + _loc1_ % 5;
               _loc6_ = "particle" + _loc5_;
               break;
            case §&"1§:
            case § y§:
               if(parseInt(this.§`!c§) == 10000 || parseInt(this.§`!c§) == 5000)
               {
                  _loc9_ = 16777215;
                  switch(this.§&!z§)
                  {
                     case §5D§:
                        _loc9_ = 16058683;
                        break;
                     case §'x§:
                        _loc9_ = 55294;
                        break;
                     case §6!W§:
                        _loc9_ = 1878602;
                        break;
                     case §70§:
                        _loc9_ = 3552822;
                        break;
                     case §7_§:
                        break;
                     case §^m§:
                        _loc9_ = 16705792;
                  }
                  if(parseInt(this.§`!c§) == 5000)
                  {
                     _loc9_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§!!l§.§#!r§("NUMBERS");
                  this.§#R§ = new §4!9§(_loc2_,_loc3_,true);
                  this.§#R§.§;"1§(parseInt(this.§`!c§));
                  this.§1"3§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc9_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§!!l§.§#!r§("NUMBERS");
               this.§#R§ = new §4!9§(_loc2_,_loc3_);
               this.§#R§.§;"1§(parseInt(this.§`!c§));
               this.§1"3§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §50§:
               switch(this.§&!z§)
               {
                  case §5"&§:
                     _loc7_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc7_);
                     break;
                  case §1H§:
                     _loc7_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §%o§:
                     _loc7_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc7_);
                     break;
                  case §9Y§:
                     _loc7_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc7_);
                     break;
                  case §>H§:
                     _loc7_ = 1 + _loc1_ % 5;
               }
               if(this.§1"3§)
               {
                  this.§1"3§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §]!w§:
               _loc8_ = 1 + _loc1_ % 3;
               switch(this.§&!z§)
               {
                  case §7a§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc8_);
                     break;
                  case §=!j§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc8_);
                     break;
                  case §#F§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc8_);
                     break;
                  case §+3§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc8_);
                     break;
                  case §@?§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc8_);
                     break;
                  case §@!$§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc8_);
                     break;
                  case §#I§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc8_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc8_);
               }
               if(this.§1"3§)
               {
                  this.§1"3§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(_loc4_,null,this.§&t§,this.§0!1§);
         }
      }
      
      private function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§8"&§ = null;
         var _loc6_:Texture = null;
         var _loc8_:DisplayObject = null;
         if(param1 == "??")
         {
            return;
         }
         this.§4b§ = param4;
         var _loc7_:Number = 1;
         this.§!r§ = this.§!!l§.§#!r§(param1);
         this.§4b§ = param4;
         if(this.§!r§)
         {
            _loc8_ = this.§!r§.getFrame(0);
         }
         else
         {
            if(!(_loc5_ = this.§1!5§.§&l§(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
            _loc8_ = new §3!i§(_loc6_,false);
         }
         this.§^!g§ = param3;
         _loc8_.scaleX *= this.§1+§;
         _loc8_.scaleY *= this.§1+§;
         this.§1"3§.addChild(_loc8_);
         _loc8_.x = -this.§1"3§.width / 2;
         _loc8_.y = -this.§1"3§.height / 2;
      }
      
      public function updateRenderer() : void
      {
         if(this.§1"3§)
         {
            this.§1"3§.x = this.§@!-§ / §2F§.§6+§;
            this.§1"3§.y = this.§'!0§ / §2F§.§6+§;
         }
      }
      
      public function §1!%§(param1:§^!x§) : void
      {
         this.§0+§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:DisplayObject = null;
         this.§-!`§ += param1;
         var _loc2_:Boolean = false;
         if(this.§0+§)
         {
            if(this.§0+§.sprite == null || this.§0+§.levelItem == null)
            {
               return false;
            }
            this.§@!-§ = this.§0+§.§7J§().GetPosition().x;
            this.§'!0§ = this.§0+§.§7J§().GetPosition().y;
         }
         if(this.§^!g§ > 0 && this.§!r§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§-!`§ / 1000 / (1 / _loc3_)) < this.§!r§.frameCount)
            {
               _loc5_ = this.§!r§.getFrame(_loc4_);
               this.§1"3§.§&J§(0,-1,true);
               this.§1"3§.addChild(_loc5_);
               _loc5_.scaleX *= this.§1+§;
               _loc5_.scaleY *= this.§1+§;
            }
            else if(this.§4b§)
            {
               this.§1"3§.§&J§(0,-1,true);
            }
         }
         if(this.§2!J§ == §7![§)
         {
            this.§3!"§(param1);
            _loc2_ = this.§2""§(param1);
            if(this.§<2§ > 0 && this.§'!0§ > this.§<2§)
            {
               return false;
            }
         }
         else
         {
            this.§3!"§(param1);
            _loc2_ = this.§2""§(param1);
         }
         if(this.§8r§ > 0 && this.§-!`§ >= this.§8r§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.updateRenderer();
         }
         return true;
      }
      
      public function §3!"§(param1:Number) : void
      {
         this.§5V§ += param1 * this.§?#§ / 1000;
         this.§'!0§ += this.§5V§ * param1 / 1000;
         this.§@!-§ += this.§+n§ * param1 / 1000;
         if(this.§4D§ != 0)
         {
            this.§1"3§.rotation += this.§4D§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §2""§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§2!J§ == §=X§)
         {
            if(this.§8r§ > 0)
            {
               _loc2_ = 1;
               if(this.§4a§ == § y§)
               {
                  if((_loc4_ = this.§-!`§ / this.§8r§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§`!c§) / 5000);
               }
               this.§1"3§.scaleX = _loc2_;
               this.§1"3§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§2!J§ == §7![§)
         {
            if(this.§4a§ == §3_§)
            {
               this.§1"3§.alpha = Math.max(0,Math.min(1,2 * §77§.§-!,§((this.§8r§ - this.§-!`§) / this.§8r§,false)));
               _loc5_ = Math.atan2(-this.§5V§,this.§+n§) * (180 / Math.PI);
               this.§1"3§.scaleX = Math.max(0.2,this.§1"3§.alpha);
               this.§1"3§.scaleY = Math.max(0.2,this.§1"3§.alpha);
               this.§1"3§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§4a§ == §]!w§ || this.§4a§ == §^V§)
            {
               this.§1"3§.scaleX = this.§1"3§.scaleY = 0.2 + (this.§8r§ - this.§-!`§) / this.§8r§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§#R§)
         {
            this.§#R§.clear();
            this.§#R§ = null;
         }
         if(this.§1"3§)
         {
            this.§1"3§.dispose();
            this.§1"3§ = null;
         }
         if(this.§0+§)
         {
            this.§0+§ = null;
         }
      }
   }
}
