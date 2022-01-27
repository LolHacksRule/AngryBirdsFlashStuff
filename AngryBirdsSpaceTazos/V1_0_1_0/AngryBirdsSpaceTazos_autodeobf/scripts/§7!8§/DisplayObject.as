package §7!8§
{
   import §5Q§.§%!t§;
   import §=5§.§#"9§;
   import §=5§.§^T§;
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
      
      private static var §7">§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §>!Z§:Rectangle = new Rectangle();
      
      private static var §02§:Matrix = new Matrix();
      
      private static var §2R§:Matrix = new Matrix();
      
      protected static var § !t§:int = 0;
       
      
      private var §""4§:Number;
      
      private var §%W§:Number;
      
      private var §;o§:Number;
      
      private var §+!H§:Number;
      
      private var §]f§:Number;
      
      private var §#A§:Number;
      
      private var §1"3§:Number;
      
      private var §!",§:Number;
      
      private var §5!_§:Boolean;
      
      private var §[!7§:Boolean;
      
      private var §`"@§:Number;
      
      private var mName:String;
      
      private var §-!I§:Number;
      
      private var §]!&§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §^T§();
         }
         this.§""4§ = this.§%W§ = this.§;o§ = this.§+!H§ = this.§1"3§ = 0;
         this.§]f§ = this.§#A§ = this.§!",§ = 1;
         this.§5!_§ = this.§[!7§ = true;
         this.§-!I§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §]!5§(param1:Boolean = false) : void
      {
         if(this.§]!&§)
         {
            this.§]!&§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §]!U§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§]!&§ || param1 == null && this.§]!&§ == null)
         {
            if(this.§;o§ != 0 || this.§+!H§ != 0)
            {
               param2.translate(-this.§;o§,-this.§+!H§);
            }
            if(this.§]f§ != 1 || this.§#A§ != 1)
            {
               param2.scale(this.§]f§,this.§#A§);
            }
            if(this.§1"3§ != 0)
            {
               param2.rotate(this.§1"3§);
            }
            if(this.§""4§ != 0 || this.§%W§ != 0)
            {
               param2.translate(this.§""4§,this.§%W§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§]!U§(_loc4_.§]!&§,§02§);
               param2.concat(§02§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§]!&§ == this)
         {
            param1.§]!U§(this,param2);
            param2.invert();
            return param2;
         }
         §7">§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §7">§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §7">§.indexOf(_loc4_) == -1)
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
            _loc4_.§]!U§(_loc4_.§]!&§,§02§);
            param2.concat(§02§);
            _loc4_ = _loc4_.parent;
         }
         §2R§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§]!U§(_loc4_.§]!&§,§02§);
            §2R§.concat(§02§);
            _loc4_ = _loc4_.parent;
         }
         §2R§.invert();
         param2.concat(§2R§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §#"9§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§5!_§ || !this.§[!7§))
         {
            return null;
         }
         if(this.getBounds(this,§>!Z§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §2R§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§]!U§(_loc2_.§]!&§,§02§);
            §2R§.concat(§02§);
            _loc2_ = _loc2_.parent;
         }
         return §2R§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §2R§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§]!U§(_loc2_.§]!&§,§02§);
            §2R§.concat(§02§);
            _loc2_ = _loc2_.parent;
         }
         §2R§.invert();
         return §2R§.transformPoint(param1);
      }
      
      public function render(param1:§%!t§, param2:Number) : void
      {
         throw new §#"9§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§-!I§)
            {
               return;
            }
            this.§-!I§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §7"=§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§]!&§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §,!O§();
         if(param1 != this.§]!&§ && this.§]!&§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§]!&§ = param1;
         if(this.§]!&§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§]!&§)
         {
            this.§]!&§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§]!&§)
         {
            this.§]!&§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §@!Q§() : Matrix
      {
         return this.§]!U§(this.§]!&§);
      }
      
      public function get §0!L§() : Rectangle
      {
         return this.getBounds(this.§]!&§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§]!&§,§>!Z§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§]f§ = 1;
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
         return this.getBounds(this.§]!&§,§>!Z§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§#A§ = 1;
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
         var _loc2_:Array = §,!O§();
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
      
      public function §0!x§(param1:Matrix3D) : void
      {
         if(this.§1"3§ == 0 && this.§]f§ == 1 && this.§#A§ == 1)
         {
            if(this.§""4§ + this.§;o§ != 0 || this.§%W§ + this.§+!H§ != 0)
            {
               param1.prependTranslation(this.§""4§ + this.§;o§,this.§%W§ + this.§+!H§,0);
            }
         }
         else
         {
            if(this.§""4§ != 0 || this.§%W§ != 0)
            {
               param1.prependTranslation(this.§""4§,this.§%W§,0);
            }
            if(this.§1"3§ != 0)
            {
               param1.prependRotation(this.§1"3§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§]f§ != 1 || this.§#A§ != 1)
            {
               param1.prependScale(this.§]f§,this.§#A§,1);
            }
            if(this.§;o§ != 0 || this.§+!H§ != 0)
            {
               param1.prependTranslation(this.§;o§,this.§+!H§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§""4§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§""4§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§%W§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§%W§ = param1;
      }
      
      public function get z() : Number
      {
         return this.§`"@§;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.§]!&§)
         {
            this.§`"@§ = param1;
         }
      }
      
      public function get pivotX() : Number
      {
         return this.§;o§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§;o§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§+!H§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§+!H§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§]f§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§]f§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§#A§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§#A§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§1"3§;
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
         this.§1"3§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.§!",§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§!",§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§5!_§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§5!_§ = param1;
      }
      
      public function get §]!D§() : Boolean
      {
         return this.§[!7§;
      }
      
      public function set §]!D§(param1:Boolean) : void
      {
         this.§[!7§ = param1;
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
         return this.§]!&§;
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
