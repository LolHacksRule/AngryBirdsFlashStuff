package §#!@§
{
   import §7!§.§ 0§;
   import §7^§.§#U§;
   import §7^§.§7K§;
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
      
      private static var §3j§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §]!I§:Rectangle = new Rectangle();
      
      private static var §'!§:Matrix = new Matrix();
      
      private static var §!8§:Matrix = new Matrix();
      
      protected static var §[Q§:int = 0;
       
      
      private var §3y§:Number;
      
      private var §6@§:Number;
      
      private var §>!§:Number;
      
      private var §=y§:Number;
      
      private var §+!E§:Number;
      
      private var §-]§:Number;
      
      private var §4!5§:Number;
      
      private var §3i§:Number;
      
      private var §0!L§:Boolean;
      
      private var §6M§:Boolean;
      
      private var §&J§:Number;
      
      private var mName:String;
      
      private var §+6§:Number;
      
      private var §7r§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §#U§();
         }
         this.§3y§ = this.§6@§ = this.§>!§ = this.§=y§ = this.§4!5§ = 0;
         this.§+!E§ = this.§-]§ = this.§3i§ = 1;
         this.§0!L§ = this.§6M§ = true;
         this.§+6§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §6!"§(param1:Boolean = false) : void
      {
         if(this.§7r§)
         {
            this.§7r§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §^k§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§7r§ || param1 == null && this.§7r§ == null)
         {
            if(this.§>!§ != 0 || this.§=y§ != 0)
            {
               param2.translate(-this.§>!§,-this.§=y§);
            }
            if(this.§+!E§ != 1 || this.§-]§ != 1)
            {
               param2.scale(this.§+!E§,this.§-]§);
            }
            if(this.§4!5§ != 0)
            {
               param2.rotate(this.§4!5§);
            }
            if(this.§3y§ != 0 || this.§6@§ != 0)
            {
               param2.translate(this.§3y§,this.§6@§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§^k§(_loc4_.§7r§,§'!§);
               param2.concat(§'!§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§7r§ == this)
         {
            param1.§^k§(this,param2);
            param2.invert();
            return param2;
         }
         §3j§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §3j§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §3j§.indexOf(_loc4_) == -1)
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
            _loc4_.§^k§(_loc4_.§7r§,§'!§);
            param2.concat(§'!§);
            _loc4_ = _loc4_.parent;
         }
         §!8§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§^k§(_loc4_.§7r§,§'!§);
            §!8§.concat(§'!§);
            _loc4_ = _loc4_.parent;
         }
         §!8§.invert();
         param2.concat(§!8§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §7K§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§0!L§ || !this.§6M§))
         {
            return null;
         }
         if(this.getBounds(this,§]!I§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §!8§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§^k§(_loc2_.§7r§,§'!§);
            §!8§.concat(§'!§);
            _loc2_ = _loc2_.parent;
         }
         return §!8§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §!8§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§^k§(_loc2_.§7r§,§'!§);
            §!8§.concat(§'!§);
            _loc2_ = _loc2_.parent;
         }
         §!8§.invert();
         return §!8§.transformPoint(param1);
      }
      
      public function render(param1:§ 0§, param2:Number) : void
      {
         throw new §7K§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§+6§)
            {
               return;
            }
            this.§+6§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §^!7§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§7r§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §=s§();
         if(param1 != this.§7r§ && this.§7r§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§7r§ = param1;
         if(this.§7r§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§7r§)
         {
            this.§7r§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§7r§)
         {
            this.§7r§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §7!D§() : Matrix
      {
         return this.§^k§(this.§7r§);
      }
      
      public function get §<N§() : Rectangle
      {
         return this.getBounds(this.§7r§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§7r§,§]!I§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§+!E§ = 1;
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
         return this.getBounds(this.§7r§,§]!I§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§-]§ = 1;
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
         var _loc2_:Array = §=s§();
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
      
      public function §`!<§(param1:Matrix3D) : void
      {
         if(this.§4!5§ == 0 && this.§+!E§ == 1 && this.§-]§ == 1)
         {
            if(this.§3y§ + this.§>!§ != 0 || this.§6@§ + this.§=y§ != 0)
            {
               param1.prependTranslation(this.§3y§ + this.§>!§,this.§6@§ + this.§=y§,0);
            }
         }
         else
         {
            if(this.§3y§ != 0 || this.§6@§ != 0)
            {
               param1.prependTranslation(this.§3y§,this.§6@§,0);
            }
            if(this.§4!5§ != 0)
            {
               param1.prependRotation(this.§4!5§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§+!E§ != 1 || this.§-]§ != 1)
            {
               param1.prependScale(this.§+!E§,this.§-]§,1);
            }
            if(this.§>!§ != 0 || this.§=y§ != 0)
            {
               param1.prependTranslation(this.§>!§,this.§=y§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§3y§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§3y§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§6@§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§6@§ = param1;
      }
      
      public function get z() : Number
      {
         return this.§&J§;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.§7r§)
         {
            this.§&J§ = param1;
         }
      }
      
      public function get pivotX() : Number
      {
         return this.§>!§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§>!§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§=y§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§=y§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§+!E§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§+!E§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§-]§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§-]§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§4!5§;
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
         this.§4!5§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.§3i§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§3i§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§0!L§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§0!L§ = param1;
      }
      
      public function get §2@§() : Boolean
      {
         return this.§6M§;
      }
      
      public function set §2@§(param1:Boolean) : void
      {
         this.§6M§ = param1;
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
         return this.§7r§;
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
