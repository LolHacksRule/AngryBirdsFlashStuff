package §5x§
{
   import §4!$§.§]!f§;
   import §@8§.§!!C§;
   import §@8§.§7I§;
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
      
      private static var §'r§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §6=§:Rectangle = new Rectangle();
      
      private static var §4U§:Matrix = new Matrix();
      
      private static var §5!;§:Matrix = new Matrix();
      
      protected static var § var§:int = 0;
       
      
      private var § +§:Number;
      
      private var §'Z§:Number;
      
      private var §]a§:Number;
      
      private var §!a§:Number;
      
      private var §#k§:Number;
      
      private var §=!l§:Number;
      
      private var §6O§:Number;
      
      private var §@i§:Number;
      
      private var §>!0§:Boolean;
      
      private var §^W§:Boolean;
      
      private var mName:String;
      
      private var §""§:Number;
      
      private var §`!D§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §7I§();
         }
         this.§ +§ = this.§'Z§ = this.§]a§ = this.§!a§ = this.§6O§ = 0;
         this.§#k§ = this.§=!l§ = this.§@i§ = 1;
         this.§>!0§ = this.§^W§ = true;
         this.§""§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §>!D§(param1:Boolean = false) : void
      {
         if(this.§`!D§)
         {
            this.§`!D§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §,!S§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§`!D§ || param1 == null && this.§`!D§ == null)
         {
            if(this.§]a§ != 0 || this.§!a§ != 0)
            {
               param2.translate(-this.§]a§,-this.§!a§);
            }
            if(this.§#k§ != 1 || this.§=!l§ != 1)
            {
               param2.scale(this.§#k§,this.§=!l§);
            }
            if(this.§6O§ != 0)
            {
               param2.rotate(this.§6O§);
            }
            if(this.§ +§ != 0 || this.§'Z§ != 0)
            {
               param2.translate(this.§ +§,this.§'Z§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§,!S§(_loc4_.§`!D§,§4U§);
               param2.concat(§4U§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§`!D§ == this)
         {
            param1.§,!S§(this,param2);
            param2.invert();
            return param2;
         }
         §'r§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §'r§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §'r§.indexOf(_loc4_) == -1)
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
            _loc4_.§,!S§(_loc4_.§`!D§,§4U§);
            param2.concat(§4U§);
            _loc4_ = _loc4_.parent;
         }
         §5!;§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§,!S§(_loc4_.§`!D§,§4U§);
            §5!;§.concat(§4U§);
            _loc4_ = _loc4_.parent;
         }
         §5!;§.invert();
         param2.concat(§5!;§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §!!C§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§>!0§ || !this.§^W§))
         {
            return null;
         }
         if(this.getBounds(this,§6=§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §5!;§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§,!S§(_loc2_.§`!D§,§4U§);
            §5!;§.concat(§4U§);
            _loc2_ = _loc2_.parent;
         }
         return §5!;§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §5!;§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§,!S§(_loc2_.§`!D§,§4U§);
            §5!;§.concat(§4U§);
            _loc2_ = _loc2_.parent;
         }
         §5!;§.invert();
         return §5!;§.transformPoint(param1);
      }
      
      public function render(param1:§]!f§, param2:Number) : void
      {
         throw new §!!C§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§""§)
            {
               return;
            }
            this.§""§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §+d§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§`!D§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §[!6§();
         if(param1 != this.§`!D§ && this.§`!D§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§`!D§ = param1;
         if(this.§`!D§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§`!D§)
         {
            this.§`!D§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§`!D§)
         {
            this.§`!D§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §-!_§() : Matrix
      {
         return this.§,!S§(this.§`!D§);
      }
      
      public function get §=M§() : Rectangle
      {
         return this.getBounds(this.§`!D§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§`!D§,§6=§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§#k§ = 1;
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
         return this.getBounds(this.§`!D§,§6=§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§=!l§ = 1;
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
         var _loc2_:Array = §[!6§();
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
      
      public function §6m§(param1:Matrix3D) : void
      {
         if(this.§6O§ == 0 && this.§#k§ == 1 && this.§=!l§ == 1)
         {
            if(this.§ +§ + this.§]a§ != 0 || this.§'Z§ + this.§!a§ != 0)
            {
               param1.prependTranslation(this.§ +§ + this.§]a§,this.§'Z§ + this.§!a§,0);
            }
         }
         else
         {
            if(this.§ +§ != 0 || this.§'Z§ != 0)
            {
               param1.prependTranslation(this.§ +§,this.§'Z§,0);
            }
            if(this.§6O§ != 0)
            {
               param1.prependRotation(this.§6O§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§#k§ != 1 || this.§=!l§ != 1)
            {
               param1.prependScale(this.§#k§,this.§=!l§,1);
            }
            if(this.§]a§ != 0 || this.§!a§ != 0)
            {
               param1.prependTranslation(this.§]a§,this.§!a§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§ +§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§ +§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§'Z§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§'Z§ = param1;
      }
      
      public function get pivotX() : Number
      {
         return this.§]a§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§]a§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§!a§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§!a§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§#k§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§#k§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§=!l§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§=!l§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§6O§;
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
         this.§6O§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.§@i§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§@i§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§>!0§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§>!0§ = param1;
      }
      
      public function get §^!7§() : Boolean
      {
         return this.§^W§;
      }
      
      public function set §^!7§(param1:Boolean) : void
      {
         this.§^W§ = param1;
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
         return this.§`!D§;
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
