package §1!Y§
{
   import §0P§.§1!O§;
   import §<;§.§+C§;
   import §<;§.§,!9§;
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
      
      private static var §4!F§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §"!&§:Rectangle = new Rectangle();
      
      private static var §<"#§:Matrix = new Matrix();
      
      private static var §=!m§:Matrix = new Matrix();
      
      protected static var §>!V§:int = 0;
       
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §3" §:Number;
      
      private var §"!Z§:Number;
      
      private var §'!U§:Number;
      
      private var §"e§:Number;
      
      private var §-U§:Number;
      
      private var §@!D§:Number;
      
      private var §[B§:Boolean;
      
      private var §3L§:Boolean;
      
      private var mName:String;
      
      private var §@! §:Number;
      
      private var §+!'§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §,!9§();
         }
         this.mX = this.mY = this.§3" § = this.§"!Z§ = this.§-U§ = 0;
         this.§'!U§ = this.§"e§ = this.§@!D§ = 1;
         this.§[B§ = this.§3L§ = true;
         this.§@! § = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §8!h§(param1:Boolean = false) : void
      {
         if(this.§+!'§)
         {
            this.§+!'§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §2![§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§+!'§ || param1 == null && this.§+!'§ == null)
         {
            if(this.§3" § != 0 || this.§"!Z§ != 0)
            {
               param2.translate(-this.§3" §,-this.§"!Z§);
            }
            if(this.§'!U§ != 1 || this.§"e§ != 1)
            {
               param2.scale(this.§'!U§,this.§"e§);
            }
            if(this.§-U§ != 0)
            {
               param2.rotate(this.§-U§);
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
               _loc4_.§2![§(_loc4_.§+!'§,§<"#§);
               param2.concat(§<"#§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§+!'§ == this)
         {
            param1.§2![§(this,param2);
            param2.invert();
            return param2;
         }
         §4!F§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §4!F§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §4!F§.indexOf(_loc4_) == -1)
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
            _loc4_.§2![§(_loc4_.§+!'§,§<"#§);
            param2.concat(§<"#§);
            _loc4_ = _loc4_.parent;
         }
         §=!m§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§2![§(_loc4_.§+!'§,§<"#§);
            §=!m§.concat(§<"#§);
            _loc4_ = _loc4_.parent;
         }
         §=!m§.invert();
         param2.concat(§=!m§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §+C§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§[B§ || !this.§3L§))
         {
            return null;
         }
         if(this.getBounds(this,§"!&§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §=!m§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§2![§(_loc2_.§+!'§,§<"#§);
            §=!m§.concat(§<"#§);
            _loc2_ = _loc2_.parent;
         }
         return §=!m§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §=!m§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§2![§(_loc2_.§+!'§,§<"#§);
            §=!m§.concat(§<"#§);
            _loc2_ = _loc2_.parent;
         }
         §=!m§.invert();
         return §=!m§.transformPoint(param1);
      }
      
      public function render(param1:§1!O§, param2:Number) : void
      {
         throw new §+C§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§@! §)
            {
               return;
            }
            this.§@! § = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §5l§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§+!'§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §%!$§();
         if(param1 != this.§+!'§ && this.§+!'§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§+!'§ = param1;
         if(this.§+!'§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§+!'§)
         {
            this.§+!'§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§+!'§)
         {
            this.§+!'§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §=!F§() : Matrix
      {
         return this.§2![§(this.§+!'§);
      }
      
      public function get §,8§() : Rectangle
      {
         return this.getBounds(this.§+!'§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§+!'§,§"!&§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§'!U§ = 1;
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
         return this.getBounds(this.§+!'§,§"!&§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§"e§ = 1;
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
         var _loc2_:Array = §%!$§();
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
      
      public function §0!6§(param1:Matrix3D) : void
      {
         if(this.§-U§ == 0 && this.§'!U§ == 1 && this.§"e§ == 1)
         {
            if(this.mX + this.§3" § != 0 || this.mY + this.§"!Z§ != 0)
            {
               param1.prependTranslation(this.mX + this.§3" §,this.mY + this.§"!Z§,0);
            }
         }
         else
         {
            if(this.mX != 0 || this.mY != 0)
            {
               param1.prependTranslation(this.mX,this.mY,0);
            }
            if(this.§-U§ != 0)
            {
               param1.prependRotation(this.§-U§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§'!U§ != 1 || this.§"e§ != 1)
            {
               param1.prependScale(this.§'!U§,this.§"e§,1);
            }
            if(this.§3" § != 0 || this.§"!Z§ != 0)
            {
               param1.prependTranslation(this.§3" §,this.§"!Z§,0);
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
         return this.§3" §;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§3" § = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§"!Z§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§"!Z§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§'!U§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§'!U§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§"e§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§"e§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§-U§;
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
         this.§-U§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.§@!D§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§@!D§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§[B§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§[B§ = param1;
      }
      
      public function get §,!J§() : Boolean
      {
         return this.§3L§;
      }
      
      public function set §,!J§(param1:Boolean) : void
      {
         this.§3L§ = param1;
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
         return this.§+!'§;
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
