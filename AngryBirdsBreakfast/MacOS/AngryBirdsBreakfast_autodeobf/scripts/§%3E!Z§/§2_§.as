package §>!Z§
{
   import § ! §.§5!v§;
   import § ! §.§5!x§;
   import § ! §.§8-§;
   import § ! §.§?b§;
   import §%q§.Texture;
   import §,z§.§"_§;
   import §6![§.§1!J§;
   import §6![§.DisplayObject;
   import §6![§.Sprite;
   import §@L§.§6^§;
   import §@L§.§?!'§;
   import com.angrybirds.§&!"§;
   import each.§&!,§;
   
   public class §2_§
   {
      
      public static const §<"§:int = 0;
      
      public static const §4d§:int = 1;
      
      public static const §9o§:int = 2;
      
      public static const §,!R§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §'l§:String = "Effect_TrailBig_Bird";
      
      public static const §`H§:String = "Effect_Trail_Sparkle";
      
      public static const §=c§:String = "Effect_Floating_Score";
      
      public static const §2!I§:String = "Effect_Floating_Text";
      
      public static const §#=§:String = "Effect_Explosion_Particle";
      
      public static const §>k§:String = "Effect_Explosion_Core";
      
      public static const §&"0§:String = "Effect_Pig_Destruction";
      
      public static const § !,§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §0!2§:String = "Effect_Bird_Destruction";
      
      public static const §`!%§:String = "Effect_Block_Destruction_Particles";
      
      public static const §5§:String = "Effect_Block_Destruction_Core";
      
      public static const § set§:String = "Effect_TrailBig_Bird_Rebel";
      
      public static const §7!=§:int = 0;
      
      public static const §=u§:int = 1;
      
      public static const §%!l§:int = 2;
      
      public static const §<!p§:int = 3;
      
      public static const §7'§:int = 4;
      
      public static const §6!l§:int = 5;
      
      public static const §[!Y§:int = 6;
      
      public static const §@"$§:int = 7;
      
      public static const §&n§:int = 8;
      
      public static const §4A§:int = 9;
      
      public static const §5[§:int = 10;
      
      public static const §4!Q§:int = 11;
      
      public static const §false§:int = 12;
      
      public static const §4V§:int = 13;
      
      public static const §7I§:int = 14;
      
      public static const §]y§:int = 15;
      
      public static const §#F§:int = 16;
      
      public static const §[F§:int = 17;
      
      public static const §+Z§:int = 18;
       
      
      public var §>f§:int;
      
      public var §6!`§:int;
      
      public var §%!-§:String;
      
      public var §="#§:Number;
      
      public var §1!W§:Number;
      
      public var §3!n§:Number;
      
      public var §+!1§:Number;
      
      public var §!&§:Number = 0;
      
      public var §6!r§:Number;
      
      public var §3Z§:Number;
      
      public var §5Y§:String;
      
      public var §for§:Number = -1;
      
      public var §!!i§:int;
      
      public var §%!3§:Number;
      
      public var §?!e§:Number;
      
      private var §;i§:Sprite;
      
      private var §!l§:§6^§;
      
      private var §=""§:int;
      
      private var §^!K§:int;
      
      private var §'"$§:Boolean;
      
      private var §"!b§:§5!v§;
      
      private var §]I§:Boolean;
      
      private var §^!f§:§?b§;
      
      private var §`8§:§5!x§;
      
      private var §]!d§:§"_§;
      
      public function §2_§(param1:§?b§, param2:§5!x§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§;i§ = new Sprite();
         super();
         this.§^!f§ = param1;
         this.§`8§ = param2;
         this.§%!-§ = param3;
         this.§>f§ = param5;
         this.§6!`§ = param4;
         this.§!!i§ = param10;
         this.§^!K§ = param16;
         this.§'"$§ = param17;
         this.§5Y§ = param9;
         this.§="#§ = 0;
         this.§3Z§ = param8;
         this.§%!3§ = param6;
         this.§?!e§ = param7;
         this.§6!r§ = param15;
         this.§3!n§ = param11;
         this.§1!W§ = param12;
         this.§!&§ = param14;
         this.§+!1§ = param13;
         this.§4!K§();
         this.updateRenderer();
         if(this.§>f§ == §4d§)
         {
            this.§for§ = §&!"§.§1!D§.§57§.ground + this.§;i§.height * §?!'§.§'!i§;
         }
      }
      
      public static function §%j§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §7!=§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §%!l§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §=u§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §6!l§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §7'§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §<!p§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §+Z§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §[!Y§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §4A§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §@"$§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §&n§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §5[§;
         }
         return §4!Q§;
      }
      
      public static function §1!B§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §false§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §7I§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §4V§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §[F§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §#F§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §]y§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §]y§;
         }
         return §#F§;
      }
      
      public function get displayObject() : DisplayObject
      {
         return this.§;i§;
      }
      
      public function §9!f§(param1:Number, param2:Number) : void
      {
      }
      
      protected function getParticleType() : String
      {
         return this.§%!-§;
      }
      
      protected function §4!K§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§5!v§ = null;
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
            case §'l§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case § set§:
               this.createParticle("SMOKE_BUFF_SMALL",null,15,false);
               break;
            case §`H§:
               if(false)
               {
                  this.createParticle("??");
               }
               else
               {
                  this.createParticle("??");
               }
               break;
            case §&"0§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case § !,§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §5§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §>k§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §#=§:
               _loc5_ = 1 + _loc1_ % 5;
               _loc6_ = "particle" + _loc5_;
               break;
            case §=c§:
            case §2!I§:
               if(parseInt(this.§5Y§) == 10000 || parseInt(this.§5Y§) == 5000)
               {
                  _loc9_ = 16777215;
                  switch(this.§!!i§)
                  {
                     case §false§:
                        _loc9_ = 16058683;
                        break;
                     case §4V§:
                        _loc9_ = 55294;
                        break;
                     case §]y§:
                        _loc9_ = 1878602;
                        break;
                     case §[F§:
                        _loc9_ = 3552822;
                        break;
                     case §#F§:
                        break;
                     case §7I§:
                        _loc9_ = 16705792;
                  }
                  if(parseInt(this.§5Y§) == 5000)
                  {
                     _loc9_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§^!f§.§#w§("NUMBERS");
                  this.§!l§ = new §6^§(_loc2_,_loc3_,true);
                  this.§!l§.§;!4§(parseInt(this.§5Y§));
                  this.§;i§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc9_;
                  _loc2_.flatten();
               }
               else
               {
                  _loc2_ = new Sprite();
                  _loc3_ = this.§^!f§.§#w§("NUMBERS");
                  this.§!l§ = new §6^§(_loc2_,_loc3_);
                  this.§!l§.§;!4§(parseInt(this.§5Y§));
                  this.§;i§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
               }
               break;
            case §`!%§:
               switch(this.§!!i§)
               {
                  case §4A§:
                     _loc7_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc7_);
                     break;
                  case §5[§:
                     _loc7_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §@"$§:
                     _loc7_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc7_);
                     break;
                  case §&n§:
                     _loc7_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc7_);
                     break;
                  case §4!Q§:
                     _loc7_ = 1 + _loc1_ % 5;
               }
               if(this.§;i§)
               {
                  this.§;i§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §0!2§:
               _loc8_ = 1 + _loc1_ % 3;
               switch(this.§!!i§)
               {
                  case §7!=§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc8_);
                     break;
                  case §6!l§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc8_);
                     break;
                  case §=u§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc8_);
                     break;
                  case §<!p§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc8_);
                     break;
                  case §7'§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc8_);
                     break;
                  case §%!l§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc8_);
                     break;
                  case §+Z§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc8_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc8_);
               }
               if(this.§;i§)
               {
                  this.§;i§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            default:
               this.createParticle(_loc4_,null,this.§^!K§,this.§'"$§);
         }
      }
      
      private function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§8-§ = null;
         var _loc6_:Texture = null;
         var _loc8_:DisplayObject = null;
         if(param1 == "??")
         {
            return;
         }
         this.§]I§ = param4;
         var _loc7_:Number = 1;
         this.§"!b§ = this.§^!f§.§#w§(param1);
         this.§]I§ = param4;
         if(this.§"!b§)
         {
            _loc8_ = this.§"!b§.getFrame(0);
         }
         else
         {
            if(!(_loc5_ = this.§`8§.§`I§(param1)))
            {
               return;
            }
            _loc6_ = _loc5_.texture;
            _loc7_ = _loc5_.scale;
            _loc8_ = new §1!J§(_loc6_,false);
         }
         this.§=""§ = param3;
         _loc8_.scaleX *= this.§6!r§;
         _loc8_.scaleY *= this.§6!r§;
         this.§;i§.addChild(_loc8_);
         _loc8_.x = -this.§;i§.width / 2;
         _loc8_.y = -this.§;i§.height / 2;
      }
      
      public function updateRenderer() : void
      {
         if(this.§;i§)
         {
            this.§;i§.x = this.§%!3§ / §?!'§.§'!i§;
            this.§;i§.y = this.§?!e§ / §?!'§.§'!i§;
         }
      }
      
      public function § !Y§(param1:§"_§) : void
      {
         this.§]!d§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:DisplayObject = null;
         this.§="#§ += param1;
         var _loc2_:Boolean = false;
         if(this.§]!d§)
         {
            if(this.§]!d§.sprite == null || this.§]!d§.levelItem == null)
            {
               return false;
            }
            this.§%!3§ = this.§]!d§.§^`§().GetPosition().x;
            this.§?!e§ = this.§]!d§.§^`§().GetPosition().y;
         }
         if(this.§=""§ > 0 && this.§"!b§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§="#§ / 1000 / (1 / _loc3_)) < this.§"!b§.frameCount)
            {
               _loc5_ = this.§"!b§.getFrame(_loc4_);
               this.§;i§.§-8§(0,-1,true);
               this.§;i§.addChild(_loc5_);
               _loc5_.scaleX *= this.§6!r§;
               _loc5_.scaleY *= this.§6!r§;
            }
            else if(this.§]I§)
            {
               this.§;i§.§-8§(0,-1,true);
            }
         }
         if(this.§>f§ == §4d§)
         {
            this.§=!K§(param1);
            _loc2_ = this.§=!6§(param1);
            if(this.§for§ > 0 && this.§?!e§ > this.§for§)
            {
               return false;
            }
         }
         else
         {
            this.§=!K§(param1);
            _loc2_ = this.§=!6§(param1);
         }
         if(this.§3Z§ > 0 && this.§="#§ >= this.§3Z§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.updateRenderer();
         }
         return true;
      }
      
      public function §=!K§(param1:Number) : void
      {
         this.§1!W§ += param1 * this.§+!1§ / 1000;
         this.§?!e§ += this.§1!W§ * param1 / 1000;
         this.§%!3§ += this.§3!n§ * param1 / 1000;
         if(this.§!&§ != 0)
         {
            this.§;i§.rotation += this.§!&§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §=!6§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§>f§ == §<"§)
         {
            if(this.§3Z§ > 0)
            {
               _loc2_ = 1;
               if(this.§%!-§ == §2!I§)
               {
                  if((_loc4_ = this.§="#§ / this.§3Z§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§5Y§) / 5000);
               }
               this.§;i§.scaleX = _loc2_;
               this.§;i§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§>f§ == §4d§)
         {
            if(this.§%!-§ == §#=§)
            {
               this.§;i§.alpha = Math.max(0,Math.min(1,2 * §&!,§.§5!a§((this.§3Z§ - this.§="#§) / this.§3Z§,false)));
               _loc5_ = Math.atan2(-this.§1!W§,this.§3!n§) * (180 / Math.PI);
               this.§;i§.scaleX = Math.max(0.2,this.§;i§.alpha);
               this.§;i§.scaleY = Math.max(0.2,this.§;i§.alpha);
               this.§;i§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§%!-§ == §0!2§ || this.§%!-§ == §5§)
            {
               this.§;i§.scaleX = this.§;i§.scaleY = 0.2 + (this.§3Z§ - this.§="#§) / this.§3Z§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§!l§)
         {
            this.§!l§.clear();
            this.§!l§ = null;
         }
         if(this.§;i§)
         {
            this.§;i§.dispose();
            this.§;i§ = null;
         }
         if(this.§]!d§)
         {
            this.§]!d§ = null;
         }
      }
   }
}
