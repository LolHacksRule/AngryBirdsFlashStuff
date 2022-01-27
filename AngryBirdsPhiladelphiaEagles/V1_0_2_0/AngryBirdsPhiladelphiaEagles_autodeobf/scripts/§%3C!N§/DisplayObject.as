package §<!N§
{
   import §=!C§.§ set§;
   import §=!C§.§>4§;
   import §^h§.§?!D§;
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
      
      private static var §6m§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §"`§:Rectangle = new Rectangle();
      
      private static var §8!J§:Matrix = new Matrix();
      
      private static var §=T§:Matrix = new Matrix();
      
      protected static var §&"§:int = 0;
       
      
      private var §-o§:Number;
      
      private var §2!9§:Number;
      
      private var §6!H§:Number;
      
      private var §2x§:Number;
      
      private var §6U§:Number;
      
      private var §&Z§:Number;
      
      private var §-"§:Number;
      
      private var §'t§:Number;
      
      private var §"!9§:Boolean;
      
      private var §>A§:Boolean;
      
      private var mName:String;
      
      private var §?q§:Number;
      
      private var §9K§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new § set§();
         }
         this.§-o§ = this.§2!9§ = this.§6!H§ = this.§2x§ = this.§-"§ = 0;
         this.§6U§ = this.§&Z§ = this.§'t§ = 1;
         this.§"!9§ = this.§>A§ = true;
         this.§?q§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §5_§(param1:Boolean = false) : void
      {
         if(this.§9K§)
         {
            this.§9K§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §1!H§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§9K§ || param1 == null && this.§9K§ == null)
         {
            if(this.§6!H§ != 0 || this.§2x§ != 0)
            {
               param2.translate(-this.§6!H§,-this.§2x§);
            }
            if(this.§6U§ != 1 || this.§&Z§ != 1)
            {
               param2.scale(this.§6U§,this.§&Z§);
            }
            if(this.§-"§ != 0)
            {
               param2.rotate(this.§-"§);
            }
            if(this.§-o§ != 0 || this.§2!9§ != 0)
            {
               param2.translate(this.§-o§,this.§2!9§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§1!H§(_loc4_.§9K§,§8!J§);
               param2.concat(§8!J§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§9K§ == this)
         {
            param1.§1!H§(this,param2);
            param2.invert();
            return param2;
         }
         §6m§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §6m§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §6m§.indexOf(_loc4_) == -1)
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
            _loc4_.§1!H§(_loc4_.§9K§,§8!J§);
            param2.concat(§8!J§);
            _loc4_ = _loc4_.parent;
         }
         §=T§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§1!H§(_loc4_.§9K§,§8!J§);
            §=T§.concat(§8!J§);
            _loc4_ = _loc4_.parent;
         }
         §=T§.invert();
         param2.concat(§=T§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §>4§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§"!9§ || !this.§>A§))
         {
            return null;
         }
         if(this.getBounds(this,§"`§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §=T§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§1!H§(_loc2_.§9K§,§8!J§);
            §=T§.concat(§8!J§);
            _loc2_ = _loc2_.parent;
         }
         return §=T§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §=T§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§1!H§(_loc2_.§9K§,§8!J§);
            §=T§.concat(§8!J§);
            _loc2_ = _loc2_.parent;
         }
         §=T§.invert();
         return §=T§.transformPoint(param1);
      }
      
      public function render(param1:§?!D§, param2:Number) : void
      {
         throw new §>4§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§?q§)
            {
               return;
            }
            this.§?q§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §7B§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§9K§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §`E§();
         if(param1 != this.§9K§ && this.§9K§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§9K§ = param1;
         if(this.§9K§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§9K§)
         {
            this.§9K§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§9K§)
         {
            this.§9K§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §#!N§() : Matrix
      {
         return this.§1!H§(this.§9K§);
      }
      
      public function get §=C§() : Rectangle
      {
         return this.getBounds(this.§9K§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§9K§,§"`§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§6U§ = 1;
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
         return this.getBounds(this.§9K§,§"`§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§&Z§ = 1;
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
         var _loc2_:Array = §`E§();
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
      
      public function §>;§(param1:Matrix3D) : void
      {
         if(this.§-"§ == 0 && this.§6U§ == 1 && this.§&Z§ == 1)
         {
            if(this.§-o§ + this.§6!H§ != 0 || this.§2!9§ + this.§2x§ != 0)
            {
               param1.prependTranslation(this.§-o§ + this.§6!H§,this.§2!9§ + this.§2x§,0);
            }
         }
         else
         {
            if(this.§-o§ != 0 || this.§2!9§ != 0)
            {
               param1.prependTranslation(this.§-o§,this.§2!9§,0);
            }
            if(this.§-"§ != 0)
            {
               param1.prependRotation(this.§-"§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§6U§ != 1 || this.§&Z§ != 1)
            {
               param1.prependScale(this.§6U§,this.§&Z§,1);
            }
            if(this.§6!H§ != 0 || this.§2x§ != 0)
            {
               param1.prependTranslation(this.§6!H§,this.§2x§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§-o§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§-o§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§2!9§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§2!9§ = param1;
      }
      
      public function get pivotX() : Number
      {
         return this.§6!H§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§6!H§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§2x§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§2x§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§6U§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§6U§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§&Z§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§&Z§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§-"§;
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
         this.§-"§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.§'t§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§'t§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§"!9§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§"!9§ = param1;
      }
      
      public function get §0!-§() : Boolean
      {
         return this.§>A§;
      }
      
      public function set §0!-§(param1:Boolean) : void
      {
         this.§>A§ = param1;
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
         return this.§9K§;
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
