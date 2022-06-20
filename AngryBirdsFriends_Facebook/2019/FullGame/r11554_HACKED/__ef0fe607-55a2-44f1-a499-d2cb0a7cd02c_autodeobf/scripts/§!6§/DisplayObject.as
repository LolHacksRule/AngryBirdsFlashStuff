package §!6§
{
   import §!#`§.EventDispatcher;
   import §!#`§.TouchEvent;
   import §#"l§.§<#^§;
   import §3!"§.§&!Q§;
   import §3!z§.§"!+§;
   import §3!z§.§`9§;
   import §]"P§.§4!9§;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.system.Capabilities;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flash.utils.getQualifiedClassName;
   
   public class DisplayObject extends EventDispatcher
   {
      
      private static var §6!Y§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §>X§:Rectangle = new Rectangle();
      
      private static var §0$-§:Matrix = new Matrix();
       
      
      private var §-##§:Number;
      
      private var §0#[§:Number;
      
      private var §]!l§:Number;
      
      private var §?"1§:Number;
      
      private var §5"#§:Number;
      
      private var §<!O§:Number;
      
      private var §5!g§:Number;
      
      private var §+!X§:Number;
      
      private var §+?§:Number;
      
      private var §%"b§:Number;
      
      private var §@t§:Number;
      
      private var §;"@§:Boolean;
      
      private var §^"4§:Boolean;
      
      private var §]#i§:int;
      
      private var §-!O§:String;
      
      private var §;#u§:Boolean;
      
      private var §6#O§:DisplayObjectContainer;
      
      private var §@#M§:Matrix;
      
      private var §;!Q§:Boolean;
      
      private var §0o§:§&!Q§;
      
      private var §@$1§:Boolean = true;
      
      public var sortValue:Number = 0.0;
      
      public var §"#8§:int = 0;
      
      public function DisplayObject()
      {
         super();
         if(Capabilities.isDebugger && getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §`9§();
         }
         this.§-##§ = this.§0#[§ = this.§?"1§ = this.§5"#§ = this.§%"b§ = this.§+!X§ = this.§+?§ = 0;
         this.§<!O§ = this.§5!g§ = this.§@t§ = 1;
         this.§;"@§ = this.§^"4§ = true;
         this.§]#i§ = §9#6§.AUTO;
         this.§@#M§ = new Matrix();
         this.§;!Q§ = this.§;#u§ = false;
      }
      
      public function dispose() : void
      {
         if(this.§0o§ && this.§@$1§)
         {
            this.§0o§.dispose();
         }
         this.removeEventListeners();
         this.removeFromParent();
      }
      
      public function removeFromParent(param1:Boolean = false) : void
      {
         if(this.§6#O§)
         {
            this.§6#O§.removeChild(this,param1);
         }
      }
      
      public function §!"?§(param1:DisplayObject, param2:Matrix = null) : Matrix
      {
         var _loc3_:DisplayObject = null;
         var _loc4_:DisplayObject = null;
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
         if(param1 == this.§6#O§ || param1 == null && this.§6#O§ == null)
         {
            param2.copyFrom(this.§5!F§);
            return param2;
         }
         if(param1 == null || param1 == this.base)
         {
            _loc4_ = this;
            while(_loc4_ != param1)
            {
               param2.concat(_loc4_.§5!F§);
               _loc4_ = _loc4_.§6#O§;
            }
            return param2;
         }
         if(param1.§6#O§ == this)
         {
            param1.§!"?§(this,param2);
            param2.invert();
            return param2;
         }
         _loc3_ = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §6!Y§.push(_loc4_);
            _loc4_ = _loc4_.§6#O§;
         }
         _loc4_ = param1;
         while(_loc4_ && §6!Y§.indexOf(_loc4_) == -1)
         {
            _loc4_ = _loc4_.§6#O§;
         }
         §6!Y§.length = 0;
         if(_loc4_)
         {
            _loc3_ = _loc4_;
            _loc4_ = this;
            while(_loc4_ != _loc3_)
            {
               param2.concat(_loc4_.§5!F§);
               _loc4_ = _loc4_.§6#O§;
            }
            if(_loc3_ == param1)
            {
               return param2;
            }
            §0$-§.identity();
            _loc4_ = param1;
            while(_loc4_ != _loc3_)
            {
               §0$-§.concat(_loc4_.§5!F§);
               _loc4_ = _loc4_.§6#O§;
            }
            §0$-§.invert();
            param2.concat(§0$-§);
            return param2;
         }
         throw new ArgumentError("Object not connected to target");
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §"!+§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§;"@§ || !this.§^"4§))
         {
            return null;
         }
         if(this.getBounds(this,§>X§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point, param2:Point = null) : Point
      {
         this.§!"?§(this.base,§0$-§);
         return §<#^§.§-!>§(§0$-§,param1.x,param1.y,param2);
      }
      
      public function globalToLocal(param1:Point, param2:Point = null) : Point
      {
         this.§!"?§(this.base,§0$-§);
         §0$-§.invert();
         return §<#^§.§-!>§(§0$-§,param1.x,param1.y,param2);
      }
      
      public function render(param1:§4!9§, param2:Number) : void
      {
         throw new §"!+§("Method needs to be implemented in subclass");
      }
      
      public function get §`k§() : Boolean
      {
         return this.§@t§ != 0 && this.visible && this.§<!O§ != 0 && this.§5!g§ != 0;
      }
      
      function §^$&§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§6#O§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §-""§();
         if(param1 != this.§6#O§ && this.§6#O§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§6#O§ = param1;
         if(this.§6#O§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      private final function §=$6§(param1:Number, param2:Number, param3:Number = 1.0E-4) : Boolean
      {
         return param1 - param3 < param2 && param1 + param3 > param2;
      }
      
      private final function §%"K§(param1:Number) : Number
      {
         var _loc2_:Number = NaN;
         if(param1 > Math.PI)
         {
            _loc2_ = Math.ceil(param1 / (Math.PI * 2));
            return Number(param1 - _loc2_ * (Math.PI * 2));
         }
         if(param1 < -Math.PI)
         {
            _loc2_ = Math.ceil(-param1 / (Math.PI * 2));
            param1 += _loc2_ * (Math.PI * 2);
         }
         return param1;
      }
      
      public function get §5!F§() : Matrix
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         if(this.§;!Q§)
         {
            this.§;!Q§ = false;
            if(this.§<!O§ < 0 || this.§5!g§ < 0 || this.§+!X§ != 0 || this.§+?§ != 0)
            {
               this.§@#M§.identity();
               if(this.§<!O§ != 1 || this.§5!g§ != 1)
               {
                  this.§@#M§.scale(this.§<!O§,this.§5!g§);
               }
               if(this.§+!X§ != 0 || this.§+?§ != 0)
               {
                  §<#^§.§@!h§(this.§@#M§,this.§+!X§,this.§+?§);
               }
               if(this.§%"b§ != 0)
               {
                  this.§@#M§.rotate(this.§%"b§);
               }
               if(this.§-##§ != 0 || this.§0#[§ != 0)
               {
                  this.§@#M§.translate(this.§-##§,this.§0#[§);
               }
               if(this.§?"1§ != 0 || this.§5"#§ != 0)
               {
                  this.§@#M§.tx = this.§-##§ + (this.§@#M§.a * this.§?"1§ + this.§@#M§.c * this.§5"#§);
                  this.§@#M§.ty = this.§0#[§ + (this.§@#M§.b * this.§?"1§ + this.§@#M§.d * this.§5"#§);
               }
               else
               {
                  this.§@#M§.tx = this.§-##§;
                  this.§@#M§.ty = this.§0#[§;
               }
            }
            else if(this.§%"b§ != 0)
            {
               _loc1_ = Math.cos(this.§%"b§);
               _loc2_ = Math.sin(this.§%"b§);
               this.§@#M§.a = this.§<!O§ * _loc1_;
               this.§@#M§.b = this.§5!g§ * _loc2_;
               this.§@#M§.c = -this.§<!O§ * _loc2_;
               this.§@#M§.d = this.§5!g§ * _loc1_;
               this.§@#M§.tx = this.§-##§;
               this.§@#M§.ty = this.§0#[§;
               if(this.§?"1§ != 0)
               {
                  this.§@#M§.tx += this.§@#M§.a * this.§?"1§;
                  this.§@#M§.ty += this.§@#M§.b * this.§?"1§;
               }
               if(this.§5"#§ != 0)
               {
                  this.§@#M§.tx += this.§@#M§.c * this.§5"#§;
                  this.§@#M§.ty += this.§@#M§.d * this.§5"#§;
               }
            }
            else
            {
               this.§@#M§.a = this.§<!O§;
               this.§@#M§.b = 0;
               this.§@#M§.c = 0;
               this.§@#M§.d = this.§5!g§;
               this.§@#M§.tx = this.§-##§ + this.§?"1§ * this.§<!O§;
               this.§@#M§.ty = this.§0#[§ + this.§5"#§ * this.§5!g§;
            }
         }
         return this.§@#M§;
      }
      
      public function set §5!F§(param1:Matrix) : void
      {
         this.§;!Q§ = false;
         this.§@#M§.copyFrom(param1);
         this.§-##§ = param1.tx;
         this.§0#[§ = param1.ty;
         this.§<!O§ = Math.sqrt(param1.a * param1.a + param1.b * param1.b);
         this.§+?§ = Math.acos(param1.a / this.§<!O§);
         if(!this.§=$6§(param1.b,this.§<!O§ * Math.sin(this.§+?§)))
         {
            this.§<!O§ *= -1;
            this.§+?§ = Math.acos(param1.a / this.§<!O§);
         }
         this.§5!g§ = Math.sqrt(param1.c * param1.c + param1.d * param1.d);
         this.§+!X§ = Math.acos(param1.d / this.§5!g§);
         if(!this.§=$6§(param1.c,-this.§5!g§ * Math.sin(this.§+!X§)))
         {
            this.§5!g§ *= -1;
            this.§+!X§ = Math.acos(param1.d / this.§5!g§);
         }
         if(this.§=$6§(this.§+!X§,this.§+?§))
         {
            this.§%"b§ = this.§+!X§;
            this.§+?§ = 0;
            this.§+!X§ = 0;
         }
         else
         {
            this.§%"b§ = 0;
         }
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§;#u§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§;#u§)
         {
            return;
         }
         this.§;#u§ = param1;
         if(this.§;#u§)
         {
            this.addEventListener(TouchEvent.§`#b§,this.§3$B§);
         }
         else
         {
            this.removeEventListener(TouchEvent.§`#b§,this.§3$B§);
         }
      }
      
      private function §3$B§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§,!R§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function get bounds() : Rectangle
      {
         return this.getBounds(this.§6#O§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§6#O§,§>X§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.scaleX = 1;
         var _loc2_:Number = this.width;
         if(_loc2_ != 0)
         {
            this.scaleX = param1 / _loc2_;
         }
      }
      
      public function get height() : Number
      {
         return this.getBounds(this.§6#O§,§>X§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.scaleY = 1;
         var _loc2_:Number = this.height;
         if(_loc2_ != 0)
         {
            this.scaleY = param1 / _loc2_;
         }
      }
      
      public function get x() : Number
      {
         return this.§-##§;
      }
      
      public function set x(param1:Number) : void
      {
         if(this.§-##§ != param1)
         {
            this.§-##§ = param1;
            this.§;!Q§ = true;
         }
      }
      
      public function get y() : Number
      {
         return this.§0#[§;
      }
      
      public function set y(param1:Number) : void
      {
         if(this.§0#[§ != param1)
         {
            this.§0#[§ = param1;
            this.§;!Q§ = true;
         }
      }
      
      public function get z() : Number
      {
         return this.§]!l§;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.§6#O§)
         {
            this.§]!l§ = param1;
         }
      }
      
      public function get pivotX() : Number
      {
         return this.§?"1§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         if(this.§?"1§ != param1)
         {
            this.§?"1§ = param1;
            this.§;!Q§ = true;
         }
      }
      
      public function get pivotY() : Number
      {
         return this.§5"#§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         if(this.§5"#§ != param1)
         {
            this.§5"#§ = param1;
            this.§;!Q§ = true;
         }
      }
      
      public function get scaleX() : Number
      {
         return this.§<!O§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         if(this.§<!O§ != param1)
         {
            this.§<!O§ = param1;
            this.§;!Q§ = true;
         }
      }
      
      public function get scaleY() : Number
      {
         return this.§5!g§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         if(this.§5!g§ != param1)
         {
            this.§5!g§ = param1;
            this.§;!Q§ = true;
         }
      }
      
      public function get §[!9§() : Number
      {
         return this.§+!X§;
      }
      
      public function set §[!9§(param1:Number) : void
      {
         param1 = this.§%"K§(param1);
         if(this.§+!X§ != param1)
         {
            this.§+!X§ = param1;
            this.§;!Q§ = true;
         }
      }
      
      public function get §4$=§() : Number
      {
         return this.§+?§;
      }
      
      public function set §4$=§(param1:Number) : void
      {
         param1 = this.§%"K§(param1);
         if(this.§+?§ != param1)
         {
            this.§+?§ = param1;
            this.§;!Q§ = true;
         }
      }
      
      public function get rotation() : Number
      {
         return this.§%"b§;
      }
      
      public function set rotation(param1:Number) : void
      {
         param1 = this.§%"K§(param1);
         if(this.§%"b§ != param1)
         {
            this.§%"b§ = param1;
            this.§;!Q§ = true;
         }
      }
      
      public function get alpha() : Number
      {
         return this.§@t§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§@t§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§;"@§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§;"@§ = param1;
      }
      
      public function get §7!w§() : Boolean
      {
         return this.§^"4§;
      }
      
      public function set §7!w§(param1:Boolean) : void
      {
         this.§^"4§ = param1;
      }
      
      public function get blendMode() : int
      {
         return this.§]#i§;
      }
      
      public function set blendMode(param1:int) : void
      {
         this.§]#i§ = param1;
      }
      
      public function get name() : String
      {
         return this.§-!O§;
      }
      
      public function set name(param1:String) : void
      {
         this.§-!O§ = param1;
      }
      
      public function get filter() : §&!Q§
      {
         return this.§0o§;
      }
      
      public function set filter(param1:§&!Q§) : void
      {
         this.§0o§ = param1;
      }
      
      public function get ownsFilter() : Boolean
      {
         return this.§@$1§;
      }
      
      public function set ownsFilter(param1:Boolean) : void
      {
         this.§@$1§ = param1;
      }
      
      public function get parent() : DisplayObjectContainer
      {
         return this.§6#O§;
      }
      
      public function get base() : DisplayObject
      {
         var _loc1_:DisplayObject = this;
         while(_loc1_.§6#O§)
         {
            _loc1_ = _loc1_.§6#O§;
         }
         return _loc1_;
      }
      
      public function get root() : DisplayObject
      {
         var _loc1_:DisplayObject = this;
         while(_loc1_.§6#O§)
         {
            if(_loc1_.§6#O§ is Stage)
            {
               return _loc1_;
            }
            _loc1_ = _loc1_.parent;
         }
         return null;
      }
      
      public function get stage() : Stage
      {
         return this.base as Stage;
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§6#O§)
         {
            this.§6#O§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§6#O§)
         {
            this.§6#O§.addEventListeningObject(param1,param2);
         }
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
         var _loc2_:Array = §-""§();
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
      
      public function set color(param1:uint) : void
      {
      }
   }
}
