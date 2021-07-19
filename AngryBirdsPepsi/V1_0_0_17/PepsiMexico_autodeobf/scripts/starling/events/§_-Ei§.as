package starling.events
{
   import §_-LP§.DisplayObject;
   import §_-LP§.Stage;
   import flash.geom.Point;
   
   public class §_-Ei§
   {
      
      private static const §_-zg§:Number = 0.3;
      
      private static const §_-1i§:Number = 25;
       
      
      private var mStage:Stage;
      
      private var §_-QF§:Number;
      
      private var §_-87§:§_-Uf§;
      
      private var §_-2-§:Vector.<§_-aG§>;
      
      private var §_-FG§:Vector.<Array>;
      
      private var §_-RD§:Vector.<§_-aG§>;
      
      private var §_-A2§:Boolean = false;
      
      private var §_-FX§:Boolean = false;
      
      public function §_-Ei§(param1:Stage)
      {
         super();
         this.mStage = param1;
         this.§_-QF§ = 0;
         this.§_-2-§ = new Vector.<§_-aG§>(0);
         this.§_-FG§ = new Vector.<Array>(0);
         this.§_-RD§ = new Vector.<§_-aG§>(0);
         this.mStage.addEventListener(KeyboardEvent.KEY_DOWN,this.§_-6E§);
         this.mStage.addEventListener(KeyboardEvent.KEY_UP,this.§_-6E§);
      }
      
      public function dispose() : void
      {
         this.mStage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§_-6E§);
         this.mStage.removeEventListener(KeyboardEvent.KEY_UP,this.§_-6E§);
         if(this.§_-87§)
         {
            this.§_-87§.dispose();
         }
      }
      
      public function §_-IE§(param1:Number) : void
      {
         var processedTouchIDs:Vector.<int> = null;
         var touchID:int = 0;
         var touch:§_-aG§ = null;
         var hoverTouch:§_-aG§ = null;
         var hoverTarget:DisplayObject = null;
         var i:int = 0;
         var currentTouch:§_-aG§ = null;
         var target:DisplayObject = null;
         var touchArgs:Array = null;
         var passedTime:Number = param1;
         var additionalTime:Number = 0;
         if(this.§_-RD§.length > 0)
         {
            this.§_-RD§ = this.§_-RD§.filter(function(param1:§_-aG§, ... rest):Boolean
            {
               return §_-QF§ + passedTime - param1.timestamp <= §_-zg§;
            });
         }
         while(this.§_-FG§.length > 0)
         {
            processedTouchIDs = new Vector.<int>(0);
            hoverTouch = null;
            hoverTarget = null;
            i = this.§_-2-§.length - 1;
            while(i >= 0)
            {
               currentTouch = this.§_-2-§[i];
               if(currentTouch.phase == §_-5K§.§_-qP§)
               {
                  currentTouch.§_-RP§(§_-5K§.§_-CC§);
               }
               if(currentTouch.target.stage == null)
               {
                  target = this.mStage.hitTestPoint(new Point(currentTouch.globalX,currentTouch.globalY),true);
                  if(target != null)
                  {
                     currentTouch.§_-Lb§(target);
                  }
                  else
                  {
                     this.§_-2-§.splice(i,1);
                  }
               }
               i--;
            }
            while(this.§_-FG§.length > 0 && processedTouchIDs.indexOf(this.§_-FG§[this.§_-FG§.length - 1][0]) == -1)
            {
               touchArgs = this.§_-FG§.pop();
               touchID = touchArgs[0] as int;
               touch = this.§_-11§(touchID);
               if(touch && touch.phase == §_-5K§.§_-d2§)
               {
                  hoverTouch = touch;
                  hoverTarget = touch.target;
               }
               this.§_-3S§.apply(this,touchArgs);
               processedTouchIDs.push(touchID);
            }
            if(hoverTarget && hoverTouch.target != hoverTarget)
            {
               hoverTarget.dispatchEvent(new TouchEvent(TouchEvent.§_-AT§,this.§_-2-§,this.§_-A2§,this.§_-FX§));
            }
            for each(touchID in processedTouchIDs)
            {
               touch = this.§_-11§(touchID);
               touch.target.dispatchEvent(new TouchEvent(TouchEvent.§_-AT§,this.§_-2-§,this.§_-A2§,this.§_-FX§));
            }
            this.§_-2-§ = this.§_-2-§.filter(function(param1:§_-aG§, ... rest):Boolean
            {
               return param1.phase != §_-5K§.§_-an§;
            });
            if(this.§_-FG§.length != 0)
            {
               additionalTime += 0.00001;
               this.§_-QF§ += 0.00001;
            }
         }
         this.§_-QF§ += passedTime - additionalTime;
      }
      
      public function §_-W5§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§_-FG§.unshift(arguments);
         if(this.§_-FX§ && this.include && param1 == 0)
         {
            this.§_-87§.§_-ee§(param3,param4,this.§_-A2§);
            if(param2 != §_-5K§.§_-d2§)
            {
               this.§_-FG§.unshift([1,param2,this.§_-87§.§_-15§,this.§_-87§.§_-AU§]);
            }
         }
      }
      
      private function §_-3S§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§_-aG§ = this.§_-11§(param1);
         var _loc7_:DisplayObject;
         if((_loc7_ = this.mStage.hitTestPoint(_loc5_,true)) == null)
         {
            if(_loc6_)
            {
               this.§_-Iz§(param1);
            }
            return;
         }
         if(_loc6_ == null)
         {
            _loc6_ = new §_-aG§(param1,param3,param4,param2,_loc7_);
            this.§_-au§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§_-RP§(param2);
         _loc6_.§_-vL§(this.§_-QF§);
         if(param2 == §_-5K§.§_-d2§ || param2 == §_-5K§.§_-RF§)
         {
            _loc6_.§_-Lb§(_loc7_);
         }
         if(param2 == §_-5K§.§_-RF§)
         {
            this.§_-cG§(_loc6_);
         }
      }
      
      private function §_-6E§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§_-aG§ = null;
         var _loc4_:§_-aG§ = null;
         if(param1.keyCode == 17)
         {
            _loc2_ = this.§_-FX§;
            this.§_-FX§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.include && _loc2_ != this.§_-FX§)
            {
               this.§_-87§.visible = this.§_-FX§;
               this.§_-87§.§_-2B§(this.mStage.stageWidth / 2,this.mStage.stageHeight / 2);
               _loc3_ = this.§_-11§(0);
               _loc4_ = this.§_-11§(1);
               if(_loc3_)
               {
                  this.§_-87§.§_-ee§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §_-5K§.§_-an§)
               {
                  this.§_-FG§.unshift([1,§_-5K§.§_-an§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§_-FX§ && _loc3_ && (_loc3_.phase != §_-5K§.§_-an§ || _loc3_.phase != §_-5K§.§_-d2§))
               {
                  this.§_-FG§.unshift([1,§_-5K§.§_-RF§,this.§_-87§.§_-15§,this.§_-87§.§_-AU§]);
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§_-A2§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §_-cG§(param1:§_-aG§) : void
      {
         var _loc4_:§_-aG§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§_-aG§ = null;
         var _loc3_:Number = §_-1i§ * §_-1i§;
         for each(_loc4_ in this.§_-RD§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§_-xv§(_loc2_.§_-Y7§ + 1);
            this.§_-RD§.splice(this.§_-RD§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§_-xv§(1);
         }
         this.§_-RD§.push(param1.clone());
      }
      
      private function §_-au§(param1:§_-aG§) : void
      {
         var touch:§_-aG§ = param1;
         this.§_-2-§ = this.§_-2-§.filter(function(param1:§_-aG§, ... rest):Boolean
         {
            return param1.id != touch.id;
         });
         this.§_-2-§.push(touch);
      }
      
      private function §_-11§(param1:int) : §_-aG§
      {
         var _loc2_:§_-aG§ = null;
         for each(_loc2_ in this.§_-2-§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function §_-Iz§(param1:int) : void
      {
         var _loc3_:§_-aG§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-2-§.length)
         {
            _loc3_ = this.§_-2-§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§_-2-§.splice(_loc2_,1);
               return;
            }
            _loc2_++;
         }
      }
      
      public function get include() : Boolean
      {
         return this.§_-87§ != null;
      }
      
      public function set include(param1:Boolean) : void
      {
         if(this.include == param1)
         {
            return;
         }
         if(param1)
         {
            this.§_-87§ = new §_-Uf§();
            this.§_-87§.visible = false;
            this.mStage.addChild(this.§_-87§);
         }
         else
         {
            this.§_-87§.§_-Lh§(true);
            this.§_-87§ = null;
         }
      }
   }
}
