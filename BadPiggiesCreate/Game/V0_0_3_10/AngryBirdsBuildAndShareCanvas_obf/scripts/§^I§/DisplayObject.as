package §^I§
{
   import §%! §.§[e§;
   import §%! §.§`!]§;
   import §5!5§.§?"5§;
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
      
      private static var §&!9§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §0`§:Rectangle = new Rectangle();
      
      private static var §-!z§:Matrix = new Matrix();
      
      private static var override:Matrix = new Matrix();
      
      protected static var §&!H§:int = 0;
       
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §;"'§:Number;
      
      private var §-e§:Number;
      
      private var §&!l§:Number;
      
      private var §`b§:Number;
      
      private var § get§:Number;
      
      private var §7",§:Number;
      
      private var §=]§:Boolean;
      
      private var §;$§:Boolean;
      
      private var mName:String;
      
      private var §&"%§:Number;
      
      private var §8"8§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §[e§();
         }
         this.mX = this.mY = this.§;"'§ = this.§-e§ = this.§ get§ = 0;
         this.§&!l§ = this.§`b§ = this.§7",§ = 1;
         this.§=]§ = this.§;$§ = true;
         this.§&"%§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §33§(param1:Boolean = false) : void
      {
         if(this.§8"8§)
         {
            this.§8"8§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §,,§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§8"8§ || param1 == null && this.§8"8§ == null)
         {
            if(this.§;"'§ != 0 || this.§-e§ != 0)
            {
               param2.translate(-this.§;"'§,-this.§-e§);
            }
            if(this.§&!l§ != 1 || this.§`b§ != 1)
            {
               param2.scale(this.§&!l§,this.§`b§);
            }
            if(this.§ get§ != 0)
            {
               param2.rotate(this.§ get§);
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
               _loc4_.§,,§(_loc4_.§8"8§,§-!z§);
               param2.concat(§-!z§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§8"8§ == this)
         {
            param1.§,,§(this,param2);
            param2.invert();
            return param2;
         }
         §&!9§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §&!9§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §&!9§.indexOf(_loc4_) == -1)
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
            _loc4_.§,,§(_loc4_.§8"8§,§-!z§);
            param2.concat(§-!z§);
            _loc4_ = _loc4_.parent;
         }
         override.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§,,§(_loc4_.§8"8§,§-!z§);
            override.concat(§-!z§);
            _loc4_ = _loc4_.parent;
         }
         override.invert();
         param2.concat(override);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §`!]§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§=]§ || !this.§;$§))
         {
            return null;
         }
         if(this.getBounds(this,§0`§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         override.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§,,§(_loc2_.§8"8§,§-!z§);
            override.concat(§-!z§);
            _loc2_ = _loc2_.parent;
         }
         return override.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         override.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§,,§(_loc2_.§8"8§,§-!z§);
            override.concat(§-!z§);
            _loc2_ = _loc2_.parent;
         }
         override.invert();
         return override.transformPoint(param1);
      }
      
      public function render(param1:§?"5§, param2:Number) : void
      {
         throw new §`!]§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§&"%§)
            {
               return;
            }
            this.§&"%§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §41§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§8"8§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §1!T§();
         if(param1 != this.§8"8§ && this.§8"8§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§8"8§ = param1;
         if(this.§8"8§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§8"8§)
         {
            this.§8"8§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§8"8§)
         {
            this.§8"8§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §=M§() : Matrix
      {
         return this.§,,§(this.§8"8§);
      }
      
      public function get §#!F§() : Rectangle
      {
         return this.getBounds(this.§8"8§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§8"8§,§0`§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§&!l§ = 1;
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
         return this.getBounds(this.§8"8§,§0`§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§`b§ = 1;
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
         var _loc2_:Array = §1!T§();
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
      
      public function §?I§(param1:Matrix3D) : void
      {
         if(this.§ get§ == 0 && this.§&!l§ == 1 && this.§`b§ == 1)
         {
            if(this.mX + this.§;"'§ != 0 || this.mY + this.§-e§ != 0)
            {
               param1.prependTranslation(this.mX + this.§;"'§,this.mY + this.§-e§,0);
            }
         }
         else
         {
            if(this.mX != 0 || this.mY != 0)
            {
               param1.prependTranslation(this.mX,this.mY,0);
            }
            if(this.§ get§ != 0)
            {
               param1.prependRotation(this.§ get§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§&!l§ != 1 || this.§`b§ != 1)
            {
               param1.prependScale(this.§&!l§,this.§`b§,1);
            }
            if(this.§;"'§ != 0 || this.§-e§ != 0)
            {
               param1.prependTranslation(this.§;"'§,this.§-e§,0);
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
         return this.§;"'§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§;"'§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§-e§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§-e§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§&!l§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§&!l§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§`b§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§`b§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§ get§;
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
         this.§ get§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.§7",§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§7",§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§=]§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§=]§ = param1;
      }
      
      public function get §<"!§() : Boolean
      {
         return this.§;$§;
      }
      
      public function set §<"!§(param1:Boolean) : void
      {
         this.§;$§ = param1;
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
         return this.§8"8§;
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
