package §_-b5§
{
   import §_-1y§.§_-2f§;
   import §_-1y§.§_-3T§;
   import §_-fI§.§_-6W§;
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
      
      private var §_-eo§:Number;
      
      private var §_-TO§:Number;
      
      private var §_-wx§:Number;
      
      private var § else§:Number;
      
      private var §_-ny§:Number;
      
      private var mAlpha:Number;
      
      private var §_-dQ§:Boolean;
      
      private var §_-Q-§:Boolean;
      
      private var mName:String;
      
      private var §_-ld§:Number;
      
      private var §_-o2§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §_-3T§();
         }
         this.mX = this.mY = this.§_-eo§ = this.§_-TO§ = this.§_-ny§ = 0;
         this.§_-wx§ = this.§ else§ = this.mAlpha = 1;
         this.§_-dQ§ = this.§_-Q-§ = true;
         this.§_-ld§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
         if(this.§_-o2§)
         {
            this.§_-o2§.removeChild(this);
         }
      }
      
      public function §_-fi§(param1:Boolean = false) : void
      {
         if(this.§_-o2§)
         {
            this.§_-o2§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §_-C4§(param1:DisplayObject) : Matrix
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
               _loc2_.concat(_loc6_.§_-65§);
               _loc6_ = _loc6_.parent;
            }
            return _loc2_;
         }
         if(param1.§_-o2§ == this)
         {
            _loc3_ = param1.§_-65§;
            _loc3_.invert();
            return _loc3_;
         }
         if(param1 == this.§_-o2§)
         {
            return this.§_-65§;
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
            _loc2_.concat(_loc6_.§_-65§);
            _loc6_ = _loc6_.parent;
         }
         _loc3_ = new Matrix();
         _loc6_ = param1;
         while(_loc6_ != _loc5_)
         {
            _loc3_.concat(_loc6_.§_-65§);
            _loc6_ = _loc6_.parent;
         }
         _loc3_.invert();
         _loc2_.concat(_loc3_);
         return _loc2_;
      }
      
      public function getBounds(param1:DisplayObject) : Rectangle
      {
         throw new §_-2f§("Method needs to be implemented in subclass");
      }
      
      public function hitTestPoint(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§_-dQ§ || !this.§_-Q-§))
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
            _loc2_.concat(_loc3_.§_-65§);
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
            _loc2_.concat(_loc3_.§_-65§);
            _loc3_ = _loc3_.parent;
         }
         _loc2_.invert();
         return _loc2_.transformPoint(param1);
      }
      
      public function render(param1:§_-6W§, param2:Number) : void
      {
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§_-ld§)
            {
               return;
            }
            this.§_-ld§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §_-4W§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:String = null;
         var _loc2_:Array = §_-zi§();
         if(param1 != this.§_-o2§ && this.§_-o2§ && _loc2_.length > 0)
         {
            for each(_loc3_ in _loc2_)
            {
               this.removeEventListeningObject(this,_loc3_);
            }
         }
         this.§_-o2§ = param1;
         if(this.§_-o2§ && _loc2_.length > 0)
         {
            for each(_loc3_ in _loc2_)
            {
               this.addEventListeningObject(this,_loc3_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§_-o2§)
         {
            this.§_-o2§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§_-o2§)
         {
            this.§_-o2§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function §_-0u§(param1:Matrix3D) : void
      {
         if(this.mX != 0 || this.mY != 0)
         {
            param1.prependTranslation(this.mX,this.mY,0);
         }
         if(this.§_-ny§ != 0)
         {
            param1.prependRotation(this.§_-ny§ / Math.PI * 180,Vector3D.Z_AXIS);
         }
         if(this.§_-wx§ != 1 || this.§ else§ != 1)
         {
            param1.prependScale(this.§_-wx§,this.§ else§,1);
         }
         if(this.§_-eo§ != 0 || this.§_-TO§ != 0)
         {
            param1.prependTranslation(-this.§_-eo§,-this.§_-TO§,0);
         }
      }
      
      public function get §_-65§() : Matrix
      {
         var _loc1_:Matrix = new Matrix();
         if(this.§_-eo§ != 0 || this.§_-TO§ != 0)
         {
            _loc1_.translate(-this.§_-eo§,-this.§_-TO§);
         }
         if(this.§_-wx§ != 1 || this.§ else§ != 1)
         {
            _loc1_.scale(this.§_-wx§,this.§ else§);
         }
         if(this.§_-ny§ != 0)
         {
            _loc1_.rotate(this.§_-ny§);
         }
         if(this.mX != 0 || this.mY != 0)
         {
            _loc1_.translate(this.mX,this.mY);
         }
         return _loc1_;
      }
      
      public function get §_-8N§() : Rectangle
      {
         return this.getBounds(this.§_-o2§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§_-o2§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§_-wx§ = 1;
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
         return this.getBounds(this.§_-o2§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§ else§ = 1;
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
         var _loc2_:Array = §_-zi§();
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
         return this.§_-eo§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§_-eo§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§_-TO§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§_-TO§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§_-wx§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§_-wx§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§ else§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§ else§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§_-ny§;
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
         this.§_-ny§ = param1;
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
         return this.§_-dQ§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§_-dQ§ = param1;
      }
      
      public function get §_-3V§() : Boolean
      {
         return this.§_-Q-§;
      }
      
      public function set §_-3V§(param1:Boolean) : void
      {
         this.§_-Q-§ = param1;
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
         return this.§_-o2§;
      }
      
      public function get stage() : Stage
      {
         return this.root as Stage;
      }
   }
}
