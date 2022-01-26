package §1!A§
{
   import §-!3§.§3!9§;
   import §-!3§.§?Z§;
   import §`M§.§[7§;
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
      
      private static var §2!V§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §`!M§:Rectangle = new Rectangle();
      
      private static var §!k§:Matrix = new Matrix();
      
      private static var §1V§:Matrix = new Matrix();
      
      protected static var §[!5§:int = 0;
       
      
      private var §6!Z§:Number;
      
      private var §,!A§:Number;
      
      private var § z§:Number;
      
      private var §]E§:Number;
      
      private var §+_§:Number;
      
      private var §4&§:Number;
      
      private var §3!`§:Number;
      
      private var mAlpha:Number;
      
      private var §6!L§:Boolean;
      
      private var §[!X§:Boolean;
      
      private var mName:String;
      
      private var §;u§:Number;
      
      private var §0!X§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §3!9§();
         }
         this.§6!Z§ = this.§,!A§ = this.§ z§ = this.§]E§ = this.§3!`§ = 0;
         this.§+_§ = this.§4&§ = this.mAlpha = 1;
         this.§6!L§ = this.§[!X§ = true;
         this.§;u§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §;H§(param1:Boolean = false) : void
      {
         if(this.§0!X§)
         {
            this.§0!X§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §0!V§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§0!X§ || param1 == null && this.§0!X§ == null)
         {
            if(this.§ z§ != 0 || this.§]E§ != 0)
            {
               param2.translate(-this.§ z§,-this.§]E§);
            }
            if(this.§+_§ != 1 || this.§4&§ != 1)
            {
               param2.scale(this.§+_§,this.§4&§);
            }
            if(this.§3!`§ != 0)
            {
               param2.rotate(this.§3!`§);
            }
            if(this.§6!Z§ != 0 || this.§,!A§ != 0)
            {
               param2.translate(this.§6!Z§,this.§,!A§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§0!V§(_loc4_.§0!X§,§!k§);
               param2.concat(§!k§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§0!X§ == this)
         {
            param1.§0!V§(this,param2);
            param2.invert();
            return param2;
         }
         §2!V§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §2!V§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §2!V§.indexOf(_loc4_) == -1)
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
            _loc4_.§0!V§(_loc4_.§0!X§,§!k§);
            param2.concat(§!k§);
            _loc4_ = _loc4_.parent;
         }
         §1V§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§0!V§(_loc4_.§0!X§,§!k§);
            §1V§.concat(§!k§);
            _loc4_ = _loc4_.parent;
         }
         §1V§.invert();
         param2.concat(§1V§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §?Z§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§6!L§ || !this.§[!X§))
         {
            return null;
         }
         if(this.getBounds(this,§`!M§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §1V§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§0!V§(_loc2_.§0!X§,§!k§);
            §1V§.concat(§!k§);
            _loc2_ = _loc2_.parent;
         }
         return §1V§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §1V§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§0!V§(_loc2_.§0!X§,§!k§);
            §1V§.concat(§!k§);
            _loc2_ = _loc2_.parent;
         }
         §1V§.invert();
         return §1V§.transformPoint(param1);
      }
      
      public function render(param1:§[7§, param2:Number) : void
      {
         throw new §?Z§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§;u§)
            {
               return;
            }
            this.§;u§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §5h§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§0!X§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §&!Y§();
         if(param1 != this.§0!X§ && this.§0!X§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§0!X§ = param1;
         if(this.§0!X§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§0!X§)
         {
            this.§0!X§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§0!X§)
         {
            this.§0!X§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §=! §() : Matrix
      {
         return this.§0!V§(this.§0!X§);
      }
      
      public function get §"G§() : Rectangle
      {
         return this.getBounds(this.§0!X§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§0!X§,§`!M§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§+_§ = 1;
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
         return this.getBounds(this.§0!X§,§`!M§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§4&§ = 1;
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
         var _loc2_:Array = §&!Y§();
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
      
      public function §#;§(param1:Matrix3D) : void
      {
         if(this.§3!`§ == 0 && this.§+_§ == 1 && this.§4&§ == 1)
         {
            if(this.§6!Z§ + this.§ z§ != 0 || this.§,!A§ + this.§]E§ != 0)
            {
               param1.prependTranslation(this.§6!Z§ + this.§ z§,this.§,!A§ + this.§]E§,0);
            }
         }
         else
         {
            if(this.§6!Z§ != 0 || this.§,!A§ != 0)
            {
               param1.prependTranslation(this.§6!Z§,this.§,!A§,0);
            }
            if(this.§3!`§ != 0)
            {
               param1.prependRotation(this.§3!`§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§+_§ != 1 || this.§4&§ != 1)
            {
               param1.prependScale(this.§+_§,this.§4&§,1);
            }
            if(this.§ z§ != 0 || this.§]E§ != 0)
            {
               param1.prependTranslation(this.§ z§,this.§]E§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§6!Z§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§6!Z§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§,!A§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§,!A§ = param1;
      }
      
      public function get pivotX() : Number
      {
         return this.§ z§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§ z§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§]E§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§]E§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§+_§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§+_§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§4&§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§4&§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§3!`§;
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
         this.§3!`§ = param1;
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
         return this.§6!L§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§6!L§ = param1;
      }
      
      public function get §6R§() : Boolean
      {
         return this.§[!X§;
      }
      
      public function set §6R§(param1:Boolean) : void
      {
         this.§[!X§ = param1;
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
         return this.§0!X§;
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
