package §3§
{
   import §94§.§#!a§;
   import §?C§.§-!$§;
   import §?C§.§`&§;
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
      
      private static var §7V§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §-m§:Rectangle = new Rectangle();
      
      private static var § !"§:Matrix = new Matrix();
      
      private static var §&Z§:Matrix = new Matrix();
      
      protected static var §%!G§:int = 0;
       
      
      private var § W§:Number;
      
      private var §9!9§:Number;
      
      private var §+Z§:Number;
      
      private var §null§:Number;
      
      private var §6!@§:Number;
      
      private var §&r§:Number;
      
      private var §],§:Number;
      
      private var mAlpha:Number;
      
      private var §,!1§:Boolean;
      
      private var §=!+§:Boolean;
      
      private var mName:String;
      
      private var §^k§:Number;
      
      private var §8!%§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §-!$§();
         }
         this.§ W§ = this.§9!9§ = this.§+Z§ = this.§null§ = this.§],§ = 0;
         this.§6!@§ = this.§&r§ = this.mAlpha = 1;
         this.§,!1§ = this.§=!+§ = true;
         this.§^k§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §#!_§(param1:Boolean = false) : void
      {
         if(this.§8!%§)
         {
            this.§8!%§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §8!V§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§8!%§ || param1 == null && this.§8!%§ == null)
         {
            if(this.§+Z§ != 0 || this.§null§ != 0)
            {
               param2.translate(-this.§+Z§,-this.§null§);
            }
            if(this.§6!@§ != 1 || this.§&r§ != 1)
            {
               param2.scale(this.§6!@§,this.§&r§);
            }
            if(this.§],§ != 0)
            {
               param2.rotate(this.§],§);
            }
            if(this.§ W§ != 0 || this.§9!9§ != 0)
            {
               param2.translate(this.§ W§,this.§9!9§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§8!V§(_loc4_.§8!%§,§ !"§);
               param2.concat(§ !"§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§8!%§ == this)
         {
            param1.§8!V§(this,param2);
            param2.invert();
            return param2;
         }
         §7V§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §7V§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §7V§.indexOf(_loc4_) == -1)
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
            _loc4_.§8!V§(_loc4_.§8!%§,§ !"§);
            param2.concat(§ !"§);
            _loc4_ = _loc4_.parent;
         }
         §&Z§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§8!V§(_loc4_.§8!%§,§ !"§);
            §&Z§.concat(§ !"§);
            _loc4_ = _loc4_.parent;
         }
         §&Z§.invert();
         param2.concat(§&Z§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §`&§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§,!1§ || !this.§=!+§))
         {
            return null;
         }
         if(this.getBounds(this,§-m§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §&Z§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§8!V§(_loc2_.§8!%§,§ !"§);
            §&Z§.concat(§ !"§);
            _loc2_ = _loc2_.parent;
         }
         return §&Z§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §&Z§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§8!V§(_loc2_.§8!%§,§ !"§);
            §&Z§.concat(§ !"§);
            _loc2_ = _loc2_.parent;
         }
         §&Z§.invert();
         return §&Z§.transformPoint(param1);
      }
      
      public function render(param1:§#!a§, param2:Number) : void
      {
         throw new §`&§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§^k§)
            {
               return;
            }
            this.§^k§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §3!T§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§8!%§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §#h§();
         if(param1 != this.§8!%§ && this.§8!%§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§8!%§ = param1;
         if(this.§8!%§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§8!%§)
         {
            this.§8!%§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§8!%§)
         {
            this.§8!%§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §2Y§() : Matrix
      {
         return this.§8!V§(this.§8!%§);
      }
      
      public function get §4!#§() : Rectangle
      {
         return this.getBounds(this.§8!%§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§8!%§,§-m§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§6!@§ = 1;
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
         return this.getBounds(this.§8!%§,§-m§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§&r§ = 1;
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
         var _loc2_:Array = §#h§();
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
      
      public function §1k§(param1:Matrix3D) : void
      {
         if(this.§],§ == 0 && this.§6!@§ == 1 && this.§&r§ == 1)
         {
            if(this.§ W§ + this.§+Z§ != 0 || this.§9!9§ + this.§null§ != 0)
            {
               param1.prependTranslation(this.§ W§ + this.§+Z§,this.§9!9§ + this.§null§,0);
            }
         }
         else
         {
            if(this.§ W§ != 0 || this.§9!9§ != 0)
            {
               param1.prependTranslation(this.§ W§,this.§9!9§,0);
            }
            if(this.§],§ != 0)
            {
               param1.prependRotation(this.§],§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§6!@§ != 1 || this.§&r§ != 1)
            {
               param1.prependScale(this.§6!@§,this.§&r§,1);
            }
            if(this.§+Z§ != 0 || this.§null§ != 0)
            {
               param1.prependTranslation(this.§+Z§,this.§null§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§ W§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§ W§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§9!9§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§9!9§ = param1;
      }
      
      public function get pivotX() : Number
      {
         return this.§+Z§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§+Z§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§null§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§null§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§6!@§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§6!@§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§&r§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§&r§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§],§;
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
         this.§],§ = param1;
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
         return this.§,!1§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§,!1§ = param1;
      }
      
      public function get §#U§() : Boolean
      {
         return this.§=!+§;
      }
      
      public function set §#U§(param1:Boolean) : void
      {
         this.§=!+§ = param1;
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
         return this.§8!%§;
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
