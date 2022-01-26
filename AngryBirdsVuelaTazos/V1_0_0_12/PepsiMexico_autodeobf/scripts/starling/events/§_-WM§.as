package starling.events
{
   import §_-pF§.DisplayObject;
   import §_-pF§.Stage;
   import flash.geom.Point;
   
   public class §_-WM§
   {
      
      private static const §_-KY§:Number = 0.3;
      
      private static const §_-Yd§:Number = 25;
       
      
      private var mStage:Stage;
      
      private var §_-I§:Number;
      
      private var §_-Zd§:§_-X9§;
      
      private var §_-hp§:Vector.<§_-ny§>;
      
      private var §_-X2§:Vector.<Array>;
      
      private var §_-ND§:Vector.<§_-ny§>;
      
      private var §_-nr§:Boolean = false;
      
      private var §_-ES§:Boolean = false;
      
      public function §_-WM§(param1:Stage)
      {
         super();
         this.mStage = param1;
         this.§_-I§ = 0;
         this.§_-hp§ = new Vector.<§_-ny§>(0);
         this.§_-X2§ = new Vector.<Array>(0);
         this.§_-ND§ = new Vector.<§_-ny§>(0);
         this.mStage.addEventListener(KeyboardEvent.KEY_DOWN,this.§_-HZ§);
         this.mStage.addEventListener(KeyboardEvent.KEY_UP,this.§_-HZ§);
      }
      
      public function dispose() : void
      {
         this.mStage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§_-HZ§);
         this.mStage.removeEventListener(KeyboardEvent.KEY_UP,this.§_-HZ§);
         if(this.§_-Zd§)
         {
            this.§_-Zd§.dispose();
         }
      }
      
      public function §_-CR§(param1:Number) : void
      {
         var processedTouchIDs:Vector.<int> = null;
         var touchID:int = 0;
         var touch:§_-ny§ = null;
         var hoverTouch:§_-ny§ = null;
         var hoverTarget:DisplayObject = null;
         var i:int = 0;
         var currentTouch:§_-ny§ = null;
         var target:DisplayObject = null;
         var touchArgs:Array = null;
         var passedTime:Number = param1;
         var additionalTime:Number = 0;
         if(this.§_-ND§.length > 0)
         {
            this.§_-ND§ = this.§_-ND§.filter(function(param1:§_-ny§, ... rest):Boolean
            {
               return §_-I§ + passedTime - param1.timestamp <= §_-KY§;
            });
         }
         while(this.§_-X2§.length > 0)
         {
            processedTouchIDs = new Vector.<int>(0);
            hoverTouch = null;
            hoverTarget = null;
            i = this.§_-hp§.length - 1;
            while(i >= 0)
            {
               currentTouch = this.§_-hp§[i];
               if(currentTouch.phase == §_-2b§.§_-SR§)
               {
                  currentTouch.§_-4§(§_-2b§.§_-Ih§);
               }
               if(currentTouch.target.stage == null)
               {
                  target = this.mStage.hitTestPoint(new Point(currentTouch.globalX,currentTouch.globalY),true);
                  if(target != null)
                  {
                     currentTouch.§_-nd§(target);
                  }
                  else
                  {
                     this.§_-hp§.splice(i,1);
                  }
               }
               i--;
            }
            while(this.§_-X2§.length > 0 && processedTouchIDs.indexOf(this.§_-X2§[this.§_-X2§.length - 1][0]) == -1)
            {
               touchArgs = this.§_-X2§.pop();
               touchID = touchArgs[0] as int;
               touch = this.§_-eT§(touchID);
               if(touch && touch.phase == §_-2b§.§_-2h§)
               {
                  hoverTouch = touch;
                  hoverTarget = touch.target;
               }
               this.§_-2g§.apply(this,touchArgs);
               processedTouchIDs.push(touchID);
            }
            if(hoverTarget && hoverTouch.target != hoverTarget)
            {
               hoverTarget.dispatchEvent(new TouchEvent(TouchEvent.§_-O6§,this.§_-hp§,this.§_-nr§,this.§_-ES§));
            }
            for each(touchID in processedTouchIDs)
            {
               touch = this.§_-eT§(touchID);
               touch.target.dispatchEvent(new TouchEvent(TouchEvent.§_-O6§,this.§_-hp§,this.§_-nr§,this.§_-ES§));
            }
            this.§_-hp§ = this.§_-hp§.filter(function(param1:§_-ny§, ... rest):Boolean
            {
               return param1.phase != §_-2b§.§_-ZD§;
            });
            if(this.§_-X2§.length != 0)
            {
               additionalTime += 0.00001;
               this.§_-I§ += 0.00001;
            }
         }
         this.§_-I§ += passedTime - additionalTime;
      }
      
      public function §_-p1§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§_-X2§.unshift(arguments);
         if(this.§_-ES§ && this.§_-DJ§ && param1 == 0)
         {
            this.§_-Zd§.§_-Z3§(param3,param4,this.§_-nr§);
            if(param2 != §_-2b§.§_-2h§)
            {
               this.§_-X2§.unshift([1,param2,this.§_-Zd§.§_-pR§,this.§_-Zd§.§_-cS§]);
            }
         }
      }
      
      private function §_-2g§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§_-ny§ = this.§_-eT§(param1);
         var _loc7_:DisplayObject;
         if((_loc7_ = this.mStage.hitTestPoint(_loc5_,true)) == null)
         {
            if(_loc6_)
            {
               this.§_-gK§(param1);
            }
            return;
         }
         if(_loc6_ == null)
         {
            _loc6_ = new §_-ny§(param1,param3,param4,param2,_loc7_);
            this.§_-7§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§_-4§(param2);
         _loc6_.§_-wf§(this.§_-I§);
         if(param2 == §_-2b§.§_-2h§ || param2 == §_-2b§.§_-tD§)
         {
            _loc6_.§_-nd§(_loc7_);
         }
         if(param2 == §_-2b§.§_-tD§)
         {
            this.§_-ax§(_loc6_);
         }
      }
      
      private function §_-HZ§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§_-ny§ = null;
         var _loc4_:§_-ny§ = null;
         if(param1.keyCode == 17)
         {
            _loc2_ = this.§_-ES§;
            this.§_-ES§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§_-DJ§ && _loc2_ != this.§_-ES§)
            {
               this.§_-Zd§.visible = this.§_-ES§;
               this.§_-Zd§.§_-iJ§(this.mStage.stageWidth / 2,this.mStage.stageHeight / 2);
               _loc3_ = this.§_-eT§(0);
               _loc4_ = this.§_-eT§(1);
               if(_loc3_)
               {
                  this.§_-Zd§.§_-Z3§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §_-2b§.§_-ZD§)
               {
                  this.§_-X2§.unshift([1,§_-2b§.§_-ZD§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§_-ES§ && _loc3_ && (_loc3_.phase != §_-2b§.§_-ZD§ || _loc3_.phase != §_-2b§.§_-2h§))
               {
                  this.§_-X2§.unshift([1,§_-2b§.§_-tD§,this.§_-Zd§.§_-pR§,this.§_-Zd§.§_-cS§]);
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§_-nr§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §_-ax§(param1:§_-ny§) : void
      {
         var _loc4_:§_-ny§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§_-ny§ = null;
         var _loc3_:Number = §_-Yd§ * §_-Yd§;
         for each(_loc4_ in this.§_-ND§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§_-LU§(_loc2_.§_-S5§ + 1);
            this.§_-ND§.splice(this.§_-ND§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§_-LU§(1);
         }
         this.§_-ND§.push(param1.clone());
      }
      
      private function §_-7§(param1:§_-ny§) : void
      {
         var touch:§_-ny§ = param1;
         this.§_-hp§ = this.§_-hp§.filter(function(param1:§_-ny§, ... rest):Boolean
         {
            return param1.id != touch.id;
         });
         this.§_-hp§.push(touch);
      }
      
      private function §_-eT§(param1:int) : §_-ny§
      {
         var _loc2_:§_-ny§ = null;
         for each(_loc2_ in this.§_-hp§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function §_-gK§(param1:int) : void
      {
         var _loc3_:§_-ny§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-hp§.length)
         {
            _loc3_ = this.§_-hp§[_loc2_];
            if(_loc3_.id == param1)
            {
               this.§_-hp§.splice(_loc2_,1);
               return;
            }
            _loc2_++;
         }
      }
      
      public function get §_-DJ§() : Boolean
      {
         return this.§_-Zd§ != null;
      }
      
      public function set §_-DJ§(param1:Boolean) : void
      {
         if(this.§_-DJ§ == param1)
         {
            return;
         }
         if(param1)
         {
            this.§_-Zd§ = new §_-X9§();
            this.§_-Zd§.visible = false;
            this.mStage.addChild(this.§_-Zd§);
         }
         else
         {
            this.§_-Zd§.§_-Ch§(true);
            this.§_-Zd§ = null;
         }
      }
   }
}
