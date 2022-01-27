package §=!E§
{
   import §!v§.§16§;
   import §%!N§.§,!5§;
   import §%!N§.§0J§;
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
      
      private static var §false§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §>H§:Rectangle = new Rectangle();
      
      private static var §+u§:Matrix = new Matrix();
      
      private static var §var §:Matrix = new Matrix();
      
      protected static var §@!8§:int = 0;
       
      
      private var §[!#§:Number;
      
      private var §?=§:Number;
      
      private var §&,§:Number;
      
      private var §'0§:Number;
      
      private var §4!c§:Number;
      
      private var §3!T§:Number;
      
      private var §7!,§:Number;
      
      private var §]! §:Number;
      
      private var §?m§:Boolean;
      
      private var §=h§:Boolean;
      
      private var mName:String;
      
      private var § g§:Number;
      
      private var §5!^§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §,!5§();
         }
         this.§[!#§ = this.§?=§ = this.§&,§ = this.§'0§ = this.§7!,§ = 0;
         this.§4!c§ = this.§3!T§ = this.§]! § = 1;
         this.§?m§ = this.§=h§ = true;
         this.§ g§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §-!0§(param1:Boolean = false) : void
      {
         if(this.§5!^§)
         {
            this.§5!^§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §!;§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§5!^§ || param1 == null && this.§5!^§ == null)
         {
            if(this.§&,§ != 0 || this.§'0§ != 0)
            {
               param2.translate(-this.§&,§,-this.§'0§);
            }
            if(this.§4!c§ != 1 || this.§3!T§ != 1)
            {
               param2.scale(this.§4!c§,this.§3!T§);
            }
            if(this.§7!,§ != 0)
            {
               param2.rotate(this.§7!,§);
            }
            if(this.§[!#§ != 0 || this.§?=§ != 0)
            {
               param2.translate(this.§[!#§,this.§?=§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§!;§(_loc4_.§5!^§,§+u§);
               param2.concat(§+u§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§5!^§ == this)
         {
            param1.§!;§(this,param2);
            param2.invert();
            return param2;
         }
         §false§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §false§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §false§.indexOf(_loc4_) == -1)
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
            _loc4_.§!;§(_loc4_.§5!^§,§+u§);
            param2.concat(§+u§);
            _loc4_ = _loc4_.parent;
         }
         §var §.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§!;§(_loc4_.§5!^§,§+u§);
            §var §.concat(§+u§);
            _loc4_ = _loc4_.parent;
         }
         §var §.invert();
         param2.concat(§var §);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §0J§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§?m§ || !this.§=h§))
         {
            return null;
         }
         if(this.getBounds(this,§>H§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §var §.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§!;§(_loc2_.§5!^§,§+u§);
            §var §.concat(§+u§);
            _loc2_ = _loc2_.parent;
         }
         return §var §.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §var §.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§!;§(_loc2_.§5!^§,§+u§);
            §var §.concat(§+u§);
            _loc2_ = _loc2_.parent;
         }
         §var §.invert();
         return §var §.transformPoint(param1);
      }
      
      public function render(param1:§16§, param2:Number) : void
      {
         throw new §0J§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§ g§)
            {
               return;
            }
            this.§ g§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §[P§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§5!^§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §<!$§();
         if(param1 != this.§5!^§ && this.§5!^§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§5!^§ = param1;
         if(this.§5!^§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§5!^§)
         {
            this.§5!^§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§5!^§)
         {
            this.§5!^§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §0!3§() : Matrix
      {
         return this.§!;§(this.§5!^§);
      }
      
      public function get §#!b§() : Rectangle
      {
         return this.getBounds(this.§5!^§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§5!^§,§>H§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§4!c§ = 1;
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
         return this.getBounds(this.§5!^§,§>H§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§3!T§ = 1;
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
         var _loc2_:Array = §<!$§();
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
      
      public function §1!!§(param1:Matrix3D) : void
      {
         if(this.§7!,§ == 0 && this.§4!c§ == 1 && this.§3!T§ == 1)
         {
            if(this.§[!#§ + this.§&,§ != 0 || this.§?=§ + this.§'0§ != 0)
            {
               param1.prependTranslation(this.§[!#§ + this.§&,§,this.§?=§ + this.§'0§,0);
            }
         }
         else
         {
            if(this.§[!#§ != 0 || this.§?=§ != 0)
            {
               param1.prependTranslation(this.§[!#§,this.§?=§,0);
            }
            if(this.§7!,§ != 0)
            {
               param1.prependRotation(this.§7!,§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§4!c§ != 1 || this.§3!T§ != 1)
            {
               param1.prependScale(this.§4!c§,this.§3!T§,1);
            }
            if(this.§&,§ != 0 || this.§'0§ != 0)
            {
               param1.prependTranslation(this.§&,§,this.§'0§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§[!#§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§[!#§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§?=§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§?=§ = param1;
      }
      
      public function get pivotX() : Number
      {
         return this.§&,§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§&,§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§'0§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§'0§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§4!c§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§4!c§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§3!T§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§3!T§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§7!,§;
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
         this.§7!,§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.§]! §;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§]! § = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§?m§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§?m§ = param1;
      }
      
      public function get §@N§() : Boolean
      {
         return this.§=h§;
      }
      
      public function set §@N§(param1:Boolean) : void
      {
         this.§=h§ = param1;
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
         return this.§5!^§;
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
