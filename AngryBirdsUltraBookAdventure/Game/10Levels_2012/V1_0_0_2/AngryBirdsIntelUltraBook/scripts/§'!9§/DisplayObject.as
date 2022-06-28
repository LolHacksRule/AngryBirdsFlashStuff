package §'!9§
{
   import § !'§.§0!K§;
   import § !'§.§[!$§;
   import §<&§.§`K§;
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
      
      private static var §?^§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §<!E§:Rectangle = new Rectangle();
      
      private static var §5g§:Matrix = new Matrix();
      
      private static var §"!G§:Matrix = new Matrix();
      
      protected static var §^5§:int = 0;
       
      
      private var §,G§:Number;
      
      private var §78§:Number;
      
      private var §&5§:Number;
      
      private var §1!O§:Number;
      
      private var §2!F§:Number;
      
      private var §93§:Number;
      
      private var §-!n§:Number;
      
      private var §%I§:Number;
      
      private var §>L§:Boolean;
      
      private var §%!N§:Boolean;
      
      private var mName:String;
      
      private var §2!&§:Number;
      
      private var §3^§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §[!$§();
         }
         this.§,G§ = this.§78§ = this.§&5§ = this.§1!O§ = this.§-!n§ = 0;
         this.§2!F§ = this.§93§ = this.§%I§ = 1;
         this.§>L§ = this.§%!N§ = true;
         this.§2!&§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §'s§(param1:Boolean = false) : void
      {
         if(this.§3^§)
         {
            this.§3^§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §^2§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§3^§ || param1 == null && this.§3^§ == null)
         {
            if(this.§&5§ != 0 || this.§1!O§ != 0)
            {
               param2.translate(-this.§&5§,-this.§1!O§);
            }
            if(this.§2!F§ != 1 || this.§93§ != 1)
            {
               param2.scale(this.§2!F§,this.§93§);
            }
            if(this.§-!n§ != 0)
            {
               param2.rotate(this.§-!n§);
            }
            if(this.§,G§ != 0 || this.§78§ != 0)
            {
               param2.translate(this.§,G§,this.§78§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§^2§(_loc4_.§3^§,§5g§);
               param2.concat(§5g§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§3^§ == this)
         {
            param1.§^2§(this,param2);
            param2.invert();
            return param2;
         }
         §?^§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §?^§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §?^§.indexOf(_loc4_) == -1)
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
            _loc4_.§^2§(_loc4_.§3^§,§5g§);
            param2.concat(§5g§);
            _loc4_ = _loc4_.parent;
         }
         §"!G§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§^2§(_loc4_.§3^§,§5g§);
            §"!G§.concat(§5g§);
            _loc4_ = _loc4_.parent;
         }
         §"!G§.invert();
         param2.concat(§"!G§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §0!K§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§>L§ || !this.§%!N§))
         {
            return null;
         }
         if(this.getBounds(this,§<!E§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §"!G§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§^2§(_loc2_.§3^§,§5g§);
            §"!G§.concat(§5g§);
            _loc2_ = _loc2_.parent;
         }
         return §"!G§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §"!G§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§^2§(_loc2_.§3^§,§5g§);
            §"!G§.concat(§5g§);
            _loc2_ = _loc2_.parent;
         }
         §"!G§.invert();
         return §"!G§.transformPoint(param1);
      }
      
      public function render(param1:§`K§, param2:Number) : void
      {
         throw new §0!K§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§2!&§)
            {
               return;
            }
            this.§2!&§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §+k§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§3^§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §#!a§();
         if(param1 != this.§3^§ && this.§3^§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§3^§ = param1;
         if(this.§3^§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§3^§)
         {
            this.§3^§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§3^§)
         {
            this.§3^§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §4-§() : Matrix
      {
         return this.§^2§(this.§3^§);
      }
      
      public function get §]!N§() : Rectangle
      {
         return this.getBounds(this.§3^§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§3^§,§<!E§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§2!F§ = 1;
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
         return this.getBounds(this.§3^§,§<!E§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§93§ = 1;
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
         var _loc2_:Array = §#!a§();
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
      
      public function §0! §(param1:Matrix3D) : void
      {
         if(this.§-!n§ == 0 && this.§2!F§ == 1 && this.§93§ == 1)
         {
            if(this.§,G§ + this.§&5§ != 0 || this.§78§ + this.§1!O§ != 0)
            {
               param1.prependTranslation(this.§,G§ + this.§&5§,this.§78§ + this.§1!O§,0);
            }
         }
         else
         {
            if(this.§,G§ != 0 || this.§78§ != 0)
            {
               param1.prependTranslation(this.§,G§,this.§78§,0);
            }
            if(this.§-!n§ != 0)
            {
               param1.prependRotation(this.§-!n§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§2!F§ != 1 || this.§93§ != 1)
            {
               param1.prependScale(this.§2!F§,this.§93§,1);
            }
            if(this.§&5§ != 0 || this.§1!O§ != 0)
            {
               param1.prependTranslation(this.§&5§,this.§1!O§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§,G§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§,G§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§78§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§78§ = param1;
      }
      
      public function get pivotX() : Number
      {
         return this.§&5§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§&5§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§1!O§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§1!O§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§2!F§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§2!F§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§93§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§93§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§-!n§;
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
         this.§-!n§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.§%I§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§%I§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§>L§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§>L§ = param1;
      }
      
      public function get §@!U§() : Boolean
      {
         return this.§%!N§;
      }
      
      public function set §@!U§(param1:Boolean) : void
      {
         this.§%!N§ = param1;
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
         return this.§3^§;
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
