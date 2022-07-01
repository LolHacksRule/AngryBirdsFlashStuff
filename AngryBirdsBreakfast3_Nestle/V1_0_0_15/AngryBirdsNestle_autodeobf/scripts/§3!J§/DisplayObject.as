package §3!J§
{
   import §!!!§.§<@§;
   import §90§.§=3§;
   import §90§.§?!^§;
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
      
      private static var §2[§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var § !=§:Rectangle = new Rectangle();
      
      private static var §-!B§:Matrix = new Matrix();
      
      private static var §+!G§:Matrix = new Matrix();
      
      protected static var §6"#§:int = 0;
       
      
      private var §]!B§:Number;
      
      private var §9=§:Number;
      
      private var §6!f§:Number;
      
      private var §<!C§:Number;
      
      private var §7"2§:Number;
      
      private var §!P§:Number;
      
      private var §0!-§:Number;
      
      private var §4!L§:Number;
      
      private var §6Y§:Boolean;
      
      private var §7q§:Boolean;
      
      private var §1!?§:Number;
      
      private var mName:String;
      
      private var §7!;§:Number;
      
      private var §->§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §?!^§();
         }
         this.§]!B§ = this.§9=§ = this.§6!f§ = this.§<!C§ = this.§0!-§ = 0;
         this.§7"2§ = this.§!P§ = this.§4!L§ = 1;
         this.§6Y§ = this.§7q§ = true;
         this.§7!;§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §?H§(param1:Boolean = false) : void
      {
         if(this.§->§)
         {
            this.§->§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §else §(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§->§ || param1 == null && this.§->§ == null)
         {
            if(this.§6!f§ != 0 || this.§<!C§ != 0)
            {
               param2.translate(-this.§6!f§,-this.§<!C§);
            }
            if(this.§7"2§ != 1 || this.§!P§ != 1)
            {
               param2.scale(this.§7"2§,this.§!P§);
            }
            if(this.§0!-§ != 0)
            {
               param2.rotate(this.§0!-§);
            }
            if(this.§]!B§ != 0 || this.§9=§ != 0)
            {
               param2.translate(this.§]!B§,this.§9=§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§else §(_loc4_.§->§,§-!B§);
               param2.concat(§-!B§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§->§ == this)
         {
            param1.§else §(this,param2);
            param2.invert();
            return param2;
         }
         §2[§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §2[§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §2[§.indexOf(_loc4_) == -1)
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
            _loc4_.§else §(_loc4_.§->§,§-!B§);
            param2.concat(§-!B§);
            _loc4_ = _loc4_.parent;
         }
         §+!G§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§else §(_loc4_.§->§,§-!B§);
            §+!G§.concat(§-!B§);
            _loc4_ = _loc4_.parent;
         }
         §+!G§.invert();
         param2.concat(§+!G§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §=3§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§6Y§ || !this.§7q§))
         {
            return null;
         }
         if(this.getBounds(this,§ !=§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §+!G§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§else §(_loc2_.§->§,§-!B§);
            §+!G§.concat(§-!B§);
            _loc2_ = _loc2_.parent;
         }
         return §+!G§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §+!G§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§else §(_loc2_.§->§,§-!B§);
            §+!G§.concat(§-!B§);
            _loc2_ = _loc2_.parent;
         }
         §+!G§.invert();
         return §+!G§.transformPoint(param1);
      }
      
      public function render(param1:§<@§, param2:Number) : void
      {
         throw new §=3§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§7!;§)
            {
               return;
            }
            this.§7!;§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function § set§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§->§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §%"'§();
         if(param1 != this.§->§ && this.§->§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§->§ = param1;
         if(this.§->§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§->§)
         {
            this.§->§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§->§)
         {
            this.§->§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §%!g§() : Matrix
      {
         return this.§else §(this.§->§);
      }
      
      public function get §4j§() : Rectangle
      {
         return this.getBounds(this.§->§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§->§,§ !=§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§7"2§ = 1;
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
         return this.getBounds(this.§->§,§ !=§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§!P§ = 1;
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
         var _loc2_:Array = §%"'§();
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
      
      public function §3'§(param1:Matrix3D) : void
      {
         if(this.§0!-§ == 0 && this.§7"2§ == 1 && this.§!P§ == 1)
         {
            if(this.§]!B§ + this.§6!f§ != 0 || this.§9=§ + this.§<!C§ != 0)
            {
               param1.prependTranslation(this.§]!B§ + this.§6!f§,this.§9=§ + this.§<!C§,0);
            }
         }
         else
         {
            if(this.§]!B§ != 0 || this.§9=§ != 0)
            {
               param1.prependTranslation(this.§]!B§,this.§9=§,0);
            }
            if(this.§0!-§ != 0)
            {
               param1.prependRotation(this.§0!-§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§7"2§ != 1 || this.§!P§ != 1)
            {
               param1.prependScale(this.§7"2§,this.§!P§,1);
            }
            if(this.§6!f§ != 0 || this.§<!C§ != 0)
            {
               param1.prependTranslation(this.§6!f§,this.§<!C§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§]!B§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§]!B§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§9=§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§9=§ = param1;
      }
      
      public function get z() : Number
      {
         return this.§1!?§;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.§->§)
         {
            this.§1!?§ = param1;
         }
      }
      
      public function get pivotX() : Number
      {
         return this.§6!f§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§6!f§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§<!C§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§<!C§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§7"2§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§7"2§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§!P§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§!P§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§0!-§;
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
         this.§0!-§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.§4!L§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§4!L§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§6Y§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§6Y§ = param1;
      }
      
      public function get §6!U§() : Boolean
      {
         return this.§7q§;
      }
      
      public function set §6!U§(param1:Boolean) : void
      {
         this.§7q§ = param1;
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
         return this.§->§;
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
