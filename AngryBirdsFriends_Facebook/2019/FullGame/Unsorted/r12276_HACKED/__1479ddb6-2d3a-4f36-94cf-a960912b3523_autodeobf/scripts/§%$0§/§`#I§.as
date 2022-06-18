package §%$0§
{
   import §""4§.Texture;
   import §#"3§.§@"t§;
   import §#Z§.DisplayObject;
   import §#Z§.Image;
   import §#Z§.Sprite;
   import §+!n§.§+!p§;
   import §9#M§.§!!]§;
   import §9#M§.§%"=§;
   import §9#M§.§'!-§;
   import §9#M§.§,`§;
   import §?$#§.§<R§;
   import §?$#§.§<d§;
   import §^0§.§=Q§;
   
   public class §`#I§
   {
      
      public static const §9@§:int = 0;
      
      public static const PARTICLE_TYPE_KINETIC_PARTICLE:int = 1;
      
      public static const PARTICLE_TYPE_STATIC_PARTICLE:int = 2;
      
      public static const §%"D§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §1J§:String = "Effect_TrailBig_Bird";
      
      public static const § z§:String = "Effect_Trail_Sparkle";
      
      public static const §%#t§:String = "Effect_Floating_Score";
      
      public static const §9#'§:String = "Effect_Floating_Text";
      
      public static const §^!+§:String = "Effect_Explosion_Particle";
      
      public static const §"#1§:String = "Effect_Explosion_Core";
      
      public static const §1!h§:String = "Effect_Pig_Destruction";
      
      public static const §,"%§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §5$"§:String = "Effect_Bird_Destruction";
      
      public static const PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES:String = "Effect_Block_Destruction_Particles";
      
      public static const §"!S§:String = "Effect_Block_Destruction_Core";
      
      public static const § f§:String = "Effect_TrailBig_Bird_Rebel";
      
      public static const §`"6§:String = "Effect_Block_Destruction_Powerup";
      
      public static const §@"V§:int = -1;
      
      public static const §!!6§:int = 0;
      
      public static const §>#^§:int = 1;
      
      public static const §`!B§:int = 2;
      
      public static const §>#?§:int = 3;
      
      public static const §,"J§:int = 4;
      
      public static const §3!d§:int = 5;
      
      public static const §&#p§:int = 6;
      
      public static const §"#N§:int = 7;
      
      public static const §1#C§:int = 8;
      
      public static const §+t§:int = 9;
      
      public static const §6"3§:int = 10;
      
      public static const §@!T§:int = 11;
      
      public static const §^G§:int = 12;
      
      public static const §'#U§:int = 13;
      
      public static const §]d§:int = 14;
      
      public static const §<!B§:int = 15;
      
      public static const §!#>§:int = 16;
      
      public static const §1#,§:int = 17;
      
      public static const §0$<§:int = 18;
      
      public static const §2$"§:int = 19;
      
      public static const §^#1§:int = 20;
      
      public static const §6!I§:int = 21;
      
      public static const §!j§:int = 22;
       
      
      public var §2$3§:int;
      
      public var §#X§:int;
      
      public var §`=§:String;
      
      public var §7$;§:Number;
      
      public var §3$8§:Number;
      
      public var §55§:Number;
      
      public var §%"K§:Number;
      
      public var §^I§:Number = 0;
      
      public var §6#q§:Number;
      
      public var §?T§:String;
      
      public var §=Z§:Number;
      
      public var §!"l§:String;
      
      public var §]"A§:Number = -1;
      
      public var §1#Y§:int;
      
      public var §0k§:Number;
      
      public var §@_§:Number;
      
      protected var §8"`§:Sprite;
      
      private var §<"l§:§<R§;
      
      private var §;$=§:Number;
      
      private var §>#H§:Number;
      
      private var §6Y§:Boolean;
      
      private var §&"J§:§,`§;
      
      private var §""6§:Boolean;
      
      private var §]!g§:§!!]§;
      
      private var §]#o§:§%"=§;
      
      private var §=$§:§=Q§;
      
      public function §`#I§(param1:§!!]§, param2:§%"=§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:Number = -1, param17:Boolean = false, param18:String = null)
      {
         this.§8"`§ = new Sprite();
         super();
         this.§]!g§ = param1;
         this.§]#o§ = param2;
         this.§`=§ = param3;
         this.§2$3§ = param5;
         this.§#X§ = param4;
         this.§1#Y§ = param10;
         this.§>#H§ = param16;
         this.§6Y§ = param17;
         this.§!"l§ = param9;
         this.§7$;§ = 0;
         this.§=Z§ = param8;
         this.§0k§ = param6;
         this.§@_§ = param7;
         this.§6#q§ = param15;
         this.§55§ = param11;
         this.§3$8§ = param12;
         this.§^I§ = param14;
         this.§%"K§ = param13;
         this.§?T§ = param18;
         this.§@!$§();
         this.updateRenderer();
         if(this.§2$3§ == PARTICLE_TYPE_KINETIC_PARTICLE)
         {
            this.§]"A§ = §+!p§.§`?§.§%?§.ground + this.§8"`§.height * §<d§.§6@§;
         }
      }
      
      public static function getParticleMaterialFromEngineMaterial(param1:String) : int
      {
         param1 = param1.toUpperCase();
         if(param1.indexOf("BIRD_RED") >= 0)
         {
            return §!!6§;
         }
         if(param1.indexOf("BIRD_YELLOW") >= 0)
         {
            return §`!B§;
         }
         if(param1.indexOf("BIRD_BLUE") >= 0)
         {
            return §>#^§;
         }
         if(param1.indexOf("BIRD_BLACK") >= 0)
         {
            return §3!d§;
         }
         if(param1.indexOf("BIRD_WHITE") >= 0)
         {
            return §,"J§;
         }
         if(param1.indexOf("BIRD_GREEN") >= 0)
         {
            return §>#?§;
         }
         if(param1.indexOf("BIRD_WINGMAN") >= 0)
         {
            return §!!6§;
         }
         if(param1.indexOf("BIRD_ORANGE") >= 0)
         {
            return §`!B§;
         }
         if(param1.indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §6!I§;
         }
         if(param1.indexOf("BIRD_PINK") >= 0)
         {
            return §!j§;
         }
         if(param1.indexOf("PIG") >= 0)
         {
            return §&#p§;
         }
         if(param1.indexOf("ICE") >= 0)
         {
            return §+t§;
         }
         if(param1.indexOf("WOOD") >= 0)
         {
            return §"#N§;
         }
         if(param1.indexOf("STONE") >= 0)
         {
            return §1#C§;
         }
         if(param1.indexOf("SNOW") >= 0)
         {
            return §6"3§;
         }
         if(param1.indexOf("INVISIBLE") >= 0)
         {
            return §@"V§;
         }
         return §@!T§;
      }
      
      public static function §`#i§(param1:String, param2:Boolean = false) : int
      {
         if(param2)
         {
            return §!#>§;
         }
         param1 = param1.toUpperCase();
         if(param1.indexOf("BIRD_RED") >= 0 || param1 == "BIRD_WINGMAN")
         {
            return §^G§;
         }
         if(param1.indexOf("BIRD_YELLOW") >= 0 || param1 == "POWERUP_BOOMBOX" || param1 == "FIRE_BLOCK")
         {
            return §]d§;
         }
         if(param1.indexOf("BIRD_BLUE") >= 0)
         {
            return §'#U§;
         }
         if(param1.indexOf("BIRD_BLACK") >= 0)
         {
            return §0$<§;
         }
         if(param1.indexOf("BIRD_WHITE") >= 0)
         {
            return §1#,§;
         }
         if(param1.indexOf("BIRD_GREEN") >= 0)
         {
            return §<!B§;
         }
         if(param1.indexOf("BIRD_ORANGE") >= 0)
         {
            return §2$"§;
         }
         if(param1.indexOf("BIRD_PINK") >= 0)
         {
            return §^#1§;
         }
         return §1#,§;
      }
      
      public function get displayObject() : DisplayObject
      {
         return this.§8"`§;
      }
      
      public function §9"`§(param1:Number, param2:Number) : void
      {
      }
      
      protected function getParticleType() : String
      {
         return this.§`=§;
      }
      
      protected function §@!$§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§,`§ = null;
         var _loc5_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:* = false;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
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
            case §1J§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case § f§:
               this.createParticle("SMOKE_BUFF_SMALL",null,15,false);
               break;
            case § z§:
               this.createParticle("??");
               break;
            case §1!h§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §,"%§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §"!S§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §`"6§:
               this.createParticle("POWERUP_EFFECT_POTIONCLOUD",null,15,false);
               break;
            case §"#1§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §^!+§:
               _loc5_ = 1 + _loc1_ % 5;
               "particle" + _loc5_;
               break;
            case §%#t§:
            case §9#'§:
               _loc7_ = 16777215;
               if(this.§?T§)
               {
                  switch(this.§?T§)
                  {
                     case "FONT_INGAME_MULTIP_SCORE_1":
                        _loc7_ = 16705792;
                        break;
                     case "FONT_INGAME_MULTIP_SCORE_2":
                        _loc7_ = 11806719;
                        break;
                     case "FONT_INGAME_MULTIP_SCORE_3":
                        _loc7_ = 7201353;
                        break;
                     case "FONT_INGAME_MULTIP_SCORE_4":
                        _loc7_ = 5692155;
                  }
               }
               else
               {
                  switch(this.§1#Y§)
                  {
                     case §^G§:
                        _loc7_ = 16058683;
                        break;
                     case §'#U§:
                        _loc7_ = 55294;
                        break;
                     case §<!B§:
                        _loc7_ = 1878602;
                        break;
                     case §!#>§:
                        _loc7_ = 7201353;
                        break;
                     case §0$<§:
                        _loc7_ = 3552822;
                        break;
                     case §1#,§:
                        break;
                     case §]d§:
                        _loc7_ = 16705792;
                        break;
                     case §2$"§:
                        _loc7_ = 16763136;
                        break;
                     case §^#1§:
                        _loc7_ = 16168904;
                  }
               }
               _loc2_ = new Sprite();
               _loc8_ = _loc7_ != 16777215;
               _loc3_ = this.§]!g§.getAnimation("NUMBERS");
               this.§<"l§ = new §<R§(_loc2_,_loc3_,_loc8_);
               this.§<"l§.§2#y§(parseInt(this.§!"l§));
               this.§8"`§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               if(_loc8_)
               {
                  _loc2_.color = _loc7_;
                  _loc2_.flatten();
                  break;
               }
               break;
            case PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES:
               switch(this.§1#Y§)
               {
                  case §+t§:
                     _loc9_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc9_);
                     break;
                  case §6"3§:
                     _loc9_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §"#N§:
                     _loc9_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc9_);
                     break;
                  case §1#C§:
                     _loc9_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc9_);
                     break;
                  case §@!T§:
                     this.createParticle("SMOKE_BIG",null,20,true);
               }
               if(this.§8"`§)
               {
                  this.§8"`§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            case §5$"§:
               _loc10_ = 1 + _loc1_ % 3;
               switch(this.§1#Y§)
               {
                  case §!!6§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc10_);
                     break;
                  case §3!d§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc10_);
                     break;
                  case §>#^§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc10_);
                     break;
                  case §>#?§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc10_);
                     break;
                  case §,"J§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc10_);
                     break;
                  case §`!B§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc10_);
                     break;
                  case §6!I§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc10_);
                     break;
                  case §!j§:
                     this.createParticle("PARTICLE_BIRDPINK_" + _loc10_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc10_);
               }
               if(this.§8"`§)
               {
                  this.§8"`§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(_loc4_,null,this.§>#H§,this.§6Y§);
         }
      }
      
      private function createParticle(param1:String, param2:String = null, param3:Number = -1, param4:Boolean = false) : void
      {
         var _loc5_:§'!-§ = null;
         var _loc6_:Texture = null;
         var _loc8_:DisplayObject = null;
         if(param1 == "??")
         {
            return;
         }
         this.§""6§ = param4;
         this.§&"J§ = this.§]!g§.getAnimation(param1);
         this.§""6§ = param4;
         if(this.§&"J§)
         {
            _loc8_ = this.§&"J§.getFrame(0);
         }
         else if(_loc5_ = this.§]#o§.getTexture(param1))
         {
            _loc6_ = _loc5_.texture;
            Number(_loc5_.scale);
            _loc8_ = new Image(_loc6_,false);
         }
         else
         {
            return;
         }
         if(!_loc8_)
         {
            return;
         }
         this.§;$=§ = param3;
         _loc8_.scaleX *= this.§6#q§;
         _loc8_.scaleY *= this.§6#q§;
         this.§8"`§.addChild(_loc8_);
         _loc8_.x = -this.§8"`§.width / 2;
         _loc8_.y = -this.§8"`§.height / 2;
      }
      
      public function updateRenderer() : void
      {
         if(this.§8"`§)
         {
            this.§8"`§.x = this.§0k§ / §<d§.§6@§;
            this.§8"`§.y = this.§@_§ / §<d§.§6@§;
         }
      }
      
      public function §?!I§(param1:§=Q§) : void
      {
         this.§=$§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:DisplayObject = null;
         this.§7$;§ += param1;
         var _loc2_:Boolean = false;
         if(this.§=$§)
         {
            if(this.§=$§.sprite == null || this.§=$§.levelItem == null)
            {
               return false;
            }
            this.§0k§ = this.§=$§.getBody().GetPosition().x;
            this.§@_§ = this.§=$§.getBody().GetPosition().y;
         }
         if(this.§;$=§ > 0 && this.§&"J§)
         {
            _loc3_ = this.§7$;§ / 1000 / (1 / this.§;$=§);
            if(_loc3_ < this.§&"J§.frameCount)
            {
               _loc4_ = this.§&"J§.getFrame(_loc3_);
               this.§8"`§.removeChildren(0,-1,true);
               this.§8"`§.addChild(_loc4_);
               _loc4_.scaleX *= this.§6#q§;
               _loc4_.scaleY *= this.§6#q§;
            }
            else if(this.§""6§)
            {
               this.§8"`§.removeChildren(0,-1,true);
            }
         }
         if(this.§2$3§ == PARTICLE_TYPE_KINETIC_PARTICLE)
         {
            this.§`"m§(param1);
            _loc2_ = this.updateParticles(param1);
            if(this.§]"A§ > 0 && this.§@_§ > this.§]"A§)
            {
               return false;
            }
         }
         else
         {
            this.§`"m§(param1);
            _loc2_ = this.updateParticles(param1);
         }
         if(this.§=Z§ > 0 && this.§7$;§ >= this.§=Z§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.updateRenderer();
         }
         return true;
      }
      
      public function §`"m§(param1:Number) : void
      {
         this.§3$8§ += param1 * this.§%"K§ / 1000;
         this.§@_§ += this.§3$8§ * param1 / 1000;
         this.§0k§ += this.§55§ * param1 / 1000;
         if(this.§^I§ != 0)
         {
            this.§8"`§.rotation += this.§^I§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function updateParticles(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§2$3§ == §9@§)
         {
            if(this.§=Z§ > 0)
            {
               _loc2_ = 1;
               if(this.§`=§ == §9#'§)
               {
                  if((_loc4_ = this.§7$;§ / this.§=Z§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§!"l§) / 5000);
                  if(_loc2_ < -3)
                  {
                     _loc2_ = -3;
                  }
                  else if(_loc2_ > 3)
                  {
                     _loc2_ = 3;
                  }
               }
               this.§8"`§.scaleX = _loc2_;
               this.§8"`§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§2$3§ == PARTICLE_TYPE_KINETIC_PARTICLE)
         {
            if(this.§`=§ == §^!+§)
            {
               this.§8"`§.alpha = Math.max(0,Math.min(1,2 * §@"t§.§;"T§((this.§=Z§ - this.§7$;§) / this.§=Z§,false)));
               _loc5_ = Math.atan2(-this.§3$8§,this.§55§) * (180 / Math.PI);
               this.§8"`§.scaleX = Math.max(0.2,this.§8"`§.alpha);
               this.§8"`§.scaleY = Math.max(0.2,this.§8"`§.alpha);
               this.§8"`§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§`=§ == §5$"§ || this.§`=§ == §"!S§)
            {
               this.§8"`§.scaleX = this.§8"`§.scaleY = 0.2 + (this.§=Z§ - this.§7$;§) / this.§=Z§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§<"l§)
         {
            this.§<"l§.clear();
            this.§<"l§ = null;
         }
         if(this.§8"`§)
         {
            this.§8"`§.dispose();
            this.§8"`§ = null;
         }
         if(this.§=$§)
         {
            this.§=$§ = null;
         }
      }
   }
}
