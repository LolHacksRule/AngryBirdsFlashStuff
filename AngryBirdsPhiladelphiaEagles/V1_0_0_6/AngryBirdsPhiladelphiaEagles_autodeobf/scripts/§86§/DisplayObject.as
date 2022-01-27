package §86§
{
   import §"l§.§2!-§;
   import §"l§.§]s§;
   import §@g§.§'U§;
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
      
      private static var §7K§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §while§:Rectangle = new Rectangle();
      
      private static var §'!D§:Matrix = new Matrix();
      
      private static var §;!4§:Matrix = new Matrix();
      
      protected static var § W§:int = 0;
       
      
      private var §#$§:Number;
      
      private var §do§:Number;
      
      private var §4G§:Number;
      
      private var §8K§:Number;
      
      private var §6!4§:Number;
      
      private var §@Y§:Number;
      
      private var §>;§:Number;
      
      private var §?!A§:Number;
      
      private var §@A§:Boolean;
      
      private var §#]§:Boolean;
      
      private var mName:String;
      
      private var §3Q§:Number;
      
      private var §5!"§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §2!-§();
         }
         this.§#$§ = this.§do§ = this.§4G§ = this.§8K§ = this.§>;§ = 0;
         this.§6!4§ = this.§@Y§ = this.§?!A§ = 1;
         this.§@A§ = this.§#]§ = true;
         this.§3Q§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §-l§(param1:Boolean = false) : void
      {
         if(this.§5!"§)
         {
            this.§5!"§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §0!#§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§5!"§ || param1 == null && this.§5!"§ == null)
         {
            if(this.§4G§ != 0 || this.§8K§ != 0)
            {
               param2.translate(-this.§4G§,-this.§8K§);
            }
            if(this.§6!4§ != 1 || this.§@Y§ != 1)
            {
               param2.scale(this.§6!4§,this.§@Y§);
            }
            if(this.§>;§ != 0)
            {
               param2.rotate(this.§>;§);
            }
            if(this.§#$§ != 0 || this.§do§ != 0)
            {
               param2.translate(this.§#$§,this.§do§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§0!#§(_loc4_.§5!"§,§'!D§);
               param2.concat(§'!D§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§5!"§ == this)
         {
            param1.§0!#§(this,param2);
            param2.invert();
            return param2;
         }
         §7K§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §7K§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §7K§.indexOf(_loc4_) == -1)
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
            _loc4_.§0!#§(_loc4_.§5!"§,§'!D§);
            param2.concat(§'!D§);
            _loc4_ = _loc4_.parent;
         }
         §;!4§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§0!#§(_loc4_.§5!"§,§'!D§);
            §;!4§.concat(§'!D§);
            _loc4_ = _loc4_.parent;
         }
         §;!4§.invert();
         param2.concat(§;!4§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §]s§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§@A§ || !this.§#]§))
         {
            return null;
         }
         if(this.getBounds(this,§while§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §;!4§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§0!#§(_loc2_.§5!"§,§'!D§);
            §;!4§.concat(§'!D§);
            _loc2_ = _loc2_.parent;
         }
         return §;!4§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §;!4§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§0!#§(_loc2_.§5!"§,§'!D§);
            §;!4§.concat(§'!D§);
            _loc2_ = _loc2_.parent;
         }
         §;!4§.invert();
         return §;!4§.transformPoint(param1);
      }
      
      public function render(param1:§'U§, param2:Number) : void
      {
         throw new §]s§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§3Q§)
            {
               return;
            }
            this.§3Q§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §%L§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§5!"§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §[d§();
         if(param1 != this.§5!"§ && this.§5!"§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§5!"§ = param1;
         if(this.§5!"§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§5!"§)
         {
            this.§5!"§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§5!"§)
         {
            this.§5!"§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §+S§() : Matrix
      {
         return this.§0!#§(this.§5!"§);
      }
      
      public function get §!^§() : Rectangle
      {
         return this.getBounds(this.§5!"§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§5!"§,§while§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§6!4§ = 1;
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
         return this.getBounds(this.§5!"§,§while§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§@Y§ = 1;
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
         var _loc2_:Array = §[d§();
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
      
      public function §%w§(param1:Matrix3D) : void
      {
         if(this.§>;§ == 0 && this.§6!4§ == 1 && this.§@Y§ == 1)
         {
            if(this.§#$§ + this.§4G§ != 0 || this.§do§ + this.§8K§ != 0)
            {
               param1.prependTranslation(this.§#$§ + this.§4G§,this.§do§ + this.§8K§,0);
            }
         }
         else
         {
            if(this.§#$§ != 0 || this.§do§ != 0)
            {
               param1.prependTranslation(this.§#$§,this.§do§,0);
            }
            if(this.§>;§ != 0)
            {
               param1.prependRotation(this.§>;§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§6!4§ != 1 || this.§@Y§ != 1)
            {
               param1.prependScale(this.§6!4§,this.§@Y§,1);
            }
            if(this.§4G§ != 0 || this.§8K§ != 0)
            {
               param1.prependTranslation(this.§4G§,this.§8K§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§#$§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§#$§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§do§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§do§ = param1;
      }
      
      public function get pivotX() : Number
      {
         return this.§4G§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§4G§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§8K§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§8K§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§6!4§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§6!4§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§@Y§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§@Y§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§>;§;
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
         this.§>;§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.§?!A§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§?!A§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§@A§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§@A§ = param1;
      }
      
      public function get §+k§() : Boolean
      {
         return this.§#]§;
      }
      
      public function set §+k§(param1:Boolean) : void
      {
         this.§#]§ = param1;
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
         return this.§5!"§;
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
