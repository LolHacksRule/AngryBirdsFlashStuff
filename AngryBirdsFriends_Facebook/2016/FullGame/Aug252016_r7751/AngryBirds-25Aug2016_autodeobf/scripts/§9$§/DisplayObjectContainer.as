package §9$§
{
   import §'#Z§.§"!v§;
   import §4"D§.§^!]§;
   import §<#l§.§+"i§;
   import §?a§.Event;
   import §^a§.§'"1§;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.system.Capabilities;
   import flash.utils.getQualifiedClassName;
   
   public class DisplayObjectContainer extends DisplayObject
   {
      
      private static var §5#e§:Matrix = new Matrix();
      
      private static var §4"r§:Point = new Point();
      
      private static var §`#D§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
       
      
      private var §-!h§:Array;
      
      private var §@#!§:uint = 16777215;
      
      public function DisplayObjectContainer()
      {
         super();
         if(Capabilities.isDebugger && getQualifiedClassName(this) == "starling.display::DisplayObjectContainer")
         {
            throw new §"!v§();
         }
         this.§-!h§ = [];
      }
      
      override public function dispose() : void
      {
         var _loc1_:int = this.§-!h§.length - 1;
         while(_loc1_ >= 0)
         {
            this.§-!h§[_loc1_].dispose();
            _loc1_--;
         }
         super.dispose();
      }
      
      public function addChild(param1:DisplayObject) : DisplayObject
      {
         this.addChildAt(param1,this.numChildren);
         return param1;
      }
      
      public function §,!,§(param1:DisplayObject) : void
      {
         var _loc2_:int = this.§-!h§.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            if(param1.z < this.§-!h§[_loc3_].z)
            {
               this.addChildAt(param1,_loc3_);
               return;
            }
            _loc3_++;
         }
         this.addChild(param1);
      }
      
      public function addChildAt(param1:DisplayObject, param2:int) : DisplayObject
      {
         var _loc3_:int = this.§-!h§.length;
         if(param2 >= 0 && param2 <= _loc3_)
         {
            param1.removeFromParent();
            if(param2 == _loc3_)
            {
               this.§-!h§.push(param1);
            }
            else
            {
               this.§-!h§.splice(param2,0,param1);
            }
            param1.§9#f§(this);
            return param1;
         }
         throw new RangeError("Invalid child index");
      }
      
      public function removeChild(param1:DisplayObject, param2:Boolean = false) : DisplayObject
      {
         var _loc3_:int = this.getChildIndex(param1);
         if(_loc3_ != -1)
         {
            this.removeChildAt(_loc3_,param2);
         }
         return param1;
      }
      
      public function removeChildAt(param1:int, param2:Boolean = false) : DisplayObject
      {
         var _loc3_:DisplayObject = null;
         if(param1 >= 0 && param1 < this.numChildren)
         {
            _loc3_ = this.§-!h§[param1];
            _loc3_.§9#f§(null);
            param1 = this.§-!h§.indexOf(_loc3_);
            if(param1 >= 0)
            {
               this.§-!h§.splice(param1,1);
            }
            if(param2)
            {
               _loc3_.dispose();
            }
            return _loc3_;
         }
         throw new RangeError("Invalid child index");
      }
      
      public function removeChildren(param1:int = 0, param2:int = -1, param3:Boolean = false) : void
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
         return this.§-!h§[param1];
      }
      
      public function getChildByName(param1:String) : DisplayObject
      {
         var _loc2_:int = this.§-!h§.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            if(this.§-!h§[_loc3_].name == param1)
            {
               return this.§-!h§[_loc3_];
            }
            _loc3_++;
         }
         return null;
      }
      
      public function §-"Y§(param1:String) : DisplayObject
      {
         var _loc4_:DisplayObject = null;
         var _loc2_:int = this.§-!h§.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            if(this.§-!h§[_loc3_].name == param1)
            {
               return this.§-!h§[_loc3_];
            }
            if(this.§-!h§[_loc3_] is DisplayObjectContainer)
            {
               if(_loc4_ = (this.§-!h§[_loc3_] as DisplayObjectContainer).§-"Y§(param1))
               {
                  return _loc4_;
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function getChildIndex(param1:DisplayObject) : int
      {
         return this.§-!h§.indexOf(param1);
      }
      
      public function setChildIndex(param1:DisplayObject, param2:int) : void
      {
         var _loc3_:int = this.getChildIndex(param1);
         if(_loc3_ == -1)
         {
            throw new ArgumentError("Not a child of this container");
         }
         this.§-!h§.splice(_loc3_,1);
         this.§-!h§.splice(param2,0,param1);
      }
      
      public function §&!V§(param1:DisplayObject, param2:DisplayObject) : void
      {
         var _loc3_:int = this.getChildIndex(param1);
         var _loc4_:int = this.getChildIndex(param2);
         if(_loc3_ == -1 || _loc4_ == -1)
         {
            throw new ArgumentError("Not a child of this container");
         }
         this.§0&§(_loc3_,_loc4_);
      }
      
      public function §0&§(param1:int, param2:int) : void
      {
         var _loc3_:DisplayObject = this.getChildAt(param1);
         var _loc4_:DisplayObject = this.getChildAt(param2);
         this.§-!h§[param1] = _loc4_;
         this.§-!h§[param2] = _loc3_;
      }
      
      public function §;#M§(param1:Function) : void
      {
         this.§-!h§ = this.§-!h§.sort(param1);
      }
      
      public function §["N§(param1:String, param2:int) : void
      {
         this.§-!h§.sortOn(param1,param2);
      }
      
      public function §+$7§(param1:Object, param2:int) : void
      {
         var _loc5_:DisplayObject = null;
         var _loc3_:int = this.§-!h§.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = this.§-!h§[_loc4_];
            param1[_loc5_.name] = _loc5_;
            _loc5_.§,!§ = param2;
            if(_loc5_ is DisplayObjectContainer)
            {
               (_loc5_ as DisplayObjectContainer).§+$7§(param1,param2);
            }
            _loc4_++;
         }
      }
      
      public function contains(param1:DisplayObject) : Boolean
      {
         while(param1)
         {
            if(param1 == this)
            {
               return true;
            }
            param1 = param1.parent;
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
         var _loc3_:int = this.§-!h§.length;
         if(_loc3_ == 0)
         {
            §"i§(param1,§5#e§);
            §^!]§.§>-§(§5#e§,0,0,§4"r§);
            param2.setTo(§4"r§.x,§4"r§.y,0,0);
            return param2;
         }
         if(_loc3_ == 1)
         {
            return this.§-!h§[0].getBounds(param1,param2);
         }
         _loc4_ = Number.MAX_VALUE;
         _loc5_ = -Number.MAX_VALUE;
         _loc6_ = Number.MAX_VALUE;
         _loc7_ = -Number.MAX_VALUE;
         _loc8_ = 0;
         while(_loc8_ < _loc3_)
         {
            this.§-!h§[_loc8_].getBounds(param1,param2);
            _loc4_ = _loc4_ < param2.x ? Number(_loc4_) : Number(param2.x);
            _loc5_ = _loc5_ > param2.right ? Number(_loc5_) : Number(param2.right);
            _loc6_ = _loc6_ < param2.y ? Number(_loc6_) : Number(param2.y);
            _loc7_ = _loc7_ > param2.bottom ? Number(_loc7_) : Number(param2.bottom);
            _loc8_++;
         }
         param2.setTo(_loc4_,_loc6_,_loc5_ - _loc4_,_loc7_ - _loc6_);
         return param2;
      }
      
      override public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObject = null;
         if(param2 && (!visible || !§0$6§))
         {
            return null;
         }
         var _loc3_:Number = param1.x;
         var _loc4_:Number = param1.y;
         var _loc6_:int = int(this.§-!h§.length) - 1;
         while(_loc6_ >= 0)
         {
            _loc7_ = this.§-!h§[_loc6_];
            §"i§(_loc7_,§5#e§);
            §^!]§.§>-§(§5#e§,_loc3_,_loc4_,§4"r§);
            if(_loc8_ = _loc7_.hitTest(§4"r§,param2))
            {
               return _loc8_;
            }
            _loc6_--;
         }
         return null;
      }
      
      override public function render(param1:§'"1§, param2:Number) : void
      {
         var _loc7_:DisplayObject = null;
         var _loc8_:§+"i§ = null;
         var _loc3_:Number = param2 * this.alpha;
         var _loc4_:int = this.§-!h§.length;
         var _loc5_:int = param1.blendMode;
         var _loc6_:int = 0;
         while(_loc6_ < _loc4_)
         {
            if((_loc7_ = this.§-!h§[_loc6_]).§<7§)
            {
               _loc8_ = _loc7_.filter;
               param1.§]#k§();
               param1.§!"D§(_loc7_);
               param1.blendMode = _loc7_.blendMode;
               if(_loc8_)
               {
                  _loc8_.render(_loc7_,param1,_loc3_);
               }
               else
               {
                  _loc7_.render(param1,_loc3_);
               }
               param1.blendMode = _loc5_;
               param1.§[d§();
            }
            _loc6_++;
         }
      }
      
      public function §!"o§(param1:Event) : void
      {
         if(param1.bubbles)
         {
            throw new ArgumentError("Broadcast of bubbling events is prohibited");
         }
         var _loc2_:int = §`#D§.length;
         this.§3`§(this,param1.type,§`#D§);
         var _loc3_:int = §`#D§.length;
         var _loc4_:int = _loc2_;
         while(_loc4_ < _loc3_)
         {
            §`#D§[_loc4_].dispatchEvent(param1);
            _loc4_++;
         }
         §`#D§.length = _loc2_;
      }
      
      public function §;#o§(param1:String, param2:Object = null) : void
      {
         var _loc3_:Event = Event.§]"f§(param1,false,param2);
         this.§!"o§(_loc3_);
         Event.§4!m§(_loc3_);
      }
      
      private function §3`§(param1:DisplayObject, param2:String, param3:Vector.<DisplayObject>) : void
      {
         var _loc5_:Array = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc4_:DisplayObjectContainer = param1 as DisplayObjectContainer;
         if(param1.hasEventListener(param2))
         {
            param3.push(param1);
         }
         if(_loc4_)
         {
            _loc6_ = (_loc5_ = _loc4_.§-!h§).length;
            _loc7_ = 0;
            while(_loc7_ < _loc6_)
            {
               this.§3`§(_loc5_[_loc7_],param2,param3);
               _loc7_++;
            }
         }
      }
      
      public function get numChildren() : int
      {
         return this.§-!h§.length;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:DisplayObject = null;
         this.§@#!§ = param1;
         for each(_loc2_ in this.§-!h§)
         {
            _loc2_.color = param1;
         }
      }
      
      public function get color() : uint
      {
         return this.§@#!§;
      }
   }
}
