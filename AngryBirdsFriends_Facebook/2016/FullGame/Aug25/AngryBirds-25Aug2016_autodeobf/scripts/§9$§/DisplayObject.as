package §9$§
{
   import §'#Z§.§"!v§;
   import §'#Z§.§5#W§;
   import §4"D§.§^!]§;
   import §<#l§.§+"i§;
   import §?a§.EventDispatcher;
   import §?a§.TouchEvent;
   import §^a§.§'"1§;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.system.Capabilities;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flash.utils.getQualifiedClassName;
   
   public class DisplayObject extends EventDispatcher
   {
      
      private static var §@"8§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §0q§:Rectangle = new Rectangle();
      
      private static var §5#e§:Matrix = new Matrix();
       
      
      private var §+!5§:Number;
      
      private var §'! §:Number;
      
      private var §`"[§:Number;
      
      private var §7#l§:Number;
      
      private var §>D§:Number;
      
      private var §%#u§:Number;
      
      private var §5#B§:Number;
      
      private var §;!6§:Number;
      
      private var §;"-§:Number;
      
      private var §%##§:Number;
      
      private var §"$3§:Number;
      
      private var §^X§:Boolean;
      
      private var §#"m§:Boolean;
      
      private var §+"K§:int;
      
      private var §2!4§:String;
      
      private var §"#"§:Boolean;
      
      private var §9"a§:DisplayObjectContainer;
      
      private var §7#3§:Matrix;
      
      private var § #n§:Boolean;
      
      private var §'#Q§:§+"i§;
      
      private var §!F§:Boolean = true;
      
      public var sortValue:Number = 0.0;
      
      public var §,!§:int = 0;
      
      public function DisplayObject()
      {
         super();
         if(Capabilities.isDebugger && getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §"!v§();
         }
         this.§+!5§ = this.§'! § = this.§7#l§ = this.§>D§ = this.§%##§ = this.§;!6§ = this.§;"-§ = 0;
         this.§%#u§ = this.§5#B§ = this.§"$3§ = 1;
         this.§^X§ = this.§#"m§ = true;
         this.§+"K§ = §["T§.AUTO;
         this.§7#3§ = new Matrix();
         this.§ #n§ = this.§"#"§ = false;
      }
      
      public function dispose() : void
      {
         if(this.§'#Q§ && this.§!F§)
         {
            this.§'#Q§.dispose();
         }
         this.removeEventListeners();
         this.removeFromParent();
      }
      
      public function removeFromParent(param1:Boolean = false) : void
      {
         if(this.§9"a§)
         {
            this.§9"a§.removeChild(this,param1);
         }
      }
      
      public function §"i§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§9"a§ || param1 == null && this.§9"a§ == null)
         {
            param2.copyFrom(this.§[#q§);
            return param2;
         }
         if(param1 == null || param1 == this.base)
         {
            _loc4_ = this;
            while(_loc4_ != param1)
            {
               param2.concat(_loc4_.§[#q§);
               _loc4_ = _loc4_.§9"a§;
            }
            return param2;
         }
         if(param1.§9"a§ == this)
         {
            param1.§"i§(this,param2);
            param2.invert();
            return param2;
         }
         _loc3_ = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §@"8§.push(_loc4_);
            _loc4_ = _loc4_.§9"a§;
         }
         _loc4_ = param1;
         while(_loc4_ && §@"8§.indexOf(_loc4_) == -1)
         {
            _loc4_ = _loc4_.§9"a§;
         }
         §@"8§.length = 0;
         if(_loc4_)
         {
            _loc3_ = _loc4_;
            _loc4_ = this;
            while(_loc4_ != _loc3_)
            {
               param2.concat(_loc4_.§[#q§);
               _loc4_ = _loc4_.§9"a§;
            }
            if(_loc3_ == param1)
            {
               return param2;
            }
            §5#e§.identity();
            _loc4_ = param1;
            while(_loc4_ != _loc3_)
            {
               §5#e§.concat(_loc4_.§[#q§);
               _loc4_ = _loc4_.§9"a§;
            }
            §5#e§.invert();
            param2.concat(§5#e§);
            return param2;
         }
         throw new ArgumentError("Object not connected to target");
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §5#W§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§^X§ || !this.§#"m§))
         {
            return null;
         }
         if(this.getBounds(this,§0q§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point, param2:Point = null) : Point
      {
         this.§"i§(this.base,§5#e§);
         return §^!]§.§>-§(§5#e§,param1.x,param1.y,param2);
      }
      
      public function globalToLocal(param1:Point, param2:Point = null) : Point
      {
         this.§"i§(this.base,§5#e§);
         §5#e§.invert();
         return §^!]§.§>-§(§5#e§,param1.x,param1.y,param2);
      }
      
      public function render(param1:§'"1§, param2:Number) : void
      {
         throw new §5#W§("Method needs to be implemented in subclass");
      }
      
      public function get §<7§() : Boolean
      {
         return this.§"$3§ != 0 && this.visible && this.§%#u§ != 0 && this.§5#B§ != 0;
      }
      
      function §9#f§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§9"a§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §>v§();
         if(param1 != this.§9"a§ && this.§9"a§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§9"a§ = param1;
         if(this.§9"a§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      private final function §!"x§(param1:Number, param2:Number, param3:Number = 1.0E-4) : Boolean
      {
         return param1 - param3 < param2 && param1 + param3 > param2;
      }
      
      private final function §-"I§(param1:Number) : Number
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
      
      public function get §[#q§() : Matrix
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         if(this.§ #n§)
         {
            this.§ #n§ = false;
            if(this.§%#u§ < 0 || this.§5#B§ < 0 || this.§;!6§ != 0 || this.§;"-§ != 0)
            {
               this.§7#3§.identity();
               if(this.§%#u§ != 1 || this.§5#B§ != 1)
               {
                  this.§7#3§.scale(this.§%#u§,this.§5#B§);
               }
               if(this.§;!6§ != 0 || this.§;"-§ != 0)
               {
                  §^!]§.§49§(this.§7#3§,this.§;!6§,this.§;"-§);
               }
               if(this.§%##§ != 0)
               {
                  this.§7#3§.rotate(this.§%##§);
               }
               if(this.§+!5§ != 0 || this.§'! § != 0)
               {
                  this.§7#3§.translate(this.§+!5§,this.§'! §);
               }
               if(this.§7#l§ != 0 || this.§>D§ != 0)
               {
                  this.§7#3§.tx = this.§+!5§ + (this.§7#3§.a * this.§7#l§ + this.§7#3§.c * this.§>D§);
                  this.§7#3§.ty = this.§'! § + (this.§7#3§.b * this.§7#l§ + this.§7#3§.d * this.§>D§);
               }
               else
               {
                  this.§7#3§.tx = this.§+!5§;
                  this.§7#3§.ty = this.§'! §;
               }
            }
            else if(this.§%##§ != 0)
            {
               _loc1_ = Math.cos(this.§%##§);
               _loc2_ = Math.sin(this.§%##§);
               this.§7#3§.a = this.§%#u§ * _loc1_;
               this.§7#3§.b = this.§5#B§ * _loc2_;
               this.§7#3§.c = -this.§%#u§ * _loc2_;
               this.§7#3§.d = this.§5#B§ * _loc1_;
               this.§7#3§.tx = this.§+!5§;
               this.§7#3§.ty = this.§'! §;
               if(this.§7#l§ != 0)
               {
                  this.§7#3§.tx += this.§7#3§.a * this.§7#l§;
                  this.§7#3§.ty += this.§7#3§.b * this.§7#l§;
               }
               if(this.§>D§ != 0)
               {
                  this.§7#3§.tx += this.§7#3§.c * this.§>D§;
                  this.§7#3§.ty += this.§7#3§.d * this.§>D§;
               }
            }
            else
            {
               this.§7#3§.a = this.§%#u§;
               this.§7#3§.b = 0;
               this.§7#3§.c = 0;
               this.§7#3§.d = this.§5#B§;
               this.§7#3§.tx = this.§+!5§ + this.§7#l§ * this.§%#u§;
               this.§7#3§.ty = this.§'! § + this.§>D§ * this.§5#B§;
            }
         }
         return this.§7#3§;
      }
      
      public function set §[#q§(param1:Matrix) : void
      {
         this.§ #n§ = false;
         this.§7#3§.copyFrom(param1);
         this.§+!5§ = param1.tx;
         this.§'! § = param1.ty;
         this.§%#u§ = Math.sqrt(param1.a * param1.a + param1.b * param1.b);
         this.§;"-§ = Math.acos(param1.a / this.§%#u§);
         if(!this.§!"x§(param1.b,this.§%#u§ * Math.sin(this.§;"-§)))
         {
            this.§%#u§ *= -1;
            this.§;"-§ = Math.acos(param1.a / this.§%#u§);
         }
         this.§5#B§ = Math.sqrt(param1.c * param1.c + param1.d * param1.d);
         this.§;!6§ = Math.acos(param1.d / this.§5#B§);
         if(!this.§!"x§(param1.c,-this.§5#B§ * Math.sin(this.§;!6§)))
         {
            this.§5#B§ *= -1;
            this.§;!6§ = Math.acos(param1.d / this.§5#B§);
         }
         if(this.§!"x§(this.§;!6§,this.§;"-§))
         {
            this.§%##§ = this.§;!6§;
            this.§;"-§ = 0;
            this.§;!6§ = 0;
         }
         else
         {
            this.§%##§ = 0;
         }
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§"#"§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§"#"§)
         {
            return;
         }
         this.§"#"§ = param1;
         if(this.§"#"§)
         {
            this.addEventListener(TouchEvent.§#q§,this.§=#=§);
         }
         else
         {
            this.removeEventListener(TouchEvent.§#q§,this.§=#=§);
         }
      }
      
      private function §=#=§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§<l§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function get §4#9§() : Rectangle
      {
         return this.getBounds(this.§9"a§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§9"a§,§0q§).width;
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
         return this.getBounds(this.§9"a§,§0q§).height;
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
         return this.§+!5§;
      }
      
      public function set x(param1:Number) : void
      {
         if(this.§+!5§ != param1)
         {
            this.§+!5§ = param1;
            this.§ #n§ = true;
         }
      }
      
      public function get y() : Number
      {
         return this.§'! §;
      }
      
      public function set y(param1:Number) : void
      {
         if(this.§'! § != param1)
         {
            this.§'! § = param1;
            this.§ #n§ = true;
         }
      }
      
      public function get z() : Number
      {
         return this.§`"[§;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.§9"a§)
         {
            this.§`"[§ = param1;
         }
      }
      
      public function get pivotX() : Number
      {
         return this.§7#l§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         if(this.§7#l§ != param1)
         {
            this.§7#l§ = param1;
            this.§ #n§ = true;
         }
      }
      
      public function get pivotY() : Number
      {
         return this.§>D§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         if(this.§>D§ != param1)
         {
            this.§>D§ = param1;
            this.§ #n§ = true;
         }
      }
      
      public function get scaleX() : Number
      {
         return this.§%#u§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         if(this.§%#u§ != param1)
         {
            this.§%#u§ = param1;
            this.§ #n§ = true;
         }
      }
      
      public function get scaleY() : Number
      {
         return this.§5#B§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         if(this.§5#B§ != param1)
         {
            this.§5#B§ = param1;
            this.§ #n§ = true;
         }
      }
      
      public function get §;l§() : Number
      {
         return this.§;!6§;
      }
      
      public function set §;l§(param1:Number) : void
      {
         param1 = this.§-"I§(param1);
         if(this.§;!6§ != param1)
         {
            this.§;!6§ = param1;
            this.§ #n§ = true;
         }
      }
      
      public function get §&!,§() : Number
      {
         return this.§;"-§;
      }
      
      public function set §&!,§(param1:Number) : void
      {
         param1 = this.§-"I§(param1);
         if(this.§;"-§ != param1)
         {
            this.§;"-§ = param1;
            this.§ #n§ = true;
         }
      }
      
      public function get rotation() : Number
      {
         return this.§%##§;
      }
      
      public function set rotation(param1:Number) : void
      {
         param1 = this.§-"I§(param1);
         if(this.§%##§ != param1)
         {
            this.§%##§ = param1;
            this.§ #n§ = true;
         }
      }
      
      public function get alpha() : Number
      {
         return this.§"$3§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§"$3§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§^X§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§^X§ = param1;
      }
      
      public function get §0$6§() : Boolean
      {
         return this.§#"m§;
      }
      
      public function set §0$6§(param1:Boolean) : void
      {
         this.§#"m§ = param1;
      }
      
      public function get blendMode() : int
      {
         return this.§+"K§;
      }
      
      public function set blendMode(param1:int) : void
      {
         this.§+"K§ = param1;
      }
      
      public function get name() : String
      {
         return this.§2!4§;
      }
      
      public function set name(param1:String) : void
      {
         this.§2!4§ = param1;
      }
      
      public function get filter() : §+"i§
      {
         return this.§'#Q§;
      }
      
      public function set filter(param1:§+"i§) : void
      {
         this.§'#Q§ = param1;
      }
      
      public function get ownsFilter() : Boolean
      {
         return this.§!F§;
      }
      
      public function set ownsFilter(param1:Boolean) : void
      {
         this.§!F§ = param1;
      }
      
      public function get parent() : DisplayObjectContainer
      {
         return this.§9"a§;
      }
      
      public function get base() : DisplayObject
      {
         var _loc1_:DisplayObject = this;
         while(_loc1_.§9"a§)
         {
            _loc1_ = _loc1_.§9"a§;
         }
         return _loc1_;
      }
      
      public function get root() : DisplayObject
      {
         var _loc1_:DisplayObject = this;
         while(_loc1_.§9"a§)
         {
            if(_loc1_.§9"a§ is Stage)
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
         if(this.§9"a§)
         {
            this.§9"a§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§9"a§)
         {
            this.§9"a§.addEventListeningObject(param1,param2);
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
         var _loc2_:Array = §>v§();
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
