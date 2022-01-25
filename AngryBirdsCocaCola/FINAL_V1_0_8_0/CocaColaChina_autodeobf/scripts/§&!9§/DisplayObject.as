package §&!9§
{
   import §+&§.§;J§;
   import §=!Y§.§4f§;
   import §=!Y§.§<9§;
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
      
      private static var §0! §:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §"v§:Rectangle = new Rectangle();
      
      private static var §`!7§:Matrix = new Matrix();
      
      private static var §?!D§:Matrix = new Matrix();
      
      protected static var §<!#§:int = 0;
       
      
      private var §!f§:Number;
      
      private var §@;§:Number;
      
      private var §4!@§:Number;
      
      private var §0U§:Number;
      
      private var §>!5§:Number;
      
      private var §6!-§:Number;
      
      private var §%!H§:Number;
      
      private var §&M§:Number;
      
      private var §^0§:Boolean;
      
      private var §5!>§:Boolean;
      
      private var mName:String;
      
      private var §1X§:Number;
      
      private var §;!G§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §4f§();
         }
         this.§!f§ = this.§@;§ = this.§4!@§ = this.§0U§ = this.§%!H§ = 0;
         this.§>!5§ = this.§6!-§ = this.§&M§ = 1;
         this.§^0§ = this.§5!>§ = true;
         this.§1X§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §5§(param1:Boolean = false) : void
      {
         if(this.§;!G§)
         {
            this.§;!G§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §84§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§;!G§ || param1 == null && this.§;!G§ == null)
         {
            if(this.§4!@§ != 0 || this.§0U§ != 0)
            {
               param2.translate(-this.§4!@§,-this.§0U§);
            }
            if(this.§>!5§ != 1 || this.§6!-§ != 1)
            {
               param2.scale(this.§>!5§,this.§6!-§);
            }
            if(this.§%!H§ != 0)
            {
               param2.rotate(this.§%!H§);
            }
            if(this.§!f§ != 0 || this.§@;§ != 0)
            {
               param2.translate(this.§!f§,this.§@;§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§84§(_loc4_.§;!G§,§`!7§);
               param2.concat(§`!7§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§;!G§ == this)
         {
            param1.§84§(this,param2);
            param2.invert();
            return param2;
         }
         §0! §.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §0! §.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §0! §.indexOf(_loc4_) == -1)
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
            _loc4_.§84§(_loc4_.§;!G§,§`!7§);
            param2.concat(§`!7§);
            _loc4_ = _loc4_.parent;
         }
         §?!D§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§84§(_loc4_.§;!G§,§`!7§);
            §?!D§.concat(§`!7§);
            _loc4_ = _loc4_.parent;
         }
         §?!D§.invert();
         param2.concat(§?!D§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §<9§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§^0§ || !this.§5!>§))
         {
            return null;
         }
         if(this.getBounds(this,§"v§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §?!D§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§84§(_loc2_.§;!G§,§`!7§);
            §?!D§.concat(§`!7§);
            _loc2_ = _loc2_.parent;
         }
         return §?!D§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §?!D§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§84§(_loc2_.§;!G§,§`!7§);
            §?!D§.concat(§`!7§);
            _loc2_ = _loc2_.parent;
         }
         §?!D§.invert();
         return §?!D§.transformPoint(param1);
      }
      
      public function render(param1:§;J§, param2:Number) : void
      {
         throw new §<9§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§1X§)
            {
               return;
            }
            this.§1X§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §-!<§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§;!G§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §+n§();
         if(param1 != this.§;!G§ && this.§;!G§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§;!G§ = param1;
         if(this.§;!G§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§;!G§)
         {
            this.§;!G§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§;!G§)
         {
            this.§;!G§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get § true§() : Matrix
      {
         return this.§84§(this.§;!G§);
      }
      
      public function get §#!D§() : Rectangle
      {
         return this.getBounds(this.§;!G§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§;!G§,§"v§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§>!5§ = 1;
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
         return this.getBounds(this.§;!G§,§"v§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§6!-§ = 1;
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
         var _loc2_:Array = §+n§();
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
      
      public function §%H§(param1:Matrix3D) : void
      {
         if(this.§%!H§ == 0 && this.§>!5§ == 1 && this.§6!-§ == 1)
         {
            if(this.§!f§ + this.§4!@§ != 0 || this.§@;§ + this.§0U§ != 0)
            {
               param1.prependTranslation(this.§!f§ + this.§4!@§,this.§@;§ + this.§0U§,0);
            }
         }
         else
         {
            if(this.§!f§ != 0 || this.§@;§ != 0)
            {
               param1.prependTranslation(this.§!f§,this.§@;§,0);
            }
            if(this.§%!H§ != 0)
            {
               param1.prependRotation(this.§%!H§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§>!5§ != 1 || this.§6!-§ != 1)
            {
               param1.prependScale(this.§>!5§,this.§6!-§,1);
            }
            if(this.§4!@§ != 0 || this.§0U§ != 0)
            {
               param1.prependTranslation(this.§4!@§,this.§0U§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§!f§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§!f§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§@;§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§@;§ = param1;
      }
      
      public function get pivotX() : Number
      {
         return this.§4!@§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§4!@§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§0U§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§0U§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§>!5§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§>!5§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§6!-§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§6!-§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§%!H§;
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
         this.§%!H§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.§&M§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§&M§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§^0§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§^0§ = param1;
      }
      
      public function get §2!2§() : Boolean
      {
         return this.§5!>§;
      }
      
      public function set §2!2§(param1:Boolean) : void
      {
         this.§5!>§ = param1;
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
         return this.§;!G§;
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
