package §&!v§
{
   import §,k§.§!=§;
   import §1P§.EventDispatcher;
   import §1P§.TouchEvent;
   import §7v§.§7!W§;
   import §7v§.§8#n§;
   import §9+§.§]"+§;
   import §>l§.§+!Y§;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.system.Capabilities;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flash.utils.getQualifiedClassName;
   
   public class DisplayObject extends EventDispatcher
   {
      
      private static var §1#7§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §#">§:Rectangle = new Rectangle();
      
      private static var §<#k§:Matrix = new Matrix();
       
      
      private var §?!l§:Number;
      
      private var §`"T§:Number;
      
      private var §>$8§:Number;
      
      private var § #Q§:Number;
      
      private var §9!d§:Number;
      
      private var §4#+§:Number;
      
      private var §]"1§:Number;
      
      private var §=#z§:Number;
      
      private var §3!T§:Number;
      
      private var §,!H§:Number;
      
      private var § $ §:Number;
      
      private var §-$<§:Boolean;
      
      private var § true§:Boolean;
      
      private var §8!<§:int;
      
      private var §;!p§:String;
      
      private var §3#6§:Boolean;
      
      private var §9X§:DisplayObjectContainer;
      
      private var §7!t§:Matrix;
      
      private var §0#1§:Boolean;
      
      private var §?X§:§!=§;
      
      private var §="R§:Boolean = true;
      
      public var sortValue:Number = 0.0;
      
      public var §^#P§:int = 0;
      
      public function DisplayObject()
      {
         super();
         if(Capabilities.isDebugger && getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §7!W§();
         }
         this.§?!l§ = this.§`"T§ = this.§ #Q§ = this.§9!d§ = this.§,!H§ = this.§=#z§ = this.§3!T§ = 0;
         this.§4#+§ = this.§]"1§ = this.§ $ § = 1;
         this.§-$<§ = this.§ true§ = true;
         this.§8!<§ = §1i§.AUTO;
         this.§7!t§ = new Matrix();
         this.§0#1§ = this.§3#6§ = false;
      }
      
      public function dispose() : void
      {
         if(this.§?X§ && this.§="R§)
         {
            this.§?X§.dispose();
         }
         this.removeEventListeners();
         this.removeFromParent();
      }
      
      public function removeFromParent(param1:Boolean = false) : void
      {
         if(this.§9X§)
         {
            this.§9X§.removeChild(this,param1);
         }
      }
      
      public function §='§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§9X§ || param1 == null && this.§9X§ == null)
         {
            param2.copyFrom(this.§!7§);
            return param2;
         }
         if(param1 == null || param1 == this.base)
         {
            _loc4_ = this;
            while(_loc4_ != param1)
            {
               param2.concat(_loc4_.§!7§);
               _loc4_ = _loc4_.§9X§;
            }
            return param2;
         }
         if(param1.§9X§ == this)
         {
            param1.§='§(this,param2);
            param2.invert();
            return param2;
         }
         _loc3_ = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §1#7§.push(_loc4_);
            _loc4_ = _loc4_.§9X§;
         }
         _loc4_ = param1;
         while(_loc4_ && §1#7§.indexOf(_loc4_) == -1)
         {
            _loc4_ = _loc4_.§9X§;
         }
         §1#7§.length = 0;
         if(_loc4_)
         {
            _loc3_ = _loc4_;
            _loc4_ = this;
            while(_loc4_ != _loc3_)
            {
               param2.concat(_loc4_.§!7§);
               _loc4_ = _loc4_.§9X§;
            }
            if(_loc3_ == param1)
            {
               return param2;
            }
            §<#k§.identity();
            _loc4_ = param1;
            while(_loc4_ != _loc3_)
            {
               §<#k§.concat(_loc4_.§!7§);
               _loc4_ = _loc4_.§9X§;
            }
            §<#k§.invert();
            param2.concat(§<#k§);
            return param2;
         }
         throw new ArgumentError("Object not connected to target");
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §8#n§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§-$<§ || !this.§ true§))
         {
            return null;
         }
         if(this.getBounds(this,§#">§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point, param2:Point = null) : Point
      {
         this.§='§(this.base,§<#k§);
         return §+!Y§.§^t§(§<#k§,param1.x,param1.y,param2);
      }
      
      public function globalToLocal(param1:Point, param2:Point = null) : Point
      {
         this.§='§(this.base,§<#k§);
         §<#k§.invert();
         return §+!Y§.§^t§(§<#k§,param1.x,param1.y,param2);
      }
      
      public function render(param1:§]"+§, param2:Number) : void
      {
         throw new §8#n§("Method needs to be implemented in subclass");
      }
      
      public function get §`"s§() : Boolean
      {
         return this.§ $ § != 0 && this.visible && this.§4#+§ != 0 && this.§]"1§ != 0;
      }
      
      function §]#>§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§9X§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §9""§();
         if(param1 != this.§9X§ && this.§9X§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§9X§ = param1;
         if(this.§9X§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      private final function §7!M§(param1:Number, param2:Number, param3:Number = 1.0E-4) : Boolean
      {
         return param1 - param3 < param2 && param1 + param3 > param2;
      }
      
      private final function §,!5§(param1:Number) : Number
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
      
      public function get §!7§() : Matrix
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         if(this.§0#1§)
         {
            this.§0#1§ = false;
            if(this.§4#+§ < 0 || this.§]"1§ < 0 || this.§=#z§ != 0 || this.§3!T§ != 0)
            {
               this.§7!t§.identity();
               if(this.§4#+§ != 1 || this.§]"1§ != 1)
               {
                  this.§7!t§.scale(this.§4#+§,this.§]"1§);
               }
               if(this.§=#z§ != 0 || this.§3!T§ != 0)
               {
                  §+!Y§.§4#U§(this.§7!t§,this.§=#z§,this.§3!T§);
               }
               if(this.§,!H§ != 0)
               {
                  this.§7!t§.rotate(this.§,!H§);
               }
               if(this.§?!l§ != 0 || this.§`"T§ != 0)
               {
                  this.§7!t§.translate(this.§?!l§,this.§`"T§);
               }
               if(this.§ #Q§ != 0 || this.§9!d§ != 0)
               {
                  this.§7!t§.tx = this.§?!l§ + (this.§7!t§.a * this.§ #Q§ + this.§7!t§.c * this.§9!d§);
                  this.§7!t§.ty = this.§`"T§ + (this.§7!t§.b * this.§ #Q§ + this.§7!t§.d * this.§9!d§);
               }
               else
               {
                  this.§7!t§.tx = this.§?!l§;
                  this.§7!t§.ty = this.§`"T§;
               }
            }
            else if(this.§,!H§ != 0)
            {
               _loc1_ = Math.cos(this.§,!H§);
               _loc2_ = Math.sin(this.§,!H§);
               this.§7!t§.a = this.§4#+§ * _loc1_;
               this.§7!t§.b = this.§]"1§ * _loc2_;
               this.§7!t§.c = -this.§4#+§ * _loc2_;
               this.§7!t§.d = this.§]"1§ * _loc1_;
               this.§7!t§.tx = this.§?!l§;
               this.§7!t§.ty = this.§`"T§;
               if(this.§ #Q§ != 0)
               {
                  this.§7!t§.tx += this.§7!t§.a * this.§ #Q§;
                  this.§7!t§.ty += this.§7!t§.b * this.§ #Q§;
               }
               if(this.§9!d§ != 0)
               {
                  this.§7!t§.tx += this.§7!t§.c * this.§9!d§;
                  this.§7!t§.ty += this.§7!t§.d * this.§9!d§;
               }
            }
            else
            {
               this.§7!t§.a = this.§4#+§;
               this.§7!t§.b = 0;
               this.§7!t§.c = 0;
               this.§7!t§.d = this.§]"1§;
               this.§7!t§.tx = this.§?!l§ + this.§ #Q§ * this.§4#+§;
               this.§7!t§.ty = this.§`"T§ + this.§9!d§ * this.§]"1§;
            }
         }
         return this.§7!t§;
      }
      
      public function set §!7§(param1:Matrix) : void
      {
         this.§0#1§ = false;
         this.§7!t§.copyFrom(param1);
         this.§?!l§ = param1.tx;
         this.§`"T§ = param1.ty;
         this.§4#+§ = Math.sqrt(param1.a * param1.a + param1.b * param1.b);
         this.§3!T§ = Math.acos(param1.a / this.§4#+§);
         if(!this.§7!M§(param1.b,this.§4#+§ * Math.sin(this.§3!T§)))
         {
            this.§4#+§ *= -1;
            this.§3!T§ = Math.acos(param1.a / this.§4#+§);
         }
         this.§]"1§ = Math.sqrt(param1.c * param1.c + param1.d * param1.d);
         this.§=#z§ = Math.acos(param1.d / this.§]"1§);
         if(!this.§7!M§(param1.c,-this.§]"1§ * Math.sin(this.§=#z§)))
         {
            this.§]"1§ *= -1;
            this.§=#z§ = Math.acos(param1.d / this.§]"1§);
         }
         if(this.§7!M§(this.§=#z§,this.§3!T§))
         {
            this.§,!H§ = this.§=#z§;
            this.§3!T§ = 0;
            this.§=#z§ = 0;
         }
         else
         {
            this.§,!H§ = 0;
         }
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§3#6§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§3#6§)
         {
            return;
         }
         this.§3#6§ = param1;
         if(this.§3#6§)
         {
            this.addEventListener(TouchEvent.§6f§,this.§3!Z§);
         }
         else
         {
            this.removeEventListener(TouchEvent.§6f§,this.§3!Z§);
         }
      }
      
      private function §3!Z§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§=#V§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function get §=u§() : Rectangle
      {
         return this.getBounds(this.§9X§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§9X§,§#">§).width;
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
         return this.getBounds(this.§9X§,§#">§).height;
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
         return this.§?!l§;
      }
      
      public function set x(param1:Number) : void
      {
         if(this.§?!l§ != param1)
         {
            this.§?!l§ = param1;
            this.§0#1§ = true;
         }
      }
      
      public function get y() : Number
      {
         return this.§`"T§;
      }
      
      public function set y(param1:Number) : void
      {
         if(this.§`"T§ != param1)
         {
            this.§`"T§ = param1;
            this.§0#1§ = true;
         }
      }
      
      public function get z() : Number
      {
         return this.§>$8§;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.§9X§)
         {
            this.§>$8§ = param1;
         }
      }
      
      public function get pivotX() : Number
      {
         return this.§ #Q§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         if(this.§ #Q§ != param1)
         {
            this.§ #Q§ = param1;
            this.§0#1§ = true;
         }
      }
      
      public function get pivotY() : Number
      {
         return this.§9!d§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         if(this.§9!d§ != param1)
         {
            this.§9!d§ = param1;
            this.§0#1§ = true;
         }
      }
      
      public function get scaleX() : Number
      {
         return this.§4#+§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         if(this.§4#+§ != param1)
         {
            this.§4#+§ = param1;
            this.§0#1§ = true;
         }
      }
      
      public function get scaleY() : Number
      {
         return this.§]"1§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         if(this.§]"1§ != param1)
         {
            this.§]"1§ = param1;
            this.§0#1§ = true;
         }
      }
      
      public function get §4#8§() : Number
      {
         return this.§=#z§;
      }
      
      public function set §4#8§(param1:Number) : void
      {
         param1 = this.§,!5§(param1);
         if(this.§=#z§ != param1)
         {
            this.§=#z§ = param1;
            this.§0#1§ = true;
         }
      }
      
      public function get §]#S§() : Number
      {
         return this.§3!T§;
      }
      
      public function set §]#S§(param1:Number) : void
      {
         param1 = this.§,!5§(param1);
         if(this.§3!T§ != param1)
         {
            this.§3!T§ = param1;
            this.§0#1§ = true;
         }
      }
      
      public function get rotation() : Number
      {
         return this.§,!H§;
      }
      
      public function set rotation(param1:Number) : void
      {
         param1 = this.§,!5§(param1);
         if(this.§,!H§ != param1)
         {
            this.§,!H§ = param1;
            this.§0#1§ = true;
         }
      }
      
      public function get alpha() : Number
      {
         return this.§ $ §;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§ $ § = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§-$<§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§-$<§ = param1;
      }
      
      public function get § !$§() : Boolean
      {
         return this.§ true§;
      }
      
      public function set § !$§(param1:Boolean) : void
      {
         this.§ true§ = param1;
      }
      
      public function get blendMode() : int
      {
         return this.§8!<§;
      }
      
      public function set blendMode(param1:int) : void
      {
         this.§8!<§ = param1;
      }
      
      public function get name() : String
      {
         return this.§;!p§;
      }
      
      public function set name(param1:String) : void
      {
         this.§;!p§ = param1;
      }
      
      public function get filter() : §!=§
      {
         return this.§?X§;
      }
      
      public function set filter(param1:§!=§) : void
      {
         this.§?X§ = param1;
      }
      
      public function get ownsFilter() : Boolean
      {
         return this.§="R§;
      }
      
      public function set ownsFilter(param1:Boolean) : void
      {
         this.§="R§ = param1;
      }
      
      public function get parent() : DisplayObjectContainer
      {
         return this.§9X§;
      }
      
      public function get base() : DisplayObject
      {
         var _loc1_:DisplayObject = this;
         while(_loc1_.§9X§)
         {
            _loc1_ = _loc1_.§9X§;
         }
         return _loc1_;
      }
      
      public function get root() : DisplayObject
      {
         var _loc1_:DisplayObject = this;
         while(_loc1_.§9X§)
         {
            if(_loc1_.§9X§ is Stage)
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
         if(this.§9X§)
         {
            this.§9X§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§9X§)
         {
            this.§9X§.addEventListeningObject(param1,param2);
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
         var _loc2_:Array = §9""§();
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
