package §null §
{
   import §+!=§.§9!F§;
   import §+!=§.§;^§;
   import §]_§.§7o§;
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
      
      private static var §9]§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §[!>§:Rectangle = new Rectangle();
      
      private static var §>p§:Matrix = new Matrix();
      
      private static var §1s§:Matrix = new Matrix();
      
      protected static var § A§:int = 0;
       
      
      private var §+!L§:Number;
      
      private var §!;§:Number;
      
      private var §?!J§:Number;
      
      private var §#!!§:Number;
      
      private var §+H§:Number;
      
      private var §@!H§:Number;
      
      private var §71§:Number;
      
      private var mAlpha:Number;
      
      private var §],§:Boolean;
      
      private var §#i§:Boolean;
      
      private var mName:String;
      
      private var §8!F§:Number;
      
      private var §9!&§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §;^§();
         }
         this.§+!L§ = this.§!;§ = this.§?!J§ = this.§#!!§ = this.§71§ = 0;
         this.§+H§ = this.§@!H§ = this.mAlpha = 1;
         this.§],§ = this.§#i§ = true;
         this.§8!F§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §2D§(param1:Boolean = false) : void
      {
         if(this.§9!&§)
         {
            this.§9!&§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §7!N§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§9!&§ || param1 == null && this.§9!&§ == null)
         {
            if(this.§?!J§ != 0 || this.§#!!§ != 0)
            {
               param2.translate(-this.§?!J§,-this.§#!!§);
            }
            if(this.§+H§ != 1 || this.§@!H§ != 1)
            {
               param2.scale(this.§+H§,this.§@!H§);
            }
            if(this.§71§ != 0)
            {
               param2.rotate(this.§71§);
            }
            if(this.§+!L§ != 0 || this.§!;§ != 0)
            {
               param2.translate(this.§+!L§,this.§!;§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§7!N§(_loc4_.§9!&§,§>p§);
               param2.concat(§>p§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§9!&§ == this)
         {
            param1.§7!N§(this,param2);
            param2.invert();
            return param2;
         }
         §9]§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §9]§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §9]§.indexOf(_loc4_) == -1)
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
            _loc4_.§7!N§(_loc4_.§9!&§,§>p§);
            param2.concat(§>p§);
            _loc4_ = _loc4_.parent;
         }
         §1s§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§7!N§(_loc4_.§9!&§,§>p§);
            §1s§.concat(§>p§);
            _loc4_ = _loc4_.parent;
         }
         §1s§.invert();
         param2.concat(§1s§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §9!F§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§],§ || !this.§#i§))
         {
            return null;
         }
         if(this.getBounds(this,§[!>§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §1s§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§7!N§(_loc2_.§9!&§,§>p§);
            §1s§.concat(§>p§);
            _loc2_ = _loc2_.parent;
         }
         return §1s§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §1s§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§7!N§(_loc2_.§9!&§,§>p§);
            §1s§.concat(§>p§);
            _loc2_ = _loc2_.parent;
         }
         §1s§.invert();
         return §1s§.transformPoint(param1);
      }
      
      public function render(param1:§7o§, param2:Number) : void
      {
         throw new §9!F§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§8!F§)
            {
               return;
            }
            this.§8!F§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §8K§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§9!&§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §<!<§();
         if(param1 != this.§9!&§ && this.§9!&§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§9!&§ = param1;
         if(this.§9!&§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§9!&§)
         {
            this.§9!&§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§9!&§)
         {
            this.§9!&§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §"X§() : Matrix
      {
         return this.§7!N§(this.§9!&§);
      }
      
      public function get §6w§() : Rectangle
      {
         return this.getBounds(this.§9!&§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§9!&§,§[!>§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§+H§ = 1;
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
         return this.getBounds(this.§9!&§,§[!>§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§@!H§ = 1;
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
         var _loc2_:Array = §<!<§();
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
      
      public function §2!;§(param1:Matrix3D) : void
      {
         if(this.§71§ == 0 && this.§+H§ == 1 && this.§@!H§ == 1)
         {
            if(this.§+!L§ + this.§?!J§ != 0 || this.§!;§ + this.§#!!§ != 0)
            {
               param1.prependTranslation(this.§+!L§ + this.§?!J§,this.§!;§ + this.§#!!§,0);
            }
         }
         else
         {
            if(this.§+!L§ != 0 || this.§!;§ != 0)
            {
               param1.prependTranslation(this.§+!L§,this.§!;§,0);
            }
            if(this.§71§ != 0)
            {
               param1.prependRotation(this.§71§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§+H§ != 1 || this.§@!H§ != 1)
            {
               param1.prependScale(this.§+H§,this.§@!H§,1);
            }
            if(this.§?!J§ != 0 || this.§#!!§ != 0)
            {
               param1.prependTranslation(this.§?!J§,this.§#!!§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§+!L§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§+!L§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§!;§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§!;§ = param1;
      }
      
      public function get pivotX() : Number
      {
         return this.§?!J§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§?!J§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§#!!§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§#!!§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§+H§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§+H§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§@!H§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§@!H§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§71§;
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
         this.§71§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.mAlpha;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.mAlpha = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§],§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§],§ = param1;
      }
      
      public function get §[;§() : Boolean
      {
         return this.§#i§;
      }
      
      public function set §[;§(param1:Boolean) : void
      {
         this.§#i§ = param1;
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
         return this.§9!&§;
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
