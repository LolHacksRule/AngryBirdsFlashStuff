package §@!i§
{
   import §3",§.§'5§;
   import §[>§.§8!F§;
   import §[>§.§;!4§;
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
      
      private static var §6!9§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §7_§:Rectangle = new Rectangle();
      
      private static var §>J§:Matrix = new Matrix();
      
      private static var §@H§:Matrix = new Matrix();
      
      protected static var §1!D§:int = 0;
       
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §=5§:Number;
      
      private var §,!<§:Number;
      
      private var §!!$§:Number;
      
      private var §9e§:Number;
      
      private var §`f§:Number;
      
      private var §-T§:Number;
      
      private var §&h§:Boolean;
      
      private var §4!T§:Boolean;
      
      private var mName:String;
      
      private var §#t§:Number;
      
      private var §0"1§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §8!F§();
         }
         this.mX = this.mY = this.§=5§ = this.§,!<§ = this.§`f§ = 0;
         this.§!!$§ = this.§9e§ = this.§-T§ = 1;
         this.§&h§ = this.§4!T§ = true;
         this.§#t§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §^!r§(param1:Boolean = false) : void
      {
         if(this.§0"1§)
         {
            this.§0"1§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §2b§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§0"1§ || param1 == null && this.§0"1§ == null)
         {
            if(this.§=5§ != 0 || this.§,!<§ != 0)
            {
               param2.translate(-this.§=5§,-this.§,!<§);
            }
            if(this.§!!$§ != 1 || this.§9e§ != 1)
            {
               param2.scale(this.§!!$§,this.§9e§);
            }
            if(this.§`f§ != 0)
            {
               param2.rotate(this.§`f§);
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
               _loc4_.§2b§(_loc4_.§0"1§,§>J§);
               param2.concat(§>J§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§0"1§ == this)
         {
            param1.§2b§(this,param2);
            param2.invert();
            return param2;
         }
         §6!9§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §6!9§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §6!9§.indexOf(_loc4_) == -1)
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
            _loc4_.§2b§(_loc4_.§0"1§,§>J§);
            param2.concat(§>J§);
            _loc4_ = _loc4_.parent;
         }
         §@H§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§2b§(_loc4_.§0"1§,§>J§);
            §@H§.concat(§>J§);
            _loc4_ = _loc4_.parent;
         }
         §@H§.invert();
         param2.concat(§@H§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §;!4§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§&h§ || !this.§4!T§))
         {
            return null;
         }
         if(this.getBounds(this,§7_§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §@H§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§2b§(_loc2_.§0"1§,§>J§);
            §@H§.concat(§>J§);
            _loc2_ = _loc2_.parent;
         }
         return §@H§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §@H§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§2b§(_loc2_.§0"1§,§>J§);
            §@H§.concat(§>J§);
            _loc2_ = _loc2_.parent;
         }
         §@H§.invert();
         return §@H§.transformPoint(param1);
      }
      
      public function render(param1:§'5§, param2:Number) : void
      {
         throw new §;!4§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§#t§)
            {
               return;
            }
            this.§#t§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §@0§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§0"1§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §0;§();
         if(param1 != this.§0"1§ && this.§0"1§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§0"1§ = param1;
         if(this.§0"1§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§0"1§)
         {
            this.§0"1§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§0"1§)
         {
            this.§0"1§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §<[§() : Matrix
      {
         return this.§2b§(this.§0"1§);
      }
      
      public function get §=%§() : Rectangle
      {
         return this.getBounds(this.§0"1§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§0"1§,§7_§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§!!$§ = 1;
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
         return this.getBounds(this.§0"1§,§7_§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§9e§ = 1;
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
         var _loc2_:Array = §0;§();
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
      
      public function §<!S§(param1:Matrix3D) : void
      {
         if(this.§`f§ == 0 && this.§!!$§ == 1 && this.§9e§ == 1)
         {
            if(this.mX + this.§=5§ != 0 || this.mY + this.§,!<§ != 0)
            {
               param1.prependTranslation(this.mX + this.§=5§,this.mY + this.§,!<§,0);
            }
         }
         else
         {
            if(this.mX != 0 || this.mY != 0)
            {
               param1.prependTranslation(this.mX,this.mY,0);
            }
            if(this.§`f§ != 0)
            {
               param1.prependRotation(this.§`f§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§!!$§ != 1 || this.§9e§ != 1)
            {
               param1.prependScale(this.§!!$§,this.§9e§,1);
            }
            if(this.§=5§ != 0 || this.§,!<§ != 0)
            {
               param1.prependTranslation(this.§=5§,this.§,!<§,0);
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
         return this.§=5§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§=5§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§,!<§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§,!<§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§!!$§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§!!$§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§9e§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§9e§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§`f§;
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
         this.§`f§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.§-T§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§-T§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§&h§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§&h§ = param1;
      }
      
      public function get §"!f§() : Boolean
      {
         return this.§4!T§;
      }
      
      public function set §"!f§(param1:Boolean) : void
      {
         this.§4!T§ = param1;
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
         return this.§0"1§;
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
