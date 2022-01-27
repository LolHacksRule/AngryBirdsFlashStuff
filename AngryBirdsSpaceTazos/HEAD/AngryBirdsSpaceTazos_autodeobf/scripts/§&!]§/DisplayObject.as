package §&!]§
{
   import §'!B§.§0!p§;
   import §2"7§.§+"=§;
   import §2"7§.§4"A§;
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
      
      private static var §+!u§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §0!&§:Rectangle = new Rectangle();
      
      private static var §<!d§:Matrix = new Matrix();
      
      private static var §2!o§:Matrix = new Matrix();
      
      protected static var §+y§:int = 0;
       
      
      private var §''§:Number;
      
      private var §3"<§:Number;
      
      private var §;;§:Number;
      
      private var §6"C§:Number;
      
      private var § >§:Number;
      
      private var §#!C§:Number;
      
      private var § "F§:Number;
      
      private var §1E§:Number;
      
      private var §1p§:Boolean;
      
      private var §`!a§:Boolean;
      
      private var §@9§:Number;
      
      private var mName:String;
      
      private var §0n§:Number;
      
      private var §1"%§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §4"A§();
         }
         this.§''§ = this.§3"<§ = this.§;;§ = this.§6"C§ = this.§ "F§ = 0;
         this.§ >§ = this.§#!C§ = this.§1E§ = 1;
         this.§1p§ = this.§`!a§ = true;
         this.§0n§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function § try§(param1:Boolean = false) : void
      {
         if(this.§1"%§)
         {
            this.§1"%§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §^""§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§1"%§ || param1 == null && this.§1"%§ == null)
         {
            if(this.§;;§ != 0 || this.§6"C§ != 0)
            {
               param2.translate(-this.§;;§,-this.§6"C§);
            }
            if(this.§ >§ != 1 || this.§#!C§ != 1)
            {
               param2.scale(this.§ >§,this.§#!C§);
            }
            if(this.§ "F§ != 0)
            {
               param2.rotate(this.§ "F§);
            }
            if(this.§''§ != 0 || this.§3"<§ != 0)
            {
               param2.translate(this.§''§,this.§3"<§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§^""§(_loc4_.§1"%§,§<!d§);
               param2.concat(§<!d§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§1"%§ == this)
         {
            param1.§^""§(this,param2);
            param2.invert();
            return param2;
         }
         §+!u§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §+!u§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §+!u§.indexOf(_loc4_) == -1)
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
            _loc4_.§^""§(_loc4_.§1"%§,§<!d§);
            param2.concat(§<!d§);
            _loc4_ = _loc4_.parent;
         }
         §2!o§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§^""§(_loc4_.§1"%§,§<!d§);
            §2!o§.concat(§<!d§);
            _loc4_ = _loc4_.parent;
         }
         §2!o§.invert();
         param2.concat(§2!o§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §+"=§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§1p§ || !this.§`!a§))
         {
            return null;
         }
         if(this.getBounds(this,§0!&§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §2!o§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§^""§(_loc2_.§1"%§,§<!d§);
            §2!o§.concat(§<!d§);
            _loc2_ = _loc2_.parent;
         }
         return §2!o§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §2!o§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§^""§(_loc2_.§1"%§,§<!d§);
            §2!o§.concat(§<!d§);
            _loc2_ = _loc2_.parent;
         }
         §2!o§.invert();
         return §2!o§.transformPoint(param1);
      }
      
      public function render(param1:§0!p§, param2:Number) : void
      {
         throw new §+"=§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§0n§)
            {
               return;
            }
            this.§0n§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §`C§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§1"%§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §'!z§();
         if(param1 != this.§1"%§ && this.§1"%§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§1"%§ = param1;
         if(this.§1"%§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§1"%§)
         {
            this.§1"%§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§1"%§)
         {
            this.§1"%§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §[%§() : Matrix
      {
         return this.§^""§(this.§1"%§);
      }
      
      public function get §#!A§() : Rectangle
      {
         return this.getBounds(this.§1"%§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§1"%§,§0!&§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§ >§ = 1;
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
         return this.getBounds(this.§1"%§,§0!&§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§#!C§ = 1;
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
         var _loc2_:Array = §'!z§();
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
      
      public function §-!_§(param1:Matrix3D) : void
      {
         if(this.§ "F§ == 0 && this.§ >§ == 1 && this.§#!C§ == 1)
         {
            if(this.§''§ + this.§;;§ != 0 || this.§3"<§ + this.§6"C§ != 0)
            {
               param1.prependTranslation(this.§''§ + this.§;;§,this.§3"<§ + this.§6"C§,0);
            }
         }
         else
         {
            if(this.§''§ != 0 || this.§3"<§ != 0)
            {
               param1.prependTranslation(this.§''§,this.§3"<§,0);
            }
            if(this.§ "F§ != 0)
            {
               param1.prependRotation(this.§ "F§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§ >§ != 1 || this.§#!C§ != 1)
            {
               param1.prependScale(this.§ >§,this.§#!C§,1);
            }
            if(this.§;;§ != 0 || this.§6"C§ != 0)
            {
               param1.prependTranslation(this.§;;§,this.§6"C§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§''§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§''§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§3"<§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§3"<§ = param1;
      }
      
      public function get z() : Number
      {
         return this.§@9§;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.§1"%§)
         {
            this.§@9§ = param1;
         }
      }
      
      public function get pivotX() : Number
      {
         return this.§;;§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§;;§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§6"C§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§6"C§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§ >§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§ >§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§#!C§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§#!C§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§ "F§;
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
         this.§ "F§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.§1E§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§1E§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§1p§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§1p§ = param1;
      }
      
      public function get §="C§() : Boolean
      {
         return this.§`!a§;
      }
      
      public function set §="C§(param1:Boolean) : void
      {
         this.§`!a§ = param1;
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
         return this.§1"%§;
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
