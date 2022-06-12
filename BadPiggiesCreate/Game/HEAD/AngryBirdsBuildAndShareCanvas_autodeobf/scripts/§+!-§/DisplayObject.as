package §+!-§
{
   import §%!j§.§&Y§;
   import §]!R§.§'3§;
   import §]!R§.§]P§;
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
      
      private static var §?!Q§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var § !g§:Rectangle = new Rectangle();
      
      private static var §^L§:Matrix = new Matrix();
      
      private static var §6"#§:Matrix = new Matrix();
      
      protected static var §@9§:int = 0;
       
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §=;§:Number;
      
      private var §62§:Number;
      
      private var §4u§:Number;
      
      private var § B§:Number;
      
      private var §0!>§:Number;
      
      private var §!a§:Number;
      
      private var §1!'§:Boolean;
      
      private var §@t§:Boolean;
      
      private var §@P§:Number;
      
      private var mName:String;
      
      private var §"!?§:Number;
      
      private var §6"4§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §'3§();
         }
         this.mX = this.mY = this.§=;§ = this.§62§ = this.§0!>§ = 0;
         this.§4u§ = this.§ B§ = this.§!a§ = 1;
         this.§1!'§ = this.§@t§ = true;
         this.§"!?§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §?J§(param1:Boolean = false) : void
      {
         if(this.§6"4§)
         {
            this.§6"4§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §1!%§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§6"4§ || param1 == null && this.§6"4§ == null)
         {
            if(this.§=;§ != 0 || this.§62§ != 0)
            {
               param2.translate(-this.§=;§,-this.§62§);
            }
            if(this.§4u§ != 1 || this.§ B§ != 1)
            {
               param2.scale(this.§4u§,this.§ B§);
            }
            if(this.§0!>§ != 0)
            {
               param2.rotate(this.§0!>§);
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
               _loc4_.§1!%§(_loc4_.§6"4§,§^L§);
               param2.concat(§^L§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§6"4§ == this)
         {
            param1.§1!%§(this,param2);
            param2.invert();
            return param2;
         }
         §?!Q§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §?!Q§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §?!Q§.indexOf(_loc4_) == -1)
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
            _loc4_.§1!%§(_loc4_.§6"4§,§^L§);
            param2.concat(§^L§);
            _loc4_ = _loc4_.parent;
         }
         §6"#§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§1!%§(_loc4_.§6"4§,§^L§);
            §6"#§.concat(§^L§);
            _loc4_ = _loc4_.parent;
         }
         §6"#§.invert();
         param2.concat(§6"#§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §]P§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§1!'§ || !this.§@t§))
         {
            return null;
         }
         if(this.getBounds(this,§ !g§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §6"#§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§1!%§(_loc2_.§6"4§,§^L§);
            §6"#§.concat(§^L§);
            _loc2_ = _loc2_.parent;
         }
         return §6"#§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §6"#§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§1!%§(_loc2_.§6"4§,§^L§);
            §6"#§.concat(§^L§);
            _loc2_ = _loc2_.parent;
         }
         §6"#§.invert();
         return §6"#§.transformPoint(param1);
      }
      
      public function render(param1:§&Y§, param2:Number) : void
      {
         throw new §]P§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§"!?§)
            {
               return;
            }
            this.§"!?§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §3![§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§6"4§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §9+§();
         if(param1 != this.§6"4§ && this.§6"4§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§6"4§ = param1;
         if(this.§6"4§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§6"4§)
         {
            this.§6"4§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§6"4§)
         {
            this.§6"4§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get § for§() : Matrix
      {
         return this.§1!%§(this.§6"4§);
      }
      
      public function get §?>§() : Rectangle
      {
         return this.getBounds(this.§6"4§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§6"4§,§ !g§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§4u§ = 1;
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
         return this.getBounds(this.§6"4§,§ !g§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§ B§ = 1;
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
         var _loc2_:Array = §9+§();
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
      
      public function §1w§(param1:Matrix3D) : void
      {
         if(this.§0!>§ == 0 && this.§4u§ == 1 && this.§ B§ == 1)
         {
            if(this.mX + this.§=;§ != 0 || this.mY + this.§62§ != 0)
            {
               param1.prependTranslation(this.mX + this.§=;§,this.mY + this.§62§,0);
            }
         }
         else
         {
            if(this.mX != 0 || this.mY != 0)
            {
               param1.prependTranslation(this.mX,this.mY,0);
            }
            if(this.§0!>§ != 0)
            {
               param1.prependRotation(this.§0!>§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§4u§ != 1 || this.§ B§ != 1)
            {
               param1.prependScale(this.§4u§,this.§ B§,1);
            }
            if(this.§=;§ != 0 || this.§62§ != 0)
            {
               param1.prependTranslation(this.§=;§,this.§62§,0);
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
      
      public function get z() : Number
      {
         return this.§@P§;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.§6"4§)
         {
            this.§@P§ = param1;
         }
      }
      
      public function get pivotX() : Number
      {
         return this.§=;§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§=;§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§62§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§62§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§4u§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§4u§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§ B§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§ B§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§0!>§;
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
         this.§0!>§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.§!a§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§!a§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§1!'§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§1!'§ = param1;
      }
      
      public function get §#b§() : Boolean
      {
         return this.§@t§;
      }
      
      public function set §#b§(param1:Boolean) : void
      {
         this.§@t§ = param1;
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
         return this.§6"4§;
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
