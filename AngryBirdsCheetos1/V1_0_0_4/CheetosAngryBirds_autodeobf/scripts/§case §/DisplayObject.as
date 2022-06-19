package §case §
{
   import §_-KM§.§_-H9§;
   import §_-mS§.§_-Hm§;
   import §_-mS§.§_-jy§;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.TouchEvent;
   
   public class DisplayObject extends EventDispatcher
   {
      
      private static var §_-1§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §_-2y§:Rectangle = new Rectangle();
      
      private static var §_-1g§:Matrix = new Matrix();
      
      private static var §_-HV§:Matrix = new Matrix();
      
      protected static var §_-pk§:int = 0;
       
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §_-dI§:Number;
      
      private var §_-9j§:Number;
      
      private var §_-wX§:Number;
      
      private var §_-GM§:Number;
      
      private var §_-EO§:Number;
      
      private var mAlpha:Number;
      
      private var §_-t5§:Boolean;
      
      private var §_-4m§:Boolean;
      
      private var mName:String;
      
      private var §_-jr§:Number;
      
      private var §_-Y2§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §_-jy§();
         }
         this.mX = this.mY = this.§_-dI§ = this.§_-9j§ = this.§_-EO§ = 0;
         this.§_-wX§ = this.§_-GM§ = this.mAlpha = 1;
         this.§_-t5§ = this.§_-4m§ = true;
         this.§_-jr§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §_-JS§(param1:Boolean = false) : void
      {
         if(this.§_-Y2§)
         {
            this.§_-Y2§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §_-P4§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§_-Y2§ || param1 == null && this.§_-Y2§ == null)
         {
            if(this.§_-dI§ != 0 || this.§_-9j§ != 0)
            {
               param2.translate(-this.§_-dI§,-this.§_-9j§);
            }
            if(this.§_-wX§ != 1 || this.§_-GM§ != 1)
            {
               param2.scale(this.§_-wX§,this.§_-GM§);
            }
            if(this.§_-EO§ != 0)
            {
               param2.rotate(this.§_-EO§);
            }
            if(this.mX != 0 || this.mY != 0)
            {
               param2.translate(this.mX,this.mY);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§_-P4§(_loc4_.§_-Y2§,§_-1g§);
               param2.concat(§_-1g§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§_-Y2§ == this)
         {
            param1.§_-P4§(this,param2);
            param2.invert();
            return param2;
         }
         §_-1§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §_-1§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §_-1§.indexOf(_loc4_) == -1)
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
            _loc4_.§_-P4§(_loc4_.§_-Y2§,§_-1g§);
            param2.concat(§_-1g§);
            _loc4_ = _loc4_.parent;
         }
         §_-HV§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§_-P4§(_loc4_.§_-Y2§,§_-1g§);
            §_-HV§.concat(§_-1g§);
            _loc4_ = _loc4_.parent;
         }
         §_-HV§.invert();
         param2.concat(§_-HV§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §_-Hm§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§_-t5§ || !this.§_-4m§))
         {
            return null;
         }
         if(this.getBounds(this,§_-2y§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §_-HV§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§_-P4§(_loc2_.§_-Y2§,§_-1g§);
            §_-HV§.concat(§_-1g§);
            _loc2_ = _loc2_.parent;
         }
         return §_-HV§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §_-HV§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§_-P4§(_loc2_.§_-Y2§,§_-1g§);
            §_-HV§.concat(§_-1g§);
            _loc2_ = _loc2_.parent;
         }
         §_-HV§.invert();
         return §_-HV§.transformPoint(param1);
      }
      
      public function render(param1:§_-H9§, param2:Number) : void
      {
         throw new §_-Hm§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§_-jr§)
            {
               return;
            }
            this.§_-jr§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §_-mD§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§_-Y2§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = set();
         if(param1 != this.§_-Y2§ && this.§_-Y2§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§_-Y2§ = param1;
         if(this.§_-Y2§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§_-Y2§)
         {
            this.§_-Y2§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§_-Y2§)
         {
            this.§_-Y2§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §_-Mt§() : Matrix
      {
         return this.§_-P4§(this.§_-Y2§);
      }
      
      public function get §_-4w§() : Rectangle
      {
         return this.getBounds(this.§_-Y2§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§_-Y2§,§_-2y§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§_-wX§ = 1;
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
         return this.getBounds(this.§_-Y2§,§_-2y§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§_-GM§ = 1;
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
         var _loc2_:Array = set();
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
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function set x(param1:Number) : void
      {
         this.mX = param1;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function set y(param1:Number) : void
      {
         this.mY = param1;
      }
      
      public function get pivotX() : Number
      {
         return this.§_-dI§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§_-dI§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§_-9j§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§_-9j§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§_-wX§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§_-wX§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§_-GM§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§_-GM§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§_-EO§;
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
         this.§_-EO§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.mAlpha;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.mAlpha = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§_-t5§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§_-t5§ = param1;
      }
      
      public function get §_-IX§() : Boolean
      {
         return this.§_-4m§;
      }
      
      public function set §_-IX§(param1:Boolean) : void
      {
         this.§_-4m§ = param1;
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
         return this.§_-Y2§;
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
