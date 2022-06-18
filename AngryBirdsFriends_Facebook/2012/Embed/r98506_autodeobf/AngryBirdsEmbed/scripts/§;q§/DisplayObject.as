package §;q§
{
   import §%R§.§^!2§;
   import §%R§.§var§;
   import §;%§.§8S§;
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
      
      private static var §,!6§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §%Z§:Rectangle = new Rectangle();
      
      private static var §?!3§:Matrix = new Matrix();
      
      private static var §#%§:Matrix = new Matrix();
      
      protected static var §9u§:int = 0;
       
      
      private var §9r§:Number;
      
      private var §!0§:Number;
      
      private var §?#§:Number;
      
      private var §!Y§:Number;
      
      private var §]&§:Number;
      
      private var §<;§:Number;
      
      private var §!S§:Number;
      
      private var §^=§:Number;
      
      private var §%w§:Boolean;
      
      private var §=h§:Boolean;
      
      private var mName:String;
      
      private var §,$§:Number;
      
      private var §<4§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §^!2§();
         }
         this.§9r§ = this.§!0§ = this.§?#§ = this.§!Y§ = this.§!S§ = 0;
         this.§]&§ = this.§<;§ = this.§^=§ = 1;
         this.§%w§ = this.§=h§ = true;
         this.§,$§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §<E§(param1:Boolean = false) : void
      {
         if(this.§<4§)
         {
            this.§<4§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §&Z§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§<4§ || param1 == null && this.§<4§ == null)
         {
            if(this.§?#§ != 0 || this.§!Y§ != 0)
            {
               param2.translate(-this.§?#§,-this.§!Y§);
            }
            if(this.§]&§ != 1 || this.§<;§ != 1)
            {
               param2.scale(this.§]&§,this.§<;§);
            }
            if(this.§!S§ != 0)
            {
               param2.rotate(this.§!S§);
            }
            if(this.§9r§ != 0 || this.§!0§ != 0)
            {
               param2.translate(this.§9r§,this.§!0§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§&Z§(_loc4_.§<4§,§?!3§);
               param2.concat(§?!3§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§<4§ == this)
         {
            param1.§&Z§(this,param2);
            param2.invert();
            return param2;
         }
         §,!6§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §,!6§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §,!6§.indexOf(_loc4_) == -1)
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
            _loc4_.§&Z§(_loc4_.§<4§,§?!3§);
            param2.concat(§?!3§);
            _loc4_ = _loc4_.parent;
         }
         §#%§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§&Z§(_loc4_.§<4§,§?!3§);
            §#%§.concat(§?!3§);
            _loc4_ = _loc4_.parent;
         }
         §#%§.invert();
         param2.concat(§#%§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §var§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§%w§ || !this.§=h§))
         {
            return null;
         }
         if(this.getBounds(this,§%Z§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §#%§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§&Z§(_loc2_.§<4§,§?!3§);
            §#%§.concat(§?!3§);
            _loc2_ = _loc2_.parent;
         }
         return §#%§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §#%§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§&Z§(_loc2_.§<4§,§?!3§);
            §#%§.concat(§?!3§);
            _loc2_ = _loc2_.parent;
         }
         §#%§.invert();
         return §#%§.transformPoint(param1);
      }
      
      public function render(param1:§8S§, param2:Number) : void
      {
         throw new §var§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§,$§)
            {
               return;
            }
            this.§,$§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §>T§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§<4§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §&q§();
         if(param1 != this.§<4§ && this.§<4§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§<4§ = param1;
         if(this.§<4§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§<4§)
         {
            this.§<4§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§<4§)
         {
            this.§<4§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §0!=§() : Matrix
      {
         return this.§&Z§(this.§<4§);
      }
      
      public function get §[! §() : Rectangle
      {
         return this.getBounds(this.§<4§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§<4§,§%Z§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§]&§ = 1;
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
         return this.getBounds(this.§<4§,§%Z§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§<;§ = 1;
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
         var _loc2_:Array = §&q§();
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
      
      public function §->§(param1:Matrix3D) : void
      {
         if(this.§!S§ == 0 && this.§]&§ == 1 && this.§<;§ == 1)
         {
            if(this.§9r§ + this.§?#§ != 0 || this.§!0§ + this.§!Y§ != 0)
            {
               param1.prependTranslation(this.§9r§ + this.§?#§,this.§!0§ + this.§!Y§,0);
            }
         }
         else
         {
            if(this.§9r§ != 0 || this.§!0§ != 0)
            {
               param1.prependTranslation(this.§9r§,this.§!0§,0);
            }
            if(this.§!S§ != 0)
            {
               param1.prependRotation(this.§!S§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§]&§ != 1 || this.§<;§ != 1)
            {
               param1.prependScale(this.§]&§,this.§<;§,1);
            }
            if(this.§?#§ != 0 || this.§!Y§ != 0)
            {
               param1.prependTranslation(this.§?#§,this.§!Y§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§9r§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§9r§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§!0§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§!0§ = param1;
      }
      
      public function get pivotX() : Number
      {
         return this.§?#§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§?#§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§!Y§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§!Y§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§]&§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§]&§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§<;§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§<;§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§!S§;
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
         this.§!S§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.§^=§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§^=§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§%w§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§%w§ = param1;
      }
      
      public function get §9$§() : Boolean
      {
         return this.§=h§;
      }
      
      public function set §9$§(param1:Boolean) : void
      {
         this.§=h§ = param1;
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
         return this.§<4§;
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
