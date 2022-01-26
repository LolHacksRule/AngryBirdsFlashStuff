package §_-mQ§
{
   import §_-5A§.§_-LS§;
   import §_-Bp§.§_-5N§;
   import §_-Bp§.§_-9c§;
   import §_-Bp§.§_-Mn§;
   import §_-Q2§.Texture;
   import §_-d5§.§_-6Y§;
   import §_-ez§.§_-2f§;
   import §_-ez§.§_-8g§;
   import §_-ez§.§_-Ay§;
   import §_-nU§.§_-NH§;
   import §_-s7§.§_-6r§;
   import §_-vO§.DisplayObject;
   import §_-vO§.Sprite;
   import §_-vO§.§_-OW§;
   import flash.geom.Point;
   import starling.events.Event;
   
   public class §_-n5§
   {
       
      
      private var §_-MZ§:int;
      
      private var §_-dC§:int;
      
      private var §_-Qu§:Number;
      
      private var §_-Ey§:Boolean;
      
      private var §null§:Number = 0.15;
      
      private var §_-0O§:Sprite;
      
      private var §_-u0§:Array;
      
      private var §_-DK§:Boolean = true;
      
      private var §_-aH§:§_-5N§;
      
      public function §_-n5§(param1:§_-LS§, param2:Sprite, param3:§_-5N§)
      {
         var _loc5_:Texture = null;
         var _loc10_:§_-9c§ = null;
         var _loc11_:Sprite = null;
         var _loc12_:Array = null;
         var _loc13_:Object = null;
         var _loc14_:§_-2f§ = null;
         var _loc15_:int = 0;
         this.§_-u0§ = [];
         super();
         this.§_-aH§ = param3;
         this.§_-0O§ = param2;
         this.§_-Qu§ = param1.§_-jc§;
         this.§_-Ey§ = param1.§_-1A§;
         var _loc4_:Number = 1;
         if(param1.§_-8f§ != 0)
         {
            _loc4_ = param1.§_-8f§;
         }
         var _loc6_:Number = 0;
         var _loc7_:Number = 0;
         var _loc8_:DisplayObject;
         if(!(_loc8_ = §_-Mn§.§_-HG§(param1.mName,§_-5N§.§_-9v§)))
         {
            _loc6_ = (_loc10_ = param3.§switch§(param1.mName)).pivotY;
            if(!this.§_-Ey§)
            {
               _loc7_ = _loc10_.pivotX;
            }
            _loc5_ = _loc10_.texture;
            this.§_-MZ§ = _loc5_.width * _loc4_ - 2;
         }
         else
         {
            this.§_-MZ§ = _loc8_.width * _loc4_ - 2;
            _loc6_ = _loc8_.§_-bC§.bottom;
            _loc7_ = (_loc8_.§_-bC§.left + _loc8_.§_-bC§.right) / 2;
         }
         if(this.§_-MZ§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§_-MZ§ = Math.round(this.§_-MZ§);
         if(param1.§_-cq§)
         {
            this.§_-dC§ = 1 + (§_-Ay§.§_-vr§ * 4 + this.§_-MZ§ * this.§null§ - 1) / (this.§_-MZ§ * this.§null§);
         }
         else
         {
            this.§_-dC§ = 1;
         }
         var _loc9_:int = 0;
         while(_loc9_ < this.§_-dC§)
         {
            _loc11_ = new Sprite();
            if(!_loc8_)
            {
               if(!_loc5_)
               {
                  _loc8_ = §_-Mn§.§_-HG§(param1.mName,§_-5N§.§_-9v§);
               }
               else
               {
                  _loc8_ = new §_-OW§(_loc5_);
               }
            }
            _loc8_.x = _loc9_ * this.§_-MZ§ + (-_loc7_ * _loc4_ + param1.§_-iq§);
            _loc8_.y = -_loc6_ * _loc4_;
            _loc8_.scaleX = _loc4_;
            _loc8_.scaleY = _loc4_;
            _loc11_.addChild(_loc8_);
            _loc12_ = [];
            for each(_loc13_ in param1.§_-u0§)
            {
               (_loc14_ = §_-NH§.§_-Yf§(_loc13_.id,this.§_-aH§)).x = _loc9_ * this.§_-MZ§ + _loc13_.x + param1.§_-iq§;
               _loc14_.y = _loc13_.y;
               _loc14_.scaleX = _loc14_.scaleY = _loc13_.scale;
               _loc14_.rotation = _loc13_.rotation;
               _loc14_.alpha = _loc13_.alpha;
               _loc14_.start();
               §_-6Y§.§_-7p§.add(_loc14_);
               this.§_-u0§.push(_loc14_);
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
                  _loc14_.§_-An§(1 / 20);
                  _loc15_++;
               }
            }
            this.§_-0O§.addChild(_loc11_);
            _loc8_ = null;
            _loc9_++;
         }
         this.§_-0O§.addEventListener(Event.ADDED_TO_STAGE,this.§_-lr§);
      }
      
      public function get §_-gW§() : Boolean
      {
         return this.§_-Ey§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§_-6r§ = null;
         this.§_-0O§.§_-n4§(0,-1,true);
         for each(_loc1_ in this.§_-u0§)
         {
            §_-6Y§.§_-7p§.§_-4g§(_loc1_);
            _loc1_.dispose();
         }
         this.§_-u0§ = [];
      }
      
      private function §_-lr§(param1:Event) : void
      {
         this.§_-XA§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§_-Qu§ * param1;
         this.§_-0O§.x = -_loc3_;
         this.§_-0O§.y = -param2;
         this.§_-1k§();
         this.§_-XA§();
      }
      
      private function §_-XA§() : void
      {
         var _loc1_:§_-6r§ = null;
         var _loc2_:Point = null;
         if(!this.§_-DK§ || !this.§_-0O§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§_-u0§)
         {
            _loc2_ = _loc1_.localToGlobal(new Point(0,0));
            if(_loc2_.x < -50 || _loc2_.x > this.§_-0O§.stage.stageWidth + 51)
            {
               §_-6Y§.§_-7p§.§_-4g§(_loc1_);
               _loc1_.visible = false;
            }
            else
            {
               §_-6Y§.§_-7p§.add(_loc1_);
               _loc1_.visible = true;
            }
         }
      }
      
      private function §_-0T§() : void
      {
         var _loc1_:§_-6r§ = null;
         for each(_loc1_ in this.§_-u0§)
         {
            §_-6Y§.§_-7p§.§_-4g§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §_-UH§(param1:Boolean) : void
      {
         if(param1 == this.§_-DK§)
         {
            return;
         }
         this.§_-DK§ = param1;
         if(this.§_-DK§)
         {
            this.§_-XA§();
         }
         else
         {
            this.§_-0T§();
         }
      }
      
      public function §_-1k§() : void
      {
         if(this.§_-dC§ == 1)
         {
            return;
         }
         while(§_-8g§.§_-1e§ + this.§_-0O§.x * §_-8g§.§_-YI§ > 0)
         {
            this.§_-0O§.x -= this.§_-MZ§;
         }
      }
   }
}
