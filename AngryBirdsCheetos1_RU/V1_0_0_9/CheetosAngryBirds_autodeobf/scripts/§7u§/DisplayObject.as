package §7u§
{
   import §'!S§.§5[§;
   import §-W§.§6^§;
   import §-W§.§[[§;
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
      
      private static var §`9§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §52§:Rectangle = new Rectangle();
      
      private static var §[C§:Matrix = new Matrix();
      
      private static var §in§:Matrix = new Matrix();
      
      protected static var §3g§:int = 0;
       
      
      private var §,G§:Number;
      
      private var §-+§:Number;
      
      private var §`!G§:Number;
      
      private var §2F§:Number;
      
      private var §6!;§:Number;
      
      private var §,Z§:Number;
      
      private var §<n§:Number;
      
      private var mAlpha:Number;
      
      private var §@%§:Boolean;
      
      private var §3! §:Boolean;
      
      private var mName:String;
      
      private var §]!'§:Number;
      
      private var §^G§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §6^§();
         }
         this.§,G§ = this.§-+§ = this.§`!G§ = this.§2F§ = this.§<n§ = 0;
         this.§6!;§ = this.§,Z§ = this.mAlpha = 1;
         this.§@%§ = this.§3! § = true;
         this.§]!'§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §9E§(param1:Boolean = false) : void
      {
         if(this.§^G§)
         {
            this.§^G§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §9P§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§^G§ || param1 == null && this.§^G§ == null)
         {
            if(this.§`!G§ != 0 || this.§2F§ != 0)
            {
               param2.translate(-this.§`!G§,-this.§2F§);
            }
            if(this.§6!;§ != 1 || this.§,Z§ != 1)
            {
               param2.scale(this.§6!;§,this.§,Z§);
            }
            if(this.§<n§ != 0)
            {
               param2.rotate(this.§<n§);
            }
            if(this.§,G§ != 0 || this.§-+§ != 0)
            {
               param2.translate(this.§,G§,this.§-+§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§9P§(_loc4_.§^G§,§[C§);
               param2.concat(§[C§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§^G§ == this)
         {
            param1.§9P§(this,param2);
            param2.invert();
            return param2;
         }
         §`9§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §`9§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §`9§.indexOf(_loc4_) == -1)
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
            _loc4_.§9P§(_loc4_.§^G§,§[C§);
            param2.concat(§[C§);
            _loc4_ = _loc4_.parent;
         }
         §in§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§9P§(_loc4_.§^G§,§[C§);
            §in§.concat(§[C§);
            _loc4_ = _loc4_.parent;
         }
         §in§.invert();
         param2.concat(§in§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §[[§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§@%§ || !this.§3! §))
         {
            return null;
         }
         if(this.getBounds(this,§52§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §in§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§9P§(_loc2_.§^G§,§[C§);
            §in§.concat(§[C§);
            _loc2_ = _loc2_.parent;
         }
         return §in§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §in§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§9P§(_loc2_.§^G§,§[C§);
            §in§.concat(§[C§);
            _loc2_ = _loc2_.parent;
         }
         §in§.invert();
         return §in§.transformPoint(param1);
      }
      
      public function render(param1:§5[§, param2:Number) : void
      {
         throw new §[[§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§]!'§)
            {
               return;
            }
            this.§]!'§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §4!<§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§^G§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §7?§();
         if(param1 != this.§^G§ && this.§^G§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§^G§ = param1;
         if(this.§^G§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§^G§)
         {
            this.§^G§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§^G§)
         {
            this.§^G§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §"!W§() : Matrix
      {
         return this.§9P§(this.§^G§);
      }
      
      public function get §^!6§() : Rectangle
      {
         return this.getBounds(this.§^G§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§^G§,§52§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§6!;§ = 1;
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
         return this.getBounds(this.§^G§,§52§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§,Z§ = 1;
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
         var _loc2_:Array = §7?§();
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
      
      public function §0!"§(param1:Matrix3D) : void
      {
         if(this.§<n§ == 0 && this.§6!;§ == 1 && this.§,Z§ == 1)
         {
            if(this.§,G§ + this.§`!G§ != 0 || this.§-+§ + this.§2F§ != 0)
            {
               param1.prependTranslation(this.§,G§ + this.§`!G§,this.§-+§ + this.§2F§,0);
            }
         }
         else
         {
            if(this.§,G§ != 0 || this.§-+§ != 0)
            {
               param1.prependTranslation(this.§,G§,this.§-+§,0);
            }
            if(this.§<n§ != 0)
            {
               param1.prependRotation(this.§<n§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§6!;§ != 1 || this.§,Z§ != 1)
            {
               param1.prependScale(this.§6!;§,this.§,Z§,1);
            }
            if(this.§`!G§ != 0 || this.§2F§ != 0)
            {
               param1.prependTranslation(this.§`!G§,this.§2F§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§,G§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§,G§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§-+§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§-+§ = param1;
      }
      
      public function get pivotX() : Number
      {
         return this.§`!G§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§`!G§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§2F§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§2F§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§6!;§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§6!;§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§,Z§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§,Z§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§<n§;
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
         this.§<n§ = param1;
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
         return this.§@%§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§@%§ = param1;
      }
      
      public function get §^!Y§() : Boolean
      {
         return this.§3! §;
      }
      
      public function set §^!Y§(param1:Boolean) : void
      {
         this.§3! § = param1;
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
         return this.§^G§;
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
