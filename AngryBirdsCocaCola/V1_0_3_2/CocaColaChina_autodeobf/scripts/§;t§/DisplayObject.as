package §;t§
{
   import §+R§.§4!b§;
   import §?X§.§6![§;
   import §?X§.§^!c§;
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
      
      private static var §"f§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §?f§:Rectangle = new Rectangle();
      
      private static var §'t§:Matrix = new Matrix();
      
      private static var §>7§:Matrix = new Matrix();
      
      protected static var §`%§:int = 0;
       
      
      private var §?H§:Number;
      
      private var §>!a§:Number;
      
      private var §1S§:Number;
      
      private var §=!&§:Number;
      
      private var §[!5§:Number;
      
      private var §#!A§:Number;
      
      private var §+!6§:Number;
      
      private var §%!P§:Number;
      
      private var §7!@§:Boolean;
      
      private var §[3§:Boolean;
      
      private var mName:String;
      
      private var §3!F§:Number;
      
      private var §>'§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §^!c§();
         }
         this.§?H§ = this.§>!a§ = this.§1S§ = this.§=!&§ = this.§+!6§ = 0;
         this.§[!5§ = this.§#!A§ = this.§%!P§ = 1;
         this.§7!@§ = this.§[3§ = true;
         this.§3!F§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function § §(param1:Boolean = false) : void
      {
         if(this.§>'§)
         {
            this.§>'§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §7!P§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§>'§ || param1 == null && this.§>'§ == null)
         {
            if(this.§1S§ != 0 || this.§=!&§ != 0)
            {
               param2.translate(-this.§1S§,-this.§=!&§);
            }
            if(this.§[!5§ != 1 || this.§#!A§ != 1)
            {
               param2.scale(this.§[!5§,this.§#!A§);
            }
            if(this.§+!6§ != 0)
            {
               param2.rotate(this.§+!6§);
            }
            if(this.§?H§ != 0 || this.§>!a§ != 0)
            {
               param2.translate(this.§?H§,this.§>!a§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§7!P§(_loc4_.§>'§,§'t§);
               param2.concat(§'t§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§>'§ == this)
         {
            param1.§7!P§(this,param2);
            param2.invert();
            return param2;
         }
         §"f§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §"f§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §"f§.indexOf(_loc4_) == -1)
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
            _loc4_.§7!P§(_loc4_.§>'§,§'t§);
            param2.concat(§'t§);
            _loc4_ = _loc4_.parent;
         }
         §>7§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§7!P§(_loc4_.§>'§,§'t§);
            §>7§.concat(§'t§);
            _loc4_ = _loc4_.parent;
         }
         §>7§.invert();
         param2.concat(§>7§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §6![§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§7!@§ || !this.§[3§))
         {
            return null;
         }
         if(this.getBounds(this,§?f§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §>7§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§7!P§(_loc2_.§>'§,§'t§);
            §>7§.concat(§'t§);
            _loc2_ = _loc2_.parent;
         }
         return §>7§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §>7§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§7!P§(_loc2_.§>'§,§'t§);
            §>7§.concat(§'t§);
            _loc2_ = _loc2_.parent;
         }
         §>7§.invert();
         return §>7§.transformPoint(param1);
      }
      
      public function render(param1:§4!b§, param2:Number) : void
      {
         throw new §6![§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§3!F§)
            {
               return;
            }
            this.§3!F§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §"D§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§>'§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §=#§();
         if(param1 != this.§>'§ && this.§>'§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§>'§ = param1;
         if(this.§>'§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§>'§)
         {
            this.§>'§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§>'§)
         {
            this.§>'§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §8L§() : Matrix
      {
         return this.§7!P§(this.§>'§);
      }
      
      public function get §#!"§() : Rectangle
      {
         return this.getBounds(this.§>'§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§>'§,§?f§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§[!5§ = 1;
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
         return this.getBounds(this.§>'§,§?f§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§#!A§ = 1;
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
         var _loc2_:Array = §=#§();
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
      
      public function §?#§(param1:Matrix3D) : void
      {
         if(this.§+!6§ == 0 && this.§[!5§ == 1 && this.§#!A§ == 1)
         {
            if(this.§?H§ + this.§1S§ != 0 || this.§>!a§ + this.§=!&§ != 0)
            {
               param1.prependTranslation(this.§?H§ + this.§1S§,this.§>!a§ + this.§=!&§,0);
            }
         }
         else
         {
            if(this.§?H§ != 0 || this.§>!a§ != 0)
            {
               param1.prependTranslation(this.§?H§,this.§>!a§,0);
            }
            if(this.§+!6§ != 0)
            {
               param1.prependRotation(this.§+!6§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§[!5§ != 1 || this.§#!A§ != 1)
            {
               param1.prependScale(this.§[!5§,this.§#!A§,1);
            }
            if(this.§1S§ != 0 || this.§=!&§ != 0)
            {
               param1.prependTranslation(this.§1S§,this.§=!&§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§?H§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§?H§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§>!a§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§>!a§ = param1;
      }
      
      public function get pivotX() : Number
      {
         return this.§1S§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§1S§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§=!&§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§=!&§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§[!5§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§[!5§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§#!A§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§#!A§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§+!6§;
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
         this.§+!6§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.§%!P§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§%!P§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§7!@§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§7!@§ = param1;
      }
      
      public function get §]U§() : Boolean
      {
         return this.§[3§;
      }
      
      public function set §]U§(param1:Boolean) : void
      {
         this.§[3§ = param1;
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
         return this.§>'§;
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
