package §'!6§
{
   import §"a§.§>w§;
   import §`#§.§3!#§;
   import §`#§.§7!p§;
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
      
      private static var static:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §,"$§:Rectangle = new Rectangle();
      
      private static var §`+§:Matrix = new Matrix();
      
      private static var §[!O§:Matrix = new Matrix();
      
      protected static var §%"<§:int = 0;
       
      
      private var §4!K§:Number;
      
      private var §7!#§:Number;
      
      private var §5'§:Number;
      
      private var §>K§:Number;
      
      private var §'@§:Number;
      
      private var §[!d§:Number;
      
      private var §!"W§:Number;
      
      private var §2"D§:Number;
      
      private var §,!W§:Boolean;
      
      private var §]!o§:Boolean;
      
      private var §#!a§:Number;
      
      private var mName:String;
      
      private var §3!H§:Number;
      
      private var §8!2§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §7!p§();
         }
         this.§4!K§ = this.§7!#§ = this.§5'§ = this.§>K§ = this.§!"W§ = 0;
         this.§'@§ = this.§[!d§ = this.§2"D§ = 1;
         this.§,!W§ = this.§]!o§ = true;
         this.§3!H§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §,!s§(param1:Boolean = false) : void
      {
         if(this.§8!2§)
         {
            this.§8!2§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §'!D§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§8!2§ || param1 == null && this.§8!2§ == null)
         {
            if(this.§5'§ != 0 || this.§>K§ != 0)
            {
               param2.translate(-this.§5'§,-this.§>K§);
            }
            if(this.§'@§ != 1 || this.§[!d§ != 1)
            {
               param2.scale(this.§'@§,this.§[!d§);
            }
            if(this.§!"W§ != 0)
            {
               param2.rotate(this.§!"W§);
            }
            if(this.§4!K§ != 0 || this.§7!#§ != 0)
            {
               param2.translate(this.§4!K§,this.§7!#§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§'!D§(_loc4_.§8!2§,§`+§);
               param2.concat(§`+§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§8!2§ == this)
         {
            param1.§'!D§(this,param2);
            param2.invert();
            return param2;
         }
         static.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            static.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && static.indexOf(_loc4_) == -1)
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
            _loc4_.§'!D§(_loc4_.§8!2§,§`+§);
            param2.concat(§`+§);
            _loc4_ = _loc4_.parent;
         }
         §[!O§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§'!D§(_loc4_.§8!2§,§`+§);
            §[!O§.concat(§`+§);
            _loc4_ = _loc4_.parent;
         }
         §[!O§.invert();
         param2.concat(§[!O§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §3!#§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§,!W§ || !this.§]!o§))
         {
            return null;
         }
         if(this.getBounds(this,§,"$§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §[!O§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§'!D§(_loc2_.§8!2§,§`+§);
            §[!O§.concat(§`+§);
            _loc2_ = _loc2_.parent;
         }
         return §[!O§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §[!O§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§'!D§(_loc2_.§8!2§,§`+§);
            §[!O§.concat(§`+§);
            _loc2_ = _loc2_.parent;
         }
         §[!O§.invert();
         return §[!O§.transformPoint(param1);
      }
      
      public function render(param1:§>w§, param2:Number) : void
      {
         throw new §3!#§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§3!H§)
            {
               return;
            }
            this.§3!H§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §;!X§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§8!2§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §-"4§();
         if(param1 != this.§8!2§ && this.§8!2§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§8!2§ = param1;
         if(this.§8!2§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§8!2§)
         {
            this.§8!2§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§8!2§)
         {
            this.§8!2§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §#!x§() : Matrix
      {
         return this.§'!D§(this.§8!2§);
      }
      
      public function get § #§() : Rectangle
      {
         return this.getBounds(this.§8!2§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§8!2§,§,"$§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§'@§ = 1;
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
         return this.getBounds(this.§8!2§,§,"$§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§[!d§ = 1;
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
         var _loc2_:Array = §-"4§();
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
      
      public function §#,§(param1:Matrix3D) : void
      {
         if(this.§!"W§ == 0 && this.§'@§ == 1 && this.§[!d§ == 1)
         {
            if(this.§4!K§ + this.§5'§ != 0 || this.§7!#§ + this.§>K§ != 0)
            {
               param1.prependTranslation(this.§4!K§ + this.§5'§,this.§7!#§ + this.§>K§,0);
            }
         }
         else
         {
            if(this.§4!K§ != 0 || this.§7!#§ != 0)
            {
               param1.prependTranslation(this.§4!K§,this.§7!#§,0);
            }
            if(this.§!"W§ != 0)
            {
               param1.prependRotation(this.§!"W§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§'@§ != 1 || this.§[!d§ != 1)
            {
               param1.prependScale(this.§'@§,this.§[!d§,1);
            }
            if(this.§5'§ != 0 || this.§>K§ != 0)
            {
               param1.prependTranslation(this.§5'§,this.§>K§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§4!K§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§4!K§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§7!#§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§7!#§ = param1;
      }
      
      public function get z() : Number
      {
         return this.§#!a§;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.§8!2§)
         {
            this.§#!a§ = param1;
         }
      }
      
      public function get pivotX() : Number
      {
         return this.§5'§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§5'§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§>K§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§>K§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§'@§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§'@§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§[!d§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§[!d§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§!"W§;
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
         this.§!"W§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.§2"D§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§2"D§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§,!W§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§,!W§ = param1;
      }
      
      public function get §^]§() : Boolean
      {
         return this.§]!o§;
      }
      
      public function set §^]§(param1:Boolean) : void
      {
         this.§]!o§ = param1;
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
         return this.§8!2§;
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
