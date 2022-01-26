package starling.events
{
   import §_-se§.DisplayObject;
   import §_-se§.Stage;
   import flash.geom.Point;
   
   public class §_-cz§
   {
      
      private static const §_-JJ§:Number = 0.3;
      
      private static const §_-qP§:Number = 25;
       
      
      private var mStage:Stage;
      
      private var §_-QP§:Number;
      
      private var §_-Hc§:§_-W0§;
      
      private var §_-3D§:Vector.<§_-4l§>;
      
      private var §_-ao§:Vector.<Array>;
      
      private var §_-6z§:Vector.<§_-4l§>;
      
      private var §_-si§:Boolean = false;
      
      private var §_-Ql§:Boolean = false;
      
      public function §_-cz§(param1:Stage)
      {
         super();
         this.mStage = param1;
         this.§_-QP§ = 0;
         this.§_-3D§ = new Vector.<§_-4l§>(0);
         this.§_-ao§ = new Vector.<Array>(0);
         this.§_-6z§ = new Vector.<§_-4l§>(0);
         this.mStage.addEventListener(KeyboardEvent.KEY_DOWN,this.§_-pE§);
         this.mStage.addEventListener(KeyboardEvent.KEY_UP,this.§_-pE§);
      }
      
      public function dispose() : void
      {
         this.mStage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§_-pE§);
         this.mStage.removeEventListener(KeyboardEvent.KEY_UP,this.§_-pE§);
         if(this.§_-Hc§)
         {
            this.§_-Hc§.dispose();
         }
      }
      
      public function §_-DV§(param1:Number) : void
      {
         var processedTouchIDs:Vector.<int> = null;
         var touchID:int = 0;
         var touch:§_-4l§ = null;
         var hoverTouch:§_-4l§ = null;
         var hoverTarget:DisplayObject = null;
         var i:int = 0;
         var currentTouch:§_-4l§ = null;
         var target:DisplayObject = null;
         var touchArgs:Array = null;
         var passedTime:Number = param1;
         this.§_-QP§ += passedTime;
         if(this.§_-6z§.length > 0)
         {
            this.§_-6z§ = this.§_-6z§.filter(function(param1:§_-4l§, ... rest):Boolean
            {
               return §_-QP§ - param1.timestamp <= §_-JJ§;
            });
         }
         while(this.§_-ao§.length > 0)
         {
            processedTouchIDs = new Vector.<int>(0);
            hoverTouch = null;
            hoverTarget = null;
            i = this.§_-3D§.length - 1;
            while(i >= 0)
            {
               currentTouch = this.§_-3D§[i];
               if(currentTouch.phase == §_-KE§.§_-SA§)
               {
                  currentTouch.§_-bC§(§_-KE§.§_-hm§);
               }
               if(currentTouch.target.stage == null)
               {
                  target = this.mStage.hitTestPoint(new Point(currentTouch.globalX,currentTouch.globalY),true);
                  if(target != null)
                  {
                     currentTouch.§_-Nw§(target);
                  }
                  else
                  {
                     this.§_-3D§.splice(i,1);
                  }
               }
               i--;
            }
            while(this.§_-ao§.length > 0 && processedTouchIDs.indexOf(this.§_-ao§[this.§_-ao§.length - 1][0]) == -1)
            {
               touchArgs = this.§_-ao§.pop();
               touchID = touchArgs[0] as int;
               touch = this.§_-L§(touchID);
               if(touch && touch.phase == §_-KE§.§_-xa§)
               {
                  hoverTouch = touch;
                  hoverTarget = touch.target;
               }
               this.§_-UG§.apply(this,touchArgs);
               processedTouchIDs.push(touchID);
            }
            if(hoverTarget && hoverTouch.target != hoverTarget)
            {
               hoverTarget.dispatchEvent(new TouchEvent(TouchEvent.§_-Ej§,this.§_-3D§,this.§_-si§,this.§_-Ql§));
            }
            for each(touchID in processedTouchIDs)
            {
               touch = this.§_-L§(touchID);
               touch.target.dispatchEvent(new TouchEvent(TouchEvent.§_-Ej§,this.§_-3D§,this.§_-si§,this.§_-Ql§));
            }
            this.§_-3D§ = this.§_-3D§.filter(function(param1:§_-4l§, ... rest):Boolean
            {
               return param1.phase != §_-KE§.§_-w0§;
            });
            if(this.§_-ao§.length != 0)
            {
               this.§_-QP§ += 0.00001;
            }
         }
      }
      
      public function §_-R3§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§_-ao§.unshift(arguments);
         if(this.§_-Ql§ && this.§_-7j§ && param1 == 0)
         {
            this.§_-Hc§.§_-po§(param3,param4,this.§_-si§);
            if(param2 != §_-KE§.§_-xa§)
            {
               this.§_-ao§.unshift([1,param2,this.§_-Hc§.§_-0n§,this.§_-Hc§.§_-T2§]);
            }
         }
      }
      
      private function §_-UG§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§_-4l§ = this.§_-L§(param1);
         var _loc7_:DisplayObject;
         if((_loc7_ = this.mStage.hitTestPoint(_loc5_,true)) == null)
         {
            if(_loc6_)
            {
               this.§_-eS§(param1);
            }
            return;
         }
         if(_loc6_ == null)
         {
            _loc6_ = new §_-4l§(param1,param3,param4,param2,_loc7_);
            this.§_-85§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§_-bC§(param2);
         _loc6_.§_-8T§(this.§_-QP§);
         if(param2 == §_-KE§.§_-xa§ || param2 == §_-KE§.§_-mI§)
         {
            _loc6_.§_-Nw§(_loc7_);
         }
         if(param2 == §_-KE§.§_-mI§)
         {
            this.§_-PI§(_loc6_);
         }
      }
      
      private function §_-pE§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§_-4l§ = null;
         var _loc4_:§_-4l§ = null;
         if(param1.keyCode == 17)
         {
            _loc2_ = this.§_-Ql§;
            this.§_-Ql§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§_-7j§ && _loc2_ != this.§_-Ql§)
            {
               this.§_-Hc§.visible = this.§_-Ql§;
               this.§_-Hc§.§_-RU§(this.mStage.stageWidth / 2,this.mStage.stageHeight / 2);
               _loc3_ = this.§_-L§(0);
               _loc4_ = this.§_-L§(1);
               if(_loc3_)
               {
                  this.§_-Hc§.§_-po§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §_-KE§.§_-w0§)
               {
                  this.§_-ao§.unshift([1,§_-KE§.§_-w0§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§_-Ql§ && _loc3_ && (_loc3_.phase != §_-KE§.§_-w0§ || _loc3_.phase != §_-KE§.§_-xa§))
               {
                  this.§_-ao§.unshift([1,§_-KE§.§_-mI§,this.§_-Hc§.§_-0n§,this.§_-Hc§.§_-T2§]);
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§_-si§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §_-PI§(param1:§_-4l§) : void
      {
         var _loc4_:§_-4l§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§_-4l§ = null;
         var _loc3_:Number = §_-qP§ * §_-qP§;
         for each(_loc4_ in this.§_-6z§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§_-da§(_loc2_.§_-AH§ + 1);
            this.§_-6z§.splice(this.§_-6z§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§_-da§(1);
         }
         this.§_-6z§.push(param1.clone());
      }
      
      private function §_-85§(param1:§_-4l§) : void
      {
         var touch:§_-4l§ = param1;
         this.§_-3D§ = this.§_-3D§.filter(function(param1:§_-4l§, ... rest):Boolean
         {
            return param1.id != touch.id;
         });
         this.§_-3D§.push(touch);
      }
      
      private function §_-L§(param1:int) : §_-4l§
      {
         var _loc2_:§_-4l§ = null;
         for each(_loc2_ in this.§_-3D§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function §_-eS§(param1:int) : void
      {
         var _loc3_:§_-4l§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-3D§.length)
         {
            _loc3_ = this.§_-3D§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§_-3D§.splice(_loc2_,1);
               return;
            }
            _loc2_++;
         }
      }
      
      public function get §_-7j§() : Boolean
      {
         return this.§_-Hc§ != null;
      }
      
      public function set §_-7j§(param1:Boolean) : void
      {
         if(this.§_-7j§ == param1)
         {
            return;
         }
         if(param1)
         {
            this.§_-Hc§ = new §_-W0§();
            this.§_-Hc§.visible = false;
            this.mStage.addChild(this.§_-Hc§);
         }
         else
         {
            this.§_-Hc§.§_-R1§(true);
            this.§_-Hc§ = null;
         }
      }
   }
}
