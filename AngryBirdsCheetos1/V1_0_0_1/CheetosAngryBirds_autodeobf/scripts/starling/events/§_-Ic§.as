package starling.events
{
   import §_-Ls§.DisplayObject;
   import §_-Ls§.Stage;
   import flash.geom.Point;
   
   public class §_-Ic§
   {
      
      private static const §_-0-0§:Number = 0.3;
      
      private static const §_-Be§:Number = 25;
       
      
      private var mStage:Stage;
      
      private var §_-Dv§:Number;
      
      private var §_-xo§:§_-zW§;
      
      private var §_-dY§:Vector.<§_-KQ§>;
      
      private var §_-oU§:Vector.<Array>;
      
      private var §_-3r§:Vector.<§_-KQ§>;
      
      private var §_-wU§:Boolean = false;
      
      private var §_-hc§:Boolean = false;
      
      public function §_-Ic§(param1:Stage)
      {
         super();
         this.mStage = param1;
         this.§_-Dv§ = 0;
         this.§_-dY§ = new Vector.<§_-KQ§>(0);
         this.§_-oU§ = new Vector.<Array>(0);
         this.§_-3r§ = new Vector.<§_-KQ§>(0);
         this.mStage.addEventListener(KeyboardEvent.KEY_DOWN,this.§_-3q§);
         this.mStage.addEventListener(KeyboardEvent.KEY_UP,this.§_-3q§);
      }
      
      public function dispose() : void
      {
         this.mStage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§_-3q§);
         this.mStage.removeEventListener(KeyboardEvent.KEY_UP,this.§_-3q§);
         if(this.§_-xo§)
         {
            this.§_-xo§.dispose();
         }
      }
      
      public function §_-DS§(param1:Number) : void
      {
         var processedTouchIDs:Vector.<int> = null;
         var touchID:int = 0;
         var touch:§_-KQ§ = null;
         var hoverTouch:§_-KQ§ = null;
         var hoverTarget:DisplayObject = null;
         var i:int = 0;
         var currentTouch:§_-KQ§ = null;
         var target:DisplayObject = null;
         var touchArgs:Array = null;
         var passedTime:Number = param1;
         var additionalTime:Number = 0;
         if(this.§_-3r§.length > 0)
         {
            this.§_-3r§ = this.§_-3r§.filter(function(param1:§_-KQ§, ... rest):Boolean
            {
               return §_-Dv§ + passedTime - param1.timestamp <= §_-0-0§;
            });
         }
         while(this.§_-oU§.length > 0)
         {
            processedTouchIDs = new Vector.<int>(0);
            hoverTouch = null;
            hoverTarget = null;
            i = this.§_-dY§.length - 1;
            while(i >= 0)
            {
               currentTouch = this.§_-dY§[i];
               if(currentTouch.phase == §_-3x§.§_-zy§)
               {
                  currentTouch.§_-nD§(§_-3x§.§do§);
               }
               if(currentTouch.target.stage == null)
               {
                  target = this.mStage.hitTestPoint(new Point(currentTouch.globalX,currentTouch.globalY),true);
                  if(target != null)
                  {
                     currentTouch.§_-xW§(target);
                  }
                  else
                  {
                     this.§_-dY§.splice(i,1);
                  }
               }
               i--;
            }
            while(this.§_-oU§.length > 0 && processedTouchIDs.indexOf(this.§_-oU§[this.§_-oU§.length - 1][0]) == -1)
            {
               touchArgs = this.§_-oU§.pop();
               touchID = touchArgs[0] as int;
               touch = this.§_-Av§(touchID);
               if(touch && touch.phase == §_-3x§.§_-Nx§)
               {
                  hoverTouch = touch;
                  hoverTarget = touch.target;
               }
               this.§_-Em§.apply(this,touchArgs);
               processedTouchIDs.push(touchID);
            }
            if(hoverTarget && hoverTouch.target != hoverTarget)
            {
               hoverTarget.dispatchEvent(new TouchEvent(TouchEvent.§_-xL§,this.§_-dY§,this.§_-wU§,this.§_-hc§));
            }
            for each(touchID in processedTouchIDs)
            {
               touch = this.§_-Av§(touchID);
               touch.target.dispatchEvent(new TouchEvent(TouchEvent.§_-xL§,this.§_-dY§,this.§_-wU§,this.§_-hc§));
            }
            this.§_-dY§ = this.§_-dY§.filter(function(param1:§_-KQ§, ... rest):Boolean
            {
               return param1.phase != §_-3x§.§_-JZ§;
            });
            if(this.§_-oU§.length != 0)
            {
               additionalTime += 0.00001;
               this.§_-Dv§ += 0.00001;
            }
         }
         this.§_-Dv§ += passedTime - additionalTime;
      }
      
      public function §_-Oy§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§_-oU§.unshift(arguments);
         if(this.§_-hc§ && this.§_-BQ§ && param1 == 0)
         {
            this.§_-xo§.§_-rB§(param3,param4,this.§_-wU§);
            if(param2 != §_-3x§.§_-Nx§)
            {
               this.§_-oU§.unshift([1,param2,this.§_-xo§.§_-dW§,this.§_-xo§.§_-mz§]);
            }
         }
      }
      
      private function §_-Em§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§_-KQ§ = this.§_-Av§(param1);
         var _loc7_:DisplayObject;
         if((_loc7_ = this.mStage.hitTestPoint(_loc5_,true)) == null)
         {
            if(_loc6_)
            {
               this.§_-D0§(param1);
            }
            return;
         }
         if(_loc6_ == null)
         {
            _loc6_ = new §_-KQ§(param1,param3,param4,param2,_loc7_);
            this.§_-fQ§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§_-nD§(param2);
         _loc6_.§_-ho§(this.§_-Dv§);
         if(param2 == §_-3x§.§_-Nx§ || param2 == §_-3x§.§_-4G§)
         {
            _loc6_.§_-xW§(_loc7_);
         }
         if(param2 == §_-3x§.§_-4G§)
         {
            this.§_-Ev§(_loc6_);
         }
      }
      
      private function §_-3q§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§_-KQ§ = null;
         var _loc4_:§_-KQ§ = null;
         if(param1.keyCode == 17)
         {
            _loc2_ = this.§_-hc§;
            this.§_-hc§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§_-BQ§ && _loc2_ != this.§_-hc§)
            {
               this.§_-xo§.visible = this.§_-hc§;
               this.§_-xo§.§_-ed§(this.mStage.stageWidth / 2,this.mStage.stageHeight / 2);
               _loc3_ = this.§_-Av§(0);
               _loc4_ = this.§_-Av§(1);
               if(_loc3_)
               {
                  this.§_-xo§.§_-rB§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §_-3x§.§_-JZ§)
               {
                  this.§_-oU§.unshift([1,§_-3x§.§_-JZ§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§_-hc§ && _loc3_ && (_loc3_.phase != §_-3x§.§_-JZ§ || _loc3_.phase != §_-3x§.§_-Nx§))
               {
                  this.§_-oU§.unshift([1,§_-3x§.§_-4G§,this.§_-xo§.§_-dW§,this.§_-xo§.§_-mz§]);
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§_-wU§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §_-Ev§(param1:§_-KQ§) : void
      {
         var _loc4_:§_-KQ§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§_-KQ§ = null;
         var _loc3_:Number = §_-Be§ * §_-Be§;
         for each(_loc4_ in this.§_-3r§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§_-R2§(_loc2_.§_-y1§ + 1);
            this.§_-3r§.splice(this.§_-3r§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§_-R2§(1);
         }
         this.§_-3r§.push(param1.clone());
      }
      
      private function §_-fQ§(param1:§_-KQ§) : void
      {
         var touch:§_-KQ§ = param1;
         this.§_-dY§ = this.§_-dY§.filter(function(param1:§_-KQ§, ... rest):Boolean
         {
            return param1.id != touch.id;
         });
         this.§_-dY§.push(touch);
      }
      
      private function §_-Av§(param1:int) : §_-KQ§
      {
         var _loc2_:§_-KQ§ = null;
         for each(_loc2_ in this.§_-dY§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function §_-D0§(param1:int) : void
      {
         var _loc3_:§_-KQ§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-dY§.length)
         {
            _loc3_ = this.§_-dY§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§_-dY§.splice(_loc2_,1);
               return;
            }
            _loc2_++;
         }
      }
      
      public function get §_-BQ§() : Boolean
      {
         return this.§_-xo§ != null;
      }
      
      public function set §_-BQ§(param1:Boolean) : void
      {
         if(this.§_-BQ§ == param1)
         {
            return;
         }
         if(param1)
         {
            this.§_-xo§ = new §_-zW§();
            this.§_-xo§.visible = false;
            this.mStage.addChild(this.§_-xo§);
         }
         else
         {
            this.§_-xo§.§_-Yy§(true);
            this.§_-xo§ = null;
         }
      }
   }
}
