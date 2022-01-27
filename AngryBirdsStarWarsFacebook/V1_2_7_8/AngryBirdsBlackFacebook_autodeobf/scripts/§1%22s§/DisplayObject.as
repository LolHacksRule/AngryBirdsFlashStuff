package §1"s§
{
   import §!"u§.§+7§;
   import §!"u§.§^!,§;
   import §9!!§.§ _§;
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
      
      private static var §@"U§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §##6§:Rectangle = new Rectangle();
      
      private static var §4g§:Matrix = new Matrix();
      
      private static var §<!O§:Matrix = new Matrix();
      
      protected static var §<#$§:int = 0;
       
      
      private var §]!_§:Number;
      
      private var §#j§:Number;
      
      private var §?d§:Number;
      
      private var §@!p§:Number;
      
      private var §=#4§:Number;
      
      private var §3#'§:Number;
      
      private var § !r§:Number;
      
      private var §2!-§:Number;
      
      private var §'M§:Boolean;
      
      private var §]!U§:Boolean;
      
      private var §2!q§:Number;
      
      private var mName:String;
      
      private var § "!§:Number;
      
      private var §?9§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §^!,§();
         }
         this.§]!_§ = this.§#j§ = this.§?d§ = this.§@!p§ = this.§ !r§ = 0;
         this.§=#4§ = this.§3#'§ = this.§2!-§ = 1;
         this.§'M§ = this.§]!U§ = true;
         this.§ "!§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §0"@§(param1:Boolean = false) : void
      {
         if(this.§?9§)
         {
            this.§?9§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §>"`§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§?9§ || param1 == null && this.§?9§ == null)
         {
            if(this.§?d§ != 0 || this.§@!p§ != 0)
            {
               param2.translate(-this.§?d§,-this.§@!p§);
            }
            if(this.§=#4§ != 1 || this.§3#'§ != 1)
            {
               param2.scale(this.§=#4§,this.§3#'§);
            }
            if(this.§ !r§ != 0)
            {
               param2.rotate(this.§ !r§);
            }
            if(this.§]!_§ != 0 || this.§#j§ != 0)
            {
               param2.translate(this.§]!_§,this.§#j§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§>"`§(_loc4_.§?9§,§4g§);
               param2.concat(§4g§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§?9§ == this)
         {
            param1.§>"`§(this,param2);
            param2.invert();
            return param2;
         }
         §@"U§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §@"U§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §@"U§.indexOf(_loc4_) == -1)
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
            _loc4_.§>"`§(_loc4_.§?9§,§4g§);
            param2.concat(§4g§);
            _loc4_ = _loc4_.parent;
         }
         §<!O§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§>"`§(_loc4_.§?9§,§4g§);
            §<!O§.concat(§4g§);
            _loc4_ = _loc4_.parent;
         }
         §<!O§.invert();
         param2.concat(§<!O§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §+7§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§'M§ || !this.§]!U§))
         {
            return null;
         }
         if(this.getBounds(this,§##6§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §<!O§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§>"`§(_loc2_.§?9§,§4g§);
            §<!O§.concat(§4g§);
            _loc2_ = _loc2_.parent;
         }
         return §<!O§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §<!O§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§>"`§(_loc2_.§?9§,§4g§);
            §<!O§.concat(§4g§);
            _loc2_ = _loc2_.parent;
         }
         §<!O§.invert();
         return §<!O§.transformPoint(param1);
      }
      
      public function render(param1:§ _§, param2:Number) : void
      {
         throw new §+7§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§ "!§)
            {
               return;
            }
            this.§ "!§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §^!j§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§?9§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §<"'§();
         if(param1 != this.§?9§ && this.§?9§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§?9§ = param1;
         if(this.§?9§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§?9§)
         {
            this.§?9§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§?9§)
         {
            this.§?9§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §@!N§() : Matrix
      {
         return this.§>"`§(this.§?9§);
      }
      
      public function get §8!V§() : Rectangle
      {
         return this.getBounds(this.§?9§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§?9§,§##6§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§=#4§ = 1;
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
         return this.getBounds(this.§?9§,§##6§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§3#'§ = 1;
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
         var _loc2_:Array = §<"'§();
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
      
      public function §]"W§(param1:Matrix3D) : void
      {
         if(this.§ !r§ == 0 && this.§=#4§ == 1 && this.§3#'§ == 1)
         {
            if(this.§]!_§ + this.§?d§ != 0 || this.§#j§ + this.§@!p§ != 0)
            {
               param1.prependTranslation(this.§]!_§ + this.§?d§,this.§#j§ + this.§@!p§,0);
            }
         }
         else
         {
            if(this.§]!_§ != 0 || this.§#j§ != 0)
            {
               param1.prependTranslation(this.§]!_§,this.§#j§,0);
            }
            if(this.§ !r§ != 0)
            {
               param1.prependRotation(this.§ !r§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§=#4§ != 1 || this.§3#'§ != 1)
            {
               param1.prependScale(this.§=#4§,this.§3#'§,1);
            }
            if(this.§?d§ != 0 || this.§@!p§ != 0)
            {
               param1.prependTranslation(this.§?d§,this.§@!p§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§]!_§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§]!_§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§#j§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§#j§ = param1;
      }
      
      public function get z() : Number
      {
         return this.§2!q§;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.§?9§)
         {
            this.§2!q§ = param1;
         }
      }
      
      public function get pivotX() : Number
      {
         return this.§?d§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§?d§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§@!p§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§@!p§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§=#4§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§=#4§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§3#'§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§3#'§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§ !r§;
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
         this.§ !r§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.§2!-§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§2!-§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§'M§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§'M§ = param1;
      }
      
      public function get §#C§() : Boolean
      {
         return this.§]!U§;
      }
      
      public function set §#C§(param1:Boolean) : void
      {
         this.§]!U§ = param1;
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
         return this.§?9§;
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
