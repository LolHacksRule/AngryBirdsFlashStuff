package §-![§
{
   import §&&§.§+u§;
   import §&&§.§@z§;
   import §=!6§.§]q§;
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
      
      private static var §7!]§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §+"&§:Rectangle = new Rectangle();
      
      private static var §%0§:Matrix = new Matrix();
      
      private static var §9"2§:Matrix = new Matrix();
      
      protected static var §4!i§:int = 0;
       
      
      private var §@!-§:Number;
      
      private var §'!0§:Number;
      
      private var §'<§:Number;
      
      private var §1!Q§:Number;
      
      private var §<!-§:Number;
      
      private var §]t§:Number;
      
      private var §4D§:Number;
      
      private var §<-§:Number;
      
      private var §9!Y§:Boolean;
      
      private var §>!Y§:Boolean;
      
      private var §&!4§:Number;
      
      private var mName:String;
      
      private var §6"§:Number;
      
      private var §1!8§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §+u§();
         }
         this.§@!-§ = this.§'!0§ = this.§'<§ = this.§1!Q§ = this.§4D§ = 0;
         this.§<!-§ = this.§]t§ = this.§<-§ = 1;
         this.§9!Y§ = this.§>!Y§ = true;
         this.§6"§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §!Y§(param1:Boolean = false) : void
      {
         if(this.§1!8§)
         {
            this.§1!8§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §,!^§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§1!8§ || param1 == null && this.§1!8§ == null)
         {
            if(this.§'<§ != 0 || this.§1!Q§ != 0)
            {
               param2.translate(-this.§'<§,-this.§1!Q§);
            }
            if(this.§<!-§ != 1 || this.§]t§ != 1)
            {
               param2.scale(this.§<!-§,this.§]t§);
            }
            if(this.§4D§ != 0)
            {
               param2.rotate(this.§4D§);
            }
            if(this.§@!-§ != 0 || this.§'!0§ != 0)
            {
               param2.translate(this.§@!-§,this.§'!0§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§,!^§(_loc4_.§1!8§,§%0§);
               param2.concat(§%0§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§1!8§ == this)
         {
            param1.§,!^§(this,param2);
            param2.invert();
            return param2;
         }
         §7!]§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §7!]§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §7!]§.indexOf(_loc4_) == -1)
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
            _loc4_.§,!^§(_loc4_.§1!8§,§%0§);
            param2.concat(§%0§);
            _loc4_ = _loc4_.parent;
         }
         §9"2§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§,!^§(_loc4_.§1!8§,§%0§);
            §9"2§.concat(§%0§);
            _loc4_ = _loc4_.parent;
         }
         §9"2§.invert();
         param2.concat(§9"2§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §@z§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§9!Y§ || !this.§>!Y§))
         {
            return null;
         }
         if(this.getBounds(this,§+"&§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §9"2§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§,!^§(_loc2_.§1!8§,§%0§);
            §9"2§.concat(§%0§);
            _loc2_ = _loc2_.parent;
         }
         return §9"2§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §9"2§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§,!^§(_loc2_.§1!8§,§%0§);
            §9"2§.concat(§%0§);
            _loc2_ = _loc2_.parent;
         }
         §9"2§.invert();
         return §9"2§.transformPoint(param1);
      }
      
      public function render(param1:§]q§, param2:Number) : void
      {
         throw new §@z§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§6"§)
            {
               return;
            }
            this.§6"§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §'!O§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§1!8§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §2!0§();
         if(param1 != this.§1!8§ && this.§1!8§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§1!8§ = param1;
         if(this.§1!8§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§1!8§)
         {
            this.§1!8§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§1!8§)
         {
            this.§1!8§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §8+§() : Matrix
      {
         return this.§,!^§(this.§1!8§);
      }
      
      public function get §[!t§() : Rectangle
      {
         return this.getBounds(this.§1!8§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§1!8§,§+"&§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§<!-§ = 1;
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
         return this.getBounds(this.§1!8§,§+"&§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§]t§ = 1;
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
         var _loc2_:Array = §2!0§();
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
      
      public function § for§(param1:Matrix3D) : void
      {
         if(this.§4D§ == 0 && this.§<!-§ == 1 && this.§]t§ == 1)
         {
            if(this.§@!-§ + this.§'<§ != 0 || this.§'!0§ + this.§1!Q§ != 0)
            {
               param1.prependTranslation(this.§@!-§ + this.§'<§,this.§'!0§ + this.§1!Q§,0);
            }
         }
         else
         {
            if(this.§@!-§ != 0 || this.§'!0§ != 0)
            {
               param1.prependTranslation(this.§@!-§,this.§'!0§,0);
            }
            if(this.§4D§ != 0)
            {
               param1.prependRotation(this.§4D§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§<!-§ != 1 || this.§]t§ != 1)
            {
               param1.prependScale(this.§<!-§,this.§]t§,1);
            }
            if(this.§'<§ != 0 || this.§1!Q§ != 0)
            {
               param1.prependTranslation(this.§'<§,this.§1!Q§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§@!-§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§@!-§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§'!0§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§'!0§ = param1;
      }
      
      public function get z() : Number
      {
         return this.§&!4§;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.§1!8§)
         {
            this.§&!4§ = param1;
         }
      }
      
      public function get pivotX() : Number
      {
         return this.§'<§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§'<§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§1!Q§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§1!Q§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§<!-§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§<!-§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§]t§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§]t§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§4D§;
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
         this.§4D§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.§<-§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§<-§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§9!Y§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§9!Y§ = param1;
      }
      
      public function get §%!<§() : Boolean
      {
         return this.§>!Y§;
      }
      
      public function set §%!<§(param1:Boolean) : void
      {
         this.§>!Y§ = param1;
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
         return this.§1!8§;
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
