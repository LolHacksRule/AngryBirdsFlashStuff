package §#Z§
{
   import §&§.§""F§;
   import §0"D§.§ #r§;
   import §8!M§.§07§;
   import §8"'§.§2!H§;
   import §8"'§.§]8§;
   import §<!S§.EventDispatcher;
   import §<!S§.TouchEvent;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.system.Capabilities;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flash.utils.getQualifiedClassName;
   
   public class DisplayObject extends EventDispatcher
   {
      
      private static var §>j§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §3#p§:Rectangle = new Rectangle();
      
      private static var §5y§:Matrix = new Matrix();
       
      
      private var §0k§:Number;
      
      private var §@_§:Number;
      
      private var §=!3§:Number;
      
      private var §1">§:Number;
      
      private var §@l§:Number;
      
      private var §#!z§:Number;
      
      private var §3g§:Number;
      
      private var §9"4§:Number;
      
      private var §]g§:Number;
      
      private var §^I§:Number;
      
      private var §9$'§:Number;
      
      private var §%I§:Boolean;
      
      private var §^!E§:Boolean;
      
      private var §2O§:int;
      
      private var §-#3§:String;
      
      private var §&"q§:Boolean;
      
      private var §!#^§:DisplayObjectContainer;
      
      private var §>!6§:Matrix;
      
      private var §;!U§:Boolean;
      
      private var §]!c§:§07§;
      
      private var §7"k§:Boolean = true;
      
      public var sortValue:Number = 0.0;
      
      public var §[,§:int = 0;
      
      public function DisplayObject()
      {
         super();
         if(Capabilities.isDebugger && getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §2!H§();
         }
         this.§0k§ = this.§@_§ = this.§1">§ = this.§@l§ = this.§^I§ = this.§9"4§ = this.§]g§ = 0;
         this.§#!z§ = this.§3g§ = this.§9$'§ = 1;
         this.§%I§ = this.§^!E§ = true;
         this.§2O§ = §1$§.AUTO;
         this.§>!6§ = new Matrix();
         this.§;!U§ = this.§&"q§ = false;
      }
      
      public function dispose() : void
      {
         if(this.§]!c§ && this.§7"k§)
         {
            this.§]!c§.dispose();
         }
         this.removeEventListeners();
         this.removeFromParent();
      }
      
      public function removeFromParent(param1:Boolean = false) : void
      {
         if(this.§!#^§)
         {
            this.§!#^§.removeChild(this,param1);
         }
      }
      
      public function §?P§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§!#^§ || param1 == null && this.§!#^§ == null)
         {
            param2.copyFrom(this.§9!5§);
            return param2;
         }
         if(param1 == null || param1 == this.base)
         {
            _loc4_ = this;
            while(_loc4_ != param1)
            {
               param2.concat(_loc4_.§9!5§);
               _loc4_ = _loc4_.§!#^§;
            }
            return param2;
         }
         if(param1.§!#^§ == this)
         {
            param1.§?P§(this,param2);
            param2.invert();
            return param2;
         }
         _loc3_ = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §>j§.push(_loc4_);
            _loc4_ = _loc4_.§!#^§;
         }
         _loc4_ = param1;
         while(_loc4_ && §>j§.indexOf(_loc4_) == -1)
         {
            _loc4_ = _loc4_.§!#^§;
         }
         §>j§.length = 0;
         if(_loc4_)
         {
            _loc3_ = _loc4_;
            _loc4_ = this;
            while(_loc4_ != _loc3_)
            {
               param2.concat(_loc4_.§9!5§);
               _loc4_ = _loc4_.§!#^§;
            }
            if(_loc3_ == param1)
            {
               return param2;
            }
            §5y§.identity();
            _loc4_ = param1;
            while(_loc4_ != _loc3_)
            {
               §5y§.concat(_loc4_.§9!5§);
               _loc4_ = _loc4_.§!#^§;
            }
            §5y§.invert();
            param2.concat(§5y§);
            return param2;
         }
         throw new ArgumentError("Object not connected to target");
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §]8§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§%I§ || !this.§^!E§))
         {
            return null;
         }
         if(this.getBounds(this,§3#p§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point, param2:Point = null) : Point
      {
         this.§?P§(this.base,§5y§);
         return § #r§.§7t§(§5y§,param1.x,param1.y,param2);
      }
      
      public function globalToLocal(param1:Point, param2:Point = null) : Point
      {
         this.§?P§(this.base,§5y§);
         §5y§.invert();
         return § #r§.§7t§(§5y§,param1.x,param1.y,param2);
      }
      
      public function render(param1:§""F§, param2:Number) : void
      {
         throw new §]8§("Method needs to be implemented in subclass");
      }
      
      public function get §+3§() : Boolean
      {
         return this.§9$'§ != 0 && this.visible && this.§#!z§ != 0 && this.§3g§ != 0;
      }
      
      function §!z§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§!#^§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §<%§();
         if(param1 != this.§!#^§ && this.§!#^§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§!#^§ = param1;
         if(this.§!#^§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      private final function §`$"§(param1:Number, param2:Number, param3:Number = 1.0E-4) : Boolean
      {
         return param1 - param3 < param2 && param1 + param3 > param2;
      }
      
      private final function §5#F§(param1:Number) : Number
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
      
      public function get §9!5§() : Matrix
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         if(this.§;!U§)
         {
            this.§;!U§ = false;
            if(this.§#!z§ < 0 || this.§3g§ < 0 || this.§9"4§ != 0 || this.§]g§ != 0)
            {
               this.§>!6§.identity();
               if(this.§#!z§ != 1 || this.§3g§ != 1)
               {
                  this.§>!6§.scale(this.§#!z§,this.§3g§);
               }
               if(this.§9"4§ != 0 || this.§]g§ != 0)
               {
                  § #r§.§8#A§(this.§>!6§,this.§9"4§,this.§]g§);
               }
               if(this.§^I§ != 0)
               {
                  this.§>!6§.rotate(this.§^I§);
               }
               if(this.§0k§ != 0 || this.§@_§ != 0)
               {
                  this.§>!6§.translate(this.§0k§,this.§@_§);
               }
               if(this.§1">§ != 0 || this.§@l§ != 0)
               {
                  this.§>!6§.tx = this.§0k§ + (this.§>!6§.a * this.§1">§ + this.§>!6§.c * this.§@l§);
                  this.§>!6§.ty = this.§@_§ + (this.§>!6§.b * this.§1">§ + this.§>!6§.d * this.§@l§);
               }
               else
               {
                  this.§>!6§.tx = this.§0k§;
                  this.§>!6§.ty = this.§@_§;
               }
            }
            else if(this.§^I§ != 0)
            {
               _loc1_ = Math.cos(this.§^I§);
               _loc2_ = Math.sin(this.§^I§);
               this.§>!6§.a = this.§#!z§ * _loc1_;
               this.§>!6§.b = this.§3g§ * _loc2_;
               this.§>!6§.c = -this.§#!z§ * _loc2_;
               this.§>!6§.d = this.§3g§ * _loc1_;
               this.§>!6§.tx = this.§0k§;
               this.§>!6§.ty = this.§@_§;
               if(this.§1">§ != 0)
               {
                  this.§>!6§.tx += this.§>!6§.a * this.§1">§;
                  this.§>!6§.ty += this.§>!6§.b * this.§1">§;
               }
               if(this.§@l§ != 0)
               {
                  this.§>!6§.tx += this.§>!6§.c * this.§@l§;
                  this.§>!6§.ty += this.§>!6§.d * this.§@l§;
               }
            }
            else
            {
               this.§>!6§.a = this.§#!z§;
               this.§>!6§.b = 0;
               this.§>!6§.c = 0;
               this.§>!6§.d = this.§3g§;
               this.§>!6§.tx = this.§0k§ + this.§1">§ * this.§#!z§;
               this.§>!6§.ty = this.§@_§ + this.§@l§ * this.§3g§;
            }
         }
         return this.§>!6§;
      }
      
      public function set §9!5§(param1:Matrix) : void
      {
         this.§;!U§ = false;
         this.§>!6§.copyFrom(param1);
         this.§0k§ = param1.tx;
         this.§@_§ = param1.ty;
         this.§#!z§ = Math.sqrt(param1.a * param1.a + param1.b * param1.b);
         this.§]g§ = Math.acos(param1.a / this.§#!z§);
         if(!this.§`$"§(param1.b,this.§#!z§ * Math.sin(this.§]g§)))
         {
            this.§#!z§ *= -1;
            this.§]g§ = Math.acos(param1.a / this.§#!z§);
         }
         this.§3g§ = Math.sqrt(param1.c * param1.c + param1.d * param1.d);
         this.§9"4§ = Math.acos(param1.d / this.§3g§);
         if(!this.§`$"§(param1.c,-this.§3g§ * Math.sin(this.§9"4§)))
         {
            this.§3g§ *= -1;
            this.§9"4§ = Math.acos(param1.d / this.§3g§);
         }
         if(this.§`$"§(this.§9"4§,this.§]g§))
         {
            this.§^I§ = this.§9"4§;
            this.§]g§ = 0;
            this.§9"4§ = 0;
         }
         else
         {
            this.§^I§ = 0;
         }
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§&"q§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§&"q§)
         {
            return;
         }
         this.§&"q§ = param1;
         if(this.§&"q§)
         {
            this.addEventListener(TouchEvent.§-X§,this.§?#=§);
         }
         else
         {
            this.removeEventListener(TouchEvent.§-X§,this.§?#=§);
         }
      }
      
      private function §?#=§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§]"i§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function get bounds() : Rectangle
      {
         return this.getBounds(this.§!#^§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§!#^§,§3#p§).width;
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
         return this.getBounds(this.§!#^§,§3#p§).height;
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
         return this.§0k§;
      }
      
      public function set x(param1:Number) : void
      {
         if(this.§0k§ != param1)
         {
            this.§0k§ = param1;
            this.§;!U§ = true;
         }
      }
      
      public function get y() : Number
      {
         return this.§@_§;
      }
      
      public function set y(param1:Number) : void
      {
         if(this.§@_§ != param1)
         {
            this.§@_§ = param1;
            this.§;!U§ = true;
         }
      }
      
      public function get z() : Number
      {
         return this.§=!3§;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.§!#^§)
         {
            this.§=!3§ = param1;
         }
      }
      
      public function get pivotX() : Number
      {
         return this.§1">§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         if(this.§1">§ != param1)
         {
            this.§1">§ = param1;
            this.§;!U§ = true;
         }
      }
      
      public function get pivotY() : Number
      {
         return this.§@l§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         if(this.§@l§ != param1)
         {
            this.§@l§ = param1;
            this.§;!U§ = true;
         }
      }
      
      public function get scaleX() : Number
      {
         return this.§#!z§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         if(this.§#!z§ != param1)
         {
            this.§#!z§ = param1;
            this.§;!U§ = true;
         }
      }
      
      public function get scaleY() : Number
      {
         return this.§3g§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         if(this.§3g§ != param1)
         {
            this.§3g§ = param1;
            this.§;!U§ = true;
         }
      }
      
      public function get § !%§() : Number
      {
         return this.§9"4§;
      }
      
      public function set § !%§(param1:Number) : void
      {
         param1 = this.§5#F§(param1);
         if(this.§9"4§ != param1)
         {
            this.§9"4§ = param1;
            this.§;!U§ = true;
         }
      }
      
      public function get §?$-§() : Number
      {
         return this.§]g§;
      }
      
      public function set §?$-§(param1:Number) : void
      {
         param1 = this.§5#F§(param1);
         if(this.§]g§ != param1)
         {
            this.§]g§ = param1;
            this.§;!U§ = true;
         }
      }
      
      public function get rotation() : Number
      {
         return this.§^I§;
      }
      
      public function set rotation(param1:Number) : void
      {
         param1 = this.§5#F§(param1);
         if(this.§^I§ != param1)
         {
            this.§^I§ = param1;
            this.§;!U§ = true;
         }
      }
      
      public function get alpha() : Number
      {
         return this.§9$'§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§9$'§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§%I§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§%I§ = param1;
      }
      
      public function get §^"$§() : Boolean
      {
         return this.§^!E§;
      }
      
      public function set §^"$§(param1:Boolean) : void
      {
         this.§^!E§ = param1;
      }
      
      public function get blendMode() : int
      {
         return this.§2O§;
      }
      
      public function set blendMode(param1:int) : void
      {
         this.§2O§ = param1;
      }
      
      public function get name() : String
      {
         return this.§-#3§;
      }
      
      public function set name(param1:String) : void
      {
         this.§-#3§ = param1;
      }
      
      public function get filter() : §07§
      {
         return this.§]!c§;
      }
      
      public function set filter(param1:§07§) : void
      {
         this.§]!c§ = param1;
      }
      
      public function get ownsFilter() : Boolean
      {
         return this.§7"k§;
      }
      
      public function set ownsFilter(param1:Boolean) : void
      {
         this.§7"k§ = param1;
      }
      
      public function get parent() : DisplayObjectContainer
      {
         return this.§!#^§;
      }
      
      public function get base() : DisplayObject
      {
         var _loc1_:DisplayObject = this;
         while(_loc1_.§!#^§)
         {
            _loc1_ = _loc1_.§!#^§;
         }
         return _loc1_;
      }
      
      public function get root() : DisplayObject
      {
         var _loc1_:DisplayObject = this;
         while(_loc1_.§!#^§)
         {
            if(_loc1_.§!#^§ is Stage)
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
         if(this.§!#^§)
         {
            this.§!#^§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§!#^§)
         {
            this.§!#^§.addEventListeningObject(param1,param2);
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
         var _loc2_:Array = §<%§();
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
