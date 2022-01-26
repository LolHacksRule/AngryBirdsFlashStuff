package §!!R§
{
   import §"! §.§4p§;
   import §"! §.§=!%§;
   import §7W§.§4!8§;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.TouchEvent;
   
   public class DisplayObject extends EventDispatcher
   {
      
      private static var §=!;§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §2!P§:Rectangle = new Rectangle();
      
      private static var §9]§:Matrix = new Matrix();
      
      private static var §9!Q§:Matrix = new Matrix();
      
      protected static var §@b§:int = 0;
       
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §^D§:Number;
      
      private var §%B§:Number;
      
      private var §@!G§:Number;
      
      private var §`!T§:Number;
      
      private var §&!;§:Number;
      
      private var mAlpha:Number;
      
      private var §2N§:Boolean;
      
      private var §`a§:Boolean;
      
      private var mName:String;
      
      private var §;6§:Number;
      
      private var §;;§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §4p§();
         }
         this.mX = this.mY = this.§^D§ = this.§%B§ = this.§&!;§ = 0;
         this.§@!G§ = this.§`!T§ = this.mAlpha = 1;
         this.§2N§ = this.§`a§ = true;
         this.§;6§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §,q§(param1:Boolean = false) : void
      {
         if(this.§;;§)
         {
            this.§;;§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §,r§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§;;§ || param1 == null && this.§;;§ == null)
         {
            if(this.§^D§ != 0 || this.§%B§ != 0)
            {
               param2.translate(-this.§^D§,-this.§%B§);
            }
            if(this.§@!G§ != 1 || this.§`!T§ != 1)
            {
               param2.scale(this.§@!G§,this.§`!T§);
            }
            if(this.§&!;§ != 0)
            {
               param2.rotate(this.§&!;§);
            }
            if(this.mX != 0 || this.mY != 0)
            {
               param2.translate(this.mX,this.mY);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§,r§(_loc4_.§;;§,§9]§);
               param2.concat(§9]§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§;;§ == this)
         {
            param1.§,r§(this,param2);
            param2.invert();
            return param2;
         }
         §=!;§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §=!;§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §=!;§.indexOf(_loc4_) == -1)
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
            _loc4_.§,r§(_loc4_.§;;§,§9]§);
            param2.concat(§9]§);
            _loc4_ = _loc4_.parent;
         }
         §9!Q§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§,r§(_loc4_.§;;§,§9]§);
            §9!Q§.concat(§9]§);
            _loc4_ = _loc4_.parent;
         }
         §9!Q§.invert();
         param2.concat(§9!Q§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §=!%§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§2N§ || !this.§`a§))
         {
            return null;
         }
         if(this.getBounds(this,§2!P§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §9!Q§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§,r§(_loc2_.§;;§,§9]§);
            §9!Q§.concat(§9]§);
            _loc2_ = _loc2_.parent;
         }
         return §9!Q§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §9!Q§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§,r§(_loc2_.§;;§,§9]§);
            §9!Q§.concat(§9]§);
            _loc2_ = _loc2_.parent;
         }
         §9!Q§.invert();
         return §9!Q§.transformPoint(param1);
      }
      
      public function render(param1:§4!8§, param2:Number) : void
      {
         throw new §=!%§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§;6§)
            {
               return;
            }
            this.§;6§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §`! §(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§;;§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §%Z§();
         if(param1 != this.§;;§ && this.§;;§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§;;§ = param1;
         if(this.§;;§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§;;§)
         {
            this.§;;§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§;;§)
         {
            this.§;;§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get § !8§() : Matrix
      {
         return this.§,r§(this.§;;§);
      }
      
      public function get §%!=§() : Rectangle
      {
         return this.getBounds(this.§;;§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§;;§,§2!P§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§@!G§ = 1;
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
         return this.getBounds(this.§;;§,§2!P§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§`!T§ = 1;
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
         var _loc2_:Array = §%Z§();
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
         return this.§^D§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§^D§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§%B§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§%B§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§@!G§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§@!G§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§`!T§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§`!T§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§&!;§;
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
         this.§&!;§ = param1;
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
         return this.§2N§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§2N§ = param1;
      }
      
      public function get §],§() : Boolean
      {
         return this.§`a§;
      }
      
      public function set §],§(param1:Boolean) : void
      {
         this.§`a§ = param1;
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
         return this.§;;§;
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
