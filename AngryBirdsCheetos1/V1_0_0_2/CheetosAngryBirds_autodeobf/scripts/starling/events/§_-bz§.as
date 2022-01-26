package starling.events
{
   import §_-GY§.DisplayObject;
   import §_-GY§.Stage;
   import flash.geom.Point;
   
   public class §_-bz§
   {
      
      private static const §_-9N§:Number = 0.3;
      
      private static const §_-QU§:Number = 25;
       
      
      private var mStage:Stage;
      
      private var §_-Ui§:Number;
      
      private var §_-0u§:§_-Yt§;
      
      private var §_-a1§:Vector.<§_-oj§>;
      
      private var §_-UH§:Vector.<Array>;
      
      private var §_-S3§:Vector.<§_-oj§>;
      
      private var §_-Qi§:Boolean = false;
      
      private var §with§:Boolean = false;
      
      public function §_-bz§(param1:Stage)
      {
         super();
         this.mStage = param1;
         this.§_-Ui§ = 0;
         this.§_-a1§ = new Vector.<§_-oj§>(0);
         this.§_-UH§ = new Vector.<Array>(0);
         this.§_-S3§ = new Vector.<§_-oj§>(0);
         this.mStage.addEventListener(KeyboardEvent.KEY_DOWN,this.§_-s§);
         this.mStage.addEventListener(KeyboardEvent.KEY_UP,this.§_-s§);
      }
      
      public function dispose() : void
      {
         this.mStage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§_-s§);
         this.mStage.removeEventListener(KeyboardEvent.KEY_UP,this.§_-s§);
         if(this.§_-0u§)
         {
            this.§_-0u§.dispose();
         }
      }
      
      public function §_-cj§(param1:Number) : void
      {
         var processedTouchIDs:Vector.<int> = null;
         var touchID:int = 0;
         var touch:§_-oj§ = null;
         var hoverTouch:§_-oj§ = null;
         var hoverTarget:DisplayObject = null;
         var i:int = 0;
         var currentTouch:§_-oj§ = null;
         var target:DisplayObject = null;
         var touchArgs:Array = null;
         var passedTime:Number = param1;
         var additionalTime:Number = 0;
         if(this.§_-S3§.length > 0)
         {
            this.§_-S3§ = this.§_-S3§.filter(function(param1:§_-oj§, ... rest):Boolean
            {
               return §_-Ui§ + passedTime - param1.timestamp <= §_-9N§;
            });
         }
         while(this.§_-UH§.length > 0)
         {
            processedTouchIDs = new Vector.<int>(0);
            hoverTouch = null;
            hoverTarget = null;
            i = this.§_-a1§.length - 1;
            while(i >= 0)
            {
               currentTouch = this.§_-a1§[i];
               if(currentTouch.phase == §_-BH§.§_-WZ§)
               {
                  currentTouch.§_-8Z§(§_-BH§.§_-Wo§);
               }
               if(currentTouch.target.stage == null)
               {
                  target = this.mStage.hitTestPoint(new Point(currentTouch.globalX,currentTouch.globalY),true);
                  if(target != null)
                  {
                     currentTouch.§_-QX§(target);
                  }
                  else
                  {
                     this.§_-a1§.splice(i,1);
                  }
               }
               i--;
            }
            while(this.§_-UH§.length > 0 && processedTouchIDs.indexOf(this.§_-UH§[this.§_-UH§.length - 1][0]) == -1)
            {
               touchArgs = this.§_-UH§.pop();
               touchID = touchArgs[0] as int;
               touch = this.§_-sO§(touchID);
               if(touch && touch.phase == §_-BH§.§_-Dt§)
               {
                  hoverTouch = touch;
                  hoverTarget = touch.target;
               }
               this.§_-YZ§.apply(this,touchArgs);
               processedTouchIDs.push(touchID);
            }
            if(hoverTarget && hoverTouch.target != hoverTarget)
            {
               hoverTarget.dispatchEvent(new TouchEvent(TouchEvent.§_-yZ§,this.§_-a1§,this.§_-Qi§,this.§with§));
            }
            for each(touchID in processedTouchIDs)
            {
               touch = this.§_-sO§(touchID);
               touch.target.dispatchEvent(new TouchEvent(TouchEvent.§_-yZ§,this.§_-a1§,this.§_-Qi§,this.§with§));
            }
            this.§_-a1§ = this.§_-a1§.filter(function(param1:§_-oj§, ... rest):Boolean
            {
               return param1.phase != §_-BH§.§_-mx§;
            });
            if(this.§_-UH§.length != 0)
            {
               additionalTime += 0.00001;
               this.§_-Ui§ += 0.00001;
            }
         }
         this.§_-Ui§ += passedTime - additionalTime;
      }
      
      public function §_-ll§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§_-UH§.unshift(arguments);
         if(this.§with§ && this.§_-gS§ && param1 == 0)
         {
            this.§_-0u§.§_-Ln§(param3,param4,this.§_-Qi§);
            if(param2 != §_-BH§.§_-Dt§)
            {
               this.§_-UH§.unshift([1,param2,this.§_-0u§.§_-XA§,this.§_-0u§.§_-n2§]);
            }
         }
      }
      
      private function §_-YZ§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§_-oj§ = this.§_-sO§(param1);
         var _loc7_:DisplayObject;
         if((_loc7_ = this.mStage.hitTestPoint(_loc5_,true)) == null)
         {
            if(_loc6_)
            {
               this.§_-y6§(param1);
            }
            return;
         }
         if(_loc6_ == null)
         {
            _loc6_ = new §_-oj§(param1,param3,param4,param2,_loc7_);
            this.§_-Jh§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§_-8Z§(param2);
         _loc6_.§_-§(this.§_-Ui§);
         if(param2 == §_-BH§.§_-Dt§ || param2 == §_-BH§.§_-vK§)
         {
            _loc6_.§_-QX§(_loc7_);
         }
         if(param2 == §_-BH§.§_-vK§)
         {
            this.§_-Dj§(_loc6_);
         }
      }
      
      private function §_-s§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§_-oj§ = null;
         var _loc4_:§_-oj§ = null;
         if(param1.keyCode == 17)
         {
            _loc2_ = this.§with§;
            this.§with§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§_-gS§ && _loc2_ != this.§with§)
            {
               this.§_-0u§.visible = this.§with§;
               this.§_-0u§.§_-Bu§(this.mStage.stageWidth / 2,this.mStage.stageHeight / 2);
               _loc3_ = this.§_-sO§(0);
               _loc4_ = this.§_-sO§(1);
               if(_loc3_)
               {
                  this.§_-0u§.§_-Ln§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §_-BH§.§_-mx§)
               {
                  this.§_-UH§.unshift([1,§_-BH§.§_-mx§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§with§ && _loc3_ && (_loc3_.phase != §_-BH§.§_-mx§ || _loc3_.phase != §_-BH§.§_-Dt§))
               {
                  this.§_-UH§.unshift([1,§_-BH§.§_-vK§,this.§_-0u§.§_-XA§,this.§_-0u§.§_-n2§]);
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§_-Qi§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §_-Dj§(param1:§_-oj§) : void
      {
         var _loc4_:§_-oj§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§_-oj§ = null;
         var _loc3_:Number = §_-QU§ * §_-QU§;
         for each(_loc4_ in this.§_-S3§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§_-vZ§(_loc2_.§_-A0§ + 1);
            this.§_-S3§.splice(this.§_-S3§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§_-vZ§(1);
         }
         this.§_-S3§.push(param1.clone());
      }
      
      private function §_-Jh§(param1:§_-oj§) : void
      {
         var touch:§_-oj§ = param1;
         this.§_-a1§ = this.§_-a1§.filter(function(param1:§_-oj§, ... rest):Boolean
         {
            return param1.id != touch.id;
         });
         this.§_-a1§.push(touch);
      }
      
      private function §_-sO§(param1:int) : §_-oj§
      {
         var _loc2_:§_-oj§ = null;
         for each(_loc2_ in this.§_-a1§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function §_-y6§(param1:int) : void
      {
         var _loc3_:§_-oj§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-a1§.length)
         {
            _loc3_ = this.§_-a1§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§_-a1§.splice(_loc2_,1);
               return;
            }
            _loc2_++;
         }
      }
      
      public function get §_-gS§() : Boolean
      {
         return this.§_-0u§ != null;
      }
      
      public function set §_-gS§(param1:Boolean) : void
      {
         if(this.§_-gS§ == param1)
         {
            return;
         }
         if(param1)
         {
            this.§_-0u§ = new §_-Yt§();
            this.§_-0u§.visible = false;
            this.mStage.addChild(this.§_-0u§);
         }
         else
         {
            this.§_-0u§.§_-fh§(true);
            this.§_-0u§ = null;
         }
      }
   }
}
