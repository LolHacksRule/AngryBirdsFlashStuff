package §_-ow§
{
   import §_-0y§.§_-B3§;
   import §_-0y§.§_-X7§;
   import §_-0y§.§_-Y4§;
   import §_-B2§.§_-H4§;
   import §_-FZ§.§_-lY§;
   import §_-Ij§.§_-YF§;
   import §_-KS§.§_-Wt§;
   import §_-KS§.§_-ia§;
   import §_-KS§.§_-n-§;
   import §_-XZ§.§_-DX§;
   import §_-jY§.Texture;
   import §_-se§.DisplayObject;
   import §_-se§.Sprite;
   import §_-se§.§_-N§;
   import flash.geom.Point;
   import starling.events.Event;
   
   public class §_-m8§
   {
       
      
      private var §_-Ow§:int;
      
      private var §_-VM§:int;
      
      private var §_-nl§:Number;
      
      private var §_-cs§:Boolean;
      
      private var §_-Tz§:Number = 0.15;
      
      private var §_-Pj§:Sprite;
      
      private var §_-9t§:Array;
      
      private var §_-5k§:Boolean = true;
      
      private var §_-NZ§:§_-ia§;
      
      public function §_-m8§(param1:§_-lY§, param2:Sprite, param3:§_-ia§)
      {
         var _loc5_:Texture = null;
         var _loc10_:§_-Wt§ = null;
         var _loc11_:Sprite = null;
         var _loc12_:Array = null;
         var _loc13_:Object = null;
         var _loc14_:§_-X7§ = null;
         var _loc15_:int = 0;
         this.§_-9t§ = [];
         super();
         this.§_-NZ§ = param3;
         this.§_-Pj§ = param2;
         this.§_-nl§ = param1.§_-Wa§;
         this.§_-cs§ = param1.§_-SV§;
         var _loc4_:Number = 1;
         if(param1.§_-O1§ != 0)
         {
            _loc4_ = param1.§_-O1§;
         }
         var _loc6_:Number = 0;
         var _loc7_:Number = 0;
         var _loc8_:DisplayObject;
         if(!(_loc8_ = §_-n-§.get(param1.mName,§_-ia§.§_-vJ§)))
         {
            _loc6_ = (_loc10_ = param3.§_-es§(param1.mName)).pivotY;
            if(!this.§_-cs§)
            {
               _loc7_ = _loc10_.pivotX;
            }
            _loc5_ = _loc10_.texture;
            this.§_-Ow§ = _loc5_.width * _loc4_ - 2;
         }
         else
         {
            this.§_-Ow§ = _loc8_.width * _loc4_ - 2;
            _loc6_ = _loc8_.§_-Br§.bottom;
            _loc7_ = (_loc8_.§_-Br§.left + _loc8_.§_-Br§.right) / 2;
         }
         if(this.§_-Ow§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§_-Ow§ = Math.round(this.§_-Ow§);
         if(param1.§_-Up§)
         {
            this.§_-VM§ = 1 + (§_-B3§.§_-64§ * 4 + this.§_-Ow§ * this.§_-Tz§ - 1) / (this.§_-Ow§ * this.§_-Tz§);
         }
         else
         {
            this.§_-VM§ = 1;
         }
         var _loc9_:int = 0;
         while(_loc9_ < this.§_-VM§)
         {
            _loc11_ = new Sprite();
            if(!_loc8_)
            {
               if(!_loc5_)
               {
                  _loc8_ = §_-n-§.get(param1.mName,§_-ia§.§_-vJ§);
               }
               else
               {
                  _loc8_ = new §_-N§(_loc5_);
               }
            }
            _loc8_.x = _loc9_ * this.§_-Ow§ + (-_loc7_ * _loc4_ + param1.§_-dm§);
            _loc8_.y = -_loc6_ * _loc4_;
            _loc8_.scaleX = _loc4_;
            _loc8_.scaleY = _loc4_;
            _loc11_.addChild(_loc8_);
            _loc12_ = [];
            for each(_loc13_ in param1.§_-9t§)
            {
               (_loc14_ = §_-YF§.§_-UB§(_loc13_.id,this.§_-NZ§)).x = _loc9_ * this.§_-Ow§ + _loc13_.x + param1.§_-dm§;
               _loc14_.y = _loc13_.y;
               _loc14_.scaleX = _loc14_.scaleY = _loc13_.scale;
               _loc14_.rotation = _loc13_.rotation;
               _loc14_.alpha = _loc13_.alpha;
               _loc14_.start();
               §_-H4§.§_-5y§.add(_loc14_);
               this.§_-9t§.push(_loc14_);
               if(_loc13_.isBehindGraphic)
               {
                  _loc11_.addChildAt(_loc14_,_loc11_.getChildIndex(_loc8_));
               }
               else
               {
                  _loc11_.addChild(_loc14_);
               }
               _loc15_ = 0;
               while(_loc15_ < _loc13_.fastForwardsAfterAdd)
               {
                  _loc14_.§_-DV§(1 / 20);
                  _loc15_++;
               }
            }
            this.§_-Pj§.addChild(_loc11_);
            _loc8_ = null;
            _loc9_++;
         }
         this.§_-Pj§.addEventListener(Event.ADDED_TO_STAGE,this.§_-VS§);
      }
      
      public function get isForegroundLayer() : Boolean
      {
         return this.§_-cs§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§_-DX§ = null;
         this.§_-Pj§.§_-sL§(0,-1,true);
         for each(_loc1_ in this.§_-9t§)
         {
            §_-H4§.§_-5y§.§_-hQ§(_loc1_);
            _loc1_.dispose();
         }
         this.§_-9t§ = [];
      }
      
      private function §_-VS§(param1:Event) : void
      {
         this.§_-2L§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§_-nl§ * param1;
         this.§_-Pj§.x = -_loc3_;
         this.§_-Pj§.y = -param2;
         this.§_-mA§();
         this.§_-2L§();
      }
      
      private function §_-2L§() : void
      {
         var _loc1_:§_-DX§ = null;
         var _loc2_:Point = null;
         if(!this.§_-5k§ || !this.§_-Pj§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§_-9t§)
         {
            _loc2_ = _loc1_.localToGlobal(new Point(0,0));
            if(_loc2_.x < -50 || _loc2_.x > this.§_-Pj§.stage.stageWidth + 51)
            {
               §_-H4§.§_-5y§.§_-hQ§(_loc1_);
               _loc1_.visible = false;
            }
            else
            {
               §_-H4§.§_-5y§.add(_loc1_);
               _loc1_.visible = true;
            }
         }
      }
      
      private function §_-lz§() : void
      {
         var _loc1_:§_-DX§ = null;
         for each(_loc1_ in this.§_-9t§)
         {
            §_-H4§.§_-5y§.§_-hQ§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §_-oO§(param1:Boolean) : void
      {
         if(param1 == this.§_-5k§)
         {
            return;
         }
         this.§_-5k§ = param1;
         if(this.§_-5k§)
         {
            this.§_-2L§();
         }
         else
         {
            this.§_-lz§();
         }
      }
      
      public function §_-mA§() : void
      {
         if(this.§_-VM§ == 1)
         {
            return;
         }
         while(§_-Y4§.§_-JB§ + this.§_-Pj§.x * §_-Y4§.§_-Q-§ > 0)
         {
            this.§_-Pj§.x -= this.§_-Ow§;
         }
      }
   }
}
