package §^V§
{
   import §-Z§.§ G§;
   import §5d§.§ @§;
   import §5d§.§`!=§;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.TouchEvent;
   
   public class DisplayObject extends EventDispatcher
   {
      
      private static var §3!,§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §^n§:Rectangle = new Rectangle();
      
      private static var §"R§:Matrix = new Matrix();
      
      private static var §9k§:Matrix = new Matrix();
      
      protected static var §9!E§:int = 0;
       
      
      private var §-Y§:Number;
      
      private var §%!;§:Number;
      
      private var §3e§:Number;
      
      private var §>9§:Number;
      
      private var §9K§:Number;
      
      private var §4w§:Number;
      
      private var §]!=§:Number;
      
      private var §#b§:Number;
      
      private var §1!;§:Boolean;
      
      private var §5i§:Boolean;
      
      private var mName:String;
      
      private var §,N§:Number;
      
      private var §67§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §`!=§();
         }
         this.§-Y§ = this.§%!;§ = this.§3e§ = this.§>9§ = this.§]!=§ = 0;
         this.§9K§ = this.§4w§ = this.§#b§ = 1;
         this.§1!;§ = this.§5i§ = true;
         this.§,N§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §+O§(param1:Boolean = false) : void
      {
         if(this.§67§)
         {
            this.§67§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §8n§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§67§ || param1 == null && this.§67§ == null)
         {
            if(this.§3e§ != 0 || this.§>9§ != 0)
            {
               param2.translate(-this.§3e§,-this.§>9§);
            }
            if(this.§9K§ != 1 || this.§4w§ != 1)
            {
               param2.scale(this.§9K§,this.§4w§);
            }
            if(this.§]!=§ != 0)
            {
               param2.rotate(this.§]!=§);
            }
            if(this.§-Y§ != 0 || this.§%!;§ != 0)
            {
               param2.translate(this.§-Y§,this.§%!;§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§8n§(_loc4_.§67§,§"R§);
               param2.concat(§"R§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§67§ == this)
         {
            param1.§8n§(this,param2);
            param2.invert();
            return param2;
         }
         §3!,§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §3!,§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §3!,§.indexOf(_loc4_) == -1)
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
            _loc4_.§8n§(_loc4_.§67§,§"R§);
            param2.concat(§"R§);
            _loc4_ = _loc4_.parent;
         }
         §9k§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§8n§(_loc4_.§67§,§"R§);
            §9k§.concat(§"R§);
            _loc4_ = _loc4_.parent;
         }
         §9k§.invert();
         param2.concat(§9k§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new § @§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§1!;§ || !this.§5i§))
         {
            return null;
         }
         if(this.getBounds(this,§^n§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §9k§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§8n§(_loc2_.§67§,§"R§);
            §9k§.concat(§"R§);
            _loc2_ = _loc2_.parent;
         }
         return §9k§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §9k§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§8n§(_loc2_.§67§,§"R§);
            §9k§.concat(§"R§);
            _loc2_ = _loc2_.parent;
         }
         §9k§.invert();
         return §9k§.transformPoint(param1);
      }
      
      public function render(param1:§ G§, param2:Number) : void
      {
         throw new § @§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§,N§)
            {
               return;
            }
            this.§,N§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function § M§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§67§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §!G§();
         if(param1 != this.§67§ && this.§67§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§67§ = param1;
         if(this.§67§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§67§)
         {
            this.§67§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§67§)
         {
            this.§67§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §-<§() : Matrix
      {
         return this.§8n§(this.§67§);
      }
      
      public function get §;A§() : Rectangle
      {
         return this.getBounds(this.§67§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§67§,§^n§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§9K§ = 1;
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
         return this.getBounds(this.§67§,§^n§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§4w§ = 1;
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
         var _loc2_:Array = §!G§();
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
      
      public function get x() : Number
      {
         return this.§-Y§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§-Y§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§%!;§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§%!;§ = param1;
      }
      
      public function get pivotX() : Number
      {
         return this.§3e§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§3e§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§>9§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§>9§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§9K§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§9K§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§4w§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§4w§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§]!=§;
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
         this.§]!=§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.§#b§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§#b§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§1!;§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§1!;§ = param1;
      }
      
      public function get §<!<§() : Boolean
      {
         return this.§5i§;
      }
      
      public function set §<!<§(param1:Boolean) : void
      {
         this.§5i§ = param1;
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
         return this.§67§;
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
