package starling.events
{
   import §_-vO§.DisplayObject;
   import §_-vO§.Stage;
   import flash.geom.Point;
   
   public class §_-de§
   {
      
      private static const §_-3Y§:Number = 0.3;
      
      private static const §_-Ze§:Number = 25;
       
      
      private var mStage:Stage;
      
      private var §_-e5§:Number;
      
      private var §_-Y6§:§_-BO§;
      
      private var §_-Ua§:Vector.<§_-8W§>;
      
      private var §_-BT§:Vector.<Array>;
      
      private var §_-uh§:Vector.<§_-8W§>;
      
      private var §_-c2§:Boolean = false;
      
      private var §_-6j§:Boolean = false;
      
      public function §_-de§(param1:Stage)
      {
         super();
         this.mStage = param1;
         this.§_-e5§ = 0;
         this.§_-Ua§ = new Vector.<§_-8W§>(0);
         this.§_-BT§ = new Vector.<Array>(0);
         this.§_-uh§ = new Vector.<§_-8W§>(0);
         this.mStage.addEventListener(KeyboardEvent.KEY_DOWN,this.§_-Of§);
         this.mStage.addEventListener(KeyboardEvent.KEY_UP,this.§_-Of§);
      }
      
      public function dispose() : void
      {
         this.mStage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§_-Of§);
         this.mStage.removeEventListener(KeyboardEvent.KEY_UP,this.§_-Of§);
         if(this.§_-Y6§)
         {
            this.§_-Y6§.dispose();
         }
      }
      
      public function §_-An§(param1:Number) : void
      {
         var processedTouchIDs:Vector.<int> = null;
         var touchID:int = 0;
         var touch:§_-8W§ = null;
         var hoverTouch:§_-8W§ = null;
         var hoverTarget:DisplayObject = null;
         var i:int = 0;
         var currentTouch:§_-8W§ = null;
         var target:DisplayObject = null;
         var touchArgs:Array = null;
         var passedTime:Number = param1;
         this.§_-e5§ += passedTime;
         if(this.§_-uh§.length > 0)
         {
            this.§_-uh§ = this.§_-uh§.filter(function(param1:§_-8W§, ... rest):Boolean
            {
               return §_-e5§ - param1.timestamp <= §_-3Y§;
            });
         }
         while(this.§_-BT§.length > 0)
         {
            processedTouchIDs = new Vector.<int>(0);
            hoverTouch = null;
            hoverTarget = null;
            i = this.§_-Ua§.length - 1;
            while(i >= 0)
            {
               currentTouch = this.§_-Ua§[i];
               if(currentTouch.phase == §_-6l§.§_-x6§)
               {
                  currentTouch.§_-oa§(§_-6l§.§_-0i§);
               }
               if(currentTouch.target.stage == null)
               {
                  target = this.mStage.hitTestPoint(new Point(currentTouch.globalX,currentTouch.globalY),true);
                  if(target != null)
                  {
                     currentTouch.§_-Kq§(target);
                  }
                  else
                  {
                     this.§_-Ua§.splice(i,1);
                  }
               }
               i--;
            }
            while(this.§_-BT§.length > 0 && processedTouchIDs.indexOf(this.§_-BT§[this.§_-BT§.length - 1][0]) == -1)
            {
               touchArgs = this.§_-BT§.pop();
               touchID = touchArgs[0] as int;
               touch = this.§_-Bz§(touchID);
               if(touch && touch.phase == §_-6l§.§_-YR§)
               {
                  hoverTouch = touch;
                  hoverTarget = touch.target;
               }
               this.§_-No§.apply(this,touchArgs);
               processedTouchIDs.push(touchID);
            }
            if(hoverTarget && hoverTouch.target != hoverTarget)
            {
               hoverTarget.dispatchEvent(new TouchEvent(TouchEvent.§_-Wz§,this.§_-Ua§,this.§_-c2§,this.§_-6j§));
            }
            for each(touchID in processedTouchIDs)
            {
               touch = this.§_-Bz§(touchID);
               touch.target.dispatchEvent(new TouchEvent(TouchEvent.§_-Wz§,this.§_-Ua§,this.§_-c2§,this.§_-6j§));
            }
            this.§_-Ua§ = this.§_-Ua§.filter(function(param1:§_-8W§, ... rest):Boolean
            {
               return param1.phase != §_-6l§.§_-oi§;
            });
            if(this.§_-BT§.length != 0)
            {
               this.§_-e5§ += 0.00001;
            }
         }
      }
      
      public function §_-P-§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§_-BT§.unshift(arguments);
         if(this.§_-6j§ && this.§_-mY§ && param1 == 0)
         {
            this.§_-Y6§.§_-gh§(param3,param4,this.§_-c2§);
            if(param2 != §_-6l§.§_-YR§)
            {
               this.§_-BT§.unshift([1,param2,this.§_-Y6§.§_-hl§,this.§_-Y6§.§_-I9§]);
            }
         }
      }
      
      private function §_-No§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§_-8W§ = this.§_-Bz§(param1);
         var _loc7_:DisplayObject;
         if((_loc7_ = this.mStage.hitTestPoint(_loc5_,true)) == null)
         {
            if(_loc6_)
            {
               this.§_-YV§(param1);
            }
            return;
         }
         if(_loc6_ == null)
         {
            _loc6_ = new §_-8W§(param1,param3,param4,param2,_loc7_);
            this.§_-79§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§_-oa§(param2);
         _loc6_.§_-FQ§(this.§_-e5§);
         if(param2 == §_-6l§.§_-YR§ || param2 == §_-6l§.§_-N§)
         {
            _loc6_.§_-Kq§(_loc7_);
         }
         if(param2 == §_-6l§.§_-N§)
         {
            this.§_-Mj§(_loc6_);
         }
      }
      
      private function §_-Of§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§_-8W§ = null;
         var _loc4_:§_-8W§ = null;
         if(param1.keyCode == 17)
         {
            _loc2_ = this.§_-6j§;
            this.§_-6j§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§_-mY§ && _loc2_ != this.§_-6j§)
            {
               this.§_-Y6§.visible = this.§_-6j§;
               this.§_-Y6§.§_-0X§(this.mStage.stageWidth / 2,this.mStage.stageHeight / 2);
               _loc3_ = this.§_-Bz§(0);
               _loc4_ = this.§_-Bz§(1);
               if(_loc3_)
               {
                  this.§_-Y6§.§_-gh§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §_-6l§.§_-oi§)
               {
                  this.§_-BT§.unshift([1,§_-6l§.§_-oi§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§_-6j§ && _loc3_ && (_loc3_.phase != §_-6l§.§_-oi§ || _loc3_.phase != §_-6l§.§_-YR§))
               {
                  this.§_-BT§.unshift([1,§_-6l§.§_-N§,this.§_-Y6§.§_-hl§,this.§_-Y6§.§_-I9§]);
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§_-c2§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §_-Mj§(param1:§_-8W§) : void
      {
         var _loc4_:§_-8W§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§_-8W§ = null;
         var _loc3_:Number = §_-Ze§ * §_-Ze§;
         for each(_loc4_ in this.§_-uh§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§_-8Y§(_loc2_.§_-jR§ + 1);
            this.§_-uh§.splice(this.§_-uh§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§_-8Y§(1);
         }
         this.§_-uh§.push(param1.clone());
      }
      
      private function §_-79§(param1:§_-8W§) : void
      {
         var touch:§_-8W§ = param1;
         this.§_-Ua§ = this.§_-Ua§.filter(function(param1:§_-8W§, ... rest):Boolean
         {
            return param1.id != touch.id;
         });
         this.§_-Ua§.push(touch);
      }
      
      private function §_-Bz§(param1:int) : §_-8W§
      {
         var _loc2_:§_-8W§ = null;
         for each(_loc2_ in this.§_-Ua§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function §_-YV§(param1:int) : void
      {
         var _loc3_:§_-8W§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-Ua§.length)
         {
            _loc3_ = this.§_-Ua§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§_-Ua§.splice(_loc2_,1);
               return;
            }
            _loc2_++;
         }
      }
      
      public function get §_-mY§() : Boolean
      {
         return this.§_-Y6§ != null;
      }
      
      public function set §_-mY§(param1:Boolean) : void
      {
         if(this.§_-mY§ == param1)
         {
            return;
         }
         if(param1)
         {
            this.§_-Y6§ = new §_-BO§();
            this.§_-Y6§.visible = false;
            this.mStage.addChild(this.§_-Y6§);
         }
         else
         {
            this.§_-Y6§.§_-aQ§(true);
            this.§_-Y6§ = null;
         }
      }
   }
}
