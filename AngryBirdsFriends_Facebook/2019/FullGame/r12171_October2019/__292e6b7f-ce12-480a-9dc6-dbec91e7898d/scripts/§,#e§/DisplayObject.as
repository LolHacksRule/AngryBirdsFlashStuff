package §,#e§
{
   import §"#k§.§79§;
   import §'"T§.§#!p§;
   import §'"T§.§`#y§;
   import §,$&§.EventDispatcher;
   import §,$&§.TouchEvent;
   import §8#p§.§"_§;
   import §[!_§.§`#!§;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.system.Capabilities;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flash.utils.getQualifiedClassName;
   
   public class DisplayObject extends EventDispatcher
   {
      
      private static var §3s§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §!x§:Rectangle = new Rectangle();
      
      private static var §>"P§:Matrix = new Matrix();
       
      
      private var §&$'§:Number;
      
      private var §<#-§:Number;
      
      private var §0+§:Number;
      
      private var §;"M§:Number;
      
      private var §>!H§:Number;
      
      private var §0#=§:Number;
      
      private var §7"$§:Number;
      
      private var §,!L§:Number;
      
      private var §0!0§:Number;
      
      private var §^]§:Number;
      
      private var §+!o§:Number;
      
      private var §4V§:Boolean;
      
      private var §4r§:Boolean;
      
      private var §06§:int;
      
      private var §&$"§:String;
      
      private var §@X§:Boolean;
      
      private var §&!R§:DisplayObjectContainer;
      
      private var § f§:Matrix;
      
      private var §1# §:Boolean;
      
      private var §""0§:§`#!§;
      
      private var §!!a§:Boolean = true;
      
      public var sortValue:Number = 0.0;
      
      public var §+$0§:int = 0;
      
      public function DisplayObject()
      {
         super();
         if(Capabilities.isDebugger && getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §`#y§();
         }
         this.§&$'§ = this.§<#-§ = this.§;"M§ = this.§>!H§ = this.§^]§ = this.§,!L§ = this.§0!0§ = 0;
         this.§0#=§ = this.§7"$§ = this.§+!o§ = 1;
         this.§4V§ = this.§4r§ = true;
         this.§06§ = §4!_§.AUTO;
         this.§ f§ = new Matrix();
         this.§1# § = this.§@X§ = false;
      }
      
      public function dispose() : void
      {
         if(this.§""0§ && this.§!!a§)
         {
            this.§""0§.dispose();
         }
         this.removeEventListeners();
         this.removeFromParent();
      }
      
      public function removeFromParent(param1:Boolean = false) : void
      {
         if(this.§&!R§)
         {
            this.§&!R§.removeChild(this,param1);
         }
      }
      
      public function §0#n§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§&!R§ || param1 == null && this.§&!R§ == null)
         {
            param2.copyFrom(this.§'"A§);
            return param2;
         }
         if(param1 == null || param1 == this.base)
         {
            _loc4_ = this;
            while(_loc4_ != param1)
            {
               param2.concat(_loc4_.§'"A§);
               _loc4_ = _loc4_.§&!R§;
            }
            return param2;
         }
         if(param1.§&!R§ == this)
         {
            param1.§0#n§(this,param2);
            param2.invert();
            return param2;
         }
         _loc3_ = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §3s§.push(_loc4_);
            _loc4_ = _loc4_.§&!R§;
         }
         _loc4_ = param1;
         while(_loc4_ && §3s§.indexOf(_loc4_) == -1)
         {
            _loc4_ = _loc4_.§&!R§;
         }
         §3s§.length = 0;
         if(_loc4_)
         {
            _loc3_ = _loc4_;
            _loc4_ = this;
            while(_loc4_ != _loc3_)
            {
               param2.concat(_loc4_.§'"A§);
               _loc4_ = _loc4_.§&!R§;
            }
            if(_loc3_ == param1)
            {
               return param2;
            }
            §>"P§.identity();
            _loc4_ = param1;
            while(_loc4_ != _loc3_)
            {
               §>"P§.concat(_loc4_.§'"A§);
               _loc4_ = _loc4_.§&!R§;
            }
            §>"P§.invert();
            param2.concat(§>"P§);
            return param2;
         }
         throw new ArgumentError("Object not connected to target");
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §#!p§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§4V§ || !this.§4r§))
         {
            return null;
         }
         if(this.getBounds(this,§!x§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point, param2:Point = null) : Point
      {
         this.§0#n§(this.base,§>"P§);
         return §"_§.§>U§(§>"P§,param1.x,param1.y,param2);
      }
      
      public function globalToLocal(param1:Point, param2:Point = null) : Point
      {
         this.§0#n§(this.base,§>"P§);
         §>"P§.invert();
         return §"_§.§>U§(§>"P§,param1.x,param1.y,param2);
      }
      
      public function render(param1:§79§, param2:Number) : void
      {
         throw new §#!p§("Method needs to be implemented in subclass");
      }
      
      public function get §!!e§() : Boolean
      {
         return this.§+!o§ != 0 && this.visible && this.§0#=§ != 0 && this.§7"$§ != 0;
      }
      
      function §^y§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§&!R§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §-"W§();
         if(param1 != this.§&!R§ && this.§&!R§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§&!R§ = param1;
         if(this.§&!R§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      private final function §+!-§(param1:Number, param2:Number, param3:Number = 1.0E-4) : Boolean
      {
         return param1 - param3 < param2 && param1 + param3 > param2;
      }
      
      private final function §^#>§(param1:Number) : Number
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
      
      public function get §'"A§() : Matrix
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         if(this.§1# §)
         {
            this.§1# § = false;
            if(this.§0#=§ < 0 || this.§7"$§ < 0 || this.§,!L§ != 0 || this.§0!0§ != 0)
            {
               this.§ f§.identity();
               if(this.§0#=§ != 1 || this.§7"$§ != 1)
               {
                  this.§ f§.scale(this.§0#=§,this.§7"$§);
               }
               if(this.§,!L§ != 0 || this.§0!0§ != 0)
               {
                  §"_§.§<"4§(this.§ f§,this.§,!L§,this.§0!0§);
               }
               if(this.§^]§ != 0)
               {
                  this.§ f§.rotate(this.§^]§);
               }
               if(this.§&$'§ != 0 || this.§<#-§ != 0)
               {
                  this.§ f§.translate(this.§&$'§,this.§<#-§);
               }
               if(this.§;"M§ != 0 || this.§>!H§ != 0)
               {
                  this.§ f§.tx = this.§&$'§ + (this.§ f§.a * this.§;"M§ + this.§ f§.c * this.§>!H§);
                  this.§ f§.ty = this.§<#-§ + (this.§ f§.b * this.§;"M§ + this.§ f§.d * this.§>!H§);
               }
               else
               {
                  this.§ f§.tx = this.§&$'§;
                  this.§ f§.ty = this.§<#-§;
               }
            }
            else if(this.§^]§ != 0)
            {
               _loc1_ = Math.cos(this.§^]§);
               _loc2_ = Math.sin(this.§^]§);
               this.§ f§.a = this.§0#=§ * _loc1_;
               this.§ f§.b = this.§7"$§ * _loc2_;
               this.§ f§.c = -this.§0#=§ * _loc2_;
               this.§ f§.d = this.§7"$§ * _loc1_;
               this.§ f§.tx = this.§&$'§;
               this.§ f§.ty = this.§<#-§;
               if(this.§;"M§ != 0)
               {
                  this.§ f§.tx += this.§ f§.a * this.§;"M§;
                  this.§ f§.ty += this.§ f§.b * this.§;"M§;
               }
               if(this.§>!H§ != 0)
               {
                  this.§ f§.tx += this.§ f§.c * this.§>!H§;
                  this.§ f§.ty += this.§ f§.d * this.§>!H§;
               }
            }
            else
            {
               this.§ f§.a = this.§0#=§;
               this.§ f§.b = 0;
               this.§ f§.c = 0;
               this.§ f§.d = this.§7"$§;
               this.§ f§.tx = this.§&$'§ + this.§;"M§ * this.§0#=§;
               this.§ f§.ty = this.§<#-§ + this.§>!H§ * this.§7"$§;
            }
         }
         return this.§ f§;
      }
      
      public function set §'"A§(param1:Matrix) : void
      {
         this.§1# § = false;
         this.§ f§.copyFrom(param1);
         this.§&$'§ = param1.tx;
         this.§<#-§ = param1.ty;
         this.§0#=§ = Math.sqrt(param1.a * param1.a + param1.b * param1.b);
         this.§0!0§ = Math.acos(param1.a / this.§0#=§);
         if(!this.§+!-§(param1.b,this.§0#=§ * Math.sin(this.§0!0§)))
         {
            this.§0#=§ *= -1;
            this.§0!0§ = Math.acos(param1.a / this.§0#=§);
         }
         this.§7"$§ = Math.sqrt(param1.c * param1.c + param1.d * param1.d);
         this.§,!L§ = Math.acos(param1.d / this.§7"$§);
         if(!this.§+!-§(param1.c,-this.§7"$§ * Math.sin(this.§,!L§)))
         {
            this.§7"$§ *= -1;
            this.§,!L§ = Math.acos(param1.d / this.§7"$§);
         }
         if(this.§+!-§(this.§,!L§,this.§0!0§))
         {
            this.§^]§ = this.§,!L§;
            this.§0!0§ = 0;
            this.§,!L§ = 0;
         }
         else
         {
            this.§^]§ = 0;
         }
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.§@X§;
      }
      
      public function set useHandCursor(param1:Boolean) : void
      {
         if(param1 == this.§@X§)
         {
            return;
         }
         this.§@X§ = param1;
         if(this.§@X§)
         {
            this.addEventListener(TouchEvent.§"x§,this.§ !c§);
         }
         else
         {
            this.removeEventListener(TouchEvent.§"x§,this.§ !c§);
         }
      }
      
      private function § !c§(param1:TouchEvent) : void
      {
         Mouse.cursor = !!param1.§"k§(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function get bounds() : Rectangle
      {
         return this.getBounds(this.§&!R§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§&!R§,§!x§).width;
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
         return this.getBounds(this.§&!R§,§!x§).height;
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
         return this.§&$'§;
      }
      
      public function set x(param1:Number) : void
      {
         if(this.§&$'§ != param1)
         {
            this.§&$'§ = param1;
            this.§1# § = true;
         }
      }
      
      public function get y() : Number
      {
         return this.§<#-§;
      }
      
      public function set y(param1:Number) : void
      {
         if(this.§<#-§ != param1)
         {
            this.§<#-§ = param1;
            this.§1# § = true;
         }
      }
      
      public function get z() : Number
      {
         return this.§0+§;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.§&!R§)
         {
            this.§0+§ = param1;
         }
      }
      
      public function get pivotX() : Number
      {
         return this.§;"M§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         if(this.§;"M§ != param1)
         {
            this.§;"M§ = param1;
            this.§1# § = true;
         }
      }
      
      public function get pivotY() : Number
      {
         return this.§>!H§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         if(this.§>!H§ != param1)
         {
            this.§>!H§ = param1;
            this.§1# § = true;
         }
      }
      
      public function get scaleX() : Number
      {
         return this.§0#=§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         if(this.§0#=§ != param1)
         {
            this.§0#=§ = param1;
            this.§1# § = true;
         }
      }
      
      public function get scaleY() : Number
      {
         return this.§7"$§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         if(this.§7"$§ != param1)
         {
            this.§7"$§ = param1;
            this.§1# § = true;
         }
      }
      
      public function get §!#[§() : Number
      {
         return this.§,!L§;
      }
      
      public function set §!#[§(param1:Number) : void
      {
         param1 = this.§^#>§(param1);
         if(this.§,!L§ != param1)
         {
            this.§,!L§ = param1;
            this.§1# § = true;
         }
      }
      
      public function get §1"K§() : Number
      {
         return this.§0!0§;
      }
      
      public function set §1"K§(param1:Number) : void
      {
         param1 = this.§^#>§(param1);
         if(this.§0!0§ != param1)
         {
            this.§0!0§ = param1;
            this.§1# § = true;
         }
      }
      
      public function get rotation() : Number
      {
         return this.§^]§;
      }
      
      public function set rotation(param1:Number) : void
      {
         param1 = this.§^#>§(param1);
         if(this.§^]§ != param1)
         {
            this.§^]§ = param1;
            this.§1# § = true;
         }
      }
      
      public function get alpha() : Number
      {
         return this.§+!o§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§+!o§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§4V§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§4V§ = param1;
      }
      
      public function get §4"e§() : Boolean
      {
         return this.§4r§;
      }
      
      public function set §4"e§(param1:Boolean) : void
      {
         this.§4r§ = param1;
      }
      
      public function get blendMode() : int
      {
         return this.§06§;
      }
      
      public function set blendMode(param1:int) : void
      {
         this.§06§ = param1;
      }
      
      public function get name() : String
      {
         return this.§&$"§;
      }
      
      public function set name(param1:String) : void
      {
         this.§&$"§ = param1;
      }
      
      public function get filter() : §`#!§
      {
         return this.§""0§;
      }
      
      public function set filter(param1:§`#!§) : void
      {
         this.§""0§ = param1;
      }
      
      public function get ownsFilter() : Boolean
      {
         return this.§!!a§;
      }
      
      public function set ownsFilter(param1:Boolean) : void
      {
         this.§!!a§ = param1;
      }
      
      public function get parent() : DisplayObjectContainer
      {
         return this.§&!R§;
      }
      
      public function get base() : DisplayObject
      {
         var _loc1_:DisplayObject = this;
         while(_loc1_.§&!R§)
         {
            _loc1_ = _loc1_.§&!R§;
         }
         return _loc1_;
      }
      
      public function get root() : DisplayObject
      {
         var _loc1_:DisplayObject = this;
         while(_loc1_.§&!R§)
         {
            if(_loc1_.§&!R§ is Stage)
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
         if(this.§&!R§)
         {
            this.§&!R§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§&!R§)
         {
            this.§&!R§.addEventListeningObject(param1,param2);
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
         var _loc2_:Array = §-"W§();
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
