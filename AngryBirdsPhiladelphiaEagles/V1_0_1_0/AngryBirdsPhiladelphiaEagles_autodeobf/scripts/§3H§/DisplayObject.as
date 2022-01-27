package §3H§
{
   import §+c§.§#v§;
   import §+c§.§]W§;
   import §5J§.§4!3§;
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
      
      private static var §-!,§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §4v§:Rectangle = new Rectangle();
      
      private static var §[1§:Matrix = new Matrix();
      
      private static var §3!C§:Matrix = new Matrix();
      
      protected static var §]O§:int = 0;
       
      
      private var §,R§:Number;
      
      private var §=! §:Number;
      
      private var §!p§:Number;
      
      private var §"b§:Number;
      
      private var §"n§:Number;
      
      private var §%c§:Number;
      
      private var §%3§:Number;
      
      private var §4!=§:Number;
      
      private var §%!@§:Boolean;
      
      private var §`y§:Boolean;
      
      private var mName:String;
      
      private var §"d§:Number;
      
      private var §3X§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §#v§();
         }
         this.§,R§ = this.§=! § = this.§!p§ = this.§"b§ = this.§%3§ = 0;
         this.§"n§ = this.§%c§ = this.§4!=§ = 1;
         this.§%!@§ = this.§`y§ = true;
         this.§"d§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §6O§(param1:Boolean = false) : void
      {
         if(this.§3X§)
         {
            this.§3X§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §5F§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§3X§ || param1 == null && this.§3X§ == null)
         {
            if(this.§!p§ != 0 || this.§"b§ != 0)
            {
               param2.translate(-this.§!p§,-this.§"b§);
            }
            if(this.§"n§ != 1 || this.§%c§ != 1)
            {
               param2.scale(this.§"n§,this.§%c§);
            }
            if(this.§%3§ != 0)
            {
               param2.rotate(this.§%3§);
            }
            if(this.§,R§ != 0 || this.§=! § != 0)
            {
               param2.translate(this.§,R§,this.§=! §);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§5F§(_loc4_.§3X§,§[1§);
               param2.concat(§[1§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§3X§ == this)
         {
            param1.§5F§(this,param2);
            param2.invert();
            return param2;
         }
         §-!,§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §-!,§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §-!,§.indexOf(_loc4_) == -1)
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
            _loc4_.§5F§(_loc4_.§3X§,§[1§);
            param2.concat(§[1§);
            _loc4_ = _loc4_.parent;
         }
         §3!C§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§5F§(_loc4_.§3X§,§[1§);
            §3!C§.concat(§[1§);
            _loc4_ = _loc4_.parent;
         }
         §3!C§.invert();
         param2.concat(§3!C§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §]W§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§%!@§ || !this.§`y§))
         {
            return null;
         }
         if(this.getBounds(this,§4v§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §3!C§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§5F§(_loc2_.§3X§,§[1§);
            §3!C§.concat(§[1§);
            _loc2_ = _loc2_.parent;
         }
         return §3!C§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §3!C§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§5F§(_loc2_.§3X§,§[1§);
            §3!C§.concat(§[1§);
            _loc2_ = _loc2_.parent;
         }
         §3!C§.invert();
         return §3!C§.transformPoint(param1);
      }
      
      public function render(param1:§4!3§, param2:Number) : void
      {
         throw new §]W§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§"d§)
            {
               return;
            }
            this.§"d§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §'!'§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§3X§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §==§();
         if(param1 != this.§3X§ && this.§3X§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§3X§ = param1;
         if(this.§3X§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§3X§)
         {
            this.§3X§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§3X§)
         {
            this.§3X§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §7t§() : Matrix
      {
         return this.§5F§(this.§3X§);
      }
      
      public function get §'s§() : Rectangle
      {
         return this.getBounds(this.§3X§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§3X§,§4v§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§"n§ = 1;
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
         return this.getBounds(this.§3X§,§4v§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§%c§ = 1;
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
         var _loc2_:Array = §==§();
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
      
      public function §'!6§(param1:Matrix3D) : void
      {
         if(this.§%3§ == 0 && this.§"n§ == 1 && this.§%c§ == 1)
         {
            if(this.§,R§ + this.§!p§ != 0 || this.§=! § + this.§"b§ != 0)
            {
               param1.prependTranslation(this.§,R§ + this.§!p§,this.§=! § + this.§"b§,0);
            }
         }
         else
         {
            if(this.§,R§ != 0 || this.§=! § != 0)
            {
               param1.prependTranslation(this.§,R§,this.§=! §,0);
            }
            if(this.§%3§ != 0)
            {
               param1.prependRotation(this.§%3§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§"n§ != 1 || this.§%c§ != 1)
            {
               param1.prependScale(this.§"n§,this.§%c§,1);
            }
            if(this.§!p§ != 0 || this.§"b§ != 0)
            {
               param1.prependTranslation(this.§!p§,this.§"b§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§,R§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§,R§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§=! §;
      }
      
      public function set y(param1:Number) : void
      {
         this.§=! § = param1;
      }
      
      public function get pivotX() : Number
      {
         return this.§!p§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§!p§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§"b§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§"b§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§"n§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§"n§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§%c§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§%c§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§%3§;
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
         this.§%3§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.§4!=§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§4!=§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§%!@§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§%!@§ = param1;
      }
      
      public function get §6c§() : Boolean
      {
         return this.§`y§;
      }
      
      public function set §6c§(param1:Boolean) : void
      {
         this.§`y§ = param1;
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
         return this.§3X§;
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
