package §^"S§
{
   import §+#B§.§'"V§;
   import §+#B§.§54§;
   import §5!D§.§[!b§;
   import §5#m§.EventDispatcher;
   import §5#m§.TouchEvent;
   import §9!<§.§-!_§;
   import §?"e§.§[!Z§;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.system.Capabilities;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flash.utils.getQualifiedClassName;
   
   public class DisplayObject extends EventDispatcher
   {
      
      private static var §25§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §`H§:Rectangle = new Rectangle();
      
      private static var §5#^§:Matrix = new Matrix();
       
      
      private var §8u§:Number;
      
      private var §!#§:Number;
      
      private var §0#]§:Number;
      
      private var §3$'§:Number;
      
      private var §,#g§:Number;
      
      private var §[A§:Number;
      
      private var §>!b§:Number;
      
      private var §="k§:Number;
      
      private var §>"K§:Number;
      
      private var §]#8§:Number;
      
      private var §,!9§:Number;
      
      private var §-"i§:Boolean;
      
      private var §2g§:Boolean;
      
      private var §"$7§:int;
      
      private var §=q§:String;
      
      private var §&#B§:Boolean;
      
      private var §!8§:DisplayObjectContainer;
      
      private var §&#t§:Matrix;
      
      private var §9$-§:Boolean;
      
      private var §<U§:§-!_§;
      
      private var §%$%§:Boolean = true;
      
      public var sortValue:Number = 0.0;
      
      public var §3#$§:int = 0;
      
      public function DisplayObject()
      {
         super();
         if(Capabilities.isDebugger && getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §'"V§();
         }
         this.§8u§ = this.§!#§ = this.§3$'§ = this.§,#g§ = this.§]#8§ = this.§="k§ = this.§>"K§ = 0;
         this.§[A§ = this.§>!b§ = this.§,!9§ = 1;
         this.§-"i§ = this.§2g§ = true;
         this.§"$7§ = §>$7§.AUTO;
         this.§&#t§ = new Matrix();
         this.§9$-§ = this.§&#B§ = false;
      }
      
      public function dispose() : void
      {
         if(this.§<U§ && this.§%$%§)
         {
            this.§<U§.dispose();
         }
         this.removeEventListeners();
         this.removeFromParent();
      }
      
      public function removeFromParent(param1:Boolean = false) : void
      {
         if(this.§!8§)
         {
            this.§!8§.removeChild(this,param1);
         }
      }
      
      public function §3[§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§!8§ || param1 == null && this.§!8§ == null)
         {
            param2.copyFrom(this.§!C§);
            return param2;
         }
         if(param1 == null || param1 == this.base)
         {
            _loc4_ = this;
            while(_loc4_ != param1)
            {
               param2.concat(_loc4_.§!C§);
               _loc4_ = _loc4_.§!8§;
            }
            return param2;
         }
         if(param1.§!8§ == this)
         {
            param1.§3[§(this,param2);
            param2.invert();
            return param2;
         }
         _loc3_ = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §25§.push(_loc4_);
            _loc4_ = _loc4_.§!8§;
         }
         _loc4_ = param1;
         while(_loc4_ && §25§.indexOf(_loc4_) == -1)
         {
            _loc4_ = _loc4_.§!8§;
         }
         §25§.length = 0;
         if(_loc4_)
         {
            _loc3_ = _loc4_;
            _loc4_ = this;
            while(_loc4_ != _loc3_)
            {
               param2.concat(_loc4_.§!C§);
               _loc4_ = _loc4_.§!8§;
            }
            if(_loc3_ == param1)
            {
               return param2;
            }
            §5#^§.identity();
            _loc4_ = param1;
            while(_loc4_ != _loc3_)
            {
               §5#^§.concat(_loc4_.§!C§);
               _loc4_ = _loc4_.§!8§;
            }
            §5#^§.invert();
            param2.concat(§5#^§);
            return param2;
         }
         throw new ArgumentError("Object not connected to target");
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §54§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§-"i§ || !this.§2g§))
         {
            return null;
         }
         if(this.getBounds(this,§`H§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point, param2:Point = null) : Point
      {
         this.§3[§(this.base,§5#^§);
         return §[!b§.§<§(§5#^§,param1.x,param1.y,param2);
      }
      
      public function globalToLocal(param1:Point, param2:Point = null) : Point
      {
         this.§3[§(this.base,§5#^§);
         §5#^§.invert();
         return §[!b§.§<§(§5#^§,param1.x,param1.y,param2);
      }
      
      public function render(param1:§[!Z§, param2:Number) : void
      {
         throw new §54§("Method needs to be implemented in subclass");
      }
      
      public function get §,$3§() : Boolean
      {
         return this.§,!9§ != 0 && this.visible && this.§[A§ != 0 && this.§>!b§ != 0;
      }
      
      function §<$&§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§!8§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §[!a§();
         if(param1 != this.§!8§ && this.§!8§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§!8§ = param1;
         if(this.§!8§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      private final function §@§(param1:Number, param2:Number, param3:Number = 1.0E-4) : Boolean
      {
         return param1 - param3 < param2 && param1 + param3 > param2;
      }
      
      private final function §3$?§(param1:Number) : Number
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
      
      public function get §!C§() : Matrix
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         if(this.§9$-§)
         {
            this.§9$-§ = false;
            if(this.§[A§ < 0 || this.§>!b§ < 0 || this.§="k§ != 0 || this.§>"K§ != 0)
            {
               this.§&#t§.identity();
               if(this.§[A§ != 1 || this.§>!b§ != 1)
               {
                  this.§&#t§.scale(this.§[A§,this.§>!b§);
               }
               if(this.§="k§ != 0 || this.§>"K§ != 0)
               {
                  §[!b§.§>!@§(this.§&#t§,this.§="k§,this.§>"K§);
               }
               if(this.§]#8§ != 0)
               {
                  this.§&#t§.rotate(this.§]#8§);
               }
               if(this.§8u§ != 0 || this.§!#§ != 0)
               {
                  this.§&#t§.translate(this.§8u§,this.§!#§);
               }
               if(this.§3$'§ != 0 || this.§,#g§ != 0)
               {
                  this.§&#t§.tx = this.§8u§ + (this.§&#t§.a * this.§3$'§ + this.§&#t§.c * this.§,#g§);
                  this.§&#t§.ty = this.§!#§ + (this.§&#t§.b * this.§3$'§ + this.§&#t§.d * this.§,#g§);
               }
               else
               {
                  this.§&#t§.tx = this.§8u§;
                  this.§&#t§.ty = this.§!#§;
               }
            }
            else if(this.§]#8§ != 0)
            {
               _loc1_ = Math.cos(this.§]#8§);
               _loc2_ = Math.sin(this.§]#8§);
               this.§&#t§.a = this.§[A§ * _loc1_;
               this.§&#t§.b = this.§>!b§ * _loc2_;
               this.§&#t§.c = -this.§[A§ * _loc2_;
               this.§&#t§.d = this.§>!b§ * _loc1_;
               this.§&#t§.tx = this.§8u§;
               this.§&#t§.ty = this.§!#§;
               if(this.§3$'§ != 0)
               {
                  this.§&#t§.tx += this.§&#t§.a * this.§3$'§;
                  this.§&#t§.ty += this.§&#t§.b * this.§3$'§;
               }
               if(this.§,#g§ != 0)
               {
                  this.§&#t§.tx += this.§&#t§.c * this.§,#g§;
                  this.§&#t§.ty += this.§&#t§.d * this.§,#g§;
               }
            }
            else
            {
               this.§&#t§.a = this.§[A§;
               this.§&#t§.b = 0;
               this.§&#t§.c = 0;
               this.§&#t§.d = this.§>!b§;
               this.§&#t§.tx = this.§8u§ + this.§3$'§ * this.§[A§;
               this.§&#t§.ty = this.§!#§ + this.§,#g§ * this.§>!b§;
            }
         }
         return this.§&#t§;
      }
      
      public function set §!C§(param1:Matrix) : void
      {
         this.§9$-§ = false;
         this.§&#t§.copyFrom(param1);
         this.§8u§ = param1.tx;
         this.§!#§ = param1.ty;
         this.§[A§ = Math.sqrt(param1.a * param1.a + param1.b * param1.b);
         this.§>"K§ = Math.acos(param1.a / this.§[A§);
         if(!this.§@§(param1.b,this.§[A§ * Math.sin(this.§>"K§)))
         {
            this.§[A§ *= -1;
            this.§>"K§ = Math.acos(param1.a / this.§[A§);
         }
         this.§>!b§ = Math.sqrt(param1.c * param1.c + param1.d * param1.d);
         this.§="k§ = Math.acos(param1.d / this.§>!b§);
         if(!this.§@§(param1.c,-this.§>!b§ * Math.sin(this.§="k§)))
         {
            this.§>!b§ *= -1;
            this.§="k§ = Math.acos(param1.d / this.§>!b§);
         }
         if(this.§@§(this.§="k§,this.§>"K§))
         {
            this.§]#8§ = this.§="k§;
            this.§>"K§ = 0;
            this.§="k§ = 0;
         }
         else
         {
            this.§]#8§ = 0;
         }
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§&#B§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§&#B§)
         {
            return;
         }
         this.§&#B§ = param1;
         if(this.§&#B§)
         {
            this.addEventListener(TouchEvent.§2"H§,this.§>"W§);
         }
         else
         {
            this.removeEventListener(TouchEvent.§2"H§,this.§>"W§);
         }
      }
      
      private function §>"W§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§#"9§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function get §^$9§() : Rectangle
      {
         return this.getBounds(this.§!8§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§!8§,§`H§).width;
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
         return this.getBounds(this.§!8§,§`H§).height;
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
         return this.§8u§;
      }
      
      public function set x(param1:Number) : void
      {
         if(this.§8u§ != param1)
         {
            this.§8u§ = param1;
            this.§9$-§ = true;
         }
      }
      
      public function get y() : Number
      {
         return this.§!#§;
      }
      
      public function set y(param1:Number) : void
      {
         if(this.§!#§ != param1)
         {
            this.§!#§ = param1;
            this.§9$-§ = true;
         }
      }
      
      public function get z() : Number
      {
         return this.§0#]§;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.§!8§)
         {
            this.§0#]§ = param1;
         }
      }
      
      public function get pivotX() : Number
      {
         return this.§3$'§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         if(this.§3$'§ != param1)
         {
            this.§3$'§ = param1;
            this.§9$-§ = true;
         }
      }
      
      public function get pivotY() : Number
      {
         return this.§,#g§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         if(this.§,#g§ != param1)
         {
            this.§,#g§ = param1;
            this.§9$-§ = true;
         }
      }
      
      public function get scaleX() : Number
      {
         return this.§[A§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         if(this.§[A§ != param1)
         {
            this.§[A§ = param1;
            this.§9$-§ = true;
         }
      }
      
      public function get scaleY() : Number
      {
         return this.§>!b§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         if(this.§>!b§ != param1)
         {
            this.§>!b§ = param1;
            this.§9$-§ = true;
         }
      }
      
      public function get §1"T§() : Number
      {
         return this.§="k§;
      }
      
      public function set §1"T§(param1:Number) : void
      {
         param1 = this.§3$?§(param1);
         if(this.§="k§ != param1)
         {
            this.§="k§ = param1;
            this.§9$-§ = true;
         }
      }
      
      public function get §1#G§() : Number
      {
         return this.§>"K§;
      }
      
      public function set §1#G§(param1:Number) : void
      {
         param1 = this.§3$?§(param1);
         if(this.§>"K§ != param1)
         {
            this.§>"K§ = param1;
            this.§9$-§ = true;
         }
      }
      
      public function get rotation() : Number
      {
         return this.§]#8§;
      }
      
      public function set rotation(param1:Number) : void
      {
         param1 = this.§3$?§(param1);
         if(this.§]#8§ != param1)
         {
            this.§]#8§ = param1;
            this.§9$-§ = true;
         }
      }
      
      public function get alpha() : Number
      {
         return this.§,!9§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§,!9§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§-"i§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§-"i§ = param1;
      }
      
      public function get §?C§() : Boolean
      {
         return this.§2g§;
      }
      
      public function set §?C§(param1:Boolean) : void
      {
         this.§2g§ = param1;
      }
      
      public function get blendMode() : int
      {
         return this.§"$7§;
      }
      
      public function set blendMode(param1:int) : void
      {
         this.§"$7§ = param1;
      }
      
      public function get name() : String
      {
         return this.§=q§;
      }
      
      public function set name(param1:String) : void
      {
         this.§=q§ = param1;
      }
      
      public function get filter() : §-!_§
      {
         return this.§<U§;
      }
      
      public function set filter(param1:§-!_§) : void
      {
         this.§<U§ = param1;
      }
      
      public function get ownsFilter() : Boolean
      {
         return this.§%$%§;
      }
      
      public function set ownsFilter(param1:Boolean) : void
      {
         this.§%$%§ = param1;
      }
      
      public function get parent() : DisplayObjectContainer
      {
         return this.§!8§;
      }
      
      public function get base() : DisplayObject
      {
         var _loc1_:DisplayObject = this;
         while(_loc1_.§!8§)
         {
            _loc1_ = _loc1_.§!8§;
         }
         return _loc1_;
      }
      
      public function get root() : DisplayObject
      {
         var _loc1_:DisplayObject = this;
         while(_loc1_.§!8§)
         {
            if(_loc1_.§!8§ is Stage)
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
         if(this.§!8§)
         {
            this.§!8§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§!8§)
         {
            this.§!8§.addEventListeningObject(param1,param2);
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
         var _loc2_:Array = §[!a§();
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
