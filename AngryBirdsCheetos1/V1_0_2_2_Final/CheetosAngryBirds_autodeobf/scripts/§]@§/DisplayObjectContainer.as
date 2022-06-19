package §]@§
{
   import §;! §.transformCoords;
   import §=!S§.§3[§;
   import §`C§.§'!N§;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   import starling.events.Event;
   
   public class DisplayObjectContainer extends DisplayObject
   {
      
      private static var §1![§:Matrix = new Matrix();
      
      private static var §4S§:Point = new Point();
       
      
      private var §[q§:Vector.<DisplayObject>;
      
      private var §^!W§:uint = 16777215;
      
      public function DisplayObjectContainer()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObjectContainer")
         {
            throw new §3[§();
         }
         this.§[q§ = new Vector.<DisplayObject>(0);
      }
      
      override public function dispose() : void
      {
         var _loc1_:int = this.§[q§.length;
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§[q§[_loc2_].dispose();
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
            param1.§;G§();
            this.§[q§.splice(param2,0,param1);
            param1.§6l§(this);
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
            _loc3_ = this.§[q§[param1];
            _loc3_.dispatchEvent(new Event(Event.§0'§,true));
            if(stage)
            {
               _loc3_.dispatchEventOnChildren(new Event(Event.§?+§));
            }
            _loc3_.§6l§(null);
            this.§[q§.splice(param1,1);
            if(param2)
            {
               _loc3_.dispose();
            }
            return;
         }
         throw new RangeError("Invalid child index");
      }
      
      public function §7i§(param1:int = 0, param2:int = -1, param3:Boolean = false) : void
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
            return this.§[q§[param1];
         }
         throw new RangeError("Invalid child index");
      }
      
      public function getChildByName(param1:String) : DisplayObject
      {
         var _loc2_:int = this.§[q§.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            if(this.§[q§[_loc3_].name == param1)
            {
               return this.§[q§[_loc3_];
            }
            _loc3_++;
         }
         return null;
      }
      
      public function getChildIndex(param1:DisplayObject) : int
      {
         return this.§[q§.indexOf(param1);
      }
      
      public function setChildIndex(param1:DisplayObject, param2:int) : void
      {
         var _loc3_:int = this.getChildIndex(param1);
         if(_loc3_ == -1)
         {
            throw new ArgumentError("Not a child of this container");
         }
         this.§[q§.splice(_loc3_,1);
         this.§[q§.splice(param2,0,param1);
      }
      
      public function §'!K§(param1:DisplayObject, param2:DisplayObject) : void
      {
         var _loc3_:int = this.getChildIndex(param1);
         var _loc4_:int = this.getChildIndex(param2);
         if(_loc3_ == -1 || _loc4_ == -1)
         {
            throw new ArgumentError("Not a child of this container");
         }
         this.§;§(_loc3_,_loc4_);
      }
      
      public function §;§(param1:int, param2:int) : void
      {
         var _loc3_:DisplayObject = this.getChildAt(param1);
         var _loc4_:DisplayObject = this.getChildAt(param2);
         this.§[q§[param1] = _loc4_;
         this.§[q§[param2] = _loc3_;
      }
      
      public function §<!L§(param1:Function) : void
      {
         this.§[q§ = this.§[q§.sort(param1);
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:DisplayObjectContainer = null;
         if(param1 == this)
         {
            return true;
         }
         var _loc2_:int = this.§[q§.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            if((_loc5_ = (_loc4_ = this.§[q§[_loc3_]) as DisplayObjectContainer) && _loc5_.contains(param1))
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
         var _loc3_:int = this.§[q§.length;
         if(_loc3_ == 0)
         {
            §=!;§(param1,§1![§);
            transformCoords(§1![§,0,0,§4S§);
            param2.x = §4S§.x;
            param2.y = §4S§.y;
            param2.height = 0;
            param2.width = 0;
            return param2;
         }
         if(_loc3_ == 1)
         {
            return this.§[q§[0].getBounds(param1,param2);
         }
         _loc4_ = Number.MAX_VALUE;
         _loc5_ = -Number.MAX_VALUE;
         _loc6_ = Number.MAX_VALUE;
         _loc7_ = -Number.MAX_VALUE;
         _loc8_ = 0;
         while(_loc8_ < _loc3_)
         {
            this.§[q§[_loc8_].getBounds(param1,param2);
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
         if(param2 && (!visible || !§^f§))
         {
            return null;
         }
         var _loc3_:Number = param1.x;
         var _loc4_:Number = param1.y;
         var _loc5_:int;
         var _loc6_:int = (_loc5_ = this.§[q§.length) - 1;
         while(_loc6_ >= 0)
         {
            _loc7_ = this.§[q§[_loc6_];
            §=!;§(_loc7_,§1![§);
            transformCoords(§1![§,_loc3_,_loc4_,§4S§);
            if(_loc8_ = _loc7_.hitTest(§4S§,param2))
            {
               return _loc8_;
            }
            _loc6_--;
         }
         return null;
      }
      
      override public function render(param1:§'!N§, param2:Number) : void
      {
         var _loc5_:DisplayObject = null;
         param2 *= this.alpha;
         var _loc3_:int = this.§[q§.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if((_loc5_ = this.§[q§[_loc4_]).alpha != 0 && _loc5_.visible && _loc5_.scaleX != 0 && _loc5_.scaleY != 0)
            {
               param1.§3!2§();
               param1.§]d§(_loc5_);
               _loc5_.render(param1,param2);
               param1.§+!D§();
            }
            _loc4_++;
         }
      }
      
      public function §^%§(param1:Event) : void
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
         this.§6_§(this,param1.type,_loc2_);
         var _loc3_:int = _loc2_.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc2_[_loc4_].dispatchEvent(param1);
            _loc4_++;
         }
      }
      
      private function §6_§(param1:DisplayObject, param2:String, param3:Vector.<DisplayObject>) : void
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
            _loc6_ = (_loc5_ = _loc4_.§[q§).length;
            _loc7_ = 0;
            while(_loc7_ < _loc6_)
            {
               this.§6_§(_loc5_[_loc7_],param2,param3);
               _loc7_++;
            }
         }
      }
      
      public function get numChildren() : int
      {
         return this.§[q§.length;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:DisplayObject = null;
         this.§^!W§ = param1;
         for each(_loc2_ in this.§[q§)
         {
            _loc2_.color = param1;
         }
      }
      
      public function get color() : uint
      {
         return this.§^!W§;
      }
   }
}
