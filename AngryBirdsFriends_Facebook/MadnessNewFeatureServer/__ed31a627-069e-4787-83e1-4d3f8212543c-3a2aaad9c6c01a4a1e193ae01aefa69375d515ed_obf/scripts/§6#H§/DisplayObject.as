package §6#H§
{
   import §!$;§.EventDispatcher;
   import §!$;§.TouchEvent;
   import §'!j§.§^$$§;
   import §,#=§.§>V§;
   import §?$%§.§&"@§;
   import §]#a§.§3#]§;
   import §]#a§.§]$5§;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.system.Capabilities;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flash.utils.getQualifiedClassName;
   
   public class DisplayObject extends EventDispatcher
   {
      
      private static var §-"w§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §!"&§:Rectangle = new Rectangle();
      
      private static var §-#[§:Matrix = new Matrix();
       
      
      private var §["d§:Number;
      
      private var §%#z§:Number;
      
      private var §@!0§:Number;
      
      private var §-!,§:Number;
      
      private var §;"K§:Number;
      
      private var §'!x§:Number;
      
      private var §+#3§:Number;
      
      private var §'!K§:Number;
      
      private var §%r§:Number;
      
      private var §'$5§:Number;
      
      private var §`#W§:Number;
      
      private var §6! §:Boolean;
      
      private var §+!d§:Boolean;
      
      private var §]L§:int;
      
      private var §!I§:String;
      
      private var §1!A§:Boolean;
      
      private var §0!^§:DisplayObjectContainer;
      
      private var §1#>§:Matrix;
      
      private var §-$7§:Boolean;
      
      private var §#$ §:§&"@§;
      
      private var § get§:Boolean = true;
      
      public var sortValue:Number = 0.0;
      
      public var §4![§:int = 0;
      
      public function DisplayObject()
      {
         super();
         if(Capabilities.isDebugger && getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §]$5§();
         }
         this.§["d§ = this.§%#z§ = this.§-!,§ = this.§;"K§ = this.§'$5§ = this.§'!K§ = this.§%r§ = 0;
         this.§'!x§ = this.§+#3§ = this.§`#W§ = 1;
         this.§6! § = this.§+!d§ = true;
         this.§]L§ = §+!'§.AUTO;
         this.§1#>§ = new Matrix();
         this.§-$7§ = this.§1!A§ = false;
      }
      
      public function dispose() : void
      {
         if(this.§#$ § && this.§ get§)
         {
            this.§#$ §.dispose();
         }
         this.removeEventListeners();
         this.removeFromParent();
      }
      
      public function removeFromParent(param1:Boolean = false) : void
      {
         if(this.§0!^§)
         {
            this.§0!^§.removeChild(this,param1);
         }
      }
      
      public function §+#W§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§0!^§ || param1 == null && this.§0!^§ == null)
         {
            param2.copyFrom(this.§0"R§);
            return param2;
         }
         if(param1 == null || param1 == this.base)
         {
            _loc4_ = this;
            while(_loc4_ != param1)
            {
               param2.concat(_loc4_.§0"R§);
               _loc4_ = _loc4_.§0!^§;
            }
            return param2;
         }
         if(param1.§0!^§ == this)
         {
            param1.§+#W§(this,param2);
            param2.invert();
            return param2;
         }
         _loc3_ = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §-"w§.push(_loc4_);
            _loc4_ = _loc4_.§0!^§;
         }
         _loc4_ = param1;
         while(_loc4_ && §-"w§.indexOf(_loc4_) == -1)
         {
            _loc4_ = _loc4_.§0!^§;
         }
         §-"w§.length = 0;
         if(_loc4_)
         {
            _loc3_ = _loc4_;
            _loc4_ = this;
            while(_loc4_ != _loc3_)
            {
               param2.concat(_loc4_.§0"R§);
               _loc4_ = _loc4_.§0!^§;
            }
            if(_loc3_ == param1)
            {
               return param2;
            }
            §-#[§.identity();
            _loc4_ = param1;
            while(_loc4_ != _loc3_)
            {
               §-#[§.concat(_loc4_.§0"R§);
               _loc4_ = _loc4_.§0!^§;
            }
            §-#[§.invert();
            param2.concat(§-#[§);
            return param2;
         }
         throw new ArgumentError("Object not connected to target");
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §3#]§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§6! § || !this.§+!d§))
         {
            return null;
         }
         if(this.getBounds(this,§!"&§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point, param2:Point = null) : Point
      {
         this.§+#W§(this.base,§-#[§);
         return §>V§.§2>§(§-#[§,param1.x,param1.y,param2);
      }
      
      public function globalToLocal(param1:Point, param2:Point = null) : Point
      {
         this.§+#W§(this.base,§-#[§);
         §-#[§.invert();
         return §>V§.§2>§(§-#[§,param1.x,param1.y,param2);
      }
      
      public function render(param1:§^$$§, param2:Number) : void
      {
         throw new §3#]§("Method needs to be implemented in subclass");
      }
      
      public function get §"$$§() : Boolean
      {
         return this.§`#W§ != 0 && this.visible && this.§'!x§ != 0 && this.§+#3§ != 0;
      }
      
      function §>!a§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§0!^§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §2!a§();
         if(param1 != this.§0!^§ && this.§0!^§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§0!^§ = param1;
         if(this.§0!^§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      private final function §&#O§(param1:Number, param2:Number, param3:Number = 1.0E-4) : Boolean
      {
         return param1 - param3 < param2 && param1 + param3 > param2;
      }
      
      private final function §3$5§(param1:Number) : Number
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
      
      public function get §0"R§() : Matrix
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         if(this.§-$7§)
         {
            this.§-$7§ = false;
            if(this.§'!x§ < 0 || this.§+#3§ < 0 || this.§'!K§ != 0 || this.§%r§ != 0)
            {
               this.§1#>§.identity();
               if(this.§'!x§ != 1 || this.§+#3§ != 1)
               {
                  this.§1#>§.scale(this.§'!x§,this.§+#3§);
               }
               if(this.§'!K§ != 0 || this.§%r§ != 0)
               {
                  §>V§.§+"H§(this.§1#>§,this.§'!K§,this.§%r§);
               }
               if(this.§'$5§ != 0)
               {
                  this.§1#>§.rotate(this.§'$5§);
               }
               if(this.§["d§ != 0 || this.§%#z§ != 0)
               {
                  this.§1#>§.translate(this.§["d§,this.§%#z§);
               }
               if(this.§-!,§ != 0 || this.§;"K§ != 0)
               {
                  this.§1#>§.tx = this.§["d§ + (this.§1#>§.a * this.§-!,§ + this.§1#>§.c * this.§;"K§);
                  this.§1#>§.ty = this.§%#z§ + (this.§1#>§.b * this.§-!,§ + this.§1#>§.d * this.§;"K§);
               }
               else
               {
                  this.§1#>§.tx = this.§["d§;
                  this.§1#>§.ty = this.§%#z§;
               }
            }
            else if(this.§'$5§ != 0)
            {
               _loc1_ = Math.cos(this.§'$5§);
               _loc2_ = Math.sin(this.§'$5§);
               this.§1#>§.a = this.§'!x§ * _loc1_;
               this.§1#>§.b = this.§+#3§ * _loc2_;
               this.§1#>§.c = -this.§'!x§ * _loc2_;
               this.§1#>§.d = this.§+#3§ * _loc1_;
               this.§1#>§.tx = this.§["d§;
               this.§1#>§.ty = this.§%#z§;
               if(this.§-!,§ != 0)
               {
                  this.§1#>§.tx += this.§1#>§.a * this.§-!,§;
                  this.§1#>§.ty += this.§1#>§.b * this.§-!,§;
               }
               if(this.§;"K§ != 0)
               {
                  this.§1#>§.tx += this.§1#>§.c * this.§;"K§;
                  this.§1#>§.ty += this.§1#>§.d * this.§;"K§;
               }
            }
            else
            {
               this.§1#>§.a = this.§'!x§;
               this.§1#>§.b = 0;
               this.§1#>§.c = 0;
               this.§1#>§.d = this.§+#3§;
               this.§1#>§.tx = this.§["d§ + this.§-!,§ * this.§'!x§;
               this.§1#>§.ty = this.§%#z§ + this.§;"K§ * this.§+#3§;
            }
         }
         return this.§1#>§;
      }
      
      public function set §0"R§(param1:Matrix) : void
      {
         this.§-$7§ = false;
         this.§1#>§.copyFrom(param1);
         this.§["d§ = param1.tx;
         this.§%#z§ = param1.ty;
         this.§'!x§ = Math.sqrt(param1.a * param1.a + param1.b * param1.b);
         this.§%r§ = Math.acos(param1.a / this.§'!x§);
         if(!this.§&#O§(param1.b,this.§'!x§ * Math.sin(this.§%r§)))
         {
            this.§'!x§ *= -1;
            this.§%r§ = Math.acos(param1.a / this.§'!x§);
         }
         this.§+#3§ = Math.sqrt(param1.c * param1.c + param1.d * param1.d);
         this.§'!K§ = Math.acos(param1.d / this.§+#3§);
         if(!this.§&#O§(param1.c,-this.§+#3§ * Math.sin(this.§'!K§)))
         {
            this.§+#3§ *= -1;
            this.§'!K§ = Math.acos(param1.d / this.§+#3§);
         }
         if(this.§&#O§(this.§'!K§,this.§%r§))
         {
            this.§'$5§ = this.§'!K§;
            this.§%r§ = 0;
            this.§'!K§ = 0;
         }
         else
         {
            this.§'$5§ = 0;
         }
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§1!A§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§1!A§)
         {
            return;
         }
         this.§1!A§ = param1;
         if(this.§1!A§)
         {
            this.addEventListener(TouchEvent.§3O§,this.§0$8§);
         }
         else
         {
            this.removeEventListener(TouchEvent.§3O§,this.§0$8§);
         }
      }
      
      private function §0$8§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§7'§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function get bounds() : Rectangle
      {
         return this.getBounds(this.§0!^§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§0!^§,§!"&§).width;
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
         return this.getBounds(this.§0!^§,§!"&§).height;
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
         return this.§["d§;
      }
      
      public function set x(param1:Number) : void
      {
         if(this.§["d§ != param1)
         {
            this.§["d§ = param1;
            this.§-$7§ = true;
         }
      }
      
      public function get y() : Number
      {
         return this.§%#z§;
      }
      
      public function set y(param1:Number) : void
      {
         if(this.§%#z§ != param1)
         {
            this.§%#z§ = param1;
            this.§-$7§ = true;
         }
      }
      
      public function get z() : Number
      {
         return this.§@!0§;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.§0!^§)
         {
            this.§@!0§ = param1;
         }
      }
      
      public function get pivotX() : Number
      {
         return this.§-!,§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         if(this.§-!,§ != param1)
         {
            this.§-!,§ = param1;
            this.§-$7§ = true;
         }
      }
      
      public function get pivotY() : Number
      {
         return this.§;"K§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         if(this.§;"K§ != param1)
         {
            this.§;"K§ = param1;
            this.§-$7§ = true;
         }
      }
      
      public function get scaleX() : Number
      {
         return this.§'!x§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         if(this.§'!x§ != param1)
         {
            this.§'!x§ = param1;
            this.§-$7§ = true;
         }
      }
      
      public function get scaleY() : Number
      {
         return this.§+#3§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         if(this.§+#3§ != param1)
         {
            this.§+#3§ = param1;
            this.§-$7§ = true;
         }
      }
      
      public function get §+t§() : Number
      {
         return this.§'!K§;
      }
      
      public function set §+t§(param1:Number) : void
      {
         param1 = this.§3$5§(param1);
         if(this.§'!K§ != param1)
         {
            this.§'!K§ = param1;
            this.§-$7§ = true;
         }
      }
      
      public function get §`!J§() : Number
      {
         return this.§%r§;
      }
      
      public function set §`!J§(param1:Number) : void
      {
         param1 = this.§3$5§(param1);
         if(this.§%r§ != param1)
         {
            this.§%r§ = param1;
            this.§-$7§ = true;
         }
      }
      
      public function get rotation() : Number
      {
         return this.§'$5§;
      }
      
      public function set rotation(param1:Number) : void
      {
         param1 = this.§3$5§(param1);
         if(this.§'$5§ != param1)
         {
            this.§'$5§ = param1;
            this.§-$7§ = true;
         }
      }
      
      public function get alpha() : Number
      {
         return this.§`#W§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§`#W§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§6! §;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§6! § = param1;
      }
      
      public function get §?#N§() : Boolean
      {
         return this.§+!d§;
      }
      
      public function set §?#N§(param1:Boolean) : void
      {
         this.§+!d§ = param1;
      }
      
      public function get blendMode() : int
      {
         return this.§]L§;
      }
      
      public function set blendMode(param1:int) : void
      {
         this.§]L§ = param1;
      }
      
      public function get name() : String
      {
         return this.§!I§;
      }
      
      public function set name(param1:String) : void
      {
         this.§!I§ = param1;
      }
      
      public function get filter() : §&"@§
      {
         return this.§#$ §;
      }
      
      public function set filter(param1:§&"@§) : void
      {
         this.§#$ § = param1;
      }
      
      public function get ownsFilter() : Boolean
      {
         return this.§ get§;
      }
      
      public function set ownsFilter(param1:Boolean) : void
      {
         this.§ get§ = param1;
      }
      
      public function get parent() : DisplayObjectContainer
      {
         return this.§0!^§;
      }
      
      public function get base() : DisplayObject
      {
         var _loc1_:DisplayObject = this;
         while(_loc1_.§0!^§)
         {
            _loc1_ = _loc1_.§0!^§;
         }
         return _loc1_;
      }
      
      public function get root() : DisplayObject
      {
         var _loc1_:DisplayObject = this;
         while(_loc1_.§0!^§)
         {
            if(_loc1_.§0!^§ is Stage)
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
         if(this.§0!^§)
         {
            this.§0!^§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§0!^§)
         {
            this.§0!^§.addEventListeningObject(param1,param2);
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
         var _loc2_:Array = §2!a§();
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
