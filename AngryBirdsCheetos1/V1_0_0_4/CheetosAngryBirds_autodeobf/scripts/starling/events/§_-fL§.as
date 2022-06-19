package starling.events
{
   import §case §.Stage;
   import flash.geom.Point;
   
   public class §_-fL§
   {
      
      private static const §_-ax§:Number = 0.3;
      
      private static const §_-bb§:Number = 25;
      
      private static var §_-jf§:Vector.<int> = new Vector.<int>(0);
      
      private static var §_-lk§:Vector.<Object> = new Vector.<Object>(0);
       
      
      private var §_-aX§:Stage;
      
      private var §_-ZH§:Number;
      
      private var §_-R8§:Number;
      
      private var §_-Og§:§_-w8§;
      
      private var §_-ug§:Vector.<§_-QO§>;
      
      private var §_-xu§:Vector.<Array>;
      
      private var §_-az§:Vector.<§_-QO§>;
      
      private var §_-DX§:Boolean = false;
      
      private var §_-uK§:Boolean = false;
      
      public function §_-fL§(param1:Stage)
      {
         super();
         this.§_-aX§ = param1;
         this.§_-R8§ = 0;
         this.§_-ZH§ = 0;
         this.§_-ug§ = new Vector.<§_-QO§>(0);
         this.§_-xu§ = new Vector.<Array>(0);
         this.§_-az§ = new Vector.<§_-QO§>(0);
         this.§_-aX§.addEventListener(KeyboardEvent.KEY_DOWN,this.§_-VV§);
         this.§_-aX§.addEventListener(KeyboardEvent.KEY_UP,this.§_-VV§);
      }
      
      public function dispose() : void
      {
         this.§_-aX§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§_-VV§);
         this.§_-aX§.removeEventListener(KeyboardEvent.KEY_UP,this.§_-VV§);
         if(this.§_-Og§)
         {
            this.§_-Og§.dispose();
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:§_-QO§ = null;
         var _loc5_:§_-QO§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         this.§_-ZH§ += param1;
         this.§_-R8§ = 0;
         if(this.§_-az§.length > 0)
         {
            _loc2_ = this.§_-az§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§_-ZH§ - this.§_-az§[_loc2_].timestamp > §_-ax§)
               {
                  this.§_-az§.splice(_loc2_,1);
               }
               _loc2_--;
            }
         }
         while(this.§_-xu§.length > 0)
         {
            §_-jf§.length = §_-lk§.length = 0;
            for each(_loc5_ in this.§_-ug§)
            {
               if(_loc5_.phase == §_-NE§.§_-vw§ || _loc5_.phase == §_-NE§.§_-L2§)
               {
                  _loc5_.§_-IZ§(§_-NE§.§_-Y9§);
               }
            }
            while(this.§_-xu§.length > 0 && §_-jf§.indexOf(this.§_-xu§[this.§_-xu§.length - 1][0]) == -1)
            {
               _loc3_ = (_loc7_ = this.§_-xu§.pop())[0] as int;
               if((_loc4_ = this.§_-yB§(_loc3_)) && _loc4_.phase == §_-NE§.§_-eT§ && _loc4_.target)
               {
                  §_-lk§.push({
                     "touch":_loc4_,
                     "target":_loc4_.target
                  });
               }
               this.§_-zi§.apply(this,_loc7_);
               §_-jf§.push(_loc3_);
            }
            for each(_loc6_ in §_-lk§)
            {
               if(_loc6_.touch.target != _loc6_.target)
               {
                  _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§_-AB§,this.§_-ug§,this.§_-DX§,this.§_-uK§));
               }
            }
            for each(_loc3_ in §_-jf§)
            {
               if((_loc4_ = this.§_-yB§(_loc3_)).target)
               {
                  _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§_-AB§,this.§_-ug§,this.§_-DX§,this.§_-uK§));
               }
            }
            _loc2_ = this.§_-ug§.length - 1;
            while(_loc2_ >= 0)
            {
               if(this.§_-ug§[_loc2_].phase == §_-NE§.§_-7A§)
               {
                  this.§_-ug§.splice(_loc2_,1);
               }
               _loc2_--;
            }
            this.§_-R8§ += 0.00001;
         }
      }
      
      public function §_-0f§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         this.§_-xu§.unshift(arguments);
         if(this.§_-uK§ && this.§_-B9§ && param1 == 0)
         {
            this.§_-Og§.§_-i1§(param3,param4,this.§_-DX§);
            this.§_-xu§.unshift([1,param2,this.§_-Og§.§_-N7§,this.§_-Og§.§_-D4§]);
         }
      }
      
      private function §_-zi§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§_-QO§;
         if((_loc6_ = this.§_-yB§(param1)) == null)
         {
            _loc6_ = new §_-QO§(param1,param3,param4,param2,null);
            this.§_-Xy§(_loc6_);
         }
         _loc6_.setPosition(param3,param4);
         _loc6_.§_-IZ§(param2);
         _loc6_.§_-J0§(this.§_-ZH§ + this.§_-R8§);
         if(param2 == §_-NE§.§_-eT§ || param2 == §_-NE§.§_-vw§)
         {
            _loc6_.§_-bw§(this.§_-aX§.hitTest(_loc5_,true));
         }
         if(param2 == §_-NE§.§_-vw§)
         {
            this.§_-Io§(_loc6_);
         }
      }
      
      private function §_-VV§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:§_-QO§ = null;
         var _loc4_:§_-QO§ = null;
         if(param1.keyCode == 17 || param1.keyCode == 15)
         {
            _loc2_ = this.§_-uK§;
            this.§_-uK§ = param1.type == KeyboardEvent.KEY_DOWN;
            if(this.§_-B9§ && _loc2_ != this.§_-uK§)
            {
               this.§_-Og§.visible = this.§_-uK§;
               this.§_-Og§.§_-HQ§(this.§_-aX§.stageWidth / 2,this.§_-aX§.stageHeight / 2);
               _loc3_ = this.§_-yB§(0);
               _loc4_ = this.§_-yB§(1);
               if(_loc3_)
               {
                  this.§_-Og§.§_-i1§(_loc3_.globalX,_loc3_.globalY);
               }
               if(_loc2_ && _loc4_ && _loc4_.phase != §_-NE§.§_-7A§)
               {
                  this.§_-xu§.unshift([1,§_-NE§.§_-7A§,_loc4_.globalX,_loc4_.globalY]);
               }
               else if(this.§_-uK§ && _loc3_)
               {
                  if(_loc3_.phase == §_-NE§.§_-vw§ || _loc3_.phase == §_-NE§.§_-L2§)
                  {
                     this.§_-xu§.unshift([1,§_-NE§.§_-vw§,this.§_-Og§.§_-N7§,this.§_-Og§.§_-D4§]);
                  }
                  else
                  {
                     this.§_-xu§.unshift([1,§_-NE§.§_-eT§,this.§_-Og§.§_-N7§,this.§_-Og§.§_-D4§]);
                  }
               }
            }
         }
         else if(param1.keyCode == 16)
         {
            this.§_-DX§ = param1.type == KeyboardEvent.KEY_DOWN;
         }
      }
      
      private function §_-Io§(param1:§_-QO§) : void
      {
         var _loc4_:§_-QO§ = null;
         var _loc5_:Number = NaN;
         var _loc2_:§_-QO§ = null;
         var _loc3_:Number = §_-bb§ * §_-bb§;
         for each(_loc4_ in this.§_-az§)
         {
            if((_loc5_ = Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)) <= _loc3_)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         if(_loc2_)
         {
            param1.§_-9f§(_loc2_.§_-CQ§ + 1);
            this.§_-az§.splice(this.§_-az§.indexOf(_loc2_),1);
         }
         else
         {
            param1.§_-9f§(1);
         }
         this.§_-az§.push(param1.clone());
      }
      
      private function §_-Xy§(param1:§_-QO§) : void
      {
         var _loc2_:int = this.§_-ug§.length - 1;
         while(_loc2_ >= 0)
         {
            if(this.§_-ug§[_loc2_].id == param1.id)
            {
               this.§_-ug§.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.§_-ug§.push(param1);
      }
      
      private function §_-yB§(param1:int) : §_-QO§
      {
         var _loc2_:§_-QO§ = null;
         for each(_loc2_ in this.§_-ug§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get §_-B9§() : Boolean
      {
         return this.§_-Og§ != null;
      }
      
      public function set §_-B9§(param1:Boolean) : void
      {
         if(this.§_-B9§ == param1)
         {
            return;
         }
      }
   }
}
