package §_-vO§
{
   import §_-bI§.§_-oJ§;
   import §_-bI§.§_-ok§;
   import §_-d5§.§_-F§;
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
      
      private var §_-oy§:Number;
      
      private var §_-Pk§:Number;
      
      private var §_-nI§:Number;
      
      private var §_-K1§:Number;
      
      private var §_-AM§:Number;
      
      private var mAlpha:Number;
      
      private var §_-oD§:Boolean;
      
      private var §_-ZI§:Boolean;
      
      private var mName:String;
      
      private var §_-GZ§:Number;
      
      private var §_-YE§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §_-oJ§();
         }
         this.mX = this.mY = this.§_-oy§ = this.§_-Pk§ = this.§_-AM§ = 0;
         this.§_-nI§ = this.§_-K1§ = this.mAlpha = 1;
         this.§_-oD§ = this.§_-ZI§ = true;
         this.§_-GZ§ = -1;
      }
      
      public function dispose() : void
      {
         §_-D7§();
      }
      
      public function §_-aQ§(param1:Boolean = false) : void
      {
         if(this.§_-YE§)
         {
            this.§_-YE§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §_-R9§(param1:DisplayObject) : Matrix
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
               _loc2_.concat(_loc6_.§_-NP§);
               _loc6_ = _loc6_.parent;
            }
            return _loc2_;
         }
         if(param1.§_-YE§ == this)
         {
            _loc3_ = param1.§_-NP§;
            _loc3_.invert();
            return _loc3_;
         }
         if(param1 == this.§_-YE§)
         {
            return this.§_-NP§;
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
            _loc2_.concat(_loc6_.§_-NP§);
            _loc6_ = _loc6_.parent;
         }
         _loc3_ = new Matrix();
         _loc6_ = param1;
         while(_loc6_ != _loc5_)
         {
            _loc3_.concat(_loc6_.§_-NP§);
            _loc6_ = _loc6_.parent;
         }
         _loc3_.invert();
         _loc2_.concat(_loc3_);
         return _loc2_;
      }
      
      public function getBounds(param1:DisplayObject) : Rectangle
      {
         throw new §_-ok§("Method needs to be implemented in subclass");
      }
      
      public function hitTestPoint(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§_-oD§ || !this.§_-ZI§))
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
            _loc2_.concat(_loc3_.§_-NP§);
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
            _loc2_.concat(_loc3_.§_-NP§);
            _loc3_ = _loc3_.parent;
         }
         _loc2_.invert();
         return _loc2_.transformPoint(param1);
      }
      
      public function render(param1:§_-F§, param2:Number) : void
      {
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§_-GZ§)
            {
               return;
            }
            this.§_-GZ§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §_-kf§(param1:DisplayObjectContainer) : void
      {
         this.§_-YE§ = param1;
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function §_-tq§(param1:Matrix3D) : void
      {
         if(this.mX != 0 || this.mY != 0)
         {
            param1.prependTranslation(this.mX,this.mY,0);
         }
         if(this.§_-AM§ != 0)
         {
            param1.prependRotation(this.§_-AM§ / Math.PI * 180,Vector3D.Z_AXIS);
         }
         if(this.§_-nI§ != 1 || this.§_-K1§ != 1)
         {
            param1.prependScale(this.§_-nI§,this.§_-K1§,1);
         }
         if(this.§_-oy§ != 0 || this.§_-Pk§ != 0)
         {
            param1.prependTranslation(-this.§_-oy§,-this.§_-Pk§,0);
         }
      }
      
      public function get §_-NP§() : Matrix
      {
         var _loc1_:Matrix = new Matrix();
         if(this.§_-oy§ != 0 || this.§_-Pk§ != 0)
         {
            _loc1_.translate(-this.§_-oy§,-this.§_-Pk§);
         }
         if(this.§_-nI§ != 1 || this.§_-K1§ != 1)
         {
            _loc1_.scale(this.§_-nI§,this.§_-K1§);
         }
         if(this.§_-AM§ != 0)
         {
            _loc1_.rotate(this.§_-AM§);
         }
         if(this.mX != 0 || this.mY != 0)
         {
            _loc1_.translate(this.mX,this.mY);
         }
         return _loc1_;
      }
      
      public function get §_-bC§() : Rectangle
      {
         return this.getBounds(this.§_-YE§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§_-YE§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§_-nI§ = 1;
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
         return this.getBounds(this.§_-YE§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§_-K1§ = 1;
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
         return this.§_-oy§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§_-oy§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§_-Pk§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§_-Pk§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§_-nI§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§_-nI§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§_-K1§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§_-K1§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§_-AM§;
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
         this.§_-AM§ = param1;
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
         return this.§_-oD§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§_-oD§ = param1;
      }
      
      public function get §_-wV§() : Boolean
      {
         return this.§_-ZI§;
      }
      
      public function set §_-wV§(param1:Boolean) : void
      {
         this.§_-ZI§ = param1;
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
         return this.§_-YE§;
      }
      
      public function get stage() : Stage
      {
         return this.root as Stage;
      }
   }
}
