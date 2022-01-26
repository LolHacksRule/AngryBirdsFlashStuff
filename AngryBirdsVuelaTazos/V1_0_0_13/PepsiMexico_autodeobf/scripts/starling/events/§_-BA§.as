package starling.events
{
   import §_-UX§.DisplayObject;
   import §_-UX§.Stage;
   import flash.geom.Point;
   
   public class §_-BA§
   {
      
      private static const §_-7L§:Number = 0.3;
      
      private static const §_-4M§:Number = 25;
       
      
      private var mStage:Stage;
      
      private var §_-sv§:Number;
      
      private var §_-nr§:§_-0a§;
      
      private var §_-bM§:Vector.<§_-9U§>;
      
      private var §_-J1§:Vector.<Array>;
      
      private var §_-Ws§:Vector.<§_-9U§>;
      
      private var §_-kt§:Boolean = false;
      
      private var §_-U6§:Boolean = false;
      
      public function §_-BA§(param1:Stage)
      {
         super();
         this.mStage = param1;
         this.§_-sv§ = 0;
         this.§_-bM§ = new Vector.<§_-9U§>(0);
         this.§_-J1§ = new Vector.<Array>(0);
         this.§_-Ws§ = new Vector.<§_-9U§>(0);
         this.mStage.addEventListener(KeyboardEvent.KEY_DOWN,this.§_-YZ§);
         this.mStage.addEventListener(KeyboardEvent.KEY_UP,this.§_-YZ§);
      }
      
      public function dispose() : void
      {
         this.mStage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§_-YZ§);
         this.mStage.removeEventListener(KeyboardEvent.KEY_UP,this.§_-YZ§);
         if(this.§_-nr§)
         {
            this.§_-nr§.dispose();
         }
      }
      
      public function §_-rp§(param1:Number) : void
      {
         var processedTouchIDs:Vector.<int> = null;
         var touchID:int = 0;
         var touch:§_-9U§ = null;
         var hoverTouch:§_-9U§ = null;
         var hoverTarget:DisplayObject = null;
         var i:int = 0;
         var currentTouch:§_-9U§ = null;
         var target:DisplayObject = null;
         var touchArgs:Array = null;
         var passedTime:Number = param1;
         var additionalTime:Number = 0;
         if(this.§_-Ws§.length > 0)
         {
            this.§_-Ws§ = this.§_-Ws§.filter(function(param1:§_-9U§, ... rest):Boolean
            {
               return §_-sv§ + passedTime - param1.timestamp <= §_-7L§;
            });
         }
         while(this.§_-J1§.length > 0)
         {
            processedTouchIDs = new Vector.<int>(0);
            hoverTouch = null;
            hoverTarget = null;
            i = this.§_-bM§.length - 1;
            while(i >= 0)
            {
               currentTouch = this.§_-bM§[i];
               if(currentTouch.phase == §_-IZ§.§_-Wx§)
               {
                  currentTouch.§_-BE§(§_-IZ§.§_-be§);
               }
               if(currentTouch.target.stage == null)
               {
                  target = this.mStage.hitTestPoint(new Point(currentTouch.globalX,currentTouch.globalY),true);
                  if(target != null)
                  {
                     currentTouch.§_-9p§(target);
                  }
                  else
                  {
                     this.§_-bM§.splice(i,1);
                  }
               }
               i--;
            }
            while(this.§_-J1§.length > 0 && processedTouchIDs.indexOf(this.§_-J1§[this.§_-J1§.length - 1][0]) == -1)
            {
               touchArgs = this.§_-J1§.pop();
               touchID = touchArgs[0] as int;
               touch = this.§_-Ae§(touchID);
               if(touch && touch.phase == §_-IZ§.§_-R-§)
               {
                  hoverTouch = touch;
                  hoverTarget = touch.target;
               }
               this.§_-2G§.apply(this,touchArgs);
               processedTouchIDs.push(touchID);
            }
            if(hoverTarget && hoverTouch.target != hoverTarget)
            {
               hoverTarget.dispatchEvent(new TouchEvent(TouchEvent.§_-1N§,this.§_-bM§,this.§_-kt§,this.§_-U6§));
            }
            for each(touchID in processedTouchIDs)
            {
               touch = this.§_-Ae§(touchID);
               touch.target.dispatchEvent(new TouchEvent(TouchEvent.§_-1N§,this.§_-bM§,this.§_-kt§,this.§_-U6§));
            }
            this.§_-bM§ = this.§_-bM§.filter(function(param1:§_-9U§, ... rest):Boolean
            {
               return param1.phase != §_-IZ§.§_-b6§;
            });
            if(this.§_-J1§.length != 0)
            {
               additionalTime += 0.00001;
               this.§_-sv§ += 0.00001;
            }
         }
         this.§_-sv§ += passedTime - additionalTime;
      }
      
      public function §_-et§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§_-J1§.unshift(arguments);
         if(this.§_-U6§ && this.§_-QU§ && param1 == 0)
         {
            this.§_-nr§.§_-UL§(param3,param4,this.§_-kt§);
            if(param2 != §_-IZ§.§_-R-§)
            {
               this.§_-J1§.unshift([1,param2,this.§_-nr§.§_-fs§,this.§_-nr§.§_-oG§]);
            }
         }
      }
      
      private function §_-2G§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§_-9U§ = this.§_-Ae§(param1);
         var _loc7_:DisplayObject;
         if((_loc7_ = this.mStage.hitTestPoint(_loc5_,true)) == null)
         {
            if(_loc6_)
            {
               this.§_-cB§(param1);
            }
            return;
         }
         if(_loc6_ == null)
         {
            _loc6_ = new §_-9U§(param1,param3,param4,param2,_loc7_);
            this.§_-4Y§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§_-BE§(param2);
         _loc6_.§_-Bq§(this.§_-sv§);
         if(param2 == §_-IZ§.§_-R-§ || param2 == §_-IZ§.§_-cZ§)
         {
            _loc6_.§_-9p§(_loc7_);
         }
         if(param2 == §_-IZ§.§_-cZ§)
         {
            this.§_-9P§(_loc6_);
         }
      }
      
      private function §_-YZ§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§_-9U§ = null;
         var _loc4_:§_-9U§ = null;
         if(param1.keyCode == 17)
         {
            _loc2_ = this.§_-U6§;
            this.§_-U6§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§_-QU§ && _loc2_ != this.§_-U6§)
            {
               this.§_-nr§.visible = this.§_-U6§;
               this.§_-nr§.§return§(this.mStage.stageWidth / 2,this.mStage.stageHeight / 2);
               _loc3_ = this.§_-Ae§(0);
               _loc4_ = this.§_-Ae§(1);
               if(_loc3_)
               {
                  this.§_-nr§.§_-UL§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §_-IZ§.§_-b6§)
               {
                  this.§_-J1§.unshift([1,§_-IZ§.§_-b6§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§_-U6§ && _loc3_ && (_loc3_.phase != §_-IZ§.§_-b6§ || _loc3_.phase != §_-IZ§.§_-R-§))
               {
                  this.§_-J1§.unshift([1,§_-IZ§.§_-cZ§,this.§_-nr§.§_-fs§,this.§_-nr§.§_-oG§]);
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§_-kt§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §_-9P§(param1:§_-9U§) : void
      {
         var _loc4_:§_-9U§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§_-9U§ = null;
         var _loc3_:Number = §_-4M§ * §_-4M§;
         for each(_loc4_ in this.§_-Ws§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§_-YK§(_loc2_.§_-Nr§ + 1);
            this.§_-Ws§.splice(this.§_-Ws§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§_-YK§(1);
         }
         this.§_-Ws§.push(param1.clone());
      }
      
      private function §_-4Y§(param1:§_-9U§) : void
      {
         var touch:§_-9U§ = param1;
         this.§_-bM§ = this.§_-bM§.filter(function(param1:§_-9U§, ... rest):Boolean
         {
            return param1.id != touch.id;
         });
         this.§_-bM§.push(touch);
      }
      
      private function §_-Ae§(param1:int) : §_-9U§
      {
         var _loc2_:§_-9U§ = null;
         for each(_loc2_ in this.§_-bM§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function §_-cB§(param1:int) : void
      {
         var _loc3_:§_-9U§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-bM§.length)
         {
            _loc3_ = this.§_-bM§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§_-bM§.splice(_loc2_,1);
               return;
            }
            _loc2_++;
         }
      }
      
      public function get §_-QU§() : Boolean
      {
         return this.§_-nr§ != null;
      }
      
      public function set §_-QU§(param1:Boolean) : void
      {
         if(this.§_-QU§ == param1)
         {
            return;
         }
         if(param1)
         {
            this.§_-nr§ = new §_-0a§();
            this.§_-nr§.visible = false;
            this.mStage.addChild(this.§_-nr§);
         }
         else
         {
            this.§_-nr§.§_-N7§(true);
            this.§_-nr§ = null;
         }
      }
   }
}
