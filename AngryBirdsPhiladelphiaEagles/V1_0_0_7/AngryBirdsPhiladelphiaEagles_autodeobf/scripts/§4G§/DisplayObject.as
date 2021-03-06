package §4G§
{
   import §+!$§.§5Z§;
   import §+!$§.§97§;
   import §>w§.§"!,§;
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
      
      private static var §8!>§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §0!&§:Rectangle = new Rectangle();
      
      private static var §1^§:Matrix = new Matrix();
      
      private static var §?P§:Matrix = new Matrix();
      
      protected static var §0Y§:int = 0;
       
      
      private var §#+§:Number;
      
      private var §+9§:Number;
      
      private var §<!#§:Number;
      
      private var §=!A§:Number;
      
      private var §<g§:Number;
      
      private var §^!#§:Number;
      
      private var §0!@§:Number;
      
      private var §@K§:Number;
      
      private var §,K§:Boolean;
      
      private var §2_§:Boolean;
      
      private var mName:String;
      
      private var §?r§:Number;
      
      private var §6"§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §5Z§();
         }
         this.§#+§ = this.§+9§ = this.§<!#§ = this.§=!A§ = this.§0!@§ = 0;
         this.§<g§ = this.§^!#§ = this.§@K§ = 1;
         this.§,K§ = this.§2_§ = true;
         this.§?r§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §8-§(param1:Boolean = false) : void
      {
         if(this.§6"§)
         {
            this.§6"§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §2Y§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§6"§ || param1 == null && this.§6"§ == null)
         {
            if(this.§<!#§ != 0 || this.§=!A§ != 0)
            {
               param2.translate(-this.§<!#§,-this.§=!A§);
            }
            if(this.§<g§ != 1 || this.§^!#§ != 1)
            {
               param2.scale(this.§<g§,this.§^!#§);
            }
            if(this.§0!@§ != 0)
            {
               param2.rotate(this.§0!@§);
            }
            if(this.§#+§ != 0 || this.§+9§ != 0)
            {
               param2.translate(this.§#+§,this.§+9§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§2Y§(_loc4_.§6"§,§1^§);
               param2.concat(§1^§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§6"§ == this)
         {
            param1.§2Y§(this,param2);
            param2.invert();
            return param2;
         }
         §8!>§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §8!>§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §8!>§.indexOf(_loc4_) == -1)
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
            _loc4_.§2Y§(_loc4_.§6"§,§1^§);
            param2.concat(§1^§);
            _loc4_ = _loc4_.parent;
         }
         §?P§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§2Y§(_loc4_.§6"§,§1^§);
            §?P§.concat(§1^§);
            _loc4_ = _loc4_.parent;
         }
         §?P§.invert();
         param2.concat(§?P§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §97§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§,K§ || !this.§2_§))
         {
            return null;
         }
         if(this.getBounds(this,§0!&§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §?P§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§2Y§(_loc2_.§6"§,§1^§);
            §?P§.concat(§1^§);
            _loc2_ = _loc2_.parent;
         }
         return §?P§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §?P§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§2Y§(_loc2_.§6"§,§1^§);
            §?P§.concat(§1^§);
            _loc2_ = _loc2_.parent;
         }
         §?P§.invert();
         return §?P§.transformPoint(param1);
      }
      
      public function render(param1:§"!,§, param2:Number) : void
      {
         throw new §97§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§?r§)
            {
               return;
            }
            this.§?r§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §`Q§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§6"§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §'N§();
         if(param1 != this.§6"§ && this.§6"§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§6"§ = param1;
         if(this.§6"§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§6"§)
         {
            this.§6"§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§6"§)
         {
            this.§6"§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §>!F§() : Matrix
      {
         return this.§2Y§(this.§6"§);
      }
      
      public function get §6%§() : Rectangle
      {
         return this.getBounds(this.§6"§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§6"§,§0!&§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§<g§ = 1;
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
         return this.getBounds(this.§6"§,§0!&§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§^!#§ = 1;
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
         var _loc2_:Array = §'N§();
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
      
      public function §&O§(param1:Matrix3D) : void
      {
         if(this.§0!@§ == 0 && this.§<g§ == 1 && this.§^!#§ == 1)
         {
            if(this.§#+§ + this.§<!#§ != 0 || this.§+9§ + this.§=!A§ != 0)
            {
               param1.prependTranslation(this.§#+§ + this.§<!#§,this.§+9§ + this.§=!A§,0);
            }
         }
         else
         {
            if(this.§#+§ != 0 || this.§+9§ != 0)
            {
               param1.prependTranslation(this.§#+§,this.§+9§,0);
            }
            if(this.§0!@§ != 0)
            {
               param1.prependRotation(this.§0!@§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§<g§ != 1 || this.§^!#§ != 1)
            {
               param1.prependScale(this.§<g§,this.§^!#§,1);
            }
            if(this.§<!#§ != 0 || this.§=!A§ != 0)
            {
               param1.prependTranslation(this.§<!#§,this.§=!A§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§#+§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§#+§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§+9§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§+9§ = param1;
      }
      
      public function get pivotX() : Number
      {
         return this.§<!#§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§<!#§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§=!A§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§=!A§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§<g§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§<g§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§^!#§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§^!#§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§0!@§;
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
         this.§0!@§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.§@K§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§@K§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§,K§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§,K§ = param1;
      }
      
      public function get §]1§() : Boolean
      {
         return this.§2_§;
      }
      
      public function set §]1§(param1:Boolean) : void
      {
         this.§2_§ = param1;
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
         return this.§6"§;
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
