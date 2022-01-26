package starling.events
{
   import §_-b5§.DisplayObject;
   import §_-b5§.Stage;
   import flash.geom.Point;
   
   public class §_-04§
   {
      
      private static const §_-SM§:Number = 0.3;
      
      private static const §_-Dt§:Number = 25;
       
      
      private var mStage:Stage;
      
      private var §continue§:Number;
      
      private var §_-MY§:§_-CK§;
      
      private var §_-iO§:Vector.<§_-rP§>;
      
      private var §_-zZ§:Vector.<Array>;
      
      private var §_-S7§:Vector.<§_-rP§>;
      
      private var §_-uo§:Boolean = false;
      
      private var § use§:Boolean = false;
      
      public function §_-04§(param1:Stage)
      {
         super();
         this.mStage = param1;
         this.§continue§ = 0;
         this.§_-iO§ = new Vector.<§_-rP§>(0);
         this.§_-zZ§ = new Vector.<Array>(0);
         this.§_-S7§ = new Vector.<§_-rP§>(0);
         this.mStage.addEventListener(KeyboardEvent.KEY_DOWN,this.§_-WW§);
         this.mStage.addEventListener(KeyboardEvent.KEY_UP,this.§_-WW§);
      }
      
      public function dispose() : void
      {
         this.mStage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§_-WW§);
         this.mStage.removeEventListener(KeyboardEvent.KEY_UP,this.§_-WW§);
         if(this.§_-MY§)
         {
            this.§_-MY§.dispose();
         }
      }
      
      public function §_-XZ§(param1:Number) : void
      {
         var processedTouchIDs:Vector.<int> = null;
         var touchID:int = 0;
         var touch:§_-rP§ = null;
         var hoverTouch:§_-rP§ = null;
         var hoverTarget:DisplayObject = null;
         var i:int = 0;
         var currentTouch:§_-rP§ = null;
         var target:DisplayObject = null;
         var touchArgs:Array = null;
         var passedTime:Number = param1;
         var additionalTime:Number = 0;
         if(this.§_-S7§.length > 0)
         {
            this.§_-S7§ = this.§_-S7§.filter(function(param1:§_-rP§, ... rest):Boolean
            {
               return §continue§ + passedTime - param1.timestamp <= §_-SM§;
            });
         }
         while(this.§_-zZ§.length > 0)
         {
            processedTouchIDs = new Vector.<int>(0);
            hoverTouch = null;
            hoverTarget = null;
            i = this.§_-iO§.length - 1;
            while(i >= 0)
            {
               currentTouch = this.§_-iO§[i];
               if(currentTouch.phase == §_-cm§.§_-PY§)
               {
                  currentTouch.§_-7d§(§_-cm§.§_-xJ§);
               }
               if(currentTouch.target.stage == null)
               {
                  target = this.mStage.hitTestPoint(new Point(currentTouch.globalX,currentTouch.globalY),true);
                  if(target != null)
                  {
                     currentTouch.§_-TI§(target);
                  }
                  else
                  {
                     this.§_-iO§.splice(i,1);
                  }
               }
               i--;
            }
            while(this.§_-zZ§.length > 0 && processedTouchIDs.indexOf(this.§_-zZ§[this.§_-zZ§.length - 1][0]) == -1)
            {
               touchArgs = this.§_-zZ§.pop();
               touchID = touchArgs[0] as int;
               touch = this.§_-5w§(touchID);
               if(touch && touch.phase == §_-cm§.§_-sc§)
               {
                  hoverTouch = touch;
                  hoverTarget = touch.target;
               }
               this.§_-G2§.apply(this,touchArgs);
               processedTouchIDs.push(touchID);
            }
            if(hoverTarget && hoverTouch.target != hoverTarget)
            {
               hoverTarget.dispatchEvent(new TouchEvent(TouchEvent.final,this.§_-iO§,this.§_-uo§,this.§ use§));
            }
            for each(touchID in processedTouchIDs)
            {
               touch = this.§_-5w§(touchID);
               touch.target.dispatchEvent(new TouchEvent(TouchEvent.final,this.§_-iO§,this.§_-uo§,this.§ use§));
            }
            this.§_-iO§ = this.§_-iO§.filter(function(param1:§_-rP§, ... rest):Boolean
            {
               return param1.phase != §_-cm§.§_-R1§;
            });
            if(this.§_-zZ§.length != 0)
            {
               additionalTime += 0.00001;
               this.§continue§ += 0.00001;
            }
         }
         this.§continue§ += passedTime - additionalTime;
      }
      
      public function §_-Ll§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§_-zZ§.unshift(arguments);
         if(this.§ use§ && this.§_-LA§ && param1 == 0)
         {
            this.§_-MY§.§_-bU§(param3,param4,this.§_-uo§);
            if(param2 != §_-cm§.§_-sc§)
            {
               this.§_-zZ§.unshift([1,param2,this.§_-MY§.§_-Mz§,this.§_-MY§.§_-Rj§]);
            }
         }
      }
      
      private function §_-G2§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§_-rP§ = this.§_-5w§(param1);
         var _loc7_:DisplayObject;
         if((_loc7_ = this.mStage.hitTestPoint(_loc5_,true)) == null)
         {
            if(_loc6_)
            {
               this.§_-43§(param1);
            }
            return;
         }
         if(_loc6_ == null)
         {
            _loc6_ = new §_-rP§(param1,param3,param4,param2,_loc7_);
            this.§_-Zw§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§_-7d§(param2);
         _loc6_.§_-OK§(this.§continue§);
         if(param2 == §_-cm§.§_-sc§ || param2 == §_-cm§.§_-Ye§)
         {
            _loc6_.§_-TI§(_loc7_);
         }
         if(param2 == §_-cm§.§_-Ye§)
         {
            this.§_-Q7§(_loc6_);
         }
      }
      
      private function §_-WW§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§_-rP§ = null;
         var _loc4_:§_-rP§ = null;
         if(param1.keyCode == 17)
         {
            _loc2_ = this.§ use§;
            this.§ use§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§_-LA§ && _loc2_ != this.§ use§)
            {
               this.§_-MY§.visible = this.§ use§;
               this.§_-MY§.§_-Vk§(this.mStage.stageWidth / 2,this.mStage.stageHeight / 2);
               _loc3_ = this.§_-5w§(0);
               _loc4_ = this.§_-5w§(1);
               if(_loc3_)
               {
                  this.§_-MY§.§_-bU§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §_-cm§.§_-R1§)
               {
                  this.§_-zZ§.unshift([1,§_-cm§.§_-R1§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§ use§ && _loc3_ && (_loc3_.phase != §_-cm§.§_-R1§ || _loc3_.phase != §_-cm§.§_-sc§))
               {
                  this.§_-zZ§.unshift([1,§_-cm§.§_-Ye§,this.§_-MY§.§_-Mz§,this.§_-MY§.§_-Rj§]);
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§_-uo§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §_-Q7§(param1:§_-rP§) : void
      {
         var _loc4_:§_-rP§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§_-rP§ = null;
         var _loc3_:Number = §_-Dt§ * §_-Dt§;
         for each(_loc4_ in this.§_-S7§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§_-1K§(_loc2_.§_-1a§ + 1);
            this.§_-S7§.splice(this.§_-S7§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§_-1K§(1);
         }
         this.§_-S7§.push(param1.clone());
      }
      
      private function §_-Zw§(param1:§_-rP§) : void
      {
         var touch:§_-rP§ = param1;
         this.§_-iO§ = this.§_-iO§.filter(function(param1:§_-rP§, ... rest):Boolean
         {
            return param1.id != touch.id;
         });
         this.§_-iO§.push(touch);
      }
      
      private function §_-5w§(param1:int) : §_-rP§
      {
         var _loc2_:§_-rP§ = null;
         for each(_loc2_ in this.§_-iO§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function §_-43§(param1:int) : void
      {
         var _loc3_:§_-rP§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-iO§.length)
         {
            _loc3_ = this.§_-iO§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§_-iO§.splice(_loc2_,1);
               return;
            }
            _loc2_++;
         }
      }
      
      public function get §_-LA§() : Boolean
      {
         return this.§_-MY§ != null;
      }
      
      public function set §_-LA§(param1:Boolean) : void
      {
         if(this.§_-LA§ == param1)
         {
            return;
         }
         if(param1)
         {
            this.§_-MY§ = new §_-CK§();
            this.§_-MY§.visible = false;
            this.mStage.addChild(this.§_-MY§);
         }
         else
         {
            this.§_-MY§.§_-fi§(true);
            this.§_-MY§ = null;
         }
      }
   }
}
