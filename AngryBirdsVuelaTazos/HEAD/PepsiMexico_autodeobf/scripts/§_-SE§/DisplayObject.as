package §_-SE§
{
   import §_-Ku§.§_-Nq§;
   import §_-QR§.§_-dN§;
   import §_-QR§.§_-uf§;
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
      
      private var §_-0S§:Number;
      
      private var §_-DJ§:Number;
      
      private var §_-jE§:Number;
      
      private var §_-JJ§:Number;
      
      private var §_-TC§:Number;
      
      private var §_-65§:Number;
      
      private var §_-4§:Boolean;
      
      private var §_-Gd§:Boolean;
      
      private var mName:String;
      
      private var §_-GU§:Number;
      
      private var §_-gW§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §_-dN§();
         }
         this.mX = this.mY = this.§_-0S§ = this.§_-DJ§ = this.§_-TC§ = 0;
         this.§_-jE§ = this.§_-JJ§ = this.§_-65§ = 1;
         this.§_-4§ = this.§_-Gd§ = true;
         this.§_-GU§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
         if(this.§_-gW§)
         {
            this.§_-gW§.removeChild(this);
         }
      }
      
      public function §_-Q-§(param1:Boolean = false) : void
      {
         if(this.§_-gW§)
         {
            this.§_-gW§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §_-Bv§(param1:DisplayObject) : Matrix
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
               _loc2_.concat(_loc6_.§_-hr§);
               _loc6_ = _loc6_.parent;
            }
            return _loc2_;
         }
         if(param1.§_-gW§ == this)
         {
            _loc3_ = param1.§_-hr§;
            _loc3_.invert();
            return _loc3_;
         }
         if(param1 == this.§_-gW§)
         {
            return this.§_-hr§;
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
            _loc2_.concat(_loc6_.§_-hr§);
            _loc6_ = _loc6_.parent;
         }
         _loc3_ = new Matrix();
         _loc6_ = param1;
         while(_loc6_ != _loc5_)
         {
            _loc3_.concat(_loc6_.§_-hr§);
            _loc6_ = _loc6_.parent;
         }
         _loc3_.invert();
         _loc2_.concat(_loc3_);
         return _loc2_;
      }
      
      public function getBounds(param1:DisplayObject) : Rectangle
      {
         throw new §_-uf§("Method needs to be implemented in subclass");
      }
      
      public function hitTestPoint(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§_-4§ || !this.§_-Gd§))
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
            _loc2_.concat(_loc3_.§_-hr§);
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
            _loc2_.concat(_loc3_.§_-hr§);
            _loc3_ = _loc3_.parent;
         }
         _loc2_.invert();
         return _loc2_.transformPoint(param1);
      }
      
      public function render(param1:§_-Nq§, param2:Number) : void
      {
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§_-GU§)
            {
               return;
            }
            this.§_-GU§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §_-8Q§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:String = null;
         var _loc2_:Array = §_-gV§();
         if(param1 != this.§_-gW§ && this.§_-gW§ && _loc2_.length > 0)
         {
            for each(_loc3_ in _loc2_)
            {
               this.removeEventListeningObject(this,_loc3_);
            }
         }
         this.§_-gW§ = param1;
         if(this.§_-gW§ && _loc2_.length > 0)
         {
            for each(_loc3_ in _loc2_)
            {
               this.addEventListeningObject(this,_loc3_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§_-gW§)
         {
            this.§_-gW§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§_-gW§)
         {
            this.§_-gW§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function §_-EJ§(param1:Matrix3D) : void
      {
         if(this.mX != 0 || this.mY != 0)
         {
            param1.prependTranslation(this.mX,this.mY,0);
         }
         if(this.§_-TC§ != 0)
         {
            param1.prependRotation(this.§_-TC§ / Math.PI * 180,Vector3D.Z_AXIS);
         }
         if(this.§_-jE§ != 1 || this.§_-JJ§ != 1)
         {
            param1.prependScale(this.§_-jE§,this.§_-JJ§,1);
         }
         if(this.§_-0S§ != 0 || this.§_-DJ§ != 0)
         {
            param1.prependTranslation(-this.§_-0S§,-this.§_-DJ§,0);
         }
      }
      
      public function get §_-hr§() : Matrix
      {
         var _loc1_:Matrix = new Matrix();
         if(this.§_-0S§ != 0 || this.§_-DJ§ != 0)
         {
            _loc1_.translate(-this.§_-0S§,-this.§_-DJ§);
         }
         if(this.§_-jE§ != 1 || this.§_-JJ§ != 1)
         {
            _loc1_.scale(this.§_-jE§,this.§_-JJ§);
         }
         if(this.§_-TC§ != 0)
         {
            _loc1_.rotate(this.§_-TC§);
         }
         if(this.mX != 0 || this.mY != 0)
         {
            _loc1_.translate(this.mX,this.mY);
         }
         return _loc1_;
      }
      
      public function get §_-wl§() : Rectangle
      {
         return this.getBounds(this.§_-gW§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§_-gW§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§_-jE§ = 1;
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
         return this.getBounds(this.§_-gW§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§_-JJ§ = 1;
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
         var _loc2_:Array = §_-gV§();
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
         return this.§_-0S§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§_-0S§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§_-DJ§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§_-DJ§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§_-jE§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§_-jE§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§_-JJ§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§_-JJ§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§_-TC§;
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
         this.§_-TC§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.§_-65§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§_-65§ = Math.max(0,Math.min(1,param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§_-4§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§_-4§ = param1;
      }
      
      public function get §_-54§() : Boolean
      {
         return this.§_-Gd§;
      }
      
      public function set §_-54§(param1:Boolean) : void
      {
         this.§_-Gd§ = param1;
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
         return this.§_-gW§;
      }
      
      public function get stage() : Stage
      {
         return this.root as Stage;
      }
      
      public function setColor(param1:uint) : void
      {
      }
   }
}
