package §,!Q§
{
   import § F§.§,!>§;
   import §;S§.§7!B§;
   import §;S§.§?!'§;
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
      
      private static var §5s§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §]`§:Rectangle = new Rectangle();
      
      private static var §,!J§:Matrix = new Matrix();
      
      private static var §22§:Matrix = new Matrix();
      
      protected static var §1!>§:int = 0;
       
      
      private var §03§:Number;
      
      private var §5,§:Number;
      
      private var §7O§:Number;
      
      private var §"0§:Number;
      
      private var §try §:Number;
      
      private var §9F§:Number;
      
      private var §1Q§:Number;
      
      private var §<!S§:Number;
      
      private var §!e§:Boolean;
      
      private var §+!§:Boolean;
      
      private var mName:String;
      
      private var §#X§:Number;
      
      private var §?2§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §7!B§();
         }
         this.§03§ = this.§5,§ = this.§7O§ = this.§"0§ = this.§1Q§ = 0;
         this.§try § = this.§9F§ = this.§<!S§ = 1;
         this.§!e§ = this.§+!§ = true;
         this.§#X§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §,!I§(param1:Boolean = false) : void
      {
         if(this.§?2§)
         {
            this.§?2§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function § !K§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§?2§ || param1 == null && this.§?2§ == null)
         {
            if(this.§7O§ != 0 || this.§"0§ != 0)
            {
               param2.translate(-this.§7O§,-this.§"0§);
            }
            if(this.§try § != 1 || this.§9F§ != 1)
            {
               param2.scale(this.§try §,this.§9F§);
            }
            if(this.§1Q§ != 0)
            {
               param2.rotate(this.§1Q§);
            }
            if(this.§03§ != 0 || this.§5,§ != 0)
            {
               param2.translate(this.§03§,this.§5,§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§ !K§(_loc4_.§?2§,§,!J§);
               param2.concat(§,!J§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§?2§ == this)
         {
            param1.§ !K§(this,param2);
            param2.invert();
            return param2;
         }
         §5s§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §5s§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §5s§.indexOf(_loc4_) == -1)
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
            _loc4_.§ !K§(_loc4_.§?2§,§,!J§);
            param2.concat(§,!J§);
            _loc4_ = _loc4_.parent;
         }
         §22§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§ !K§(_loc4_.§?2§,§,!J§);
            §22§.concat(§,!J§);
            _loc4_ = _loc4_.parent;
         }
         §22§.invert();
         param2.concat(§22§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §?!'§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§!e§ || !this.§+!§))
         {
            return null;
         }
         if(this.getBounds(this,§]`§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §22§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§ !K§(_loc2_.§?2§,§,!J§);
            §22§.concat(§,!J§);
            _loc2_ = _loc2_.parent;
         }
         return §22§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §22§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§ !K§(_loc2_.§?2§,§,!J§);
            §22§.concat(§,!J§);
            _loc2_ = _loc2_.parent;
         }
         §22§.invert();
         return §22§.transformPoint(param1);
      }
      
      public function render(param1:§,!>§, param2:Number) : void
      {
         throw new §?!'§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§#X§)
            {
               return;
            }
            this.§#X§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §3!F§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§?2§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = get();
         if(param1 != this.§?2§ && this.§?2§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§?2§ = param1;
         if(this.§?2§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§?2§)
         {
            this.§?2§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§?2§)
         {
            this.§?2§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §2;§() : Matrix
      {
         return this.§ !K§(this.§?2§);
      }
      
      public function get §@6§() : Rectangle
      {
         return this.getBounds(this.§?2§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§?2§,§]`§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§try § = 1;
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
         return this.getBounds(this.§?2§,§]`§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§9F§ = 1;
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
         var _loc2_:Array = get();
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
      
      public function §<H§(param1:Matrix3D) : void
      {
         if(this.§1Q§ == 0 && this.§try § == 1 && this.§9F§ == 1)
         {
            if(this.§03§ + this.§7O§ != 0 || this.§5,§ + this.§"0§ != 0)
            {
               param1.prependTranslation(this.§03§ + this.§7O§,this.§5,§ + this.§"0§,0);
            }
         }
         else
         {
            if(this.§03§ != 0 || this.§5,§ != 0)
            {
               param1.prependTranslation(this.§03§,this.§5,§,0);
            }
            if(this.§1Q§ != 0)
            {
               param1.prependRotation(this.§1Q§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§try § != 1 || this.§9F§ != 1)
            {
               param1.prependScale(this.§try §,this.§9F§,1);
            }
            if(this.§7O§ != 0 || this.§"0§ != 0)
            {
               param1.prependTranslation(this.§7O§,this.§"0§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§03§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§03§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§5,§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§5,§ = param1;
      }
      
      public function get pivotX() : Number
      {
         return this.§7O§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§7O§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§"0§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§"0§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§try §;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§try § = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§9F§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§9F§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§1Q§;
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
         this.§1Q§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.§<!S§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§<!S§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§!e§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§!e§ = param1;
      }
      
      public function get §8!Q§() : Boolean
      {
         return this.§+!§;
      }
      
      public function set §8!Q§(param1:Boolean) : void
      {
         this.§+!§ = param1;
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
         return this.§?2§;
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
