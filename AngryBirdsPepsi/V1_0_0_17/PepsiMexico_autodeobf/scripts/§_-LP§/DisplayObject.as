package §_-LP§
{
   import §_-HT§.§_-rU§;
   import §_-HT§.§_-rk§;
   import §_-gY§.§_-K6§;
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
      
      private var §_-ov§:Number;
      
      private var §_-eM§:Number;
      
      private var §_-1C§:Number;
      
      private var §_-ML§:Number;
      
      private var §_-O5§:Number;
      
      private var mAlpha:Number;
      
      private var §_-FU§:Boolean;
      
      private var §_-nX§:Boolean;
      
      private var mName:String;
      
      private var §_-R-§:Number;
      
      private var §_-iw§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §_-rU§();
         }
         this.mX = this.mY = this.§_-ov§ = this.§_-eM§ = this.§_-O5§ = 0;
         this.§_-1C§ = this.§_-ML§ = this.mAlpha = 1;
         this.§_-FU§ = this.§_-nX§ = true;
         this.§_-R-§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
         if(this.§_-iw§)
         {
            this.§_-iw§.removeChild(this);
         }
      }
      
      public function §_-Lh§(param1:Boolean = false) : void
      {
         if(this.§_-iw§)
         {
            this.§_-iw§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §_-OX§(param1:DisplayObject) : Matrix
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
               _loc2_.concat(_loc6_.§_-hD§);
               _loc6_ = _loc6_.parent;
            }
            return _loc2_;
         }
         if(param1.§_-iw§ == this)
         {
            _loc3_ = param1.§_-hD§;
            _loc3_.invert();
            return _loc3_;
         }
         if(param1 == this.§_-iw§)
         {
            return this.§_-hD§;
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
            _loc2_.concat(_loc6_.§_-hD§);
            _loc6_ = _loc6_.parent;
         }
         _loc3_ = new Matrix();
         _loc6_ = param1;
         while(_loc6_ != _loc5_)
         {
            _loc3_.concat(_loc6_.§_-hD§);
            _loc6_ = _loc6_.parent;
         }
         _loc3_.invert();
         _loc2_.concat(_loc3_);
         return _loc2_;
      }
      
      public function getBounds(param1:DisplayObject) : Rectangle
      {
         throw new §_-rk§("Method needs to be implemented in subclass");
      }
      
      public function hitTestPoint(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§_-FU§ || !this.§_-nX§))
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
            _loc2_.concat(_loc3_.§_-hD§);
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
            _loc2_.concat(_loc3_.§_-hD§);
            _loc3_ = _loc3_.parent;
         }
         _loc2_.invert();
         return _loc2_.transformPoint(param1);
      }
      
      public function render(param1:§_-K6§, param2:Number) : void
      {
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§_-R-§)
            {
               return;
            }
            this.§_-R-§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §_-Ux§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:String = null;
         var _loc2_:Array = §_-Gg§();
         if(param1 != this.§_-iw§ && this.§_-iw§ && _loc2_.length > 0)
         {
            for each(_loc3_ in _loc2_)
            {
               this.removeEventListeningObject(this,_loc3_);
            }
         }
         this.§_-iw§ = param1;
         if(this.§_-iw§ && _loc2_.length > 0)
         {
            for each(_loc3_ in _loc2_)
            {
               this.addEventListeningObject(this,_loc3_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§_-iw§)
         {
            this.§_-iw§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§_-iw§)
         {
            this.§_-iw§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function §_-vF§(param1:Matrix3D) : void
      {
         if(this.mX != 0 || this.mY != 0)
         {
            param1.prependTranslation(this.mX,this.mY,0);
         }
         if(this.§_-O5§ != 0)
         {
            param1.prependRotation(this.§_-O5§ / Math.PI * 180,Vector3D.Z_AXIS);
         }
         if(this.§_-1C§ != 1 || this.§_-ML§ != 1)
         {
            param1.prependScale(this.§_-1C§,this.§_-ML§,1);
         }
         if(this.§_-ov§ != 0 || this.§_-eM§ != 0)
         {
            param1.prependTranslation(-this.§_-ov§,-this.§_-eM§,0);
         }
      }
      
      public function get §_-hD§() : Matrix
      {
         var _loc1_:Matrix = new Matrix();
         if(this.§_-ov§ != 0 || this.§_-eM§ != 0)
         {
            _loc1_.translate(-this.§_-ov§,-this.§_-eM§);
         }
         if(this.§_-1C§ != 1 || this.§_-ML§ != 1)
         {
            _loc1_.scale(this.§_-1C§,this.§_-ML§);
         }
         if(this.§_-O5§ != 0)
         {
            _loc1_.rotate(this.§_-O5§);
         }
         if(this.mX != 0 || this.mY != 0)
         {
            _loc1_.translate(this.mX,this.mY);
         }
         return _loc1_;
      }
      
      public function get §_-cB§() : Rectangle
      {
         return this.getBounds(this.§_-iw§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§_-iw§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§_-1C§ = 1;
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
         return this.getBounds(this.§_-iw§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§_-ML§ = 1;
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
         var _loc2_:Array = §_-Gg§();
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
         return this.§_-ov§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§_-ov§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§_-eM§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§_-eM§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§_-1C§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§_-1C§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§_-ML§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§_-ML§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§_-O5§;
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
         this.§_-O5§ = param1;
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
         return this.§_-FU§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§_-FU§ = param1;
      }
      
      public function get §_-pE§() : Boolean
      {
         return this.§_-nX§;
      }
      
      public function set §_-pE§(param1:Boolean) : void
      {
         this.§_-nX§ = param1;
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
         return this.§_-iw§;
      }
      
      public function get stage() : Stage
      {
         return this.root as Stage;
      }
   }
}
