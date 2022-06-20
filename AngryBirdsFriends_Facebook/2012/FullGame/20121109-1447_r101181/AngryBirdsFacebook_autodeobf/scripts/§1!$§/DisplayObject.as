package §1!$§
{
   import §&!-§.§+#§;
   import §&!-§.§2B§;
   import §'6§.§'"3§;
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
      
      private static var §!n§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §`!q§:Rectangle = new Rectangle();
      
      private static var §@V§:Matrix = new Matrix();
      
      private static var §4!?§:Matrix = new Matrix();
      
      protected static var §?"#§:int = 0;
       
      
      private var §,!k§:Number;
      
      private var §!Q§:Number;
      
      private var §4!^§:Number;
      
      private var §'?§:Number;
      
      private var §2R§:Number;
      
      private var §;!Z§:Number;
      
      private var §@P§:Number;
      
      private var §@e§:Number;
      
      private var §`!5§:Boolean;
      
      private var §'>§:Boolean;
      
      private var §2!J§:Number;
      
      private var mName:String;
      
      private var §2!x§:Number;
      
      private var §[!N§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §+#§();
         }
         this.§,!k§ = this.§!Q§ = this.§4!^§ = this.§'?§ = this.§@P§ = 0;
         this.§2R§ = this.§;!Z§ = this.§@e§ = 1;
         this.§`!5§ = this.§'>§ = true;
         this.§2!x§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function removeFromParent(param1:Boolean = false) : void
      {
         if(this.§[!N§)
         {
            this.§[!N§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §&!e§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§[!N§ || param1 == null && this.§[!N§ == null)
         {
            if(this.§4!^§ != 0 || this.§'?§ != 0)
            {
               param2.translate(-this.§4!^§,-this.§'?§);
            }
            if(this.§2R§ != 1 || this.§;!Z§ != 1)
            {
               param2.scale(this.§2R§,this.§;!Z§);
            }
            if(this.§@P§ != 0)
            {
               param2.rotate(this.§@P§);
            }
            if(this.§,!k§ != 0 || this.§!Q§ != 0)
            {
               param2.translate(this.§,!k§,this.§!Q§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§&!e§(_loc4_.§[!N§,§@V§);
               param2.concat(§@V§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§[!N§ == this)
         {
            param1.§&!e§(this,param2);
            param2.invert();
            return param2;
         }
         §!n§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §!n§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §!n§.indexOf(_loc4_) == -1)
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
            _loc4_.§&!e§(_loc4_.§[!N§,§@V§);
            param2.concat(§@V§);
            _loc4_ = _loc4_.parent;
         }
         §4!?§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§&!e§(_loc4_.§[!N§,§@V§);
            §4!?§.concat(§@V§);
            _loc4_ = _loc4_.parent;
         }
         §4!?§.invert();
         param2.concat(§4!?§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §2B§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§`!5§ || !this.§'>§))
         {
            return null;
         }
         if(this.getBounds(this,§`!q§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §4!?§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§&!e§(_loc2_.§[!N§,§@V§);
            §4!?§.concat(§@V§);
            _loc2_ = _loc2_.parent;
         }
         return §4!?§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §4!?§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§&!e§(_loc2_.§[!N§,§@V§);
            §4!?§.concat(§@V§);
            _loc2_ = _loc2_.parent;
         }
         §4!?§.invert();
         return §4!?§.transformPoint(param1);
      }
      
      public function render(param1:§'"3§, param2:Number) : void
      {
         throw new §2B§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§2!x§)
            {
               return;
            }
            this.§2!x§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §&!w§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§[!N§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §8!J§();
         if(param1 != this.§[!N§ && this.§[!N§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§[!N§ = param1;
         if(this.§[!N§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§[!N§)
         {
            this.§[!N§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§[!N§)
         {
            this.§[!N§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §0!u§() : Matrix
      {
         return this.§&!e§(this.§[!N§);
      }
      
      public function get §3",§() : Rectangle
      {
         return this.getBounds(this.§[!N§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§[!N§,§`!q§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§2R§ = 1;
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
         return this.getBounds(this.§[!N§,§`!q§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§;!Z§ = 1;
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
         var _loc2_:Array = §8!J§();
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
      
      public function §@_§(param1:Matrix3D) : void
      {
         if(this.§@P§ == 0 && this.§2R§ == 1 && this.§;!Z§ == 1)
         {
            if(this.§,!k§ + this.§4!^§ != 0 || this.§!Q§ + this.§'?§ != 0)
            {
               param1.prependTranslation(this.§,!k§ + this.§4!^§,this.§!Q§ + this.§'?§,0);
            }
         }
         else
         {
            if(this.§,!k§ != 0 || this.§!Q§ != 0)
            {
               param1.prependTranslation(this.§,!k§,this.§!Q§,0);
            }
            if(this.§@P§ != 0)
            {
               param1.prependRotation(this.§@P§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§2R§ != 1 || this.§;!Z§ != 1)
            {
               param1.prependScale(this.§2R§,this.§;!Z§,1);
            }
            if(this.§4!^§ != 0 || this.§'?§ != 0)
            {
               param1.prependTranslation(this.§4!^§,this.§'?§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§,!k§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§,!k§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§!Q§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§!Q§ = param1;
      }
      
      public function get z() : Number
      {
         return this.§2!J§;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.§[!N§)
         {
            this.§2!J§ = param1;
         }
      }
      
      public function get pivotX() : Number
      {
         return this.§4!^§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§4!^§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§'?§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§'?§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§2R§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§2R§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§;!Z§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§;!Z§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§@P§;
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
         this.§@P§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.§@e§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§@e§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§`!5§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§`!5§ = param1;
      }
      
      public function get §`!u§() : Boolean
      {
         return this.§'>§;
      }
      
      public function set §`!u§(param1:Boolean) : void
      {
         this.§'>§ = param1;
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
         return this.§[!N§;
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
