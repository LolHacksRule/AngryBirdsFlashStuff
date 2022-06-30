package §#!f§
{
   import §!q§.§!a§;
   import §!q§.§=!@§;
   import §1y§.§2n§;
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
      
      private static var §6!=§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §>!2§:Rectangle = new Rectangle();
      
      private static var §8!;§:Matrix = new Matrix();
      
      private static var §+k§:Matrix = new Matrix();
      
      protected static var §2y§:int = 0;
       
      
      private var §`B§:Number;
      
      private var §,!9§:Number;
      
      private var §"Q§:Number;
      
      private var §]!+§:Number;
      
      private var §-!T§:Number;
      
      private var §@O§:Number;
      
      private var §=$§:Number;
      
      private var § var§:Number;
      
      private var §^"§:Boolean;
      
      private var §'!E§:Boolean;
      
      private var mName:String;
      
      private var §7!2§:Number;
      
      private var §<!`§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §=!@§();
         }
         this.§`B§ = this.§,!9§ = this.§"Q§ = this.§]!+§ = this.§=$§ = 0;
         this.§-!T§ = this.§@O§ = this.§ var§ = 1;
         this.§^"§ = this.§'!E§ = true;
         this.§7!2§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §#! §(param1:Boolean = false) : void
      {
         if(this.§<!`§)
         {
            this.§<!`§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §!c§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§<!`§ || param1 == null && this.§<!`§ == null)
         {
            if(this.§"Q§ != 0 || this.§]!+§ != 0)
            {
               param2.translate(-this.§"Q§,-this.§]!+§);
            }
            if(this.§-!T§ != 1 || this.§@O§ != 1)
            {
               param2.scale(this.§-!T§,this.§@O§);
            }
            if(this.§=$§ != 0)
            {
               param2.rotate(this.§=$§);
            }
            if(this.§`B§ != 0 || this.§,!9§ != 0)
            {
               param2.translate(this.§`B§,this.§,!9§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§!c§(_loc4_.§<!`§,§8!;§);
               param2.concat(§8!;§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§<!`§ == this)
         {
            param1.§!c§(this,param2);
            param2.invert();
            return param2;
         }
         §6!=§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §6!=§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §6!=§.indexOf(_loc4_) == -1)
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
            _loc4_.§!c§(_loc4_.§<!`§,§8!;§);
            param2.concat(§8!;§);
            _loc4_ = _loc4_.parent;
         }
         §+k§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§!c§(_loc4_.§<!`§,§8!;§);
            §+k§.concat(§8!;§);
            _loc4_ = _loc4_.parent;
         }
         §+k§.invert();
         param2.concat(§+k§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §!a§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§^"§ || !this.§'!E§))
         {
            return null;
         }
         if(this.getBounds(this,§>!2§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §+k§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§!c§(_loc2_.§<!`§,§8!;§);
            §+k§.concat(§8!;§);
            _loc2_ = _loc2_.parent;
         }
         return §+k§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §+k§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§!c§(_loc2_.§<!`§,§8!;§);
            §+k§.concat(§8!;§);
            _loc2_ = _loc2_.parent;
         }
         §+k§.invert();
         return §+k§.transformPoint(param1);
      }
      
      public function render(param1:§2n§, param2:Number) : void
      {
         throw new §!a§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§7!2§)
            {
               return;
            }
            this.§7!2§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §3L§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§<!`§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §2i§();
         if(param1 != this.§<!`§ && this.§<!`§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§<!`§ = param1;
         if(this.§<!`§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§<!`§)
         {
            this.§<!`§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§<!`§)
         {
            this.§<!`§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §>!J§() : Matrix
      {
         return this.§!c§(this.§<!`§);
      }
      
      public function get §3!7§() : Rectangle
      {
         return this.getBounds(this.§<!`§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§<!`§,§>!2§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§-!T§ = 1;
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
         return this.getBounds(this.§<!`§,§>!2§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§@O§ = 1;
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
         var _loc2_:Array = §2i§();
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
      
      public function §<b§(param1:Matrix3D) : void
      {
         if(this.§=$§ == 0 && this.§-!T§ == 1 && this.§@O§ == 1)
         {
            if(this.§`B§ + this.§"Q§ != 0 || this.§,!9§ + this.§]!+§ != 0)
            {
               param1.prependTranslation(this.§`B§ + this.§"Q§,this.§,!9§ + this.§]!+§,0);
            }
         }
         else
         {
            if(this.§`B§ != 0 || this.§,!9§ != 0)
            {
               param1.prependTranslation(this.§`B§,this.§,!9§,0);
            }
            if(this.§=$§ != 0)
            {
               param1.prependRotation(this.§=$§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§-!T§ != 1 || this.§@O§ != 1)
            {
               param1.prependScale(this.§-!T§,this.§@O§,1);
            }
            if(this.§"Q§ != 0 || this.§]!+§ != 0)
            {
               param1.prependTranslation(this.§"Q§,this.§]!+§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§`B§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§`B§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§,!9§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§,!9§ = param1;
      }
      
      public function get pivotX() : Number
      {
         return this.§"Q§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§"Q§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§]!+§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§]!+§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§-!T§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§-!T§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§@O§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§@O§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§=$§;
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
         this.§=$§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.§ var§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§ var§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§^"§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§^"§ = param1;
      }
      
      public function get §4!W§() : Boolean
      {
         return this.§'!E§;
      }
      
      public function set §4!W§(param1:Boolean) : void
      {
         this.§'!E§ = param1;
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
         return this.§<!`§;
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
