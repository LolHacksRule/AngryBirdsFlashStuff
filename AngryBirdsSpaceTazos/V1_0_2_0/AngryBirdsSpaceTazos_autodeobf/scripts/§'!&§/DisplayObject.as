package §'!&§
{
   import §3!4§.§3=§;
   import §@T§.§+!A§;
   import §@T§.§5!v§;
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
      
      private static var §<"?§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §,!u§:Rectangle = new Rectangle();
      
      private static var §9O§:Matrix = new Matrix();
      
      private static var §3!a§:Matrix = new Matrix();
      
      protected static var §1!m§:int = 0;
       
      
      private var §>!J§:Number;
      
      private var §;`§:Number;
      
      private var §=!b§:Number;
      
      private var §+"#§:Number;
      
      private var §&!g§:Number;
      
      private var §0H§:Number;
      
      private var §^8§:Number;
      
      private var §[0§:Number;
      
      private var §@!d§:Boolean;
      
      private var §8K§:Boolean;
      
      private var §1L§:Number;
      
      private var mName:String;
      
      private var §??§:Number;
      
      private var §<;§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §+!A§();
         }
         this.§>!J§ = this.§;`§ = this.§=!b§ = this.§+"#§ = this.§^8§ = 0;
         this.§&!g§ = this.§0H§ = this.§[0§ = 1;
         this.§@!d§ = this.§8K§ = true;
         this.§??§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §]!j§(param1:Boolean = false) : void
      {
         if(this.§<;§)
         {
            this.§<;§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §+"F§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§<;§ || param1 == null && this.§<;§ == null)
         {
            if(this.§=!b§ != 0 || this.§+"#§ != 0)
            {
               param2.translate(-this.§=!b§,-this.§+"#§);
            }
            if(this.§&!g§ != 1 || this.§0H§ != 1)
            {
               param2.scale(this.§&!g§,this.§0H§);
            }
            if(this.§^8§ != 0)
            {
               param2.rotate(this.§^8§);
            }
            if(this.§>!J§ != 0 || this.§;`§ != 0)
            {
               param2.translate(this.§>!J§,this.§;`§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§+"F§(_loc4_.§<;§,§9O§);
               param2.concat(§9O§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§<;§ == this)
         {
            param1.§+"F§(this,param2);
            param2.invert();
            return param2;
         }
         §<"?§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §<"?§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §<"?§.indexOf(_loc4_) == -1)
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
            _loc4_.§+"F§(_loc4_.§<;§,§9O§);
            param2.concat(§9O§);
            _loc4_ = _loc4_.parent;
         }
         §3!a§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§+"F§(_loc4_.§<;§,§9O§);
            §3!a§.concat(§9O§);
            _loc4_ = _loc4_.parent;
         }
         §3!a§.invert();
         param2.concat(§3!a§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §5!v§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§@!d§ || !this.§8K§))
         {
            return null;
         }
         if(this.getBounds(this,§,!u§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §3!a§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§+"F§(_loc2_.§<;§,§9O§);
            §3!a§.concat(§9O§);
            _loc2_ = _loc2_.parent;
         }
         return §3!a§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §3!a§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§+"F§(_loc2_.§<;§,§9O§);
            §3!a§.concat(§9O§);
            _loc2_ = _loc2_.parent;
         }
         §3!a§.invert();
         return §3!a§.transformPoint(param1);
      }
      
      public function render(param1:§3=§, param2:Number) : void
      {
         throw new §5!v§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§??§)
            {
               return;
            }
            this.§??§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §<$§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§<;§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §4!n§();
         if(param1 != this.§<;§ && this.§<;§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§<;§ = param1;
         if(this.§<;§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§<;§)
         {
            this.§<;§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§<;§)
         {
            this.§<;§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §@",§() : Matrix
      {
         return this.§+"F§(this.§<;§);
      }
      
      public function get §@!!§() : Rectangle
      {
         return this.getBounds(this.§<;§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§<;§,§,!u§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§&!g§ = 1;
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
         return this.getBounds(this.§<;§,§,!u§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§0H§ = 1;
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
         var _loc2_:Array = §4!n§();
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
      
      public function §!r§(param1:Matrix3D) : void
      {
         if(this.§^8§ == 0 && this.§&!g§ == 1 && this.§0H§ == 1)
         {
            if(this.§>!J§ + this.§=!b§ != 0 || this.§;`§ + this.§+"#§ != 0)
            {
               param1.prependTranslation(this.§>!J§ + this.§=!b§,this.§;`§ + this.§+"#§,0);
            }
         }
         else
         {
            if(this.§>!J§ != 0 || this.§;`§ != 0)
            {
               param1.prependTranslation(this.§>!J§,this.§;`§,0);
            }
            if(this.§^8§ != 0)
            {
               param1.prependRotation(this.§^8§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§&!g§ != 1 || this.§0H§ != 1)
            {
               param1.prependScale(this.§&!g§,this.§0H§,1);
            }
            if(this.§=!b§ != 0 || this.§+"#§ != 0)
            {
               param1.prependTranslation(this.§=!b§,this.§+"#§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§>!J§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§>!J§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§;`§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§;`§ = param1;
      }
      
      public function get z() : Number
      {
         return this.§1L§;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.§<;§)
         {
            this.§1L§ = param1;
         }
      }
      
      public function get pivotX() : Number
      {
         return this.§=!b§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§=!b§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§+"#§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§+"#§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§&!g§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§&!g§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§0H§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§0H§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§^8§;
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
         this.§^8§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.§[0§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§[0§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§@!d§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§@!d§ = param1;
      }
      
      public function get §="E§() : Boolean
      {
         return this.§8K§;
      }
      
      public function set §="E§(param1:Boolean) : void
      {
         this.§8K§ = param1;
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
         return this.§<;§;
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
