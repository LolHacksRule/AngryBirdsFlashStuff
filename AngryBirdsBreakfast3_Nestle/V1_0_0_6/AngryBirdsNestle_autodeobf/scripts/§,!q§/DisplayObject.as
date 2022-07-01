package §,!q§
{
   import §-!Y§.§,!f§;
   import §]"1§.§1"-§;
   import §]"1§.§[,§;
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
      
      private static var §?!t§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §3!?§:Rectangle = new Rectangle();
      
      private static var §@Z§:Matrix = new Matrix();
      
      private static var §1!5§:Matrix = new Matrix();
      
      protected static var §?!<§:int = 0;
       
      
      private var §@S§:Number;
      
      private var §#B§:Number;
      
      private var §&!#§:Number;
      
      private var §?3§:Number;
      
      private var §?!Y§:Number;
      
      private var §+z§:Number;
      
      private var §'j§:Number;
      
      private var §2§:Number;
      
      private var §5""§:Boolean;
      
      private var §^!x§:Boolean;
      
      private var §0"3§:Number;
      
      private var mName:String;
      
      private var §0!!§:Number;
      
      private var §>w§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §1"-§();
         }
         this.§@S§ = this.§#B§ = this.§&!#§ = this.§?3§ = this.§'j§ = 0;
         this.§?!Y§ = this.§+z§ = this.§2§ = 1;
         this.§5""§ = this.§^!x§ = true;
         this.§0!!§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §>e§(param1:Boolean = false) : void
      {
         if(this.§>w§)
         {
            this.§>w§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §&!n§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§>w§ || param1 == null && this.§>w§ == null)
         {
            if(this.§&!#§ != 0 || this.§?3§ != 0)
            {
               param2.translate(-this.§&!#§,-this.§?3§);
            }
            if(this.§?!Y§ != 1 || this.§+z§ != 1)
            {
               param2.scale(this.§?!Y§,this.§+z§);
            }
            if(this.§'j§ != 0)
            {
               param2.rotate(this.§'j§);
            }
            if(this.§@S§ != 0 || this.§#B§ != 0)
            {
               param2.translate(this.§@S§,this.§#B§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§&!n§(_loc4_.§>w§,§@Z§);
               param2.concat(§@Z§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§>w§ == this)
         {
            param1.§&!n§(this,param2);
            param2.invert();
            return param2;
         }
         §?!t§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §?!t§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §?!t§.indexOf(_loc4_) == -1)
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
            _loc4_.§&!n§(_loc4_.§>w§,§@Z§);
            param2.concat(§@Z§);
            _loc4_ = _loc4_.parent;
         }
         §1!5§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§&!n§(_loc4_.§>w§,§@Z§);
            §1!5§.concat(§@Z§);
            _loc4_ = _loc4_.parent;
         }
         §1!5§.invert();
         param2.concat(§1!5§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §[,§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§5""§ || !this.§^!x§))
         {
            return null;
         }
         if(this.getBounds(this,§3!?§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §1!5§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§&!n§(_loc2_.§>w§,§@Z§);
            §1!5§.concat(§@Z§);
            _loc2_ = _loc2_.parent;
         }
         return §1!5§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §1!5§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§&!n§(_loc2_.§>w§,§@Z§);
            §1!5§.concat(§@Z§);
            _loc2_ = _loc2_.parent;
         }
         §1!5§.invert();
         return §1!5§.transformPoint(param1);
      }
      
      public function render(param1:§,!f§, param2:Number) : void
      {
         throw new §[,§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§0!!§)
            {
               return;
            }
            this.§0!!§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §^!d§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§>w§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §<"!§();
         if(param1 != this.§>w§ && this.§>w§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§>w§ = param1;
         if(this.§>w§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§>w§)
         {
            this.§>w§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§>w§)
         {
            this.§>w§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §<![§() : Matrix
      {
         return this.§&!n§(this.§>w§);
      }
      
      public function get §<!<§() : Rectangle
      {
         return this.getBounds(this.§>w§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§>w§,§3!?§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§?!Y§ = 1;
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
         return this.getBounds(this.§>w§,§3!?§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§+z§ = 1;
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
         var _loc2_:Array = §<"!§();
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
      
      public function §2!Q§(param1:Matrix3D) : void
      {
         if(this.§'j§ == 0 && this.§?!Y§ == 1 && this.§+z§ == 1)
         {
            if(this.§@S§ + this.§&!#§ != 0 || this.§#B§ + this.§?3§ != 0)
            {
               param1.prependTranslation(this.§@S§ + this.§&!#§,this.§#B§ + this.§?3§,0);
            }
         }
         else
         {
            if(this.§@S§ != 0 || this.§#B§ != 0)
            {
               param1.prependTranslation(this.§@S§,this.§#B§,0);
            }
            if(this.§'j§ != 0)
            {
               param1.prependRotation(this.§'j§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§?!Y§ != 1 || this.§+z§ != 1)
            {
               param1.prependScale(this.§?!Y§,this.§+z§,1);
            }
            if(this.§&!#§ != 0 || this.§?3§ != 0)
            {
               param1.prependTranslation(this.§&!#§,this.§?3§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§@S§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§@S§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§#B§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§#B§ = param1;
      }
      
      public function get z() : Number
      {
         return this.§0"3§;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.§>w§)
         {
            this.§0"3§ = param1;
         }
      }
      
      public function get pivotX() : Number
      {
         return this.§&!#§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§&!#§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§?3§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§?3§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§?!Y§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§?!Y§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§+z§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§+z§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§'j§;
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
         this.§'j§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.§2§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§2§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§5""§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§5""§ = param1;
      }
      
      public function get § w§() : Boolean
      {
         return this.§^!x§;
      }
      
      public function set § w§(param1:Boolean) : void
      {
         this.§^!x§ = param1;
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
         return this.§>w§;
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
