package §_-2a§
{
   import §_-0y§.§_-7O§;
   import §_-5M§.§_-sV§;
   import §_-5Y§.§_-ih§;
   import §_-5Y§.§_-vn§;
   import §_-5Y§.§_-yw§;
   import §_-DQ§.Texture;
   import §_-PC§.§_-Ce§;
   import §_-PC§.§_-lx§;
   import §_-PC§.§_-qH§;
   import §_-Y2§.§_-mk§;
   import §_-b5§.DisplayObject;
   import §_-b5§.Sprite;
   import §_-b5§.§_-Xj§;
   import §_-fI§.§_-BI§;
   import flash.geom.Point;
   import starling.events.Event;
   
   public class §_-Xo§
   {
       
      
      private var §_-Fs§:int;
      
      private var §_-67§:int;
      
      private var §_-A-§:Number;
      
      private var §_-RM§:Boolean;
      
      private var §_-ZH§:Number = 0.15;
      
      private var §_-MT§:Sprite;
      
      private var §_-NR§:Array;
      
      private var §_-EG§:Boolean = true;
      
      private var §_-W1§:§_-lx§;
      
      public function §_-Xo§(param1:§_-7O§, param2:Sprite, param3:§_-lx§)
      {
         var _loc5_:Texture = null;
         var _loc10_:§_-qH§ = null;
         var _loc11_:Sprite = null;
         var _loc12_:Array = null;
         var _loc13_:Object = null;
         var _loc14_:§_-ih§ = null;
         var _loc15_:int = 0;
         this.§_-NR§ = [];
         super();
         this.§_-W1§ = param3;
         this.§_-MT§ = param2;
         this.§_-A-§ = param1.§_-zq§;
         this.§_-RM§ = param1.§_-uE§;
         var _loc4_:Number = 1;
         if(param1.§_-2h§ != 0)
         {
            _loc4_ = param1.§_-2h§;
         }
         var _loc6_:Number = 0;
         var _loc7_:Number = 0;
         var _loc8_:DisplayObject;
         if(!(_loc8_ = §_-Ce§.§_-Ul§(param1.mName,§_-lx§.§_-aP§,false)))
         {
            _loc6_ = (_loc10_ = param3.§_-vh§(param1.mName)).pivotY;
            if(!this.§_-RM§)
            {
               _loc7_ = _loc10_.pivotX;
            }
            _loc5_ = _loc10_.texture;
            this.§_-Fs§ = _loc5_.width * _loc4_ - 2;
         }
         else
         {
            this.§_-Fs§ = _loc8_.width * _loc4_ - 2;
            _loc6_ = _loc8_.§_-8N§.bottom;
            _loc7_ = (_loc8_.§_-8N§.left + _loc8_.§_-8N§.right) / 2;
         }
         if(this.§_-Fs§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§_-Fs§ = Math.round(this.§_-Fs§);
         if(param1.§_-dw§)
         {
            this.§_-67§ = 1 + (§_-yw§.§_-C7§ * 4 + this.§_-Fs§ * this.§_-ZH§ - 1) / (this.§_-Fs§ * this.§_-ZH§);
         }
         else
         {
            this.§_-67§ = 1;
         }
         var _loc9_:int = 0;
         while(_loc9_ < this.§_-67§)
         {
            _loc11_ = new Sprite();
            if(!_loc8_)
            {
               if(!_loc5_)
               {
                  _loc8_ = §_-Ce§.§_-Ul§(param1.mName,§_-lx§.§_-aP§,false);
               }
               else
               {
                  _loc8_ = new §_-Xj§(_loc5_,false,false);
               }
            }
            _loc8_.x = _loc9_ * this.§_-Fs§ + (-_loc7_ * _loc4_ + param1.§_-V-§);
            _loc8_.y = -_loc6_ * _loc4_;
            _loc8_.scaleX = _loc4_;
            _loc8_.scaleY = _loc4_;
            _loc11_.addChild(_loc8_);
            _loc12_ = [];
            for each(_loc13_ in param1.§_-NR§)
            {
               (_loc14_ = §_-mk§.§_-m3§(_loc13_.id,this.§_-W1§)).x = _loc9_ * this.§_-Fs§ + _loc13_.x + param1.§_-V-§;
               _loc14_.y = _loc13_.y;
               _loc14_.scaleX = _loc14_.scaleY = _loc13_.scale;
               _loc14_.rotation = _loc13_.rotation;
               _loc14_.alpha = _loc13_.alpha;
               _loc14_.start();
               §_-BI§.§_-CE§.add(_loc14_);
               this.§_-NR§.push(_loc14_);
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
                  _loc14_.§_-XZ§(1 / 20);
                  _loc15_++;
               }
            }
            this.§_-MT§.addChild(_loc11_);
            _loc8_ = null;
            _loc9_++;
         }
         this.§_-MT§.addEventListener(Event.ADDED_TO_STAGE,this.§_-CI§);
      }
      
      public function get §_-x-§() : Boolean
      {
         return this.§_-RM§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§_-sV§ = null;
         this.§_-MT§.§_-E0§(0,-1,true);
         for each(_loc1_ in this.§_-NR§)
         {
            §_-BI§.§_-CE§.§_-sA§(_loc1_);
            _loc1_.dispose();
         }
         this.§_-NR§ = [];
      }
      
      private function §_-CI§(param1:Event) : void
      {
         this.§_-L§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§_-A-§ * param1;
         this.§_-MT§.x = -_loc3_;
         this.§_-MT§.y = -param2;
         this.§_-zF§();
         this.§_-L§();
      }
      
      private function §_-L§() : void
      {
         var _loc1_:§_-sV§ = null;
         var _loc2_:Point = null;
         if(!this.§_-EG§ || !this.§_-MT§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§_-NR§)
         {
            _loc2_ = _loc1_.localToGlobal(new Point(0,0));
            if(_loc2_.x < -50 || _loc2_.x > this.§_-MT§.stage.stageWidth + 51)
            {
               §_-BI§.§_-CE§.§_-sA§(_loc1_);
               _loc1_.visible = false;
            }
            else
            {
               §_-BI§.§_-CE§.add(_loc1_);
               _loc1_.visible = true;
            }
         }
      }
      
      private function §_-HL§() : void
      {
         var _loc1_:§_-sV§ = null;
         for each(_loc1_ in this.§_-NR§)
         {
            §_-BI§.§_-CE§.§_-sA§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §_-YZ§(param1:Boolean) : void
      {
         if(param1 == this.§_-EG§)
         {
            return;
         }
         this.§_-EG§ = param1;
         if(this.§_-EG§)
         {
            this.§_-L§();
         }
         else
         {
            this.§_-HL§();
         }
      }
      
      public function §_-zF§() : void
      {
         if(this.§_-67§ == 1)
         {
            return;
         }
         while(§_-vn§.§_-G7§ + this.§_-MT§.x * §_-vn§.§_-RC§ > 0)
         {
            this.§_-MT§.x -= this.§_-Fs§;
         }
      }
   }
}
