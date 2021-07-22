package §]!v§
{
   import §+!F§.§<!l§;
   import §;5§.§+"J§;
   import §;5§.§4"+§;
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
      
      private static var §-!P§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §!w§:Rectangle = new Rectangle();
      
      private static var §"5§:Matrix = new Matrix();
      
      private static var §>!o§:Matrix = new Matrix();
      
      protected static var §-?§:int = 0;
       
      
      private var §"""§:Number;
      
      private var §5!J§:Number;
      
      private var §1m§:Number;
      
      private var §;!Q§:Number;
      
      private var §]!o§:Number;
      
      private var §=!s§:Number;
      
      private var § !r§:Number;
      
      private var §@p§:Number;
      
      private var §@"?§:Boolean;
      
      private var §]"7§:Boolean;
      
      private var §>!2§:Number;
      
      private var mName:String;
      
      private var §1;§:Number;
      
      private var §use §:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §4"+§();
         }
         this.§"""§ = this.§5!J§ = this.§1m§ = this.§;!Q§ = this.§ !r§ = 0;
         this.§]!o§ = this.§=!s§ = this.§@p§ = 1;
         this.§@"?§ = this.§]"7§ = true;
         this.§1;§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §1"D§(param1:Boolean = false) : void
      {
         if(this.§use §)
         {
            this.§use §.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §["+§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§use § || param1 == null && this.§use § == null)
         {
            if(this.§1m§ != 0 || this.§;!Q§ != 0)
            {
               param2.translate(-this.§1m§,-this.§;!Q§);
            }
            if(this.§]!o§ != 1 || this.§=!s§ != 1)
            {
               param2.scale(this.§]!o§,this.§=!s§);
            }
            if(this.§ !r§ != 0)
            {
               param2.rotate(this.§ !r§);
            }
            if(this.§"""§ != 0 || this.§5!J§ != 0)
            {
               param2.translate(this.§"""§,this.§5!J§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§["+§(_loc4_.§use §,§"5§);
               param2.concat(§"5§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§use § == this)
         {
            param1.§["+§(this,param2);
            param2.invert();
            return param2;
         }
         §-!P§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §-!P§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §-!P§.indexOf(_loc4_) == -1)
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
            _loc4_.§["+§(_loc4_.§use §,§"5§);
            param2.concat(§"5§);
            _loc4_ = _loc4_.parent;
         }
         §>!o§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§["+§(_loc4_.§use §,§"5§);
            §>!o§.concat(§"5§);
            _loc4_ = _loc4_.parent;
         }
         §>!o§.invert();
         param2.concat(§>!o§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §+"J§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§@"?§ || !this.§]"7§))
         {
            return null;
         }
         if(this.getBounds(this,§!w§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §>!o§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§["+§(_loc2_.§use §,§"5§);
            §>!o§.concat(§"5§);
            _loc2_ = _loc2_.parent;
         }
         return §>!o§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §>!o§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§["+§(_loc2_.§use §,§"5§);
            §>!o§.concat(§"5§);
            _loc2_ = _loc2_.parent;
         }
         §>!o§.invert();
         return §>!o§.transformPoint(param1);
      }
      
      public function render(param1:§<!l§, param2:Number) : void
      {
         throw new §+"J§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§1;§)
            {
               return;
            }
            this.§1;§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §1!"§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§use §;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §;r§();
         if(param1 != this.§use § && this.§use § && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§use § = param1;
         if(this.§use § && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§use §)
         {
            this.§use §.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§use §)
         {
            this.§use §.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §4"8§() : Matrix
      {
         return this.§["+§(this.§use §);
      }
      
      public function get §^n§() : Rectangle
      {
         return this.getBounds(this.§use §);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§use §,§!w§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§]!o§ = 1;
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
         return this.getBounds(this.§use §,§!w§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§=!s§ = 1;
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
         var _loc2_:Array = §;r§();
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
      
      public function §;"0§(param1:Matrix3D) : void
      {
         if(this.§ !r§ == 0 && this.§]!o§ == 1 && this.§=!s§ == 1)
         {
            if(this.§"""§ + this.§1m§ != 0 || this.§5!J§ + this.§;!Q§ != 0)
            {
               param1.prependTranslation(this.§"""§ + this.§1m§,this.§5!J§ + this.§;!Q§,0);
            }
         }
         else
         {
            if(this.§"""§ != 0 || this.§5!J§ != 0)
            {
               param1.prependTranslation(this.§"""§,this.§5!J§,0);
            }
            if(this.§ !r§ != 0)
            {
               param1.prependRotation(this.§ !r§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§]!o§ != 1 || this.§=!s§ != 1)
            {
               param1.prependScale(this.§]!o§,this.§=!s§,1);
            }
            if(this.§1m§ != 0 || this.§;!Q§ != 0)
            {
               param1.prependTranslation(this.§1m§,this.§;!Q§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§"""§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§"""§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§5!J§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§5!J§ = param1;
      }
      
      public function get z() : Number
      {
         return this.§>!2§;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.§use §)
         {
            this.§>!2§ = param1;
         }
      }
      
      public function get pivotX() : Number
      {
         return this.§1m§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§1m§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§;!Q§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§;!Q§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§]!o§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§]!o§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§=!s§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§=!s§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§ !r§;
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
         this.§ !r§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.§@p§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§@p§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§@"?§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§@"?§ = param1;
      }
      
      public function get §5! §() : Boolean
      {
         return this.§]"7§;
      }
      
      public function set §5! §(param1:Boolean) : void
      {
         this.§]"7§ = param1;
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
         return this.§use §;
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
