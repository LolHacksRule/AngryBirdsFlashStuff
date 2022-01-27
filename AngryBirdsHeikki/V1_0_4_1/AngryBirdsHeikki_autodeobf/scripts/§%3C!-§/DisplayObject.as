package §<!-§
{
   import §'z§.§3V§;
   import §'z§.§4!R§;
   import §?!5§.§;P§;
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
      
      private static var §1!N§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §2!+§:Rectangle = new Rectangle();
      
      private static var § c§:Matrix = new Matrix();
      
      private static var §&o§:Matrix = new Matrix();
      
      protected static var §-!%§:int = 0;
       
      
      private var §-!c§:Number;
      
      private var §3![§:Number;
      
      private var §1S§:Number;
      
      private var § b§:Number;
      
      private var §1_§:Number;
      
      private var §3!c§:Number;
      
      private var §9!#§:Number;
      
      private var §^!4§:Number;
      
      private var §8!N§:Boolean;
      
      private var § !L§:Boolean;
      
      private var mName:String;
      
      private var §1!5§:Number;
      
      private var §]7§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §4!R§();
         }
         this.§-!c§ = this.§3![§ = this.§1S§ = this.§ b§ = this.§9!#§ = 0;
         this.§1_§ = this.§3!c§ = this.§^!4§ = 1;
         this.§8!N§ = this.§ !L§ = true;
         this.§1!5§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §?5§(param1:Boolean = false) : void
      {
         if(this.§]7§)
         {
            this.§]7§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §^!V§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§]7§ || param1 == null && this.§]7§ == null)
         {
            if(this.§1S§ != 0 || this.§ b§ != 0)
            {
               param2.translate(-this.§1S§,-this.§ b§);
            }
            if(this.§1_§ != 1 || this.§3!c§ != 1)
            {
               param2.scale(this.§1_§,this.§3!c§);
            }
            if(this.§9!#§ != 0)
            {
               param2.rotate(this.§9!#§);
            }
            if(this.§-!c§ != 0 || this.§3![§ != 0)
            {
               param2.translate(this.§-!c§,this.§3![§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§^!V§(_loc4_.§]7§,§ c§);
               param2.concat(§ c§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§]7§ == this)
         {
            param1.§^!V§(this,param2);
            param2.invert();
            return param2;
         }
         §1!N§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §1!N§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §1!N§.indexOf(_loc4_) == -1)
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
            _loc4_.§^!V§(_loc4_.§]7§,§ c§);
            param2.concat(§ c§);
            _loc4_ = _loc4_.parent;
         }
         §&o§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§^!V§(_loc4_.§]7§,§ c§);
            §&o§.concat(§ c§);
            _loc4_ = _loc4_.parent;
         }
         §&o§.invert();
         param2.concat(§&o§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §3V§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§8!N§ || !this.§ !L§))
         {
            return null;
         }
         if(this.getBounds(this,§2!+§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §&o§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§^!V§(_loc2_.§]7§,§ c§);
            §&o§.concat(§ c§);
            _loc2_ = _loc2_.parent;
         }
         return §&o§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §&o§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§^!V§(_loc2_.§]7§,§ c§);
            §&o§.concat(§ c§);
            _loc2_ = _loc2_.parent;
         }
         §&o§.invert();
         return §&o§.transformPoint(param1);
      }
      
      public function render(param1:§;P§, param2:Number) : void
      {
         throw new §3V§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§1!5§)
            {
               return;
            }
            this.§1!5§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §7>§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§]7§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §@7§();
         if(param1 != this.§]7§ && this.§]7§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§]7§ = param1;
         if(this.§]7§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§]7§)
         {
            this.§]7§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§]7§)
         {
            this.§]7§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §-s§() : Matrix
      {
         return this.§^!V§(this.§]7§);
      }
      
      public function get §;!$§() : Rectangle
      {
         return this.getBounds(this.§]7§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§]7§,§2!+§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§1_§ = 1;
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
         return this.getBounds(this.§]7§,§2!+§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§3!c§ = 1;
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
         var _loc2_:Array = §@7§();
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
      
      public function §=J§(param1:Matrix3D) : void
      {
         if(this.§9!#§ == 0 && this.§1_§ == 1 && this.§3!c§ == 1)
         {
            if(this.§-!c§ + this.§1S§ != 0 || this.§3![§ + this.§ b§ != 0)
            {
               param1.prependTranslation(this.§-!c§ + this.§1S§,this.§3![§ + this.§ b§,0);
            }
         }
         else
         {
            if(this.§-!c§ != 0 || this.§3![§ != 0)
            {
               param1.prependTranslation(this.§-!c§,this.§3![§,0);
            }
            if(this.§9!#§ != 0)
            {
               param1.prependRotation(this.§9!#§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§1_§ != 1 || this.§3!c§ != 1)
            {
               param1.prependScale(this.§1_§,this.§3!c§,1);
            }
            if(this.§1S§ != 0 || this.§ b§ != 0)
            {
               param1.prependTranslation(this.§1S§,this.§ b§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§-!c§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§-!c§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§3![§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§3![§ = param1;
      }
      
      public function get pivotX() : Number
      {
         return this.§1S§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§1S§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§ b§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§ b§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§1_§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§1_§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§3!c§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§3!c§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§9!#§;
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
         this.§9!#§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.§^!4§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§^!4§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§8!N§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§8!N§ = param1;
      }
      
      public function get §3S§() : Boolean
      {
         return this.§ !L§;
      }
      
      public function set §3S§(param1:Boolean) : void
      {
         this.§ !L§ = param1;
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
         return this.§]7§;
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
