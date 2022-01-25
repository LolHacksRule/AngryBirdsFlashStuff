package §0@§
{
   import §[! §.§-!i§;
   import §[! §.§0^§;
   import §each §.§ if§;
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
      
      private static var §9C§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §6!H§:Rectangle = new Rectangle();
      
      private static var §8!f§:Matrix = new Matrix();
      
      private static var §8!4§:Matrix = new Matrix();
      
      protected static var §>!;§:int = 0;
       
      
      private var §=!=§:Number;
      
      private var §[!;§:Number;
      
      private var §@;§:Number;
      
      private var §2u§:Number;
      
      private var §;L§:Number;
      
      private var §#!D§:Number;
      
      private var §?!g§:Number;
      
      private var §9a§:Number;
      
      private var §+&§:Boolean;
      
      private var §1<§:Boolean;
      
      private var mName:String;
      
      private var §9!§:Number;
      
      private var §?!I§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §0^§();
         }
         this.§=!=§ = this.§[!;§ = this.§@;§ = this.§2u§ = this.§?!g§ = 0;
         this.§;L§ = this.§#!D§ = this.§9a§ = 1;
         this.§+&§ = this.§1<§ = true;
         this.§9!§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §;!>§(param1:Boolean = false) : void
      {
         if(this.§?!I§)
         {
            this.§?!I§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §3!6§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§?!I§ || param1 == null && this.§?!I§ == null)
         {
            if(this.§@;§ != 0 || this.§2u§ != 0)
            {
               param2.translate(-this.§@;§,-this.§2u§);
            }
            if(this.§;L§ != 1 || this.§#!D§ != 1)
            {
               param2.scale(this.§;L§,this.§#!D§);
            }
            if(this.§?!g§ != 0)
            {
               param2.rotate(this.§?!g§);
            }
            if(this.§=!=§ != 0 || this.§[!;§ != 0)
            {
               param2.translate(this.§=!=§,this.§[!;§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§3!6§(_loc4_.§?!I§,§8!f§);
               param2.concat(§8!f§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§?!I§ == this)
         {
            param1.§3!6§(this,param2);
            param2.invert();
            return param2;
         }
         §9C§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §9C§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §9C§.indexOf(_loc4_) == -1)
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
            _loc4_.§3!6§(_loc4_.§?!I§,§8!f§);
            param2.concat(§8!f§);
            _loc4_ = _loc4_.parent;
         }
         §8!4§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§3!6§(_loc4_.§?!I§,§8!f§);
            §8!4§.concat(§8!f§);
            _loc4_ = _loc4_.parent;
         }
         §8!4§.invert();
         param2.concat(§8!4§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §-!i§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§+&§ || !this.§1<§))
         {
            return null;
         }
         if(this.getBounds(this,§6!H§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §8!4§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§3!6§(_loc2_.§?!I§,§8!f§);
            §8!4§.concat(§8!f§);
            _loc2_ = _loc2_.parent;
         }
         return §8!4§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §8!4§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§3!6§(_loc2_.§?!I§,§8!f§);
            §8!4§.concat(§8!f§);
            _loc2_ = _loc2_.parent;
         }
         §8!4§.invert();
         return §8!4§.transformPoint(param1);
      }
      
      public function render(param1:§ if§, param2:Number) : void
      {
         throw new §-!i§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§9!§)
            {
               return;
            }
            this.§9!§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §;,§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§?!I§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §1E§();
         if(param1 != this.§?!I§ && this.§?!I§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§?!I§ = param1;
         if(this.§?!I§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§?!I§)
         {
            this.§?!I§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§?!I§)
         {
            this.§?!I§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §6!J§() : Matrix
      {
         return this.§3!6§(this.§?!I§);
      }
      
      public function get §,!]§() : Rectangle
      {
         return this.getBounds(this.§?!I§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§?!I§,§6!H§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§;L§ = 1;
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
         return this.getBounds(this.§?!I§,§6!H§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§#!D§ = 1;
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
         var _loc2_:Array = §1E§();
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
      
      public function §?!"§(param1:Matrix3D) : void
      {
         if(this.§?!g§ == 0 && this.§;L§ == 1 && this.§#!D§ == 1)
         {
            if(this.§=!=§ + this.§@;§ != 0 || this.§[!;§ + this.§2u§ != 0)
            {
               param1.prependTranslation(this.§=!=§ + this.§@;§,this.§[!;§ + this.§2u§,0);
            }
         }
         else
         {
            if(this.§=!=§ != 0 || this.§[!;§ != 0)
            {
               param1.prependTranslation(this.§=!=§,this.§[!;§,0);
            }
            if(this.§?!g§ != 0)
            {
               param1.prependRotation(this.§?!g§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§;L§ != 1 || this.§#!D§ != 1)
            {
               param1.prependScale(this.§;L§,this.§#!D§,1);
            }
            if(this.§@;§ != 0 || this.§2u§ != 0)
            {
               param1.prependTranslation(this.§@;§,this.§2u§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§=!=§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§=!=§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§[!;§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§[!;§ = param1;
      }
      
      public function get pivotX() : Number
      {
         return this.§@;§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§@;§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§2u§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§2u§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§;L§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§;L§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§#!D§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§#!D§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§?!g§;
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
         this.§?!g§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.§9a§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§9a§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§+&§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§+&§ = param1;
      }
      
      public function get §;Y§() : Boolean
      {
         return this.§1<§;
      }
      
      public function set §;Y§(param1:Boolean) : void
      {
         this.§1<§ = param1;
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
         return this.§?!I§;
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
