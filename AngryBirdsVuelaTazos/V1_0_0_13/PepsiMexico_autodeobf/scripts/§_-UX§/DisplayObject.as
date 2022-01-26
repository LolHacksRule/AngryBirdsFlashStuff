package §_-UX§
{
   import §_-JR§.§_-t2§;
   import §_-ls§.§_-d8§;
   import §_-ls§.§_-zF§;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   import flash.utils.getQualifiedClassName;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.TouchEvent;
   
   public class DisplayObject extends EventDispatcher
   {
       
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §_-u1§:Number;
      
      private var §_-su§:Number;
      
      private var § each§:Number;
      
      private var §_-Za§:Number;
      
      private var §_-YV§:Number;
      
      private var mAlpha:Number;
      
      private var §_-K1§:Boolean;
      
      private var §_-24§:Boolean;
      
      private var mName:String;
      
      private var §_-HU§:Number;
      
      private var §_-Fg§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §_-zF§();
         }
         this.mX = this.mY = this.§_-u1§ = this.§_-su§ = this.§_-YV§ = 0;
         this.§ each§ = this.§_-Za§ = this.mAlpha = 1;
         this.§_-K1§ = this.§_-24§ = true;
         this.§_-HU§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
         if(this.§_-Fg§)
         {
            this.§_-Fg§.removeChild(this);
         }
      }
      
      public function §_-N7§(param1:Boolean = false) : void
      {
         if(this.§_-Fg§)
         {
            this.§_-Fg§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §_-Iy§(param1:DisplayObject) : Matrix
      {
         var _loc2_:Matrix = null;
         var _loc3_:Matrix = null;
         if(param1 == this)
         {
            return new Matrix();
         }
         if(param1 == null)
         {
            _loc2_ = new Matrix();
            var _loc6_:DisplayObject = this;
            while(_loc6_)
            {
               _loc2_.concat(_loc6_.§_-GV§);
               _loc6_ = _loc6_.parent;
            }
            return _loc2_;
         }
         if(param1.§_-Fg§ == this)
         {
            _loc3_ = param1.§_-GV§;
            _loc3_.invert();
            return _loc3_;
         }
         if(param1 == this.§_-Fg§)
         {
            return this.§_-GV§;
         }
         var _loc4_:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
         var _loc5_:DisplayObject = null;
         _loc6_ = this;
         while(_loc6_)
         {
            _loc4_.push(_loc6_);
            _loc6_ = _loc6_.parent;
         }
         _loc6_ = param1;
         while(_loc6_ && _loc4_.indexOf(_loc6_) == -1)
         {
            _loc6_ = _loc6_.parent;
         }
         if(_loc6_ == null)
         {
            throw new ArgumentError("Object not connected to target");
         }
         _loc5_ = _loc6_;
         _loc2_ = new Matrix();
         _loc6_ = this;
         while(_loc6_ != _loc5_)
         {
            _loc2_.concat(_loc6_.§_-GV§);
            _loc6_ = _loc6_.parent;
         }
         _loc3_ = new Matrix();
         _loc6_ = param1;
         while(_loc6_ != _loc5_)
         {
            _loc3_.concat(_loc6_.§_-GV§);
            _loc6_ = _loc6_.parent;
         }
         _loc3_.invert();
         _loc2_.concat(_loc3_);
         return _loc2_;
      }
      
      public function getBounds(param1:DisplayObject) : Rectangle
      {
         throw new §_-d8§("Method needs to be implemented in subclass");
      }
      
      public function hitTestPoint(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§_-K1§ || !this.§_-24§))
         {
            return null;
         }
         if(this.getBounds(this).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         var _loc2_:Matrix = new Matrix();
         var _loc3_:DisplayObject = this;
         while(_loc3_)
         {
            _loc2_.concat(_loc3_.§_-GV§);
            _loc3_ = _loc3_.parent;
         }
         return _loc2_.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         var _loc2_:Matrix = new Matrix();
         var _loc3_:DisplayObject = this;
         while(_loc3_)
         {
            _loc2_.concat(_loc3_.§_-GV§);
            _loc3_ = _loc3_.parent;
         }
         _loc2_.invert();
         return _loc2_.transformPoint(param1);
      }
      
      public function render(param1:§_-t2§, param2:Number) : void
      {
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§_-HU§)
            {
               return;
            }
            this.§_-HU§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §_-7n§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:String = null;
         var _loc2_:Array = §_-g9§();
         if(param1 != this.§_-Fg§ && this.§_-Fg§ && _loc2_.length > 0)
         {
            for each(_loc3_ in _loc2_)
            {
               this.removeEventListeningObject(this,_loc3_);
            }
         }
         this.§_-Fg§ = param1;
         if(this.§_-Fg§ && _loc2_.length > 0)
         {
            for each(_loc3_ in _loc2_)
            {
               this.addEventListeningObject(this,_loc3_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§_-Fg§)
         {
            this.§_-Fg§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§_-Fg§)
         {
            this.§_-Fg§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function §_-nM§(param1:Matrix3D) : void
      {
         if(this.mX != 0 || this.mY != 0)
         {
            param1.prependTranslation(this.mX,this.mY,0);
         }
         if(this.§_-YV§ != 0)
         {
            param1.prependRotation(this.§_-YV§ / Math.PI * 180,Vector3D.Z_AXIS);
         }
         if(this.§ each§ != 1 || this.§_-Za§ != 1)
         {
            param1.prependScale(this.§ each§,this.§_-Za§,1);
         }
         if(this.§_-u1§ != 0 || this.§_-su§ != 0)
         {
            param1.prependTranslation(-this.§_-u1§,-this.§_-su§,0);
         }
      }
      
      public function get §_-GV§() : Matrix
      {
         var _loc1_:Matrix = new Matrix();
         if(this.§_-u1§ != 0 || this.§_-su§ != 0)
         {
            _loc1_.translate(-this.§_-u1§,-this.§_-su§);
         }
         if(this.§ each§ != 1 || this.§_-Za§ != 1)
         {
            _loc1_.scale(this.§ each§,this.§_-Za§);
         }
         if(this.§_-YV§ != 0)
         {
            _loc1_.rotate(this.§_-YV§);
         }
         if(this.mX != 0 || this.mY != 0)
         {
            _loc1_.translate(this.mX,this.mY);
         }
         return _loc1_;
      }
      
      public function get §_-uY§() : Rectangle
      {
         return this.getBounds(this.§_-Fg§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§_-Fg§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§ each§ = 1;
         var _loc2_:Number = this.width;
         if(_loc2_ != 0)
         {
            this.scaleX = param1 / _loc2_;
         }
         else
         {
            this.scaleX = 1;
         }
      }
      
      public function get height() : Number
      {
         return this.getBounds(this.§_-Fg§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§_-Za§ = 1;
         var _loc2_:Number = this.height;
         if(_loc2_ != 0)
         {
            this.scaleY = param1 / _loc2_;
         }
         else
         {
            this.scaleY = 1;
         }
      }
      
      public function get root() : DisplayObject
      {
         var _loc1_:DisplayObject = this;
         while(_loc1_.parent)
         {
            _loc1_ = _loc1_.parent;
         }
         return _loc1_;
      }
      
      override public function addEventListener(param1:String, param2:Function) : void
      {
         super.addEventListener(param1,param2);
         this.addEventListeningObject(this,param1);
      }
      
      override public function removeEventListener(param1:String, param2:Function) : void
      {
         super.removeEventListener(param1,param2);
         if(!hasEventListener(param1))
         {
            this.removeEventListeningObject(this,param1);
         }
      }
      
      override public function removeEventListeners(param1:String = null) : void
      {
         var _loc3_:String = null;
         var _loc2_:Array = §_-g9§();
         super.removeEventListeners(param1);
         if(param1 == null)
         {
            for each(_loc3_ in _loc2_)
            {
               this.removeEventListeningObject(this,_loc3_);
            }
         }
         else
         {
            this.removeEventListeningObject(this,param1);
         }
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function set x(param1:Number) : void
      {
         this.mX = param1;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function set y(param1:Number) : void
      {
         this.mY = param1;
      }
      
      public function get pivotX() : Number
      {
         return this.§_-u1§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§_-u1§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§_-su§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§_-su§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§ each§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§ each§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§_-Za§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§_-Za§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§_-YV§;
      }
      
      public function set rotation(param1:Number) : void
      {
         while(param1 < -Math.PI)
         {
            param1 += Math.PI * 2;
         }
         while(param1 > Math.PI)
         {
            param1 -= Math.PI * 2;
         }
         this.§_-YV§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.mAlpha;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.mAlpha = Math.max(0,Math.min(1,param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§_-K1§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§_-K1§ = param1;
      }
      
      public function get §_-SS§() : Boolean
      {
         return this.§_-24§;
      }
      
      public function set §_-SS§(param1:Boolean) : void
      {
         this.§_-24§ = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         this.mName = param1;
      }
      
      public function get parent() : DisplayObjectContainer
      {
         return this.§_-Fg§;
      }
      
      public function get stage() : Stage
      {
         return this.root as Stage;
      }
   }
}
