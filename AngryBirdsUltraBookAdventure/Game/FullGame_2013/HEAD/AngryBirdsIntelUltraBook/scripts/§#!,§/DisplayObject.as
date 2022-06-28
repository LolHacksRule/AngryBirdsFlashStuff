package §#!,§
{
   import §+8§.§0K§;
   import §+8§.§4J§;
   import §7!>§.RenderSupport;
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
      
      private static var §6i§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §"!0§:Rectangle = new Rectangle();
      
      private static var §]!C§:Matrix = new Matrix();
      
      private static var §!!G§:Matrix = new Matrix();
      
      protected static var §0!_§:int = 0;
       
      
      private var §1X§:Number;
      
      private var §`J§:Number;
      
      private var §1l§:Number;
      
      private var §%!N§:Number;
      
      private var §#!e§:Number;
      
      private var §,;§:Number;
      
      private var §&Z§:Number;
      
      private var §%g§:Number;
      
      private var §#r§:Boolean;
      
      private var §14§:Boolean;
      
      private var mName:String;
      
      private var §^!V§:Number;
      
      private var §;4§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §0K§();
         }
         this.§1X§ = this.§`J§ = this.§1l§ = this.§%!N§ = this.§&Z§ = 0;
         this.§#!e§ = this.§,;§ = this.§%g§ = 1;
         this.§#r§ = this.§14§ = true;
         this.§^!V§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §implements§(param1:Boolean = false) : void
      {
         if(this.§;4§)
         {
            this.§;4§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §@!7§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§;4§ || param1 == null && this.§;4§ == null)
         {
            if(this.§1l§ != 0 || this.§%!N§ != 0)
            {
               param2.translate(-this.§1l§,-this.§%!N§);
            }
            if(this.§#!e§ != 1 || this.§,;§ != 1)
            {
               param2.scale(this.§#!e§,this.§,;§);
            }
            if(this.§&Z§ != 0)
            {
               param2.rotate(this.§&Z§);
            }
            if(this.§1X§ != 0 || this.§`J§ != 0)
            {
               param2.translate(this.§1X§,this.§`J§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§@!7§(_loc4_.§;4§,§]!C§);
               param2.concat(§]!C§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§;4§ == this)
         {
            param1.§@!7§(this,param2);
            param2.invert();
            return param2;
         }
         §6i§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §6i§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §6i§.indexOf(_loc4_) == -1)
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
            _loc4_.§@!7§(_loc4_.§;4§,§]!C§);
            param2.concat(§]!C§);
            _loc4_ = _loc4_.parent;
         }
         §!!G§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§@!7§(_loc4_.§;4§,§]!C§);
            §!!G§.concat(§]!C§);
            _loc4_ = _loc4_.parent;
         }
         §!!G§.invert();
         param2.concat(§!!G§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §4J§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§#r§ || !this.§14§))
         {
            return null;
         }
         if(this.getBounds(this,§"!0§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §!!G§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§@!7§(_loc2_.§;4§,§]!C§);
            §!!G§.concat(§]!C§);
            _loc2_ = _loc2_.parent;
         }
         return §!!G§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §!!G§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§@!7§(_loc2_.§;4§,§]!C§);
            §!!G§.concat(§]!C§);
            _loc2_ = _loc2_.parent;
         }
         §!!G§.invert();
         return §!!G§.transformPoint(param1);
      }
      
      public function render(param1:RenderSupport, param2:Number) : void
      {
         throw new §4J§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§^!V§)
            {
               return;
            }
            this.§^!V§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §+9§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§;4§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §<c§();
         if(param1 != this.§;4§ && this.§;4§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§;4§ = param1;
         if(this.§;4§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§;4§)
         {
            this.§;4§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§;4§)
         {
            this.§;4§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §2!6§() : Matrix
      {
         return this.§@!7§(this.§;4§);
      }
      
      public function get bounds() : Rectangle
      {
         return this.getBounds(this.§;4§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§;4§,§"!0§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§#!e§ = 1;
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
         return this.getBounds(this.§;4§,§"!0§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§,;§ = 1;
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
         var _loc2_:Array = §<c§();
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
      
      public function §#!9§(param1:Matrix3D) : void
      {
         if(this.§&Z§ == 0 && this.§#!e§ == 1 && this.§,;§ == 1)
         {
            if(this.§1X§ + this.§1l§ != 0 || this.§`J§ + this.§%!N§ != 0)
            {
               param1.prependTranslation(this.§1X§ + this.§1l§,this.§`J§ + this.§%!N§,0);
            }
         }
         else
         {
            if(this.§1X§ != 0 || this.§`J§ != 0)
            {
               param1.prependTranslation(this.§1X§,this.§`J§,0);
            }
            if(this.§&Z§ != 0)
            {
               param1.prependRotation(this.§&Z§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§#!e§ != 1 || this.§,;§ != 1)
            {
               param1.prependScale(this.§#!e§,this.§,;§,1);
            }
            if(this.§1l§ != 0 || this.§%!N§ != 0)
            {
               param1.prependTranslation(this.§1l§,this.§%!N§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§1X§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§1X§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§`J§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§`J§ = param1;
      }
      
      public function get pivotX() : Number
      {
         return this.§1l§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§1l§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§%!N§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§%!N§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§#!e§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§#!e§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§,;§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§,;§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§&Z§;
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
         this.§&Z§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.§%g§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§%g§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§#r§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§#r§ = param1;
      }
      
      public function get §<@§() : Boolean
      {
         return this.§14§;
      }
      
      public function set §<@§(param1:Boolean) : void
      {
         this.§14§ = param1;
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
         return this.§;4§;
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
