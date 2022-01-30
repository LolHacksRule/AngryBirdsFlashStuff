package §`L§
{
   import §%!C§.§'8§;
   import §%!C§.§;",§;
   import §-!+§.§,7§;
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
      
      private static var §@!p§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §6!0§:Rectangle = new Rectangle();
      
      private static var §7V§:Matrix = new Matrix();
      
      private static var §!!l§:Matrix = new Matrix();
      
      protected static var §5!y§:int = 0;
       
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §%n§:Number;
      
      private var §#Y§:Number;
      
      private var §=Q§:Number;
      
      private var §0`§:Number;
      
      private var §%B§:Number;
      
      private var §^!M§:Number;
      
      private var §,!`§:Boolean;
      
      private var §@"§:Boolean;
      
      private var mName:String;
      
      private var §>"#§:Number;
      
      private var §54§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §'8§();
         }
         this.mX = this.mY = this.§%n§ = this.§#Y§ = this.§%B§ = 0;
         this.§=Q§ = this.§0`§ = this.§^!M§ = 1;
         this.§,!`§ = this.§@"§ = true;
         this.§>"#§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §!i§(param1:Boolean = false) : void
      {
         if(this.§54§)
         {
            this.§54§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §=q§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§54§ || param1 == null && this.§54§ == null)
         {
            if(this.§%n§ != 0 || this.§#Y§ != 0)
            {
               param2.translate(-this.§%n§,-this.§#Y§);
            }
            if(this.§=Q§ != 1 || this.§0`§ != 1)
            {
               param2.scale(this.§=Q§,this.§0`§);
            }
            if(this.§%B§ != 0)
            {
               param2.rotate(this.§%B§);
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
               _loc4_.§=q§(_loc4_.§54§,§7V§);
               param2.concat(§7V§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§54§ == this)
         {
            param1.§=q§(this,param2);
            param2.invert();
            return param2;
         }
         §@!p§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §@!p§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §@!p§.indexOf(_loc4_) == -1)
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
            _loc4_.§=q§(_loc4_.§54§,§7V§);
            param2.concat(§7V§);
            _loc4_ = _loc4_.parent;
         }
         §!!l§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§=q§(_loc4_.§54§,§7V§);
            §!!l§.concat(§7V§);
            _loc4_ = _loc4_.parent;
         }
         §!!l§.invert();
         param2.concat(§!!l§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §;",§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§,!`§ || !this.§@"§))
         {
            return null;
         }
         if(this.getBounds(this,§6!0§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §!!l§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§=q§(_loc2_.§54§,§7V§);
            §!!l§.concat(§7V§);
            _loc2_ = _loc2_.parent;
         }
         return §!!l§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §!!l§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§=q§(_loc2_.§54§,§7V§);
            §!!l§.concat(§7V§);
            _loc2_ = _loc2_.parent;
         }
         §!!l§.invert();
         return §!!l§.transformPoint(param1);
      }
      
      public function render(param1:§,7§, param2:Number) : void
      {
         throw new §;",§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§>"#§)
            {
               return;
            }
            this.§>"#§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §""+§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§54§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §5w§();
         if(param1 != this.§54§ && this.§54§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§54§ = param1;
         if(this.§54§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§54§)
         {
            this.§54§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§54§)
         {
            this.§54§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §4!U§() : Matrix
      {
         return this.§=q§(this.§54§);
      }
      
      public function get §0_§() : Rectangle
      {
         return this.getBounds(this.§54§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§54§,§6!0§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§=Q§ = 1;
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
         return this.getBounds(this.§54§,§6!0§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§0`§ = 1;
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
         var _loc2_:Array = §5w§();
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
      
      public function §%!X§(param1:Matrix3D) : void
      {
         if(this.§%B§ == 0 && this.§=Q§ == 1 && this.§0`§ == 1)
         {
            if(this.mX + this.§%n§ != 0 || this.mY + this.§#Y§ != 0)
            {
               param1.prependTranslation(this.mX + this.§%n§,this.mY + this.§#Y§,0);
            }
         }
         else
         {
            if(this.mX != 0 || this.mY != 0)
            {
               param1.prependTranslation(this.mX,this.mY,0);
            }
            if(this.§%B§ != 0)
            {
               param1.prependRotation(this.§%B§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§=Q§ != 1 || this.§0`§ != 1)
            {
               param1.prependScale(this.§=Q§,this.§0`§,1);
            }
            if(this.§%n§ != 0 || this.§#Y§ != 0)
            {
               param1.prependTranslation(this.§%n§,this.§#Y§,0);
            }
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
         return this.§%n§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§%n§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§#Y§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§#Y§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§=Q§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§=Q§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§0`§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§0`§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§%B§;
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
         this.§%B§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.§^!M§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§^!M§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§,!`§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§,!`§ = param1;
      }
      
      public function get §9!!§() : Boolean
      {
         return this.§@"§;
      }
      
      public function set §9!!§(param1:Boolean) : void
      {
         this.§@"§ = param1;
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
         return this.§54§;
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
