package §2!g§
{
   import §"v§.§&!i§;
   import §5!4§.§,!3§;
   import §5!4§.§,R§;
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
      
      private static var §[!I§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §,!$§:Rectangle = new Rectangle();
      
      private static var §#f§:Matrix = new Matrix();
      
      private static var §1!P§:Matrix = new Matrix();
      
      protected static var § !A§:int = 0;
       
      
      private var §;b§:Number;
      
      private var §[!5§:Number;
      
      private var §-!C§:Number;
      
      private var §+!@§:Number;
      
      private var § !?§:Number;
      
      private var §?v§:Number;
      
      private var §^!$§:Number;
      
      private var §'g§:Number;
      
      private var §&! §:Boolean;
      
      private var §@!V§:Boolean;
      
      private var mName:String;
      
      private var §%!+§:Number;
      
      private var §@P§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §,R§();
         }
         this.§;b§ = this.§[!5§ = this.§-!C§ = this.§+!@§ = this.§^!$§ = 0;
         this.§ !?§ = this.§?v§ = this.§'g§ = 1;
         this.§&! § = this.§@!V§ = true;
         this.§%!+§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §!f§(param1:Boolean = false) : void
      {
         if(this.§@P§)
         {
            this.§@P§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §^i§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§@P§ || param1 == null && this.§@P§ == null)
         {
            if(this.§-!C§ != 0 || this.§+!@§ != 0)
            {
               param2.translate(-this.§-!C§,-this.§+!@§);
            }
            if(this.§ !?§ != 1 || this.§?v§ != 1)
            {
               param2.scale(this.§ !?§,this.§?v§);
            }
            if(this.§^!$§ != 0)
            {
               param2.rotate(this.§^!$§);
            }
            if(this.§;b§ != 0 || this.§[!5§ != 0)
            {
               param2.translate(this.§;b§,this.§[!5§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§^i§(_loc4_.§@P§,§#f§);
               param2.concat(§#f§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§@P§ == this)
         {
            param1.§^i§(this,param2);
            param2.invert();
            return param2;
         }
         §[!I§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §[!I§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §[!I§.indexOf(_loc4_) == -1)
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
            _loc4_.§^i§(_loc4_.§@P§,§#f§);
            param2.concat(§#f§);
            _loc4_ = _loc4_.parent;
         }
         §1!P§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§^i§(_loc4_.§@P§,§#f§);
            §1!P§.concat(§#f§);
            _loc4_ = _loc4_.parent;
         }
         §1!P§.invert();
         param2.concat(§1!P§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §,!3§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§&! § || !this.§@!V§))
         {
            return null;
         }
         if(this.getBounds(this,§,!$§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §1!P§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§^i§(_loc2_.§@P§,§#f§);
            §1!P§.concat(§#f§);
            _loc2_ = _loc2_.parent;
         }
         return §1!P§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §1!P§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§^i§(_loc2_.§@P§,§#f§);
            §1!P§.concat(§#f§);
            _loc2_ = _loc2_.parent;
         }
         §1!P§.invert();
         return §1!P§.transformPoint(param1);
      }
      
      public function render(param1:§&!i§, param2:Number) : void
      {
         throw new §,!3§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§%!+§)
            {
               return;
            }
            this.§%!+§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §[!&§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§@P§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §!?§();
         if(param1 != this.§@P§ && this.§@P§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§@P§ = param1;
         if(this.§@P§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§@P§)
         {
            this.§@P§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§@P§)
         {
            this.§@P§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §[!H§() : Matrix
      {
         return this.§^i§(this.§@P§);
      }
      
      public function get §1!]§() : Rectangle
      {
         return this.getBounds(this.§@P§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§@P§,§,!$§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§ !?§ = 1;
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
         return this.getBounds(this.§@P§,§,!$§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§?v§ = 1;
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
         var _loc2_:Array = §!?§();
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
      
      public function § e§(param1:Matrix3D) : void
      {
         if(this.§^!$§ == 0 && this.§ !?§ == 1 && this.§?v§ == 1)
         {
            if(this.§;b§ + this.§-!C§ != 0 || this.§[!5§ + this.§+!@§ != 0)
            {
               param1.prependTranslation(this.§;b§ + this.§-!C§,this.§[!5§ + this.§+!@§,0);
            }
         }
         else
         {
            if(this.§;b§ != 0 || this.§[!5§ != 0)
            {
               param1.prependTranslation(this.§;b§,this.§[!5§,0);
            }
            if(this.§^!$§ != 0)
            {
               param1.prependRotation(this.§^!$§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§ !?§ != 1 || this.§?v§ != 1)
            {
               param1.prependScale(this.§ !?§,this.§?v§,1);
            }
            if(this.§-!C§ != 0 || this.§+!@§ != 0)
            {
               param1.prependTranslation(this.§-!C§,this.§+!@§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§;b§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§;b§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§[!5§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§[!5§ = param1;
      }
      
      public function get pivotX() : Number
      {
         return this.§-!C§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§-!C§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§+!@§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§+!@§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§ !?§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§ !?§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§?v§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§?v§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§^!$§;
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
         this.§^!$§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.§'g§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§'g§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§&! §;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§&! § = param1;
      }
      
      public function get §=e§() : Boolean
      {
         return this.§@!V§;
      }
      
      public function set §=e§(param1:Boolean) : void
      {
         this.§@!V§ = param1;
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
         return this.§@P§;
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
