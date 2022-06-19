package §^a§
{
   import §6;§.§2^§;
   import §]u§.§#=§;
   import §]u§.§<=§;
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
      
      private static var §&-§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §8_§:Rectangle = new Rectangle();
      
      private static var §&!T§:Matrix = new Matrix();
      
      private static var §8Y§:Matrix = new Matrix();
      
      protected static var §,!=§:int = 0;
       
      
      private var §7F§:Number;
      
      private var §6_§:Number;
      
      private var §4!=§:Number;
      
      private var §>!D§:Number;
      
      private var §3!W§:Number;
      
      private var §8N§:Number;
      
      private var §!!&§:Number;
      
      private var mAlpha:Number;
      
      private var §>o§:Boolean;
      
      private var §4x§:Boolean;
      
      private var §^!d§:Number;
      
      private var mName:String;
      
      private var §,i§:Number;
      
      private var §&!c§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §<=§();
         }
         this.§7F§ = this.§6_§ = this.§4!=§ = this.§>!D§ = this.§!!&§ = 0;
         this.§3!W§ = this.§8N§ = this.mAlpha = 1;
         this.§>o§ = this.§4x§ = true;
         this.§,i§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §"!J§(param1:Boolean = false) : void
      {
         if(this.§&!c§)
         {
            this.§&!c§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §?z§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§&!c§ || param1 == null && this.§&!c§ == null)
         {
            if(this.§4!=§ != 0 || this.§>!D§ != 0)
            {
               param2.translate(-this.§4!=§,-this.§>!D§);
            }
            if(this.§3!W§ != 1 || this.§8N§ != 1)
            {
               param2.scale(this.§3!W§,this.§8N§);
            }
            if(this.§!!&§ != 0)
            {
               param2.rotate(this.§!!&§);
            }
            if(this.§7F§ != 0 || this.§6_§ != 0)
            {
               param2.translate(this.§7F§,this.§6_§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§?z§(_loc4_.§&!c§,§&!T§);
               param2.concat(§&!T§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§&!c§ == this)
         {
            param1.§?z§(this,param2);
            param2.invert();
            return param2;
         }
         §&-§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §&-§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §&-§.indexOf(_loc4_) == -1)
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
            _loc4_.§?z§(_loc4_.§&!c§,§&!T§);
            param2.concat(§&!T§);
            _loc4_ = _loc4_.parent;
         }
         §8Y§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§?z§(_loc4_.§&!c§,§&!T§);
            §8Y§.concat(§&!T§);
            _loc4_ = _loc4_.parent;
         }
         §8Y§.invert();
         param2.concat(§8Y§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §#=§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§>o§ || !this.§4x§))
         {
            return null;
         }
         if(this.getBounds(this,§8_§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §8Y§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§?z§(_loc2_.§&!c§,§&!T§);
            §8Y§.concat(§&!T§);
            _loc2_ = _loc2_.parent;
         }
         return §8Y§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §8Y§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§?z§(_loc2_.§&!c§,§&!T§);
            §8Y§.concat(§&!T§);
            _loc2_ = _loc2_.parent;
         }
         §8Y§.invert();
         return §8Y§.transformPoint(param1);
      }
      
      public function render(param1:§2^§, param2:Number) : void
      {
         throw new §#=§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§,i§)
            {
               return;
            }
            this.§,i§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function § !1§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§&!c§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §]!T§();
         if(param1 != this.§&!c§ && this.§&!c§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§&!c§ = param1;
         if(this.§&!c§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§&!c§)
         {
            this.§&!c§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§&!c§)
         {
            this.§&!c§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §,1§() : Matrix
      {
         return this.§?z§(this.§&!c§);
      }
      
      public function get §-j§() : Rectangle
      {
         return this.getBounds(this.§&!c§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§&!c§,§8_§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§3!W§ = 1;
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
         return this.getBounds(this.§&!c§,§8_§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§8N§ = 1;
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
         var _loc2_:Array = §]!T§();
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
      
      public function §`P§(param1:Matrix3D) : void
      {
         if(this.§!!&§ == 0 && this.§3!W§ == 1 && this.§8N§ == 1)
         {
            if(this.§7F§ + this.§4!=§ != 0 || this.§6_§ + this.§>!D§ != 0)
            {
               param1.prependTranslation(this.§7F§ + this.§4!=§,this.§6_§ + this.§>!D§,0);
            }
         }
         else
         {
            if(this.§7F§ != 0 || this.§6_§ != 0)
            {
               param1.prependTranslation(this.§7F§,this.§6_§,0);
            }
            if(this.§!!&§ != 0)
            {
               param1.prependRotation(this.§!!&§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§3!W§ != 1 || this.§8N§ != 1)
            {
               param1.prependScale(this.§3!W§,this.§8N§,1);
            }
            if(this.§4!=§ != 0 || this.§>!D§ != 0)
            {
               param1.prependTranslation(this.§4!=§,this.§>!D§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§7F§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§7F§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§6_§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§6_§ = param1;
      }
      
      public function get z() : Number
      {
         return this.§^!d§;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.§&!c§)
         {
            this.§^!d§ = param1;
         }
      }
      
      public function get pivotX() : Number
      {
         return this.§4!=§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§4!=§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§>!D§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§>!D§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§3!W§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§3!W§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§8N§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§8N§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§!!&§;
      }
      
      public function set rotation(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         if(param1 > Math.PI)
         {
            _loc2_ = Math.ceil(param1 / (Math.PI * 2));
            param1 -= _loc2_ * (Math.PI * 2);
         }
         if(param1 < -Math.PI)
         {
            _loc2_ = Math.ceil(-param1 / (Math.PI * 2));
            param1 += _loc2_ * (Math.PI * 2);
         }
         this.§!!&§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.mAlpha;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.mAlpha = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§>o§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§>o§ = param1;
      }
      
      public function get §;o§() : Boolean
      {
         return this.§4x§;
      }
      
      public function set §;o§(param1:Boolean) : void
      {
         this.§4x§ = param1;
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
         return this.§&!c§;
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
