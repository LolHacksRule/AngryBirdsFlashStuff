package §6!;§
{
   import §&L§.§'I§;
   import §<1§.§=N§;
   import §<1§.§^k§;
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
      
      private static var §^!8§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §;!+§:Rectangle = new Rectangle();
      
      private static var §<]§:Matrix = new Matrix();
      
      private static var §-z§:Matrix = new Matrix();
      
      protected static var §9!%§:int = 0;
       
      
      private var §5T§:Number;
      
      private var §![§:Number;
      
      private var §use§:Number;
      
      private var §?[§:Number;
      
      private var §4!T§:Number;
      
      private var §^![§:Number;
      
      private var §+U§:Number;
      
      private var §'"§:Number;
      
      private var §8g§:Boolean;
      
      private var §;G§:Boolean;
      
      private var §]!!§:Number;
      
      private var mName:String;
      
      private var §>!Y§:Number;
      
      private var §^!R§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §=N§();
         }
         this.§5T§ = this.§![§ = this.§use§ = this.§?[§ = this.§+U§ = 0;
         this.§4!T§ = this.§^![§ = this.§'"§ = 1;
         this.§8g§ = this.§;G§ = true;
         this.§>!Y§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §;1§(param1:Boolean = false) : void
      {
         if(this.§^!R§)
         {
            this.§^!R§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §<!§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§^!R§ || param1 == null && this.§^!R§ == null)
         {
            if(this.§use§ != 0 || this.§?[§ != 0)
            {
               param2.translate(-this.§use§,-this.§?[§);
            }
            if(this.§4!T§ != 1 || this.§^![§ != 1)
            {
               param2.scale(this.§4!T§,this.§^![§);
            }
            if(this.§+U§ != 0)
            {
               param2.rotate(this.§+U§);
            }
            if(this.§5T§ != 0 || this.§![§ != 0)
            {
               param2.translate(this.§5T§,this.§![§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§<!§(_loc4_.§^!R§,§<]§);
               param2.concat(§<]§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§^!R§ == this)
         {
            param1.§<!§(this,param2);
            param2.invert();
            return param2;
         }
         §^!8§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §^!8§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §^!8§.indexOf(_loc4_) == -1)
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
            _loc4_.§<!§(_loc4_.§^!R§,§<]§);
            param2.concat(§<]§);
            _loc4_ = _loc4_.parent;
         }
         §-z§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§<!§(_loc4_.§^!R§,§<]§);
            §-z§.concat(§<]§);
            _loc4_ = _loc4_.parent;
         }
         §-z§.invert();
         param2.concat(§-z§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §^k§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§8g§ || !this.§;G§))
         {
            return null;
         }
         if(this.getBounds(this,§;!+§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §-z§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§<!§(_loc2_.§^!R§,§<]§);
            §-z§.concat(§<]§);
            _loc2_ = _loc2_.parent;
         }
         return §-z§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §-z§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§<!§(_loc2_.§^!R§,§<]§);
            §-z§.concat(§<]§);
            _loc2_ = _loc2_.parent;
         }
         §-z§.invert();
         return §-z§.transformPoint(param1);
      }
      
      public function render(param1:§'I§, param2:Number) : void
      {
         throw new §^k§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§>!Y§)
            {
               return;
            }
            this.§>!Y§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §0!,§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§^!R§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §6!c§();
         if(param1 != this.§^!R§ && this.§^!R§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§^!R§ = param1;
         if(this.§^!R§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§^!R§)
         {
            this.§^!R§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§^!R§)
         {
            this.§^!R§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §%p§() : Matrix
      {
         return this.§<!§(this.§^!R§);
      }
      
      public function get §6L§() : Rectangle
      {
         return this.getBounds(this.§^!R§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§^!R§,§;!+§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§4!T§ = 1;
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
         return this.getBounds(this.§^!R§,§;!+§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§^![§ = 1;
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
         var _loc2_:Array = §6!c§();
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
      
      public function §"!2§(param1:Matrix3D) : void
      {
         if(this.§+U§ == 0 && this.§4!T§ == 1 && this.§^![§ == 1)
         {
            if(this.§5T§ + this.§use§ != 0 || this.§![§ + this.§?[§ != 0)
            {
               param1.prependTranslation(this.§5T§ + this.§use§,this.§![§ + this.§?[§,0);
            }
         }
         else
         {
            if(this.§5T§ != 0 || this.§![§ != 0)
            {
               param1.prependTranslation(this.§5T§,this.§![§,0);
            }
            if(this.§+U§ != 0)
            {
               param1.prependRotation(this.§+U§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§4!T§ != 1 || this.§^![§ != 1)
            {
               param1.prependScale(this.§4!T§,this.§^![§,1);
            }
            if(this.§use§ != 0 || this.§?[§ != 0)
            {
               param1.prependTranslation(this.§use§,this.§?[§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§5T§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§5T§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§![§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§![§ = param1;
      }
      
      public function get z() : Number
      {
         return this.§]!!§;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.§^!R§)
         {
            this.§]!!§ = param1;
         }
      }
      
      public function get pivotX() : Number
      {
         return this.§use§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§use§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§?[§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§?[§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§4!T§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§4!T§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§^![§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§^![§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§+U§;
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
         this.§+U§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.§'"§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§'"§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§8g§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§8g§ = param1;
      }
      
      public function get §`T§() : Boolean
      {
         return this.§;G§;
      }
      
      public function set §`T§(param1:Boolean) : void
      {
         this.§;G§ = param1;
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
         return this.§^!R§;
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
