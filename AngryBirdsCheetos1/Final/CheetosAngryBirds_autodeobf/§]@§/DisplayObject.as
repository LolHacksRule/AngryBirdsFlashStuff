package §]@§
{
   import §=!S§.§1!O§;
   import §=!S§.§3[§;
   import §`C§.§'!N§;
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
      
      private static var §#;§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §`f§:Rectangle = new Rectangle();
      
      private static var §1![§:Matrix = new Matrix();
      
      private static var §3!W§:Matrix = new Matrix();
      
      protected static var §?!K§:int = 0;
       
      
      private var §<!Y§:Number;
      
      private var § l§:Number;
      
      private var §?!Q§:Number;
      
      private var §+9§:Number;
      
      private var §>!]§:Number;
      
      private var §"y§:Number;
      
      private var §50§:Number;
      
      private var mAlpha:Number;
      
      private var §3!Z§:Boolean;
      
      private var §2V§:Boolean;
      
      private var mName:String;
      
      private var §&!Z§:Number;
      
      private var §`!Z§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §3[§();
         }
         this.§<!Y§ = this.§ l§ = this.§?!Q§ = this.§+9§ = this.§50§ = 0;
         this.§>!]§ = this.§"y§ = this.mAlpha = 1;
         this.§3!Z§ = this.§2V§ = true;
         this.§&!Z§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §;G§(param1:Boolean = false) : void
      {
         if(this.§`!Z§)
         {
            this.§`!Z§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §=!;§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§`!Z§ || param1 == null && this.§`!Z§ == null)
         {
            if(this.§?!Q§ != 0 || this.§+9§ != 0)
            {
               param2.translate(-this.§?!Q§,-this.§+9§);
            }
            if(this.§>!]§ != 1 || this.§"y§ != 1)
            {
               param2.scale(this.§>!]§,this.§"y§);
            }
            if(this.§50§ != 0)
            {
               param2.rotate(this.§50§);
            }
            if(this.§<!Y§ != 0 || this.§ l§ != 0)
            {
               param2.translate(this.§<!Y§,this.§ l§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§=!;§(_loc4_.§`!Z§,§1![§);
               param2.concat(§1![§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§`!Z§ == this)
         {
            param1.§=!;§(this,param2);
            param2.invert();
            return param2;
         }
         §#;§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §#;§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §#;§.indexOf(_loc4_) == -1)
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
            _loc4_.§=!;§(_loc4_.§`!Z§,§1![§);
            param2.concat(§1![§);
            _loc4_ = _loc4_.parent;
         }
         §3!W§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§=!;§(_loc4_.§`!Z§,§1![§);
            §3!W§.concat(§1![§);
            _loc4_ = _loc4_.parent;
         }
         §3!W§.invert();
         param2.concat(§3!W§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §1!O§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§3!Z§ || !this.§2V§))
         {
            return null;
         }
         if(this.getBounds(this,§`f§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §3!W§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§=!;§(_loc2_.§`!Z§,§1![§);
            §3!W§.concat(§1![§);
            _loc2_ = _loc2_.parent;
         }
         return §3!W§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §3!W§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§=!;§(_loc2_.§`!Z§,§1![§);
            §3!W§.concat(§1![§);
            _loc2_ = _loc2_.parent;
         }
         §3!W§.invert();
         return §3!W§.transformPoint(param1);
      }
      
      public function render(param1:§'!N§, param2:Number) : void
      {
         throw new §1!O§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§&!Z§)
            {
               return;
            }
            this.§&!Z§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §6l§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§`!Z§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §8^§();
         if(param1 != this.§`!Z§ && this.§`!Z§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§`!Z§ = param1;
         if(this.§`!Z§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§`!Z§)
         {
            this.§`!Z§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§`!Z§)
         {
            this.§`!Z§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §@!D§() : Matrix
      {
         return this.§=!;§(this.§`!Z§);
      }
      
      public function get §"!5§() : Rectangle
      {
         return this.getBounds(this.§`!Z§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§`!Z§,§`f§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§>!]§ = 1;
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
         return this.getBounds(this.§`!Z§,§`f§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§"y§ = 1;
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
         var _loc2_:Array = §8^§();
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
      
      public function §]d§(param1:Matrix3D) : void
      {
         if(this.§50§ == 0 && this.§>!]§ == 1 && this.§"y§ == 1)
         {
            if(this.§<!Y§ + this.§?!Q§ != 0 || this.§ l§ + this.§+9§ != 0)
            {
               param1.prependTranslation(this.§<!Y§ + this.§?!Q§,this.§ l§ + this.§+9§,0);
            }
         }
         else
         {
            if(this.§<!Y§ != 0 || this.§ l§ != 0)
            {
               param1.prependTranslation(this.§<!Y§,this.§ l§,0);
            }
            if(this.§50§ != 0)
            {
               param1.prependRotation(this.§50§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§>!]§ != 1 || this.§"y§ != 1)
            {
               param1.prependScale(this.§>!]§,this.§"y§,1);
            }
            if(this.§?!Q§ != 0 || this.§+9§ != 0)
            {
               param1.prependTranslation(this.§?!Q§,this.§+9§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§<!Y§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§<!Y§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§ l§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§ l§ = param1;
      }
      
      public function get pivotX() : Number
      {
         return this.§?!Q§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§?!Q§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§+9§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§+9§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§>!]§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§>!]§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§"y§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§"y§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§50§;
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
         this.§50§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.mAlpha;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.mAlpha = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§3!Z§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§3!Z§ = param1;
      }
      
      public function get §^f§() : Boolean
      {
         return this.§2V§;
      }
      
      public function set §^f§(param1:Boolean) : void
      {
         this.§2V§ = param1;
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
         return this.§`!Z§;
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
