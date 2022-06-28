package starling.events
{
   import §_-uY§.Stage;
   import flash.geom.Point;
   
   public class §_-5E§
   {
      
      private static const §_-03p§:Number = 0.3;
      
      private static const §_-SA§:Number = 25;
      
      private static var §_-SQ§:Vector.<int> = new Vector.<int>(0);
      
      private static var §_-eu§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §_-qN§:Stage;
      
      private var §_-je§:Number;
      
      private var §_-0CX§:Number;
      
      private var §_-5-§:§_-LK§;
      
      private var §_-0P§:Vector.<§_-06V§>;
      
      private var §_-Hz§:Vector.<Array>;
      
      private var §_-062§:Vector.<§_-06V§>;
      
      private var §_-Ri§:Boolean = false;
      
      private var §_-09Q§:Boolean = false;
      
      public function §_-5E§(param1:Stage)
      {
         super();
         this.§_-qN§ = param1;
         this.§_-0CX§ = 0;
         this.§_-je§ = 0;
         this.§_-0P§ = new Vector.<§_-06V§>(0);
         this.§_-Hz§ = new Vector.<Array>(0);
         this.§_-062§ = new Vector.<§_-06V§>(0);
         this.§_-qN§.addEventListener(KeyboardEvent.KEY_DOWN,this.§_-00r§);
         this.§_-qN§.addEventListener(KeyboardEvent.KEY_UP,this.§_-00r§);
      }
      
      public function dispose() : void
      {
         this.§_-qN§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§_-00r§);
         this.§_-qN§.removeEventListener(KeyboardEvent.KEY_UP,this.§_-00r§);
         if(this.§_-5-§)
         {
            this.§_-5-§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§_-06V§ = null;
         var _loc5_:§_-06V§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§_-je§ += param1;
         this.§_-0CX§ = 0;
         if(this.§_-062§.length > 0)
         {
            _loc2_ = this.§_-062§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§_-je§ - this.§_-062§[_loc2_].timestamp > §_-03p§)
               {
                  this.§_-062§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§_-Hz§.length > 0)
         {
            §_-SQ§.length = §_-eu§.length = 0;
            for each(_loc5_ in this.§_-0P§)
            {
               if(_loc5_.phase == §_-tW§.§_-h4§ || _loc5_.phase == §_-tW§.§_-Ua§)
               {
                  _loc5_.§_-og§(§_-tW§.§_-jl§);
               }
            }
            while(this.§_-Hz§.length > 0 && §_-SQ§.indexOf(this.§_-Hz§[this.§_-Hz§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§_-Hz§.pop())[0] as int;
               if((_loc4_ = this.§_-hq§(_loc3_)) && _loc4_.phase == §_-tW§.§for § && _loc4_.target)
               {
                  §_-eu§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§_-DU§.apply(this,_loc7_);
               §_-SQ§.push(_loc3_);
            }
            for each(_loc6_ in §_-eu§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§_-ed§,this.§_-0P§,this.§_-Ri§,this.§_-09Q§));
               }
            }
            for each(_loc3_ in §_-SQ§)
            {
               if((_loc4_ = this.§_-hq§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§_-ed§,this.§_-0P§,this.§_-Ri§,this.§_-09Q§));
               }
            }
            _loc2_ = this.§_-0P§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§_-0P§[_loc2_].phase == §_-tW§.§_-0Cc§)
               {
                  this.§_-0P§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§_-0CX§ += 0.00001;
         }
      }
      
      public function §_-f1§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§_-Hz§.unshift(arguments);
         if(this.§_-09Q§ && this.§_-0J§ && param1 == 0)
         {
            this.§_-5-§.§_-Ze§(param3,param4,this.§_-Ri§);
            this.§_-Hz§.unshift([1,param2,this.§_-5-§.§_-gI§,this.§_-5-§.§_-68§]);
         }
      }
      
      private function §_-DU§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§_-06V§;
         if((_loc6_ = this.§_-hq§(param1)) == null)
         {
            _loc6_ = new §_-06V§(param1,param3,param4,param2,null);
            this.§_-05-§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§_-og§(param2);
         _loc6_.§_-Sz§(this.§_-je§ + this.§_-0CX§);
         if(param2 == §_-tW§.§for § || param2 == §_-tW§.§_-h4§)
         {
            _loc6_.§_-dc§(this.§_-qN§.hitTest(_loc5_,true));
         }
         if(param2 == §_-tW§.§_-h4§)
         {
            this.§_-Rf§(_loc6_);
         }
      }
      
      private function §_-00r§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§_-06V§ = null;
         var _loc4_:§_-06V§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§_-09Q§;
            this.§_-09Q§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§_-0J§ && _loc2_ != this.§_-09Q§)
            {
               this.§_-5-§.visible = this.§_-09Q§;
               this.§_-5-§.§_-0AV§(this.§_-qN§.stageWidth / 2,this.§_-qN§.stageHeight / 2);
               _loc3_ = this.§_-hq§(0);
               _loc4_ = this.§_-hq§(1);
               if(_loc3_)
               {
                  this.§_-5-§.§_-Ze§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §_-tW§.§_-0Cc§)
               {
                  this.§_-Hz§.unshift([1,§_-tW§.§_-0Cc§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§_-09Q§ && _loc3_)
               {
                  if(_loc3_.phase == §_-tW§.§_-h4§ || _loc3_.phase == §_-tW§.§_-Ua§)
                  {
                     this.§_-Hz§.unshift([1,§_-tW§.§_-h4§,this.§_-5-§.§_-gI§,this.§_-5-§.§_-68§]);
                  }
                  else
                  {
                     this.§_-Hz§.unshift([1,§_-tW§.§for §,this.§_-5-§.§_-gI§,this.§_-5-§.§_-68§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§_-Ri§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §_-Rf§(param1:§_-06V§) : void
      {
         var _loc4_:§_-06V§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§_-06V§ = null;
         var _loc3_:Number = §_-SA§ * §_-SA§;
         for each(_loc4_ in this.§_-062§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§_-p9§(_loc2_.§_-Y3§ + 1);
            this.§_-062§.splice(this.§_-062§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§_-p9§(1);
         }
         this.§_-062§.push(param1.clone());
      }
      
      private function §_-05-§(param1:§_-06V§) : void
      {
         var _loc2_:int = this.§_-0P§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§_-0P§[_loc2_].id == param1.id)
            {
               this.§_-0P§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§_-0P§.push(param1);
      }
      
      private function §_-hq§(param1:int) : §_-06V§
      {
         var _loc2_:§_-06V§ = null;
         for each(_loc2_ in this.§_-0P§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §_-0J§() : Boolean
      {
         return this.§_-5-§ != null;
      }
      
      public function set §_-0J§(param1:Boolean) : void
      {
         if(this.§_-0J§ == param1)
         {
            return;
         }
      }
   }
}
