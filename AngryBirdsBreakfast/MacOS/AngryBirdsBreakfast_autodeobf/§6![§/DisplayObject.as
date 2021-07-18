package §6![§
{
   import §'O§.§1,§;
   import §'O§.§`!F§;
   import §`!a§.§0L§;
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
      
      private static var §<%§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §-e§:Rectangle = new Rectangle();
      
      private static var §7=§:Matrix = new Matrix();
      
      private static var §!!E§:Matrix = new Matrix();
      
      protected static var §#!W§:int = 0;
       
      
      private var §%!3§:Number;
      
      private var §?!e§:Number;
      
      private var §=$§:Number;
      
      private var §0I§:Number;
      
      private var §`w§:Number;
      
      private var §%!;§:Number;
      
      private var §!&§:Number;
      
      private var § I§:Number;
      
      private var §3!c§:Boolean;
      
      private var §!-§:Boolean;
      
      private var §#!Q§:Number;
      
      private var mName:String;
      
      private var §,!^§:Number;
      
      private var §4-§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §1,§();
         }
         this.§%!3§ = this.§?!e§ = this.§=$§ = this.§0I§ = this.§!&§ = 0;
         this.§`w§ = this.§%!;§ = this.§ I§ = 1;
         this.§3!c§ = this.§!-§ = true;
         this.§,!^§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §"=§(param1:Boolean = false) : void
      {
         if(this.§4-§)
         {
            this.§4-§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §3!+§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§4-§ || param1 == null && this.§4-§ == null)
         {
            if(this.§=$§ != 0 || this.§0I§ != 0)
            {
               param2.translate(-this.§=$§,-this.§0I§);
            }
            if(this.§`w§ != 1 || this.§%!;§ != 1)
            {
               param2.scale(this.§`w§,this.§%!;§);
            }
            if(this.§!&§ != 0)
            {
               param2.rotate(this.§!&§);
            }
            if(this.§%!3§ != 0 || this.§?!e§ != 0)
            {
               param2.translate(this.§%!3§,this.§?!e§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§3!+§(_loc4_.§4-§,§7=§);
               param2.concat(§7=§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§4-§ == this)
         {
            param1.§3!+§(this,param2);
            param2.invert();
            return param2;
         }
         §<%§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §<%§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §<%§.indexOf(_loc4_) == -1)
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
            _loc4_.§3!+§(_loc4_.§4-§,§7=§);
            param2.concat(§7=§);
            _loc4_ = _loc4_.parent;
         }
         §!!E§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§3!+§(_loc4_.§4-§,§7=§);
            §!!E§.concat(§7=§);
            _loc4_ = _loc4_.parent;
         }
         §!!E§.invert();
         param2.concat(§!!E§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §`!F§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§3!c§ || !this.§!-§))
         {
            return null;
         }
         if(this.getBounds(this,§-e§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §!!E§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§3!+§(_loc2_.§4-§,§7=§);
            §!!E§.concat(§7=§);
            _loc2_ = _loc2_.parent;
         }
         return §!!E§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §!!E§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§3!+§(_loc2_.§4-§,§7=§);
            §!!E§.concat(§7=§);
            _loc2_ = _loc2_.parent;
         }
         §!!E§.invert();
         return §!!E§.transformPoint(param1);
      }
      
      public function render(param1:§0L§, param2:Number) : void
      {
         throw new §`!F§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§,!^§)
            {
               return;
            }
            this.§,!^§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §,!z§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§4-§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §set §();
         if(param1 != this.§4-§ && this.§4-§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§4-§ = param1;
         if(this.§4-§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§4-§)
         {
            this.§4-§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§4-§)
         {
            this.§4-§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §2>§() : Matrix
      {
         return this.§3!+§(this.§4-§);
      }
      
      public function get §5!&§() : Rectangle
      {
         return this.getBounds(this.§4-§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§4-§,§-e§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§`w§ = 1;
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
         return this.getBounds(this.§4-§,§-e§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§%!;§ = 1;
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
         var _loc2_:Array = §set §();
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
      
      public function §9K§(param1:Matrix3D) : void
      {
         if(this.§!&§ == 0 && this.§`w§ == 1 && this.§%!;§ == 1)
         {
            if(this.§%!3§ + this.§=$§ != 0 || this.§?!e§ + this.§0I§ != 0)
            {
               param1.prependTranslation(this.§%!3§ + this.§=$§,this.§?!e§ + this.§0I§,0);
            }
         }
         else
         {
            if(this.§%!3§ != 0 || this.§?!e§ != 0)
            {
               param1.prependTranslation(this.§%!3§,this.§?!e§,0);
            }
            if(this.§!&§ != 0)
            {
               param1.prependRotation(this.§!&§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§`w§ != 1 || this.§%!;§ != 1)
            {
               param1.prependScale(this.§`w§,this.§%!;§,1);
            }
            if(this.§=$§ != 0 || this.§0I§ != 0)
            {
               param1.prependTranslation(this.§=$§,this.§0I§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§%!3§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§%!3§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§?!e§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§?!e§ = param1;
      }
      
      public function get z() : Number
      {
         return this.§#!Q§;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.§4-§)
         {
            this.§#!Q§ = param1;
         }
      }
      
      public function get pivotX() : Number
      {
         return this.§=$§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§=$§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§0I§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§0I§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§`w§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§`w§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§%!;§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§%!;§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§!&§;
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
         this.§!&§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.§ I§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§ I§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§3!c§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§3!c§ = param1;
      }
      
      public function get §!!9§() : Boolean
      {
         return this.§!-§;
      }
      
      public function set §!!9§(param1:Boolean) : void
      {
         this.§!-§ = param1;
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
         return this.§4-§;
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
