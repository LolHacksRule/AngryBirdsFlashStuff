package §0!Y§
{
   import §5!W§.§`+§;
   import §=F§.§8"!§;
   import §=F§.§=!%§;
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
      
      private static var §8!Z§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §8!U§:Rectangle = new Rectangle();
      
      private static var §0!x§:Matrix = new Matrix();
      
      private static var §,#§:Matrix = new Matrix();
      
      protected static var §%m§:int = 0;
       
      
      private var §%!H§:Number;
      
      private var §^<§:Number;
      
      private var §=i§:Number;
      
      private var §6!A§:Number;
      
      private var §8!7§:Number;
      
      private var §5V§:Number;
      
      private var §#!C§:Number;
      
      private var §#§:Number;
      
      private var §'!o§:Boolean;
      
      private var §%!k§:Boolean;
      
      private var §0",§:Number;
      
      private var mName:String;
      
      private var §-`§:Number;
      
      private var §"!1§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §=!%§();
         }
         this.§%!H§ = this.§^<§ = this.§=i§ = this.§6!A§ = this.§#!C§ = 0;
         this.§8!7§ = this.§5V§ = this.§#§ = 1;
         this.§'!o§ = this.§%!k§ = true;
         this.§-`§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §!"1§(param1:Boolean = false) : void
      {
         if(this.§"!1§)
         {
            this.§"!1§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §8t§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§"!1§ || param1 == null && this.§"!1§ == null)
         {
            if(this.§=i§ != 0 || this.§6!A§ != 0)
            {
               param2.translate(-this.§=i§,-this.§6!A§);
            }
            if(this.§8!7§ != 1 || this.§5V§ != 1)
            {
               param2.scale(this.§8!7§,this.§5V§);
            }
            if(this.§#!C§ != 0)
            {
               param2.rotate(this.§#!C§);
            }
            if(this.§%!H§ != 0 || this.§^<§ != 0)
            {
               param2.translate(this.§%!H§,this.§^<§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§8t§(_loc4_.§"!1§,§0!x§);
               param2.concat(§0!x§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§"!1§ == this)
         {
            param1.§8t§(this,param2);
            param2.invert();
            return param2;
         }
         §8!Z§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §8!Z§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §8!Z§.indexOf(_loc4_) == -1)
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
            _loc4_.§8t§(_loc4_.§"!1§,§0!x§);
            param2.concat(§0!x§);
            _loc4_ = _loc4_.parent;
         }
         §,#§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§8t§(_loc4_.§"!1§,§0!x§);
            §,#§.concat(§0!x§);
            _loc4_ = _loc4_.parent;
         }
         §,#§.invert();
         param2.concat(§,#§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §8"!§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§'!o§ || !this.§%!k§))
         {
            return null;
         }
         if(this.getBounds(this,§8!U§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §,#§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§8t§(_loc2_.§"!1§,§0!x§);
            §,#§.concat(§0!x§);
            _loc2_ = _loc2_.parent;
         }
         return §,#§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §,#§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§8t§(_loc2_.§"!1§,§0!x§);
            §,#§.concat(§0!x§);
            _loc2_ = _loc2_.parent;
         }
         §,#§.invert();
         return §,#§.transformPoint(param1);
      }
      
      public function render(param1:§`+§, param2:Number) : void
      {
         throw new §8"!§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§-`§)
            {
               return;
            }
            this.§-`§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §^@§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§"!1§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §"@§();
         if(param1 != this.§"!1§ && this.§"!1§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§"!1§ = param1;
         if(this.§"!1§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§"!1§)
         {
            this.§"!1§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§"!1§)
         {
            this.§"!1§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §!B§() : Matrix
      {
         return this.§8t§(this.§"!1§);
      }
      
      public function get §]1§() : Rectangle
      {
         return this.getBounds(this.§"!1§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§"!1§,§8!U§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§8!7§ = 1;
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
         return this.getBounds(this.§"!1§,§8!U§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§5V§ = 1;
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
         var _loc2_:Array = §"@§();
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
      
      public function §`2§(param1:Matrix3D) : void
      {
         if(this.§#!C§ == 0 && this.§8!7§ == 1 && this.§5V§ == 1)
         {
            if(this.§%!H§ + this.§=i§ != 0 || this.§^<§ + this.§6!A§ != 0)
            {
               param1.prependTranslation(this.§%!H§ + this.§=i§,this.§^<§ + this.§6!A§,0);
            }
         }
         else
         {
            if(this.§%!H§ != 0 || this.§^<§ != 0)
            {
               param1.prependTranslation(this.§%!H§,this.§^<§,0);
            }
            if(this.§#!C§ != 0)
            {
               param1.prependRotation(this.§#!C§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§8!7§ != 1 || this.§5V§ != 1)
            {
               param1.prependScale(this.§8!7§,this.§5V§,1);
            }
            if(this.§=i§ != 0 || this.§6!A§ != 0)
            {
               param1.prependTranslation(this.§=i§,this.§6!A§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§%!H§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§%!H§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§^<§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§^<§ = param1;
      }
      
      public function get z() : Number
      {
         return this.§0",§;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.§"!1§)
         {
            this.§0",§ = param1;
         }
      }
      
      public function get pivotX() : Number
      {
         return this.§=i§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§=i§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§6!A§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§6!A§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§8!7§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§8!7§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§5V§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§5V§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§#!C§;
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
         this.§#!C§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.§#§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§#§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§'!o§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§'!o§ = param1;
      }
      
      public function get §9"$§() : Boolean
      {
         return this.§%!k§;
      }
      
      public function set §9"$§(param1:Boolean) : void
      {
         this.§%!k§ = param1;
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
         return this.§"!1§;
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
