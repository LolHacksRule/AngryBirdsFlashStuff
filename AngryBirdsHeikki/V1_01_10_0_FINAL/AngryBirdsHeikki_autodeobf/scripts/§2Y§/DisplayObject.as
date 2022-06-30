package §2Y§
{
   import §"^§.§'X§;
   import §2i§.§'u§;
   import §2i§.§?Z§;
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
      
      private static var §-J§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §<!7§:Rectangle = new Rectangle();
      
      private static var §6!<§:Matrix = new Matrix();
      
      private static var §#S§:Matrix = new Matrix();
      
      protected static var §]!N§:int = 0;
       
      
      private var §"!d§:Number;
      
      private var §,!W§:Number;
      
      private var §var §:Number;
      
      private var §9!K§:Number;
      
      private var §#j§:Number;
      
      private var § !=§:Number;
      
      private var §^Y§:Number;
      
      private var §3?§:Number;
      
      private var §`G§:Boolean;
      
      private var §5!'§:Boolean;
      
      private var mName:String;
      
      private var §8f§:Number;
      
      private var §>!Z§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §'u§();
         }
         this.§"!d§ = this.§,!W§ = this.§var § = this.§9!K§ = this.§^Y§ = 0;
         this.§#j§ = this.§ !=§ = this.§3?§ = 1;
         this.§`G§ = this.§5!'§ = true;
         this.§8f§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §7^§(param1:Boolean = false) : void
      {
         if(this.§>!Z§)
         {
            this.§>!Z§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §6!5§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§>!Z§ || param1 == null && this.§>!Z§ == null)
         {
            if(this.§var § != 0 || this.§9!K§ != 0)
            {
               param2.translate(-this.§var §,-this.§9!K§);
            }
            if(this.§#j§ != 1 || this.§ !=§ != 1)
            {
               param2.scale(this.§#j§,this.§ !=§);
            }
            if(this.§^Y§ != 0)
            {
               param2.rotate(this.§^Y§);
            }
            if(this.§"!d§ != 0 || this.§,!W§ != 0)
            {
               param2.translate(this.§"!d§,this.§,!W§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§6!5§(_loc4_.§>!Z§,§6!<§);
               param2.concat(§6!<§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§>!Z§ == this)
         {
            param1.§6!5§(this,param2);
            param2.invert();
            return param2;
         }
         §-J§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §-J§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §-J§.indexOf(_loc4_) == -1)
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
            _loc4_.§6!5§(_loc4_.§>!Z§,§6!<§);
            param2.concat(§6!<§);
            _loc4_ = _loc4_.parent;
         }
         §#S§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§6!5§(_loc4_.§>!Z§,§6!<§);
            §#S§.concat(§6!<§);
            _loc4_ = _loc4_.parent;
         }
         §#S§.invert();
         param2.concat(§#S§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §?Z§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§`G§ || !this.§5!'§))
         {
            return null;
         }
         if(this.getBounds(this,§<!7§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §#S§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§6!5§(_loc2_.§>!Z§,§6!<§);
            §#S§.concat(§6!<§);
            _loc2_ = _loc2_.parent;
         }
         return §#S§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §#S§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§6!5§(_loc2_.§>!Z§,§6!<§);
            §#S§.concat(§6!<§);
            _loc2_ = _loc2_.parent;
         }
         §#S§.invert();
         return §#S§.transformPoint(param1);
      }
      
      public function render(param1:§'X§, param2:Number) : void
      {
         throw new §?Z§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§8f§)
            {
               return;
            }
            this.§8f§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §%C§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§>!Z§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §2!I§();
         if(param1 != this.§>!Z§ && this.§>!Z§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§>!Z§ = param1;
         if(this.§>!Z§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§>!Z§)
         {
            this.§>!Z§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§>!Z§)
         {
            this.§>!Z§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §^![§() : Matrix
      {
         return this.§6!5§(this.§>!Z§);
      }
      
      public function get §!!2§() : Rectangle
      {
         return this.getBounds(this.§>!Z§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§>!Z§,§<!7§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§#j§ = 1;
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
         return this.getBounds(this.§>!Z§,§<!7§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§ !=§ = 1;
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
         var _loc2_:Array = §2!I§();
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
      
      public function §6!W§(param1:Matrix3D) : void
      {
         if(this.§^Y§ == 0 && this.§#j§ == 1 && this.§ !=§ == 1)
         {
            if(this.§"!d§ + this.§var § != 0 || this.§,!W§ + this.§9!K§ != 0)
            {
               param1.prependTranslation(this.§"!d§ + this.§var §,this.§,!W§ + this.§9!K§,0);
            }
         }
         else
         {
            if(this.§"!d§ != 0 || this.§,!W§ != 0)
            {
               param1.prependTranslation(this.§"!d§,this.§,!W§,0);
            }
            if(this.§^Y§ != 0)
            {
               param1.prependRotation(this.§^Y§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§#j§ != 1 || this.§ !=§ != 1)
            {
               param1.prependScale(this.§#j§,this.§ !=§,1);
            }
            if(this.§var § != 0 || this.§9!K§ != 0)
            {
               param1.prependTranslation(this.§var §,this.§9!K§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§"!d§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§"!d§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§,!W§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§,!W§ = param1;
      }
      
      public function get pivotX() : Number
      {
         return this.§var §;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§var § = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§9!K§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§9!K§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§#j§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§#j§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§ !=§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§ !=§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§^Y§;
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
         this.§^Y§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.§3?§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§3?§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§`G§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§`G§ = param1;
      }
      
      public function get §0!3§() : Boolean
      {
         return this.§5!'§;
      }
      
      public function set §0!3§(param1:Boolean) : void
      {
         this.§5!'§ = param1;
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
         return this.§>!Z§;
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
