package §90§
{
   import §,!,§.§&v§;
   import §57§.§ !B§;
   import §57§.§9!L§;
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
      
      private static var §!$§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §7y§:Rectangle = new Rectangle();
      
      private static var §^n§:Matrix = new Matrix();
      
      private static var §,[§:Matrix = new Matrix();
      
      protected static var §!!F§:int = 0;
       
      
      private var §;!>§:Number;
      
      private var §8<§:Number;
      
      private var §@3§:Number;
      
      private var §1!C§:Number;
      
      private var §5<§:Number;
      
      private var §#_§:Number;
      
      private var §;!D§:Number;
      
      private var §3G§:Number;
      
      private var §6!7§:Boolean;
      
      private var §^!O§:Boolean;
      
      private var §2!>§:Number;
      
      private var mName:String;
      
      private var §?!2§:Number;
      
      private var §]!L§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new § !B§();
         }
         this.§;!>§ = this.§8<§ = this.§@3§ = this.§1!C§ = this.§;!D§ = 0;
         this.§5<§ = this.§#_§ = this.§3G§ = 1;
         this.§6!7§ = this.§^!O§ = true;
         this.§?!2§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §?!C§(param1:Boolean = false) : void
      {
         if(this.§]!L§)
         {
            this.§]!L§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §?!#§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§]!L§ || param1 == null && this.§]!L§ == null)
         {
            if(this.§@3§ != 0 || this.§1!C§ != 0)
            {
               param2.translate(-this.§@3§,-this.§1!C§);
            }
            if(this.§5<§ != 1 || this.§#_§ != 1)
            {
               param2.scale(this.§5<§,this.§#_§);
            }
            if(this.§;!D§ != 0)
            {
               param2.rotate(this.§;!D§);
            }
            if(this.§;!>§ != 0 || this.§8<§ != 0)
            {
               param2.translate(this.§;!>§,this.§8<§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§?!#§(_loc4_.§]!L§,§^n§);
               param2.concat(§^n§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§]!L§ == this)
         {
            param1.§?!#§(this,param2);
            param2.invert();
            return param2;
         }
         §!$§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §!$§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §!$§.indexOf(_loc4_) == -1)
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
            _loc4_.§?!#§(_loc4_.§]!L§,§^n§);
            param2.concat(§^n§);
            _loc4_ = _loc4_.parent;
         }
         §,[§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§?!#§(_loc4_.§]!L§,§^n§);
            §,[§.concat(§^n§);
            _loc4_ = _loc4_.parent;
         }
         §,[§.invert();
         param2.concat(§,[§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §9!L§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§6!7§ || !this.§^!O§))
         {
            return null;
         }
         if(this.getBounds(this,§7y§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §,[§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§?!#§(_loc2_.§]!L§,§^n§);
            §,[§.concat(§^n§);
            _loc2_ = _loc2_.parent;
         }
         return §,[§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §,[§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§?!#§(_loc2_.§]!L§,§^n§);
            §,[§.concat(§^n§);
            _loc2_ = _loc2_.parent;
         }
         §,[§.invert();
         return §,[§.transformPoint(param1);
      }
      
      public function render(param1:§&v§, param2:Number) : void
      {
         throw new §9!L§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§?!2§)
            {
               return;
            }
            this.§?!2§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §6b§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§]!L§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §@!H§();
         if(param1 != this.§]!L§ && this.§]!L§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§]!L§ = param1;
         if(this.§]!L§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§]!L§)
         {
            this.§]!L§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§]!L§)
         {
            this.§]!L§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §=%§() : Matrix
      {
         return this.§?!#§(this.§]!L§);
      }
      
      public function get §+=§() : Rectangle
      {
         return this.getBounds(this.§]!L§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§]!L§,§7y§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§5<§ = 1;
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
         return this.getBounds(this.§]!L§,§7y§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§#_§ = 1;
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
         var _loc2_:Array = §@!H§();
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
      
      public function §0!+§(param1:Matrix3D) : void
      {
         if(this.§;!D§ == 0 && this.§5<§ == 1 && this.§#_§ == 1)
         {
            if(this.§;!>§ + this.§@3§ != 0 || this.§8<§ + this.§1!C§ != 0)
            {
               param1.prependTranslation(this.§;!>§ + this.§@3§,this.§8<§ + this.§1!C§,0);
            }
         }
         else
         {
            if(this.§;!>§ != 0 || this.§8<§ != 0)
            {
               param1.prependTranslation(this.§;!>§,this.§8<§,0);
            }
            if(this.§;!D§ != 0)
            {
               param1.prependRotation(this.§;!D§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§5<§ != 1 || this.§#_§ != 1)
            {
               param1.prependScale(this.§5<§,this.§#_§,1);
            }
            if(this.§@3§ != 0 || this.§1!C§ != 0)
            {
               param1.prependTranslation(this.§@3§,this.§1!C§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§;!>§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§;!>§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§8<§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§8<§ = param1;
      }
      
      public function get z() : Number
      {
         return this.§2!>§;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.§]!L§)
         {
            this.§2!>§ = param1;
         }
      }
      
      public function get pivotX() : Number
      {
         return this.§@3§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§@3§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§1!C§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§1!C§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§5<§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§5<§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§#_§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§#_§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§;!D§;
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
         this.§;!D§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.§3G§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§3G§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§6!7§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§6!7§ = param1;
      }
      
      public function get §]u§() : Boolean
      {
         return this.§^!O§;
      }
      
      public function set §]u§(param1:Boolean) : void
      {
         this.§^!O§ = param1;
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
         return this.§]!L§;
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
