package §9E§
{
   import §@4§.§<!I§;
   import §`5§.§?;§;
   import §`5§.§?g§;
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
      
      private static var §0C§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §4!r§:Rectangle = new Rectangle();
      
      private static var §1=§:Matrix = new Matrix();
      
      private static var §?x§:Matrix = new Matrix();
      
      protected static var §#E§:int = 0;
       
      
      private var §;!@§:Number;
      
      private var §3L§:Number;
      
      private var §if §:Number;
      
      private var §2w§:Number;
      
      private var §9P§:Number;
      
      private var §;!x§:Number;
      
      private var §3!f§:Number;
      
      private var §4!R§:Number;
      
      private var §%!Z§:Boolean;
      
      private var §@V§:Boolean;
      
      private var mName:String;
      
      private var §;7§:Number;
      
      private var §&`§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §?g§();
         }
         this.§;!@§ = this.§3L§ = this.§if § = this.§2w§ = this.§3!f§ = 0;
         this.§9P§ = this.§;!x§ = this.§4!R§ = 1;
         this.§%!Z§ = this.§@V§ = true;
         this.§;7§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §7;§(param1:Boolean = false) : void
      {
         if(this.§&`§)
         {
            this.§&`§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §@P§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§&`§ || param1 == null && this.§&`§ == null)
         {
            if(this.§if § != 0 || this.§2w§ != 0)
            {
               param2.translate(-this.§if §,-this.§2w§);
            }
            if(this.§9P§ != 1 || this.§;!x§ != 1)
            {
               param2.scale(this.§9P§,this.§;!x§);
            }
            if(this.§3!f§ != 0)
            {
               param2.rotate(this.§3!f§);
            }
            if(this.§;!@§ != 0 || this.§3L§ != 0)
            {
               param2.translate(this.§;!@§,this.§3L§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§@P§(_loc4_.§&`§,§1=§);
               param2.concat(§1=§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§&`§ == this)
         {
            param1.§@P§(this,param2);
            param2.invert();
            return param2;
         }
         §0C§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §0C§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §0C§.indexOf(_loc4_) == -1)
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
            _loc4_.§@P§(_loc4_.§&`§,§1=§);
            param2.concat(§1=§);
            _loc4_ = _loc4_.parent;
         }
         §?x§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§@P§(_loc4_.§&`§,§1=§);
            §?x§.concat(§1=§);
            _loc4_ = _loc4_.parent;
         }
         §?x§.invert();
         param2.concat(§?x§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §?;§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§%!Z§ || !this.§@V§))
         {
            return null;
         }
         if(this.getBounds(this,§4!r§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §?x§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§@P§(_loc2_.§&`§,§1=§);
            §?x§.concat(§1=§);
            _loc2_ = _loc2_.parent;
         }
         return §?x§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §?x§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§@P§(_loc2_.§&`§,§1=§);
            §?x§.concat(§1=§);
            _loc2_ = _loc2_.parent;
         }
         §?x§.invert();
         return §?x§.transformPoint(param1);
      }
      
      public function render(param1:§<!I§, param2:Number) : void
      {
         throw new §?;§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§;7§)
            {
               return;
            }
            this.§;7§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §,!$§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§&`§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §=!$§();
         if(param1 != this.§&`§ && this.§&`§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§&`§ = param1;
         if(this.§&`§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§&`§)
         {
            this.§&`§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§&`§)
         {
            this.§&`§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §3u§() : Matrix
      {
         return this.§@P§(this.§&`§);
      }
      
      public function get §,l§() : Rectangle
      {
         return this.getBounds(this.§&`§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§&`§,§4!r§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§9P§ = 1;
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
         return this.getBounds(this.§&`§,§4!r§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§;!x§ = 1;
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
         var _loc2_:Array = §=!$§();
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
      
      public function §>l§(param1:Matrix3D) : void
      {
         if(this.§3!f§ == 0 && this.§9P§ == 1 && this.§;!x§ == 1)
         {
            if(this.§;!@§ + this.§if § != 0 || this.§3L§ + this.§2w§ != 0)
            {
               param1.prependTranslation(this.§;!@§ + this.§if §,this.§3L§ + this.§2w§,0);
            }
         }
         else
         {
            if(this.§;!@§ != 0 || this.§3L§ != 0)
            {
               param1.prependTranslation(this.§;!@§,this.§3L§,0);
            }
            if(this.§3!f§ != 0)
            {
               param1.prependRotation(this.§3!f§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§9P§ != 1 || this.§;!x§ != 1)
            {
               param1.prependScale(this.§9P§,this.§;!x§,1);
            }
            if(this.§if § != 0 || this.§2w§ != 0)
            {
               param1.prependTranslation(this.§if §,this.§2w§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§;!@§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§;!@§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§3L§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§3L§ = param1;
      }
      
      public function get pivotX() : Number
      {
         return this.§if §;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§if § = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§2w§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§2w§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§9P§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§9P§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§;!x§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§;!x§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§3!f§;
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
         this.§3!f§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.§4!R§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§4!R§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§%!Z§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§%!Z§ = param1;
      }
      
      public function get §<V§() : Boolean
      {
         return this.§@V§;
      }
      
      public function set §<V§(param1:Boolean) : void
      {
         this.§@V§ = param1;
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
         return this.§&`§;
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
