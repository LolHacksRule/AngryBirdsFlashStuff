package §`!B§
{
   import §=!d§.§`J§;
   import §[!F§.§'q§;
   import §[!F§.§`h§;
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
      
      private static var §^!"§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §6!i§:Rectangle = new Rectangle();
      
      private static var §9!b§:Matrix = new Matrix();
      
      private static var §'!g§:Matrix = new Matrix();
      
      protected static var §;!Q§:int = 0;
       
      
      private var §0O§:Number;
      
      private var §=!v§:Number;
      
      private var §0!x§:Number;
      
      private var §7L§:Number;
      
      private var §`n§:Number;
      
      private var §;x§:Number;
      
      private var §2!j§:Number;
      
      private var § s§:Number;
      
      private var §;!t§:Boolean;
      
      private var §7!R§:Boolean;
      
      private var §"!3§:Number;
      
      private var mName:String;
      
      private var §=G§:Number;
      
      private var §9""§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §'q§();
         }
         this.§0O§ = this.§=!v§ = this.§0!x§ = this.§7L§ = this.§2!j§ = 0;
         this.§`n§ = this.§;x§ = this.§ s§ = 1;
         this.§;!t§ = this.§7!R§ = true;
         this.§=G§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §3!;§(param1:Boolean = false) : void
      {
         if(this.§9""§)
         {
            this.§9""§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §6"7§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§9""§ || param1 == null && this.§9""§ == null)
         {
            if(this.§0!x§ != 0 || this.§7L§ != 0)
            {
               param2.translate(-this.§0!x§,-this.§7L§);
            }
            if(this.§`n§ != 1 || this.§;x§ != 1)
            {
               param2.scale(this.§`n§,this.§;x§);
            }
            if(this.§2!j§ != 0)
            {
               param2.rotate(this.§2!j§);
            }
            if(this.§0O§ != 0 || this.§=!v§ != 0)
            {
               param2.translate(this.§0O§,this.§=!v§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§6"7§(_loc4_.§9""§,§9!b§);
               param2.concat(§9!b§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§9""§ == this)
         {
            param1.§6"7§(this,param2);
            param2.invert();
            return param2;
         }
         §^!"§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §^!"§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §^!"§.indexOf(_loc4_) == -1)
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
            _loc4_.§6"7§(_loc4_.§9""§,§9!b§);
            param2.concat(§9!b§);
            _loc4_ = _loc4_.parent;
         }
         §'!g§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§6"7§(_loc4_.§9""§,§9!b§);
            §'!g§.concat(§9!b§);
            _loc4_ = _loc4_.parent;
         }
         §'!g§.invert();
         param2.concat(§'!g§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §`h§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§;!t§ || !this.§7!R§))
         {
            return null;
         }
         if(this.getBounds(this,§6!i§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §'!g§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§6"7§(_loc2_.§9""§,§9!b§);
            §'!g§.concat(§9!b§);
            _loc2_ = _loc2_.parent;
         }
         return §'!g§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §'!g§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§6"7§(_loc2_.§9""§,§9!b§);
            §'!g§.concat(§9!b§);
            _loc2_ = _loc2_.parent;
         }
         §'!g§.invert();
         return §'!g§.transformPoint(param1);
      }
      
      public function render(param1:§`J§, param2:Number) : void
      {
         throw new §`h§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§=G§)
            {
               return;
            }
            this.§=G§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §@b§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§9""§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §]k§();
         if(param1 != this.§9""§ && this.§9""§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§9""§ = param1;
         if(this.§9""§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§9""§)
         {
            this.§9""§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§9""§)
         {
            this.§9""§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §`j§() : Matrix
      {
         return this.§6"7§(this.§9""§);
      }
      
      public function get §3!P§() : Rectangle
      {
         return this.getBounds(this.§9""§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§9""§,§6!i§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§`n§ = 1;
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
         return this.getBounds(this.§9""§,§6!i§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§;x§ = 1;
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
         var _loc2_:Array = §]k§();
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
      
      public function §@&§(param1:Matrix3D) : void
      {
         if(this.§2!j§ == 0 && this.§`n§ == 1 && this.§;x§ == 1)
         {
            if(this.§0O§ + this.§0!x§ != 0 || this.§=!v§ + this.§7L§ != 0)
            {
               param1.prependTranslation(this.§0O§ + this.§0!x§,this.§=!v§ + this.§7L§,0);
            }
         }
         else
         {
            if(this.§0O§ != 0 || this.§=!v§ != 0)
            {
               param1.prependTranslation(this.§0O§,this.§=!v§,0);
            }
            if(this.§2!j§ != 0)
            {
               param1.prependRotation(this.§2!j§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§`n§ != 1 || this.§;x§ != 1)
            {
               param1.prependScale(this.§`n§,this.§;x§,1);
            }
            if(this.§0!x§ != 0 || this.§7L§ != 0)
            {
               param1.prependTranslation(this.§0!x§,this.§7L§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§0O§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§0O§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§=!v§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§=!v§ = param1;
      }
      
      public function get z() : Number
      {
         return this.§"!3§;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.§9""§)
         {
            this.§"!3§ = param1;
         }
      }
      
      public function get pivotX() : Number
      {
         return this.§0!x§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§0!x§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§7L§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§7L§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§`n§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§`n§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§;x§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§;x§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§2!j§;
      }
      
      public function set rotation(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         if(param1 > Math.PI)
         {
            _loc2_ = Math.ceil(param1 / (Math.PI * 2));
            param1 -= _loc2_ * (Math.PI * 2);
         }
         if(param1 < -Math.PI)
         {
            _loc2_ = Math.ceil(-param1 / (Math.PI * 2));
            param1 += _loc2_ * (Math.PI * 2);
         }
         this.§2!j§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.§ s§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§ s§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§;!t§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§;!t§ = param1;
      }
      
      public function get §!!z§() : Boolean
      {
         return this.§7!R§;
      }
      
      public function set §!!z§(param1:Boolean) : void
      {
         this.§7!R§ = param1;
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
         return this.§9""§;
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
