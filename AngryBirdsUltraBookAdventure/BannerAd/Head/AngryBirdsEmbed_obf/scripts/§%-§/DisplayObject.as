package §%-§
{
   import §&p§.§`G§;
   import §]c§.§4_§;
   import §]c§.§^!"§;
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
      
      private static var §-j§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §&!%§:Rectangle = new Rectangle();
      
      private static var §+!>§:Matrix = new Matrix();
      
      private static var §;;§:Matrix = new Matrix();
      
      protected static var §^%§:int = 0;
       
      
      private var §5!>§:Number;
      
      private var §#!$§:Number;
      
      private var §^A§:Number;
      
      private var §6W§:Number;
      
      private var §02§:Number;
      
      private var §4^§:Number;
      
      private var §+H§:Number;
      
      private var §?^§:Number;
      
      private var §#!8§:Boolean;
      
      private var §&k§:Boolean;
      
      private var mName:String;
      
      private var §9C§:Number;
      
      private var §#]§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §^!"§();
         }
         this.§5!>§ = this.§#!$§ = this.§^A§ = this.§6W§ = this.§+H§ = 0;
         this.§02§ = this.§4^§ = this.§?^§ = 1;
         this.§#!8§ = this.§&k§ = true;
         this.§9C§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §?@§(param1:Boolean = false) : void
      {
         if(this.§#]§)
         {
            this.§#]§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §#!1§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§#]§ || param1 == null && this.§#]§ == null)
         {
            if(this.§^A§ != 0 || this.§6W§ != 0)
            {
               param2.translate(-this.§^A§,-this.§6W§);
            }
            if(this.§02§ != 1 || this.§4^§ != 1)
            {
               param2.scale(this.§02§,this.§4^§);
            }
            if(this.§+H§ != 0)
            {
               param2.rotate(this.§+H§);
            }
            if(this.§5!>§ != 0 || this.§#!$§ != 0)
            {
               param2.translate(this.§5!>§,this.§#!$§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§#!1§(_loc4_.§#]§,§+!>§);
               param2.concat(§+!>§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§#]§ == this)
         {
            param1.§#!1§(this,param2);
            param2.invert();
            return param2;
         }
         §-j§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §-j§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §-j§.indexOf(_loc4_) == -1)
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
            _loc4_.§#!1§(_loc4_.§#]§,§+!>§);
            param2.concat(§+!>§);
            _loc4_ = _loc4_.parent;
         }
         §;;§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§#!1§(_loc4_.§#]§,§+!>§);
            §;;§.concat(§+!>§);
            _loc4_ = _loc4_.parent;
         }
         §;;§.invert();
         param2.concat(§;;§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §4_§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§#!8§ || !this.§&k§))
         {
            return null;
         }
         if(this.getBounds(this,§&!%§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §;;§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§#!1§(_loc2_.§#]§,§+!>§);
            §;;§.concat(§+!>§);
            _loc2_ = _loc2_.parent;
         }
         return §;;§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §;;§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§#!1§(_loc2_.§#]§,§+!>§);
            §;;§.concat(§+!>§);
            _loc2_ = _loc2_.parent;
         }
         §;;§.invert();
         return §;;§.transformPoint(param1);
      }
      
      public function render(param1:§`G§, param2:Number) : void
      {
         throw new §4_§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§9C§)
            {
               return;
            }
            this.§9C§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §<^§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§#]§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §#q§();
         if(param1 != this.§#]§ && this.§#]§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§#]§ = param1;
         if(this.§#]§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§#]§)
         {
            this.§#]§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§#]§)
         {
            this.§#]§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §1!"§() : Matrix
      {
         return this.§#!1§(this.§#]§);
      }
      
      public function get §=_§() : Rectangle
      {
         return this.getBounds(this.§#]§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§#]§,§&!%§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§02§ = 1;
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
         return this.getBounds(this.§#]§,§&!%§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§4^§ = 1;
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
         var _loc2_:Array = §#q§();
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
      
      public function §5!F§(param1:Matrix3D) : void
      {
         if(this.§+H§ == 0 && this.§02§ == 1 && this.§4^§ == 1)
         {
            if(this.§5!>§ + this.§^A§ != 0 || this.§#!$§ + this.§6W§ != 0)
            {
               param1.prependTranslation(this.§5!>§ + this.§^A§,this.§#!$§ + this.§6W§,0);
            }
         }
         else
         {
            if(this.§5!>§ != 0 || this.§#!$§ != 0)
            {
               param1.prependTranslation(this.§5!>§,this.§#!$§,0);
            }
            if(this.§+H§ != 0)
            {
               param1.prependRotation(this.§+H§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§02§ != 1 || this.§4^§ != 1)
            {
               param1.prependScale(this.§02§,this.§4^§,1);
            }
            if(this.§^A§ != 0 || this.§6W§ != 0)
            {
               param1.prependTranslation(this.§^A§,this.§6W§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§5!>§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§5!>§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§#!$§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§#!$§ = param1;
      }
      
      public function get pivotX() : Number
      {
         return this.§^A§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§^A§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§6W§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§6W§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§02§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§02§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§4^§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§4^§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§+H§;
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
         this.§+H§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.§?^§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§?^§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§#!8§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§#!8§ = param1;
      }
      
      public function get §4!5§() : Boolean
      {
         return this.§&k§;
      }
      
      public function set §4!5§(param1:Boolean) : void
      {
         this.§&k§ = param1;
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
         return this.§#]§;
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
