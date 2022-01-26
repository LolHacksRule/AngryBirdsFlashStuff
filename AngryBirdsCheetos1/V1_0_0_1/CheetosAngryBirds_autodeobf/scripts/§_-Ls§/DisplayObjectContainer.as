package §_-Ls§
{
   import §_-uz§.§_-Kv§;
   import §_-vB§.§_-7p§;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   import starling.events.Event;
   
   public class DisplayObjectContainer extends DisplayObject
   {
       
      
      private var §_-Iv§:Vector.<DisplayObject>;
      
      private var §_-ZJ§:Matrix3D;
      
      private var §_-C4§:uint = 16777215;
      
      public function DisplayObjectContainer()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObjectContainer")
         {
            throw new §_-Kv§();
         }
         this.§_-Iv§ = new Vector.<DisplayObject>(0);
         this.§_-ZJ§ = new Matrix3D();
      }
      
      override public function dispose() : void
      {
         var _loc1_:DisplayObject = null;
         for each(_loc1_ in this.§_-Iv§)
         {
            _loc1_.dispose();
         }
         super.dispose();
      }
      
      public function addChild(param1:DisplayObject) : void
      {
         this.addChildAt(param1,this.numChildren);
      }
      
      public function addChildAt(param1:DisplayObject, param2:int) : void
      {
         if(param2 >= 0 && param2 <= this.numChildren)
         {
            param1.§_-Yy§();
            this.§_-Iv§.splice(param2,0,param1);
            param1.§_-UH§(this);
            param1.dispatchEvent(new Event(Event.ADDED));
            if(stage)
            {
               param1.dispatchEventOnChildren(new Event(Event.ADDED_TO_STAGE));
            }
            return;
         }
         throw new RangeError("Invalid child index");
      }
      
      public function removeChild(param1:DisplayObject, param2:Boolean = false) : void
      {
         var _loc3_:int = this.getChildIndex(param1);
         if(_loc3_ != -1)
         {
            this.removeChildAt(_loc3_,param2);
         }
      }
      
      public function removeChildAt(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:DisplayObject = null;
         if(param1 >= 0 && param1 < this.numChildren)
         {
            _loc3_ = this.§_-Iv§[param1];
            _loc3_.dispatchEvent(new Event(Event.§_-kM§));
            if(stage)
            {
               _loc3_.dispatchEventOnChildren(new Event(Event.§_-4K§));
            }
            _loc3_.§_-UH§(null);
            this.§_-Iv§.splice(param1,1);
            if(param2)
            {
               _loc3_.dispose();
            }
            return;
         }
         throw new RangeError("Invalid child index");
      }
      
      public function §_-Zd§(param1:int = 0, param2:int = -1, param3:Boolean = false) : void
      {
         if(param2 < 0 || param2 >= this.numChildren)
         {
            param2 = this.numChildren - 1;
         }
         var _loc4_:int = param1;
         while(_loc4_ <= param2)
         {
            this.removeChildAt(param1,param3);
            _loc4_++;
         }
      }
      
      public function getChildAt(param1:int) : DisplayObject
      {
         return this.§_-Iv§[param1];
      }
      
      public function getChildByName(param1:String) : DisplayObject
      {
         var _loc2_:DisplayObject = null;
         var _loc3_:DisplayObjectContainer = null;
         var _loc4_:DisplayObject = null;
         for each(_loc2_ in this.§_-Iv§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         for each(_loc2_ in this.§_-Iv§)
         {
            _loc3_ = _loc2_ as DisplayObjectContainer;
            if(_loc3_)
            {
               if(_loc4_ = _loc3_.getChildByName(param1))
               {
                  return _loc4_;
               }
            }
         }
         return null;
      }
      
      public function getChildIndex(param1:DisplayObject) : int
      {
         return this.§_-Iv§.indexOf(param1);
      }
      
      public function setChildIndex(param1:DisplayObject, param2:int) : void
      {
         var _loc3_:int = this.getChildIndex(param1);
         if(_loc3_ == -1)
         {
            throw new ArgumentError("Not a child of this container");
         }
         this.§_-Iv§.splice(_loc3_,1);
         this.§_-Iv§.splice(param2,0,param1);
      }
      
      public function §_-ST§(param1:DisplayObject, param2:DisplayObject) : void
      {
         var _loc3_:int = this.getChildIndex(param1);
         var _loc4_:int = this.getChildIndex(param2);
         if(_loc3_ == -1 || _loc4_ == -1)
         {
            throw new ArgumentError("Not a child of this container");
         }
         this.§_-FS§(_loc3_,_loc4_);
      }
      
      public function §_-FS§(param1:int, param2:int) : void
      {
         var _loc3_:DisplayObject = this.getChildAt(param1);
         var _loc4_:DisplayObject = this.getChildAt(param2);
         this.§_-Iv§[param1] = _loc4_;
         this.§_-Iv§[param2] = _loc3_;
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         var _loc2_:DisplayObject = null;
         if(param1 == this)
         {
            return true;
         }
         for each(_loc2_ in this.§_-Iv§)
         {
            if(_loc2_ is DisplayObjectContainer)
            {
               if((_loc2_ as DisplayObjectContainer).contains(param1))
               {
                  return true;
               }
            }
            else if(_loc2_ == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      override public function getBounds(param1:DisplayObject) : Rectangle
      {
         var _loc3_:Matrix = null;
         var _loc4_:Point = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:DisplayObject = null;
         var _loc10_:Rectangle = null;
         var _loc2_:int = this.§_-Iv§.length;
         if(_loc2_ == 0)
         {
            _loc3_ = §_-R0§(param1);
            _loc4_ = _loc3_.transformPoint(new Point(x,y));
            return new Rectangle(_loc4_.x,_loc4_.y);
         }
         if(_loc2_ == 1)
         {
            return this.§_-Iv§[0].getBounds(param1);
         }
         _loc5_ = Number.MAX_VALUE;
         _loc6_ = -Number.MAX_VALUE;
         _loc7_ = Number.MAX_VALUE;
         _loc8_ = -Number.MAX_VALUE;
         for each(_loc9_ in this.§_-Iv§)
         {
            _loc10_ = _loc9_.getBounds(param1);
            _loc5_ = Math.min(_loc5_,_loc10_.x);
            _loc6_ = Math.max(_loc6_,_loc10_.x + _loc10_.width);
            _loc7_ = Math.min(_loc7_,_loc10_.y);
            _loc8_ = Math.max(_loc8_,_loc10_.y + _loc10_.height);
         }
         return new Rectangle(_loc5_,_loc7_,_loc6_ - _loc5_,_loc8_ - _loc7_);
      }
      
      override public function hitTestPoint(param1:Point, param2:Boolean = false) : DisplayObject
      {
         var _loc5_:DisplayObject = null;
         var _loc6_:Matrix = null;
         var _loc7_:Point = null;
         var _loc8_:DisplayObject = null;
         if(param2 && (!visible || !§_-K2§))
         {
            return null;
         }
         var _loc3_:int = this.§_-Iv§.length;
         var _loc4_:int = _loc3_ - 1;
         while(_loc4_ >= 0)
         {
            _loc5_ = this.§_-Iv§[_loc4_];
            if(!param2 || _loc5_.visible && _loc5_.§_-K2§ && _loc5_.alpha > 0)
            {
               _loc7_ = (_loc6_ = §_-R0§(_loc5_)).transformPoint(param1);
               if(_loc8_ = _loc5_.hitTestPoint(_loc7_,param2))
               {
                  return _loc8_;
               }
            }
            _loc4_--;
         }
         return null;
      }
      
      override public function render(param1:§_-7p§, param2:Number) : void
      {
         var _loc3_:DisplayObject = null;
         param2 *= this.alpha;
         param1.§_-si§(this.§_-ZJ§);
         for each(_loc3_ in this.§_-Iv§)
         {
            if(_loc3_.alpha != 0 && _loc3_.visible && _loc3_.scaleX != 0 && _loc3_.scaleY != 0)
            {
               param1.§_-Lz§(_loc3_);
               _loc3_.render(param1,param2);
               param1.§_-4m§(this.§_-ZJ§);
            }
         }
      }
      
      public function §_-eV§(param1:Event) : void
      {
         if(param1.bubbles)
         {
            throw new ArgumentError("Broadcast of bubbling events is prohibited");
         }
         this.dispatchEventOnChildren(param1);
      }
      
      override function dispatchEventOnChildren(param1:Event) : void
      {
         var _loc3_:DisplayObject = null;
         var _loc2_:Vector.<DisplayObject> = null;
         _loc2_ = this.§_-tg§(this,param1.type,_loc2_);
         if(_loc2_)
         {
            for each(_loc3_ in _loc2_)
            {
               _loc3_.dispatchEvent(param1);
            }
         }
      }
      
      private function §_-tg§(param1:DisplayObject, param2:String, param3:Vector.<DisplayObject>) : Vector.<DisplayObject>
      {
         var _loc5_:DisplayObject = null;
         var _loc4_:DisplayObjectContainer = param1 as DisplayObjectContainer;
         if(param1.hasEventListener(param2))
         {
            if(param3 == null)
            {
               param3 = new Vector.<DisplayObject>();
            }
            param3.push(param1);
         }
         if(_loc4_)
         {
            for each(_loc5_ in _loc4_.§_-Iv§)
            {
               param3 = this.§_-tg§(_loc5_,param2,param3);
            }
         }
         return param3;
      }
      
      public function get numChildren() : int
      {
         return this.§_-Iv§.length;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:DisplayObject = null;
         this.§_-C4§ = param1;
         for each(_loc2_ in this.§_-Iv§)
         {
            _loc2_.color = param1;
         }
      }
      
      public function get color() : uint
      {
         return this.§_-C4§;
      }
   }
}
