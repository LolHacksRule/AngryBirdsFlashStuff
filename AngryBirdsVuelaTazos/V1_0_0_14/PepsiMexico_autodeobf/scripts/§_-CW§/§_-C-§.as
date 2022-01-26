package §_-CW§
{
   import §_-5Y§.§_-u5§;
   import §_-5Y§.§_-yw§;
   import §_-DQ§.Texture;
   import §_-Eo§.§_-8U§;
   import §_-M0§.§_-u4§;
   import §_-PC§.§_-N0§;
   import §_-PC§.§_-lx§;
   import §_-PC§.§_-ob§;
   import §_-PC§.§_-qH§;
   import §_-b5§.DisplayObject;
   import §_-b5§.Sprite;
   import §_-b5§.§_-Xj§;
   
   public class §_-C-§
   {
      
      public static const §_-Jn§:int = 0;
      
      public static const §_-g7§:int = 1;
      
      public static const §_-mP§:int = 2;
      
      public static const §_-qE§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §_-5e§:String = "Effect_TrailBig_Bird";
      
      public static const §_-yv§:String = "Effect_Trail_Sparkle";
      
      public static const §_-H6§:String = "Effect_Floating_Score";
      
      public static const §_-LG§:String = "Effect_Floating_Text";
      
      public static const §_-t§:String = "Effect_Explosion_Particle";
      
      public static const §_-dY§:String = "Effect_Explosion_Core";
      
      public static const §_-Op§:String = "Effect_Pig_Destruction";
      
      public static const §_-My§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §_-i1§:String = "Effect_Bird_Destruction";
      
      public static const §_-L2§:String = "Effect_Block_Destruction_Particles";
      
      public static const §_-T0§:String = "Effect_Block_Destruction_Core";
      
      public static const §_-Gv§:int = 0;
      
      public static const §_-1b§:int = 1;
      
      public static const §_-OZ§:int = 2;
      
      public static const §_-4h§:int = 3;
      
      public static const §_-HN§:int = 4;
      
      public static const §_-N9§:int = 5;
      
      public static const §_-j6§:int = 6;
      
      public static const §_-rx§:int = 7;
      
      public static const §_-O1§:int = 8;
      
      public static const §_-zk§:int = 9;
      
      public static const §_-ya§:int = 10;
      
      public static const §_-0l§:int = 11;
      
      public static const §_-53§:int = 12;
      
      public static const §_-A9§:int = 13;
      
      public static const §_-9a§:int = 14;
      
      public static const §_-Aa§:int = 15;
      
      public static const §_-sB§:int = 16;
      
      public static const §_-Qa§:int = 17;
      
      public static const §_-tk§:int = 18;
      
      public static const §_-E8§:Boolean = true;
       
      
      public var §_-qs§:int;
      
      public var §_-5N§:int;
      
      public var §_-ZM§:String;
      
      public var §_-hR§:Number;
      
      public var §_-7i§:Number;
      
      public var §_-xS§:Number;
      
      public var §in§:Number;
      
      public var §_-ny§:Number = 0;
      
      public var §_-2h§:Number;
      
      public var §_-U-§:Number;
      
      public var §_-Fb§:String;
      
      public var §_-Lw§:Number = -1;
      
      public var §_-X5§:int;
      
      public var mX:Number;
      
      public var mY:Number;
      
      private var §_-a5§:Sprite;
      
      private var §_-HF§:§_-u5§;
      
      private var §_-9R§:int;
      
      private var §_-Fc§:int;
      
      private var §_-A2§:Boolean;
      
      private var §_-x0§:§_-ob§;
      
      private var §_-KX§:Boolean;
      
      private var §_-Gl§:§_-N0§;
      
      private var §_-W1§:§_-lx§;
      
      public function §_-C-§(param1:§_-N0§, param2:§_-lx§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§_-a5§ = new Sprite();
         super();
         this.§_-Gl§ = param1;
         this.§_-W1§ = param2;
         this.§_-ZM§ = param3;
         this.§_-qs§ = param5;
         this.§_-5N§ = param4;
         this.§_-X5§ = param10;
         this.§_-Fc§ = param16;
         this.§_-A2§ = param17;
         this.§_-Fb§ = param9;
         this.§_-hR§ = 0;
         this.§_-U-§ = param8;
         this.mX = param6;
         this.mY = param7;
         this.§_-2h§ = param15;
         this.§_-xS§ = param11;
         this.§_-7i§ = param12;
         this.§_-ny§ = param14;
         this.§in§ = param13;
         this.§_-xv§();
         this.§_-32§();
         if(this.§_-qs§ == §_-g7§)
         {
            this.§_-Lw§ = §_-u4§.§_-40§.§_-9W§.§_-8B§ + this.§_-a5§.height * §_-yw§.§_-rO§;
         }
      }
      
      public static function §_-5X§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §_-Gv§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §_-OZ§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §_-1b§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §_-N9§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §_-HN§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §_-4h§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §_-tk§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §_-j6§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §_-zk§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §_-rx§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §_-O1§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §_-ya§;
         }
         return §_-0l§;
      }
      
      public static function §_-PG§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §_-53§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §_-9a§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §_-A9§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §_-Qa§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §_-sB§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §_-Aa§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §_-Aa§;
         }
         return §_-sB§;
      }
      
      public function get §_-wq§() : DisplayObject
      {
         return this.§_-a5§;
      }
      
      public function §_-Y1§(param1:Number, param2:Number) : void
      {
      }
      
      protected function §_-xv§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Sprite = null;
         var _loc7_:§_-ob§ = null;
         _loc1_ = Math.random() * 100;
         loop0:
         switch(this.§_-ZM§)
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
            case §_-5e§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §_-yv§:
               this.createParticle("??");
               break;
            case §_-Op§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §_-My§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §_-T0§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §_-dY§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §_-t§:
               _loc2_ = 1 + _loc1_ % 5;
               _loc3_ = "particle" + _loc2_;
               break;
            case §_-H6§:
            case §_-LG§:
               if(parseInt(this.§_-Fb§) != 10000)
               {
                  if(parseInt(this.§_-Fb§) == 5000)
                  {
                     this.createParticle("SCORE_PIG");
                     break;
                  }
                  _loc6_ = new Sprite();
                  _loc7_ = this.§_-Gl§.§_-CT§("NUMBERS");
                  this.§_-HF§ = new §_-u5§(_loc6_,_loc7_);
                  this.§_-HF§.§_-PB§(parseInt(this.§_-Fb§));
                  this.§_-a5§.addChild(_loc6_);
                  _loc6_.scaleX = _loc6_.scaleY = 0.75;
                  break;
               }
               switch(this.§_-X5§)
               {
                  case §_-53§:
                     this.createParticle("SCORE_BIRD_RED");
                     break loop0;
                  case §_-A9§:
                     this.createParticle("SCORE_BIRD_BLUE");
                     break loop0;
                  case §_-Aa§:
                     this.createParticle("SCORE_BIRD_GREEN");
                     break loop0;
                  case §_-Qa§:
                     this.createParticle("SCORE_BIRD_BLACK");
                     break loop0;
                  case §_-sB§:
                     this.createParticle("SCORE_BIRD_WHITE");
                     break loop0;
                  case §_-9a§:
                     this.createParticle("SCORE_BIRD_YELLOW");
                     break loop0;
                  default:
                     _loc6_ = new Sprite();
                     _loc7_ = this.§_-Gl§.§_-CT§("NUMBERS");
                     this.§_-HF§ = new §_-u5§(_loc6_,_loc7_);
                     this.§_-HF§.§_-PB§(parseInt(this.§_-Fb§));
                     this.§_-a5§.addChild(_loc6_);
                     _loc6_.scaleX = _loc6_.scaleY = 0.75;
               }
               break;
            case §_-L2§:
               switch(this.§_-X5§)
               {
                  case §_-zk§:
                     _loc4_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc4_);
                     break;
                  case §_-ya§:
                     _loc4_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §_-rx§:
                     _loc4_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc4_);
                     break;
                  case §_-O1§:
                     _loc4_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc4_);
                     break;
                  case §_-0l§:
                     _loc4_ = 1 + _loc1_ % 5;
               }
               if(this.§_-a5§)
               {
                  this.§_-a5§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            case §_-i1§:
               _loc5_ = 1 + _loc1_ % 3;
               switch(this.§_-X5§)
               {
                  case §_-Gv§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc5_);
                     break;
                  case §_-N9§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc5_);
                     break;
                  case §_-1b§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc5_);
                     break;
                  case §_-4h§:
                     this.createParticle("??");
                     break;
                  case §_-HN§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc5_);
                     break;
                  case §_-OZ§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc5_);
                     break;
                  case §_-tk§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc5_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc5_);
               }
               if(this.§_-a5§)
               {
                  this.§_-a5§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§_-ZM§,null,this.§_-Fc§,this.§_-A2§);
         }
      }
      
      private function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§_-qH§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§_-x0§ = this.§_-Gl§.§_-CT§(param1);
         this.§_-KX§ = param4;
         if(this.§_-x0§)
         {
            _loc6_ = (_loc5_ = this.§_-x0§.getFrame(0)).texture;
         }
         else
         {
            _loc6_ = this.§_-W1§.§_-hd§();
         }
         this.§_-9R§ = param3;
         var _loc7_:§_-Xj§ = new §_-Xj§(_loc6_);
         _loc7_.scaleX = _loc7_.scaleY = this.§_-2h§;
         this.§_-a5§.addChild(_loc7_);
         if(_loc5_)
         {
            _loc7_.x = -_loc5_.pivotX;
            _loc7_.y = -_loc5_.pivotY;
         }
         else
         {
            _loc7_.x = -this.§_-a5§.width / 2;
            _loc7_.y = -this.§_-a5§.height / 2;
         }
      }
      
      public function §_-32§() : void
      {
         if(this.§_-a5§)
         {
            this.§_-a5§.x = this.mX / §_-yw§.§_-rO§;
            this.§_-a5§.y = this.mY / §_-yw§.§_-rO§;
         }
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§_-qH§ = null;
         var _loc6_:Texture = null;
         var _loc7_:§_-Xj§ = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         this.§_-hR§ += param1;
         var _loc2_:Boolean = false;
         if(this.§_-9R§ > 0 && this.§_-x0§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§_-hR§ / 1000 / (1 / _loc3_)) < this.§_-x0§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§_-x0§.getFrame(_loc4_)).texture;
               _loc7_ = new §_-Xj§(_loc6_);
               this.§_-a5§.§_-E0§(0,-1,true);
               this.§_-a5§.addChild(_loc7_);
               _loc7_.x = -_loc5_.pivotX;
               _loc7_.y = -_loc5_.pivotY;
               _loc7_.scaleX = _loc7_.scaleY = this.§_-2h§;
            }
            else if(this.§_-KX§)
            {
               this.§_-a5§.§_-E0§(0,-1,true);
            }
         }
         if(this.§_-qs§ == §_-Jn§)
         {
            this.§_-xh§(param1);
            if(this.§_-U-§ > 0)
            {
               _loc8_ = 1;
               if(this.§_-ZM§ == §_-LG§)
               {
                  if((_loc10_ = this.§_-hR§ / this.§_-U-§) <= 0.2)
                  {
                     _loc9_ = _loc10_ / 0.2;
                  }
                  else if(_loc10_ >= 0.8)
                  {
                     _loc9_ = 1 - (_loc10_ - 0.8) / 0.2;
                  }
                  else
                  {
                     _loc9_ = 1;
                  }
                  _loc8_ = _loc9_ * (0.5 + int(this.§_-Fb§) / 5000);
               }
               this.§_-a5§.scaleX = _loc8_;
               this.§_-a5§.scaleY = _loc8_;
            }
            _loc2_ = true;
         }
         else if(this.§_-qs§ == §_-g7§)
         {
            this.§_-xh§(param1);
            if(this.§_-ZM§ == §_-t§)
            {
               this.§_-a5§.alpha = Math.max(0,Math.min(1,2 * §_-8U§.§_-aX§((this.§_-U-§ - this.§_-hR§) / this.§_-U-§,false)));
               _loc11_ = Math.atan2(-this.§_-7i§,this.§_-xS§) * (180 / Math.PI);
               this.§_-a5§.scaleX = Math.max(0.2,this.§_-a5§.alpha);
               this.§_-a5§.scaleY = Math.max(0.2,this.§_-a5§.alpha);
               this.§_-a5§.rotation = (360 - _loc11_) / 180 * Math.PI;
            }
            else if(this.§_-ZM§ == §_-i1§ || this.§_-ZM§ == §_-T0§)
            {
               this.§_-a5§.scaleX = this.§_-a5§.scaleY = 0.4 + (this.§_-U-§ - this.§_-hR§) / this.§_-U-§ * 1.6;
            }
            _loc2_ = true;
            if(this.§_-Lw§ > 0 && this.mY > this.§_-Lw§)
            {
               return false;
            }
         }
         if(this.§_-U-§ > 0 && this.§_-hR§ >= this.§_-U-§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§_-32§();
         }
         return true;
      }
      
      public function §_-xh§(param1:Number) : void
      {
         this.§_-7i§ += param1 * this.§in§ / 1000;
         this.mY += this.§_-7i§ * param1 / 1000;
         this.mX += this.§_-xS§ * param1 / 1000;
         if(this.§_-ny§ != 0)
         {
            this.§_-a5§.rotation += this.§_-ny§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function dispose() : void
      {
         if(this.§_-HF§)
         {
            this.§_-HF§.clear();
            this.§_-HF§ = null;
         }
         if(this.§_-a5§)
         {
            this.§_-a5§.dispose();
            this.§_-a5§ = null;
         }
      }
   }
}
