package §&o§
{
   import §<t§.§ !'§;
   import §<t§.§%!<§;
   import §=!0§.§2N§;
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
      
      private static var §7B§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §7!"§:Rectangle = new Rectangle();
      
      private static var §2$§:Matrix = new Matrix();
      
      private static var §;!9§:Matrix = new Matrix();
      
      protected static var §49§:int = 0;
       
      
      private var §-`§:Number;
      
      private var §4J§:Number;
      
      private var §!!J§:Number;
      
      private var §[R§:Number;
      
      private var §"+§:Number;
      
      private var §+!-§:Number;
      
      private var §&k§:Number;
      
      private var §1!K§:Number;
      
      private var §?;§:Boolean;
      
      private var §"!F§:Boolean;
      
      private var §,!E§:Number;
      
      private var mName:String;
      
      private var §]!3§:Number;
      
      private var §=+§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new § !'§();
         }
         this.§-`§ = this.§4J§ = this.§!!J§ = this.§[R§ = this.§&k§ = 0;
         this.§"+§ = this.§+!-§ = this.§1!K§ = 1;
         this.§?;§ = this.§"!F§ = true;
         this.§]!3§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §?!E§(param1:Boolean = false) : void
      {
         if(this.§=+§)
         {
            this.§=+§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §&M§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§=+§ || param1 == null && this.§=+§ == null)
         {
            if(this.§!!J§ != 0 || this.§[R§ != 0)
            {
               param2.translate(-this.§!!J§,-this.§[R§);
            }
            if(this.§"+§ != 1 || this.§+!-§ != 1)
            {
               param2.scale(this.§"+§,this.§+!-§);
            }
            if(this.§&k§ != 0)
            {
               param2.rotate(this.§&k§);
            }
            if(this.§-`§ != 0 || this.§4J§ != 0)
            {
               param2.translate(this.§-`§,this.§4J§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§&M§(_loc4_.§=+§,§2$§);
               param2.concat(§2$§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§=+§ == this)
         {
            param1.§&M§(this,param2);
            param2.invert();
            return param2;
         }
         §7B§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §7B§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §7B§.indexOf(_loc4_) == -1)
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
            _loc4_.§&M§(_loc4_.§=+§,§2$§);
            param2.concat(§2$§);
            _loc4_ = _loc4_.parent;
         }
         §;!9§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§&M§(_loc4_.§=+§,§2$§);
            §;!9§.concat(§2$§);
            _loc4_ = _loc4_.parent;
         }
         §;!9§.invert();
         param2.concat(§;!9§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §%!<§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§?;§ || !this.§"!F§))
         {
            return null;
         }
         if(this.getBounds(this,§7!"§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §;!9§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§&M§(_loc2_.§=+§,§2$§);
            §;!9§.concat(§2$§);
            _loc2_ = _loc2_.parent;
         }
         return §;!9§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §;!9§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§&M§(_loc2_.§=+§,§2$§);
            §;!9§.concat(§2$§);
            _loc2_ = _loc2_.parent;
         }
         §;!9§.invert();
         return §;!9§.transformPoint(param1);
      }
      
      public function render(param1:§2N§, param2:Number) : void
      {
         throw new §%!<§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§]!3§)
            {
               return;
            }
            this.§]!3§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §%z§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§=+§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §'+§();
         if(param1 != this.§=+§ && this.§=+§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§=+§ = param1;
         if(this.§=+§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§=+§)
         {
            this.§=+§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§=+§)
         {
            this.§=+§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §=E§() : Matrix
      {
         return this.§&M§(this.§=+§);
      }
      
      public function get §4U§() : Rectangle
      {
         return this.getBounds(this.§=+§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§=+§,§7!"§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§"+§ = 1;
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
         return this.getBounds(this.§=+§,§7!"§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§+!-§ = 1;
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
         var _loc2_:Array = §'+§();
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
      
      public function §34§(param1:Matrix3D) : void
      {
         if(this.§&k§ == 0 && this.§"+§ == 1 && this.§+!-§ == 1)
         {
            if(this.§-`§ + this.§!!J§ != 0 || this.§4J§ + this.§[R§ != 0)
            {
               param1.prependTranslation(this.§-`§ + this.§!!J§,this.§4J§ + this.§[R§,0);
            }
         }
         else
         {
            if(this.§-`§ != 0 || this.§4J§ != 0)
            {
               param1.prependTranslation(this.§-`§,this.§4J§,0);
            }
            if(this.§&k§ != 0)
            {
               param1.prependRotation(this.§&k§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§"+§ != 1 || this.§+!-§ != 1)
            {
               param1.prependScale(this.§"+§,this.§+!-§,1);
            }
            if(this.§!!J§ != 0 || this.§[R§ != 0)
            {
               param1.prependTranslation(this.§!!J§,this.§[R§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§-`§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§-`§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§4J§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§4J§ = param1;
      }
      
      public function get z() : Number
      {
         return this.§,!E§;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.§=+§)
         {
            this.§,!E§ = param1;
         }
      }
      
      public function get pivotX() : Number
      {
         return this.§!!J§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§!!J§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§[R§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§[R§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§"+§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§"+§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§+!-§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§+!-§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§&k§;
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
         this.§&k§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.§1!K§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§1!K§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§?;§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§?;§ = param1;
      }
      
      public function get §3!D§() : Boolean
      {
         return this.§"!F§;
      }
      
      public function set §3!D§(param1:Boolean) : void
      {
         this.§"!F§ = param1;
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
         return this.§=+§;
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
