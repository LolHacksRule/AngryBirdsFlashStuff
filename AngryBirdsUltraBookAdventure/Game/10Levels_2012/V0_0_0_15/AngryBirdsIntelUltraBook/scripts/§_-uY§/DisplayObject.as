package §_-uY§
{
   import §_-0Ea§.§_-zM§;
   import §_-JM§.§_-03y§;
   import §_-JM§.§true§;
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
      
      private static var §_-0A3§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §_-Da§:Rectangle = new Rectangle();
      
      private static var §_-6w§:Matrix = new Matrix();
      
      private static var §_-lu§:Matrix = new Matrix();
      
      protected static var §_-iJ§:int = 0;
       
      
      private var §_-c§:Number;
      
      private var §_-l1§:Number;
      
      private var §_-7r§:Number;
      
      private var §_-yG§:Number;
      
      private var §_-1e§:Number;
      
      private var §_-1-§:Number;
      
      private var §_-0Cn§:Number;
      
      private var §_-uO§:Number;
      
      private var §_-0E4§:Boolean;
      
      private var §_-065§:Boolean;
      
      private var mName:String;
      
      private var §_-9i§:Number;
      
      private var §_-00U§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §_-03y§();
         }
         this.§_-c§ = this.§_-l1§ = this.§_-7r§ = this.§_-yG§ = this.§_-0Cn§ = 0;
         this.§_-1e§ = this.§_-1-§ = this.§_-uO§ = 1;
         this.§_-0E4§ = this.§_-065§ = true;
         this.§_-9i§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §_-oV§(param1:Boolean = false) : void
      {
         if(this.§_-00U§)
         {
            this.§_-00U§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §_-mP§(param1:DisplayObject, param2:Matrix = null) : Matrix
      {
         if(param2)
         {
            param2.identity();
         }
         else
         {
            param2 = new Matrix();
         }
         if(param1 == this)
         {
            return param2;
         }
         if(param1 == this.§_-00U§ || param1 == null && this.§_-00U§ == null)
         {
            if(this.§_-7r§ != 0 || this.§_-yG§ != 0)
            {
               param2.translate(-this.§_-7r§,-this.§_-yG§);
            }
            if(this.§_-1e§ != 1 || this.§_-1-§ != 1)
            {
               param2.scale(this.§_-1e§,this.§_-1-§);
            }
            if(this.§_-0Cn§ != 0)
            {
               param2.rotate(this.§_-0Cn§);
            }
            if(this.§_-c§ != 0 || this.§_-l1§ != 0)
            {
               param2.translate(this.§_-c§,this.§_-l1§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§_-mP§(_loc4_.§_-00U§,§_-6w§);
               param2.concat(§_-6w§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§_-00U§ == this)
         {
            param1.§_-mP§(this,param2);
            param2.invert();
            return param2;
         }
         §_-0A3§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §_-0A3§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §_-0A3§.indexOf(_loc4_) == -1)
         {
            _loc4_ = _loc4_.parent;
         }
         if(_loc4_ == null)
         {
            throw new ArgumentError("Object not connected to target");
         }
         _loc3_ = _loc4_;
         _loc4_ = this;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§_-mP§(_loc4_.§_-00U§,§_-6w§);
            param2.concat(§_-6w§);
            _loc4_ = _loc4_.parent;
         }
         §_-lu§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§_-mP§(_loc4_.§_-00U§,§_-6w§);
            §_-lu§.concat(§_-6w§);
            _loc4_ = _loc4_.parent;
         }
         §_-lu§.invert();
         param2.concat(§_-lu§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §true§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§_-0E4§ || !this.§_-065§))
         {
            return null;
         }
         if(this.getBounds(this,§_-Da§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §_-lu§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§_-mP§(_loc2_.§_-00U§,§_-6w§);
            §_-lu§.concat(§_-6w§);
            _loc2_ = _loc2_.parent;
         }
         return §_-lu§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §_-lu§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§_-mP§(_loc2_.§_-00U§,§_-6w§);
            §_-lu§.concat(§_-6w§);
            _loc2_ = _loc2_.parent;
         }
         §_-lu§.invert();
         return §_-lu§.transformPoint(param1);
      }
      
      public function render(param1:§_-zM§, param2:Number) : void
      {
         throw new §true§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§_-9i§)
            {
               return;
            }
            this.§_-9i§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §_-yt§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§_-00U§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §_-J0§();
         if(param1 != this.§_-00U§ && this.§_-00U§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§_-00U§ = param1;
         if(this.§_-00U§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§_-00U§)
         {
            this.§_-00U§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§_-00U§)
         {
            this.§_-00U§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §_-gv§() : Matrix
      {
         return this.§_-mP§(this.§_-00U§);
      }
      
      public function get §_-XV§() : Rectangle
      {
         return this.getBounds(this.§_-00U§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§_-00U§,§_-Da§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§_-1e§ = 1;
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
         return this.getBounds(this.§_-00U§,§_-Da§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§_-1-§ = 1;
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
         var _loc2_:Array = §_-J0§();
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
      
      public function §_-cb§(param1:Matrix3D) : void
      {
         if(this.§_-0Cn§ == 0 && this.§_-1e§ == 1 && this.§_-1-§ == 1)
         {
            if(this.§_-c§ + this.§_-7r§ != 0 || this.§_-l1§ + this.§_-yG§ != 0)
            {
               param1.prependTranslation(this.§_-c§ + this.§_-7r§,this.§_-l1§ + this.§_-yG§,0);
            }
         }
         else
         {
            if(this.§_-c§ != 0 || this.§_-l1§ != 0)
            {
               param1.prependTranslation(this.§_-c§,this.§_-l1§,0);
            }
            if(this.§_-0Cn§ != 0)
            {
               param1.prependRotation(this.§_-0Cn§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§_-1e§ != 1 || this.§_-1-§ != 1)
            {
               param1.prependScale(this.§_-1e§,this.§_-1-§,1);
            }
            if(this.§_-7r§ != 0 || this.§_-yG§ != 0)
            {
               param1.prependTranslation(this.§_-7r§,this.§_-yG§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§_-c§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§_-c§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§_-l1§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§_-l1§ = param1;
      }
      
      public function get pivotX() : Number
      {
         return this.§_-7r§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§_-7r§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§_-yG§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§_-yG§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§_-1e§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§_-1e§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§_-1-§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§_-1-§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§_-0Cn§;
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
         this.§_-0Cn§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.§_-uO§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§_-uO§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§_-0E4§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§_-0E4§ = param1;
      }
      
      public function get §_-xd§() : Boolean
      {
         return this.§_-065§;
      }
      
      public function set §_-xd§(param1:Boolean) : void
      {
         this.§_-065§ = param1;
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
         return this.§_-00U§;
      }
      
      public function get stage() : Stage
      {
         return this.root as Stage;
      }
      
      public function set color(param1:uint) : void
      {
      }
   }
}
