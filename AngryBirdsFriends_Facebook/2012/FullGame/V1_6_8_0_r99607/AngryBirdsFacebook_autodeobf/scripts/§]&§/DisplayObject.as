package §]&§
{
   import §+"6§.§2!6§;
   import §6!3§.§2!;§;
   import §6!3§.§8"$§;
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
      
      private static var §[#§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §31§:Rectangle = new Rectangle();
      
      private static var § Y§:Matrix = new Matrix();
      
      private static var §9!`§:Matrix = new Matrix();
      
      protected static var §9Q§:int = 0;
       
      
      private var §>U§:Number;
      
      private var §>!c§:Number;
      
      private var §-d§:Number;
      
      private var §^#§:Number;
      
      private var §,v§:Number;
      
      private var §;"-§:Number;
      
      private var §8P§:Number;
      
      private var §-7§:Number;
      
      private var §--§:Boolean;
      
      private var §1+§:Boolean;
      
      private var mName:String;
      
      private var §?!@§:Number;
      
      private var §8z§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §8"$§();
         }
         this.§>U§ = this.§>!c§ = this.§-d§ = this.§^#§ = this.§8P§ = 0;
         this.§,v§ = this.§;"-§ = this.§-7§ = 1;
         this.§--§ = this.§1+§ = true;
         this.§?!@§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §3"A§(param1:Boolean = false) : void
      {
         if(this.§8z§)
         {
            this.§8z§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §%!b§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§8z§ || param1 == null && this.§8z§ == null)
         {
            if(this.§-d§ != 0 || this.§^#§ != 0)
            {
               param2.translate(-this.§-d§,-this.§^#§);
            }
            if(this.§,v§ != 1 || this.§;"-§ != 1)
            {
               param2.scale(this.§,v§,this.§;"-§);
            }
            if(this.§8P§ != 0)
            {
               param2.rotate(this.§8P§);
            }
            if(this.§>U§ != 0 || this.§>!c§ != 0)
            {
               param2.translate(this.§>U§,this.§>!c§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§%!b§(_loc4_.§8z§,§ Y§);
               param2.concat(§ Y§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§8z§ == this)
         {
            param1.§%!b§(this,param2);
            param2.invert();
            return param2;
         }
         §[#§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §[#§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §[#§.indexOf(_loc4_) == -1)
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
            _loc4_.§%!b§(_loc4_.§8z§,§ Y§);
            param2.concat(§ Y§);
            _loc4_ = _loc4_.parent;
         }
         §9!`§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§%!b§(_loc4_.§8z§,§ Y§);
            §9!`§.concat(§ Y§);
            _loc4_ = _loc4_.parent;
         }
         §9!`§.invert();
         param2.concat(§9!`§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §2!;§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§--§ || !this.§1+§))
         {
            return null;
         }
         if(this.getBounds(this,§31§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §9!`§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§%!b§(_loc2_.§8z§,§ Y§);
            §9!`§.concat(§ Y§);
            _loc2_ = _loc2_.parent;
         }
         return §9!`§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §9!`§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§%!b§(_loc2_.§8z§,§ Y§);
            §9!`§.concat(§ Y§);
            _loc2_ = _loc2_.parent;
         }
         §9!`§.invert();
         return §9!`§.transformPoint(param1);
      }
      
      public function render(param1:§2!6§, param2:Number) : void
      {
         throw new §2!;§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§?!@§)
            {
               return;
            }
            this.§?!@§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §^v§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§8z§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §,?§();
         if(param1 != this.§8z§ && this.§8z§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§8z§ = param1;
         if(this.§8z§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§8z§)
         {
            this.§8z§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§8z§)
         {
            this.§8z§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §?o§() : Matrix
      {
         return this.§%!b§(this.§8z§);
      }
      
      public function get §1^§() : Rectangle
      {
         return this.getBounds(this.§8z§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§8z§,§31§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§,v§ = 1;
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
         return this.getBounds(this.§8z§,§31§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§;"-§ = 1;
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
         var _loc2_:Array = §,?§();
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
      
      public function §2!z§(param1:Matrix3D) : void
      {
         if(this.§8P§ == 0 && this.§,v§ == 1 && this.§;"-§ == 1)
         {
            if(this.§>U§ + this.§-d§ != 0 || this.§>!c§ + this.§^#§ != 0)
            {
               param1.prependTranslation(this.§>U§ + this.§-d§,this.§>!c§ + this.§^#§,0);
            }
         }
         else
         {
            if(this.§>U§ != 0 || this.§>!c§ != 0)
            {
               param1.prependTranslation(this.§>U§,this.§>!c§,0);
            }
            if(this.§8P§ != 0)
            {
               param1.prependRotation(this.§8P§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§,v§ != 1 || this.§;"-§ != 1)
            {
               param1.prependScale(this.§,v§,this.§;"-§,1);
            }
            if(this.§-d§ != 0 || this.§^#§ != 0)
            {
               param1.prependTranslation(this.§-d§,this.§^#§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§>U§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§>U§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§>!c§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§>!c§ = param1;
      }
      
      public function get pivotX() : Number
      {
         return this.§-d§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§-d§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§^#§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§^#§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§,v§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§,v§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§;"-§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§;"-§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§8P§;
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
         this.§8P§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.§-7§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§-7§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§--§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§--§ = param1;
      }
      
      public function get §3!5§() : Boolean
      {
         return this.§1+§;
      }
      
      public function set §3!5§(param1:Boolean) : void
      {
         this.§1+§ = param1;
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
         return this.§8z§;
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
