package starling.events
{
   import §_-SE§.DisplayObject;
   import §_-SE§.Stage;
   import flash.geom.Point;
   
   public class §_-6c§
   {
      
      private static const §_-1§:Number = 0.3;
      
      private static const §_-6§:Number = 25;
       
      
      private var mStage:Stage;
      
      private var §_-tB§:Number;
      
      private var §_-cI§:§default§;
      
      private var §_-Sc§:Vector.<§_-m0§>;
      
      private var §_-2T§:Vector.<Array>;
      
      private var §_-H4§:Vector.<§_-m0§>;
      
      private var §_-ba§:Boolean = false;
      
      private var §_-JE§:Boolean = false;
      
      public function §_-6c§(param1:Stage)
      {
         super();
         this.mStage = param1;
         this.§_-tB§ = 0;
         this.§_-Sc§ = new Vector.<§_-m0§>(0);
         this.§_-2T§ = new Vector.<Array>(0);
         this.§_-H4§ = new Vector.<§_-m0§>(0);
         this.mStage.addEventListener(KeyboardEvent.KEY_DOWN,this.§_-Sg§);
         this.mStage.addEventListener(KeyboardEvent.KEY_UP,this.§_-Sg§);
      }
      
      public function dispose() : void
      {
         this.mStage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§_-Sg§);
         this.mStage.removeEventListener(KeyboardEvent.KEY_UP,this.§_-Sg§);
         if(this.§_-cI§)
         {
            this.§_-cI§.dispose();
         }
      }
      
      public function §_-TL§(param1:Number) : void
      {
         var processedTouchIDs:Vector.<int> = null;
         var touchID:int = 0;
         var touch:§_-m0§ = null;
         var hoverTouch:§_-m0§ = null;
         var hoverTarget:DisplayObject = null;
         var i:int = 0;
         var currentTouch:§_-m0§ = null;
         var target:DisplayObject = null;
         var touchArgs:Array = null;
         var passedTime:Number = param1;
         var additionalTime:Number = 0;
         if(this.§_-H4§.length > 0)
         {
            this.§_-H4§ = this.§_-H4§.filter(function(param1:§_-m0§, ... rest):Boolean
            {
               return §_-tB§ + passedTime - param1.timestamp <= §_-1§;
            });
         }
         while(this.§_-2T§.length > 0)
         {
            processedTouchIDs = new Vector.<int>(0);
            hoverTouch = null;
            hoverTarget = null;
            i = this.§_-Sc§.length - 1;
            while(i >= 0)
            {
               currentTouch = this.§_-Sc§[i];
               if(currentTouch.phase == §_-7v§.§_-P9§)
               {
                  currentTouch.§_-z0§(§_-7v§.§_-oS§);
               }
               if(currentTouch.target.stage == null)
               {
                  target = this.mStage.hitTestPoint(new Point(currentTouch.globalX,currentTouch.globalY),true);
                  if(target != null)
                  {
                     currentTouch.§_-fA§(target);
                  }
                  else
                  {
                     this.§_-Sc§.splice(i,1);
                  }
               }
               i--;
            }
            while(this.§_-2T§.length > 0 && processedTouchIDs.indexOf(this.§_-2T§[this.§_-2T§.length - 1][0]) == -1)
            {
               touchArgs = this.§_-2T§.pop();
               touchID = touchArgs[0] as int;
               touch = this.§_-CP§(touchID);
               if(touch && touch.phase == §_-7v§.§_-Vh§)
               {
                  hoverTouch = touch;
                  hoverTarget = touch.target;
               }
               this.§_-gG§.apply(this,touchArgs);
               processedTouchIDs.push(touchID);
            }
            if(hoverTarget && hoverTouch.target != hoverTarget)
            {
               hoverTarget.dispatchEvent(new TouchEvent(TouchEvent.§_-zM§,this.§_-Sc§,this.§_-ba§,this.§_-JE§));
            }
            for each(touchID in processedTouchIDs)
            {
               touch = this.§_-CP§(touchID);
               touch.target.dispatchEvent(new TouchEvent(TouchEvent.§_-zM§,this.§_-Sc§,this.§_-ba§,this.§_-JE§));
            }
            this.§_-Sc§ = this.§_-Sc§.filter(function(param1:§_-m0§, ... rest):Boolean
            {
               return param1.phase != §_-7v§.§_-dk§;
            });
            if(this.§_-2T§.length != 0)
            {
               additionalTime += 0.00001;
               this.§_-tB§ += 0.00001;
            }
         }
         this.§_-tB§ += passedTime - additionalTime;
      }
      
      public function §_-on§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§_-2T§.unshift(arguments);
         if(this.§_-JE§ && this.§_-bK§ && param1 == 0)
         {
            this.§_-cI§.§_-Za§(param3,param4,this.§_-ba§);
            if(param2 != §_-7v§.§_-Vh§)
            {
               this.§_-2T§.unshift([1,param2,this.§_-cI§.§_-EY§,this.§_-cI§.§_-GB§]);
            }
         }
      }
      
      private function §_-gG§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§_-m0§ = this.§_-CP§(param1);
         var _loc7_:DisplayObject;
         if((_loc7_ = this.mStage.hitTestPoint(_loc5_,true)) == null)
         {
            if(_loc6_)
            {
               this.§_-CA§(param1);
            }
            return;
         }
         if(_loc6_ == null)
         {
            _loc6_ = new §_-m0§(param1,param3,param4,param2,_loc7_);
            this.§_-Ih§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§_-z0§(param2);
         _loc6_.§_-S6§(this.§_-tB§);
         if(param2 == §_-7v§.§_-Vh§ || param2 == §_-7v§.§_-Xe§)
         {
            _loc6_.§_-fA§(_loc7_);
         }
         if(param2 == §_-7v§.§_-Xe§)
         {
            this.§_-Zk§(_loc6_);
         }
      }
      
      private function §_-Sg§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§_-m0§ = null;
         var _loc4_:§_-m0§ = null;
         if(param1.keyCode == 17)
         {
            _loc2_ = this.§_-JE§;
            this.§_-JE§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§_-bK§ && _loc2_ != this.§_-JE§)
            {
               this.§_-cI§.visible = this.§_-JE§;
               this.§_-cI§.§_-PM§(this.mStage.stageWidth / 2,this.mStage.stageHeight / 2);
               _loc3_ = this.§_-CP§(0);
               _loc4_ = this.§_-CP§(1);
               if(_loc3_)
               {
                  this.§_-cI§.§_-Za§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §_-7v§.§_-dk§)
               {
                  this.§_-2T§.unshift([1,§_-7v§.§_-dk§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§_-JE§ && _loc3_ && (_loc3_.phase != §_-7v§.§_-dk§ || _loc3_.phase != §_-7v§.§_-Vh§))
               {
                  this.§_-2T§.unshift([1,§_-7v§.§_-Xe§,this.§_-cI§.§_-EY§,this.§_-cI§.§_-GB§]);
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§_-ba§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §_-Zk§(param1:§_-m0§) : void
      {
         var _loc4_:§_-m0§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§_-m0§ = null;
         var _loc3_:Number = §_-6§ * §_-6§;
         for each(_loc4_ in this.§_-H4§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§_-1u§(_loc2_.§_-8i§ + 1);
            this.§_-H4§.splice(this.§_-H4§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§_-1u§(1);
         }
         this.§_-H4§.push(param1.clone());
      }
      
      private function §_-Ih§(param1:§_-m0§) : void
      {
         var touch:§_-m0§ = param1;
         this.§_-Sc§ = this.§_-Sc§.filter(function(param1:§_-m0§, ... rest):Boolean
         {
            return param1.id != touch.id;
         });
         this.§_-Sc§.push(touch);
      }
      
      private function §_-CP§(param1:int) : §_-m0§
      {
         var _loc2_:§_-m0§ = null;
         for each(_loc2_ in this.§_-Sc§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function §_-CA§(param1:int) : void
      {
         var _loc3_:§_-m0§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-Sc§.length)
         {
            _loc3_ = this.§_-Sc§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§_-Sc§.splice(_loc2_,1);
               return;
            }
            _loc2_++;
         }
      }
      
      public function get §_-bK§() : Boolean
      {
         return this.§_-cI§ != null;
      }
      
      public function set §_-bK§(param1:Boolean) : void
      {
         if(this.§_-bK§ == param1)
         {
            return;
         }
         if(param1)
         {
            this.§_-cI§ = new §default§();
            this.§_-cI§.visible = false;
            this.mStage.addChild(this.§_-cI§);
         }
         else
         {
            this.§_-cI§.§_-Q-§(true);
            this.§_-cI§ = null;
         }
      }
   }
}
