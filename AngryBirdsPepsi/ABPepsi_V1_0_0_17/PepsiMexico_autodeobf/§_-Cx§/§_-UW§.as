package §_-Cx§
{
   import §_-4g§.Texture;
   import §_-LP§.DisplayObject;
   import §_-LP§.Sprite;
   import §_-LP§.§_-19§;
   import §_-OJ§.§_-14§;
   import §_-OJ§.§_-tL§;
   import §_-Ra§.§_-2X§;
   import §_-Ra§.§_-M7§;
   import §_-Ra§.§_-RO§;
   import §_-Ra§.§_-Vr§;
   import §_-e3§.§_-Fq§;
   import §_-hU§.§_-MB§;
   
   public class §_-UW§
   {
      
      public static const §_-og§:int = 0;
      
      public static const §_-s4§:int = 1;
      
      public static const §_-dd§:int = 2;
      
      public static const §_-eQ§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §_-H9§:String = "Effect_TrailBig_Bird";
      
      public static const §_-Zg§:String = "Effect_Trail_Sparkle";
      
      public static const §_-iS§:String = "Effect_Floating_Score";
      
      public static const §_-HS§:String = "Effect_Floating_Text";
      
      public static const §_-AL§:String = "Effect_Explosion_Particle";
      
      public static const §_-vk§:String = "Effect_Explosion_Core";
      
      public static const §_-Q7§:String = "Effect_Pig_Destruction";
      
      public static const §_-Xt§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §_-Lw§:String = "Effect_Bird_Destruction";
      
      public static const §_-pG§:String = "Effect_Block_Destruction_Particles";
      
      public static const §_-Mx§:String = "Effect_Block_Destruction_Core";
      
      public static const §_-YC§:int = 0;
      
      public static const §_-wK§:int = 1;
      
      public static const §_-tb§:int = 2;
      
      public static const §_-3Q§:int = 3;
      
      public static const §_-3X§:int = 4;
      
      public static const §_-nB§:int = 5;
      
      public static const §_-od§:int = 6;
      
      public static const §_-rr§:int = 7;
      
      public static const §_-Ny§:int = 8;
      
      public static const §_-Uo§:int = 9;
      
      public static const §_-Ew§:int = 10;
      
      public static const §_-Hs§:int = 11;
      
      public static const §_-0b§:int = 12;
      
      public static const §_-kb§:int = 13;
      
      public static const §_-KV§:int = 14;
      
      public static const §_-Mm§:int = 15;
      
      public static const §_-Tr§:int = 16;
      
      public static const §_-rw§:int = 17;
      
      public static const §_-3z§:int = 18;
      
      public static const §_-Vc§:Boolean = true;
       
      
      public var §_-L4§:int;
      
      public var §_-Ao§:int;
      
      public var §_-Nm§:String;
      
      public var §_-Hu§:Number;
      
      public var §_-uY§:Number;
      
      public var §_-WE§:Number;
      
      public var §_-6i§:Number;
      
      public var §_-O5§:Number = 0;
      
      public var §_-KA§:Number;
      
      public var §_-F7§:Number;
      
      public var §_-US§:String;
      
      public var §_-qx§:Number = -1;
      
      public var §_-Ox§:int;
      
      public var mX:Number;
      
      public var mY:Number;
      
      private var §_-CI§:Sprite;
      
      private var §_-w7§:§_-14§;
      
      private var §_-Qh§:int;
      
      private var §_-65§:int;
      
      private var §_-oZ§:Boolean;
      
      private var §_-jC§:§_-RO§;
      
      private var §_-pk§:Boolean;
      
      private var §_-Mi§:§_-M7§;
      
      private var §_-gS§:§_-2X§;
      
      public function §_-UW§(param1:§_-M7§, param2:§_-2X§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§_-CI§ = new Sprite();
         super();
         this.§_-Mi§ = param1;
         this.§_-gS§ = param2;
         this.§_-Nm§ = param3;
         this.§_-L4§ = param5;
         this.§_-Ao§ = param4;
         this.§_-Ox§ = param10;
         this.§_-65§ = param16;
         this.§_-oZ§ = param17;
         this.§_-US§ = param9;
         this.§_-Hu§ = 0;
         this.§_-F7§ = param8;
         this.mX = param6;
         this.mY = param7;
         this.§_-KA§ = param15;
         this.§_-WE§ = param11;
         this.§_-uY§ = param12;
         this.§_-O5§ = param14;
         this.§_-6i§ = param13;
         this.§_-5W§();
         this.§_-nI§();
         if(this.§_-L4§ == §_-s4§)
         {
            this.§_-qx§ = §_-MB§.§_-A7§.§_-N7§.§_-IL§ + this.§_-CI§.height * §_-tL§.§_-7m§;
         }
      }
      
      public static function §_-G9§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §_-YC§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §_-tb§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §_-wK§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §_-nB§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §_-3X§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §_-3Q§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §_-3z§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §_-od§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §_-Uo§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §_-rr§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §_-Ny§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §_-Ew§;
         }
         return §_-Hs§;
      }
      
      public static function §_-yw§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §_-0b§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §_-KV§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §_-kb§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §_-rw§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §_-Tr§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §_-Mm§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §_-Mm§;
         }
         return §_-Tr§;
      }
      
      public function get §_-tY§() : DisplayObject
      {
         return this.§_-CI§;
      }
      
      public function §_-He§(param1:Number, param2:Number) : void
      {
      }
      
      protected function §_-5W§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Sprite = null;
         var _loc7_:§_-RO§ = null;
         _loc1_ = Math.random() * 100;
         switch(this.§_-Nm§)
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
            case §_-H9§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §_-Zg§:
               this.createParticle("??");
               break;
            case §_-Q7§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §_-Xt§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §_-Mx§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §_-vk§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §_-AL§:
               _loc2_ = 1 + _loc1_ % 5;
               _loc3_ = "particle" + _loc2_;
               break;
            case §_-iS§:
            case §_-HS§:
               if(parseInt(this.§_-US§) == 10000)
               {
                  switch(this.§_-Ox§)
                  {
                     case §_-0b§:
                        this.createParticle("SCORE_BIRD_RED");
                        break;
                     case §_-kb§:
                        this.createParticle("SCORE_BIRD_BLUE");
                        break;
                     case §_-Mm§:
                        this.createParticle("SCORE_BIRD_GREEN");
                        break;
                     case §_-rw§:
                        this.createParticle("SCORE_BIRD_BLACK");
                        break;
                     case §_-Tr§:
                        this.createParticle("SCORE_BIRD_WHITE");
                        break;
                     case §_-KV§:
                        this.createParticle("SCORE_BIRD_YELLOW");
                        break;
                     default:
                        _loc6_ = new Sprite();
                        _loc7_ = this.§_-Mi§.§_-S-§("NUMBERS");
                        this.§_-w7§ = new §_-14§(_loc6_,_loc7_);
                        this.§_-w7§.§_-Ot§(parseInt(this.§_-US§));
                        this.§_-CI§.addChild(_loc6_);
                        _loc6_.scaleX = _loc6_.scaleY = 0.75;
                  }
               }
               else if(parseInt(this.§_-US§) == 5000)
               {
                  this.createParticle("SCORE_PIG");
               }
               else
               {
                  _loc6_ = new Sprite();
                  _loc7_ = this.§_-Mi§.§_-S-§("NUMBERS");
                  this.§_-w7§ = new §_-14§(_loc6_,_loc7_);
                  this.§_-w7§.§_-Ot§(parseInt(this.§_-US§));
                  this.§_-CI§.addChild(_loc6_);
                  _loc6_.scaleX = _loc6_.scaleY = 0.75;
               }
               break;
            case §_-pG§:
               switch(this.§_-Ox§)
               {
                  case §_-Uo§:
                     _loc4_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc4_);
                     break;
                  case §_-Ew§:
                     _loc4_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §_-rr§:
                     _loc4_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc4_);
                     break;
                  case §_-Ny§:
                     _loc4_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc4_);
                     break;
                  case §_-Hs§:
                     _loc4_ = 1 + _loc1_ % 5;
               }
               if(this.§_-CI§)
               {
                  this.§_-CI§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            case §_-Lw§:
               _loc5_ = 1 + _loc1_ % 3;
               switch(this.§_-Ox§)
               {
                  case §_-YC§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc5_);
                     break;
                  case §_-nB§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc5_);
                     break;
                  case §_-wK§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc5_);
                     break;
                  case §_-3Q§:
                     this.createParticle("??");
                     break;
                  case §_-3X§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc5_);
                     break;
                  case §_-tb§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc5_);
                     break;
                  case §_-3z§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc5_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc5_);
               }
               if(this.§_-CI§)
               {
                  this.§_-CI§.rotation = Math.random() * 360 / 180 * Math.PI;
               }
               break;
            default:
               this.createParticle(this.§_-Nm§,null,this.§_-65§,this.§_-oZ§);
         }
      }
      
      private function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§_-Vr§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§_-jC§ = this.§_-Mi§.§_-S-§(param1);
         this.§_-pk§ = param4;
         if(this.§_-jC§)
         {
            _loc6_ = (_loc5_ = this.§_-jC§.getFrame(0)).texture;
         }
         else
         {
            _loc6_ = this.§_-gS§.§_-Z0§();
         }
         this.§_-Qh§ = param3;
         var _loc7_:§_-19§ = new §_-19§(_loc6_);
         _loc7_.scaleX = _loc7_.scaleY = this.§_-KA§;
         this.§_-CI§.addChild(_loc7_);
         if(_loc5_)
         {
            _loc7_.x = -_loc5_.pivotX;
            _loc7_.y = -_loc5_.pivotY;
         }
         else
         {
            _loc7_.x = -this.§_-CI§.width / 2;
            _loc7_.y = -this.§_-CI§.height / 2;
         }
      }
      
      public function §_-nI§() : void
      {
         if(this.§_-CI§)
         {
            this.§_-CI§.x = this.mX / §_-tL§.§_-7m§;
            this.§_-CI§.y = this.mY / §_-tL§.§_-7m§;
         }
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§_-Vr§ = null;
         var _loc6_:Texture = null;
         var _loc7_:§_-19§ = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         this.§_-Hu§ += param1;
         var _loc2_:Boolean = false;
         if(this.§_-Qh§ > 0 && this.§_-jC§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§_-Hu§ / 1000 / (1 / _loc3_)) < this.§_-jC§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§_-jC§.getFrame(_loc4_)).texture;
               _loc7_ = new §_-19§(_loc6_);
               this.§_-CI§.§_-12§(0,-1,true);
               this.§_-CI§.addChild(_loc7_);
               _loc7_.x = -_loc5_.pivotX;
               _loc7_.y = -_loc5_.pivotY;
               _loc7_.scaleX = _loc7_.scaleY = this.§_-KA§;
            }
            else if(this.§_-pk§)
            {
               this.§_-CI§.§_-12§(0,-1,true);
            }
         }
         if(this.§_-L4§ == §_-og§)
         {
            this.§_-oQ§(param1);
            if(this.§_-F7§ > 0)
            {
               _loc8_ = 1;
               if(this.§_-Nm§ == §_-HS§)
               {
                  if((_loc10_ = this.§_-Hu§ / this.§_-F7§) <= 0.2)
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
                  _loc8_ = _loc9_ * (0.5 + int(this.§_-US§) / 5000);
               }
               this.§_-CI§.scaleX = _loc8_;
               this.§_-CI§.scaleY = _loc8_;
            }
            _loc2_ = true;
         }
         else if(this.§_-L4§ == §_-s4§)
         {
            this.§_-oQ§(param1);
            if(this.§_-Nm§ == §_-AL§)
            {
               this.§_-CI§.alpha = Math.max(0,Math.min(1,2 * §_-Fq§.§_-tf§((this.§_-F7§ - this.§_-Hu§) / this.§_-F7§,false)));
               _loc11_ = Math.atan2(-this.§_-uY§,this.§_-WE§) * (180 / Math.PI);
               this.§_-CI§.scaleX = Math.max(0.2,this.§_-CI§.alpha);
               this.§_-CI§.scaleY = Math.max(0.2,this.§_-CI§.alpha);
               this.§_-CI§.rotation = (360 - _loc11_) / 180 * Math.PI;
            }
            else if(this.§_-Nm§ == §_-Lw§ || this.§_-Nm§ == §_-Mx§)
            {
               this.§_-CI§.scaleX = this.§_-CI§.scaleY = 0.4 + (this.§_-F7§ - this.§_-Hu§) / this.§_-F7§ * 1.6;
            }
            _loc2_ = true;
            if(this.§_-qx§ > 0 && this.mY > this.§_-qx§)
            {
               return false;
            }
         }
         if(this.§_-F7§ > 0 && this.§_-Hu§ >= this.§_-F7§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§_-nI§();
         }
         return true;
      }
      
      public function §_-oQ§(param1:Number) : void
      {
         this.§_-uY§ += param1 * this.§_-6i§ / 1000;
         this.mY += this.§_-uY§ * param1 / 1000;
         this.mX += this.§_-WE§ * param1 / 1000;
         if(this.§_-O5§ != 0)
         {
            this.§_-CI§.rotation += this.§_-O5§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function dispose() : void
      {
         if(this.§_-w7§)
         {
            this.§_-w7§.clear();
            this.§_-w7§ = null;
         }
         if(this.§_-CI§)
         {
            this.§_-CI§.dispose();
            this.§_-CI§ = null;
         }
      }
   }
}
