package §<k§
{
   import §"=§.§+!1§;
   import §2!+§.transformCoords;
   import §9!2§.§>P§;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   import starling.events.Event;
   
   public class DisplayObjectContainer extends DisplayObject
   {
      
      private static var §;+§:Matrix = new Matrix();
      
      private static var §7!E§:Point = new Point();
       
      
      private var §else §:Vector.<DisplayObject>;
      
      private var §%L§:uint = 16777215;
      
      public function DisplayObjectContainer()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObjectContainer")
         {
            throw new §+!1§();
         }
         this.§else § = new Vector.<DisplayObject>(0);
      }
      
      override public function dispose() : void
      {
         var _loc1_:int = this.§else §.length;
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§else §[_loc2_].dispose();
            _loc2_++;
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
            param1.§,y§();
            this.§else §.splice(param2,0,param1);
            param1.§-!5§(this);
            param1.dispatchEvent(new Event(Event.ADDED,true));
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
            _loc3_ = this.§else §[param1];
            _loc3_.dispatchEvent(new Event(Event.§,X§,true));
            if(stage)
            {
               _loc3_.dispatchEventOnChildren(new Event(Event.REMOVED_FROM_STAGE));
            }
            _loc3_.§-!5§(null);
            this.§else §.splice(param1,1);
            if(param2)
            {
               _loc3_.dispose();
            }
            return;
         }
         throw new RangeError("Invalid child index");
      }
      
      public function §>V§(param1:int = 0, param2:int = -1, param3:Boolean = false) : void
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
         if(param1 >= 0 && param1 < this.numChildren)
         {
            return this.§else §[param1];
         }
         throw new RangeError("Invalid child index");
      }
      
      public function getChildByName(param1:String) : DisplayObject
      {
         var _loc2_:int = this.§else §.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            if(this.§else §[_loc3_].name == param1)
            {
               return this.§else §[_loc3_];
            }
            _loc3_++;
         }
         return null;
      }
      
      public function getChildIndex(param1:DisplayObject) : int
      {
         return this.§else §.indexOf(param1);
      }
      
      public function setChildIndex(param1:DisplayObject, param2:int) : void
      {
         var _loc3_:int = this.getChildIndex(param1);
         if(_loc3_ == -1)
         {
            throw new ArgumentError("Not a child of this container");
         }
         this.§else §.splice(_loc3_,1);
         this.§else §.splice(param2,0,param1);
      }
      
      public function §>-§(param1:DisplayObject, param2:DisplayObject) : void
      {
         var _loc3_:int = this.getChildIndex(param1);
         var _loc4_:int = this.getChildIndex(param2);
         if(_loc3_ == -1 || _loc4_ == -1)
         {
            throw new ArgumentError("Not a child of this container");
         }
         this.§=N§(_loc3_,_loc4_);
      }
      
      public function §=N§(param1:int, param2:int) : void
      {
         var _loc3_:DisplayObject = this.getChildAt(param1);
         var _loc4_:DisplayObject = this.getChildAt(param2);
         this.§else §[param1] = _loc4_;
         this.§else §[param2] = _loc3_;
      }
      
      public function §=_§(param1:Function) : void
      {
         this.§else § = this.§else §.sort(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:DisplayObjectContainer = null;
         if(param1 == this)
         {
            return true;
         }
         var _loc2_:int = this.§else §.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            if((_loc5_ = (_loc4_ = this.§else §[_loc3_]) as DisplayObjectContainer) && _loc5_.contains(param1))
            {
               return true;
            }
            if(_loc4_ == param1)
            {
               return true;
            }
            _loc3_++;
         }
         return false;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:int = 0;
         if(param2 == null)
         {
            param2 = new Rectangle();
         }
         var _loc3_:int = this.§else §.length;
         if(_loc3_ == 0)
         {
            §!!?§(param1,§;+§);
            transformCoords(§;+§,0,0,§7!E§);
            param2.x = §7!E§.x;
            param2.y = §7!E§.y;
            param2.height = 0;
            param2.width = 0;
            return param2;
         }
         if(_loc3_ == 1)
         {
            return this.§else §[0].getBounds(param1,param2);
         }
         _loc4_ = Number.MAX_VALUE;
         _loc5_ = -Number.MAX_VALUE;
         _loc6_ = Number.MAX_VALUE;
         _loc7_ = -Number.MAX_VALUE;
         _loc8_ = 0;
         while(_loc8_ < _loc3_)
         {
            this.§else §[_loc8_].getBounds(param1,param2);
            _loc4_ = _loc4_ < param2.x ? Number(_loc4_) : Number(param2.x);
            _loc5_ = _loc5_ > param2.right ? Number(_loc5_) : Number(param2.right);
            _loc6_ = _loc6_ < param2.y ? Number(_loc6_) : Number(param2.y);
            _loc7_ = _loc7_ > param2.bottom ? Number(_loc7_) : Number(param2.bottom);
            _loc8_++;
         }
         param2.x = _loc4_;
         param2.y = _loc6_;
         param2.width = _loc5_ - _loc4_;
         param2.height = _loc7_ - _loc6_;
         return param2;
      }
      
      override public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObject = null;
         if(param2 && (!visible || !§>!'§))
         {
            return null;
         }
         var _loc3_:Number = param1.x;
         var _loc4_:Number = param1.y;
         var _loc5_:int;
         var _loc6_:int = (_loc5_ = this.§else §.length) - 1;
         while(_loc6_ >= 0)
         {
            _loc7_ = this.§else §[_loc6_];
            §!!?§(_loc7_,§;+§);
            transformCoords(§;+§,_loc3_,_loc4_,§7!E§);
            if(_loc8_ = _loc7_.hitTest(§7!E§,param2))
            {
               return _loc8_;
            }
            _loc6_--;
         }
         return null;
      }
      
      override public function render(param1:§>P§, param2:Number) : void
      {
         var _loc5_:DisplayObject = null;
         param2 *= this.alpha;
         var _loc3_:int = this.§else §.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if((_loc5_ = this.§else §[_loc4_]).alpha != 0 && _loc5_.visible && _loc5_.scaleX != 0 && _loc5_.scaleY != 0)
            {
               param1.§>_§();
               param1.§^f§(_loc5_);
               _loc5_.render(param1,param2);
               param1.§%Q§();
            }
            _loc4_++;
         }
      }
      
      public function §>i§(param1:Event) : void
      {
         if(param1.bubbles)
         {
            throw new ArgumentError("Broadcast of bubbling events is prohibited");
         }
         this.dispatchEventOnChildren(param1);
      }
      
      override function dispatchEventOnChildren(param1:Event) : void
      {
         var _loc2_:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
         this.§]c§(this,param1.type,_loc2_);
         var _loc3_:int = _loc2_.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc2_[_loc4_].dispatchEvent(param1);
            _loc4_++;
         }
      }
      
      private function §]c§(param1:DisplayObject, param2:String, param3:Vector.<DisplayObject>) : void
      {
         var _loc5_:Vector.<DisplayObject> = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc4_:DisplayObjectContainer = param1 as DisplayObjectContainer;
         if(param1.hasEventListener(param2))
         {
            param3.push(param1);
         }
         if(_loc4_)
         {
            _loc6_ = (_loc5_ = _loc4_.§else §).length;
            _loc7_ = 0;
            while(_loc7_ < _loc6_)
            {
               this.§]c§(_loc5_[_loc7_],param2,param3);
               _loc7_++;
            }
         }
      }
      
      public function get numChildren() : int
      {
         return this.§else §.length;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:DisplayObject = null;
         this.§%L§ = param1;
         for each(_loc2_ in this.§else §)
         {
            _loc2_.color = param1;
         }
      }
      
      public function get color() : uint
      {
         return this.§%L§;
      }
   }
}
