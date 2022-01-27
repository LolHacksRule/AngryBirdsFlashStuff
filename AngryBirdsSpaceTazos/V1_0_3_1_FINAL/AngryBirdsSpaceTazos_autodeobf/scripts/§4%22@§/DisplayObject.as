package §4"@§
{
   import §0"H§.§=""§;
   import §0"H§.§`!Y§;
   import §1f§.§&"@§;
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
      
      private static var §3!I§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §7!U§:Rectangle = new Rectangle();
      
      private static var §+!0§:Matrix = new Matrix();
      
      private static var §8M§:Matrix = new Matrix();
      
      protected static var §2!i§:int = 0;
       
      
      private var §1!`§:Number;
      
      private var §<2§:Number;
      
      private var §9!P§:Number;
      
      private var §<$§:Number;
      
      private var §=";§:Number;
      
      private var §=!N§:Number;
      
      private var §4X§:Number;
      
      private var §&!m§:Number;
      
      private var §7!+§:Boolean;
      
      private var §4v§:Boolean;
      
      private var §?!V§:Number;
      
      private var mName:String;
      
      private var §&!N§:Number;
      
      private var §7!<§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §`!Y§();
         }
         this.§1!`§ = this.§<2§ = this.§9!P§ = this.§<$§ = this.§4X§ = 0;
         this.§=";§ = this.§=!N§ = this.§&!m§ = 1;
         this.§7!+§ = this.§4v§ = true;
         this.§&!N§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §;!x§(param1:Boolean = false) : void
      {
         if(this.§7!<§)
         {
            this.§7!<§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §@!H§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§7!<§ || param1 == null && this.§7!<§ == null)
         {
            if(this.§9!P§ != 0 || this.§<$§ != 0)
            {
               param2.translate(-this.§9!P§,-this.§<$§);
            }
            if(this.§=";§ != 1 || this.§=!N§ != 1)
            {
               param2.scale(this.§=";§,this.§=!N§);
            }
            if(this.§4X§ != 0)
            {
               param2.rotate(this.§4X§);
            }
            if(this.§1!`§ != 0 || this.§<2§ != 0)
            {
               param2.translate(this.§1!`§,this.§<2§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§@!H§(_loc4_.§7!<§,§+!0§);
               param2.concat(§+!0§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§7!<§ == this)
         {
            param1.§@!H§(this,param2);
            param2.invert();
            return param2;
         }
         §3!I§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §3!I§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §3!I§.indexOf(_loc4_) == -1)
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
            _loc4_.§@!H§(_loc4_.§7!<§,§+!0§);
            param2.concat(§+!0§);
            _loc4_ = _loc4_.parent;
         }
         §8M§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§@!H§(_loc4_.§7!<§,§+!0§);
            §8M§.concat(§+!0§);
            _loc4_ = _loc4_.parent;
         }
         §8M§.invert();
         param2.concat(§8M§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §=""§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§7!+§ || !this.§4v§))
         {
            return null;
         }
         if(this.getBounds(this,§7!U§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §8M§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§@!H§(_loc2_.§7!<§,§+!0§);
            §8M§.concat(§+!0§);
            _loc2_ = _loc2_.parent;
         }
         return §8M§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §8M§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§@!H§(_loc2_.§7!<§,§+!0§);
            §8M§.concat(§+!0§);
            _loc2_ = _loc2_.parent;
         }
         §8M§.invert();
         return §8M§.transformPoint(param1);
      }
      
      public function render(param1:§&"@§, param2:Number) : void
      {
         throw new §=""§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§&!N§)
            {
               return;
            }
            this.§&!N§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §3j§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§7!<§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §,N§();
         if(param1 != this.§7!<§ && this.§7!<§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§7!<§ = param1;
         if(this.§7!<§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§7!<§)
         {
            this.§7!<§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§7!<§)
         {
            this.§7!<§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §?!j§() : Matrix
      {
         return this.§@!H§(this.§7!<§);
      }
      
      public function get §0q§() : Rectangle
      {
         return this.getBounds(this.§7!<§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§7!<§,§7!U§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§=";§ = 1;
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
         return this.getBounds(this.§7!<§,§7!U§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§=!N§ = 1;
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
         var _loc2_:Array = §,N§();
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
      
      public function §]"2§(param1:Matrix3D) : void
      {
         if(this.§4X§ == 0 && this.§=";§ == 1 && this.§=!N§ == 1)
         {
            if(this.§1!`§ + this.§9!P§ != 0 || this.§<2§ + this.§<$§ != 0)
            {
               param1.prependTranslation(this.§1!`§ + this.§9!P§,this.§<2§ + this.§<$§,0);
            }
         }
         else
         {
            if(this.§1!`§ != 0 || this.§<2§ != 0)
            {
               param1.prependTranslation(this.§1!`§,this.§<2§,0);
            }
            if(this.§4X§ != 0)
            {
               param1.prependRotation(this.§4X§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§=";§ != 1 || this.§=!N§ != 1)
            {
               param1.prependScale(this.§=";§,this.§=!N§,1);
            }
            if(this.§9!P§ != 0 || this.§<$§ != 0)
            {
               param1.prependTranslation(this.§9!P§,this.§<$§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§1!`§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§1!`§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§<2§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§<2§ = param1;
      }
      
      public function get z() : Number
      {
         return this.§?!V§;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.§7!<§)
         {
            this.§?!V§ = param1;
         }
      }
      
      public function get pivotX() : Number
      {
         return this.§9!P§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§9!P§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§<$§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§<$§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§=";§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§=";§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§=!N§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§=!N§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§4X§;
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
         this.§4X§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.§&!m§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§&!m§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§7!+§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§7!+§ = param1;
      }
      
      public function get §#,§() : Boolean
      {
         return this.§4v§;
      }
      
      public function set §#,§(param1:Boolean) : void
      {
         this.§4v§ = param1;
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
         return this.§7!<§;
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
