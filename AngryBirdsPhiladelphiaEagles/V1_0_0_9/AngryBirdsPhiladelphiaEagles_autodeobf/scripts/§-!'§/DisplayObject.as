package §-!'§
{
   import §'!3§.§@`§;
   import §]!#§.§"!"§;
   import §]!#§.§[!-§;
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
      
      private static var §[7§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §'R§:Rectangle = new Rectangle();
      
      private static var §0y§:Matrix = new Matrix();
      
      private static var §7!D§:Matrix = new Matrix();
      
      protected static var §1'§:int = 0;
       
      
      private var §+Z§:Number;
      
      private var §04§:Number;
      
      private var §25§:Number;
      
      private var §"!<§:Number;
      
      private var § else§:Number;
      
      private var §?I§:Number;
      
      private var §?r§:Number;
      
      private var §%A§:Number;
      
      private var §8]§:Boolean;
      
      private var §9]§:Boolean;
      
      private var mName:String;
      
      private var §@m§:Number;
      
      private var §^E§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §"!"§();
         }
         this.§+Z§ = this.§04§ = this.§25§ = this.§"!<§ = this.§?r§ = 0;
         this.§ else§ = this.§?I§ = this.§%A§ = 1;
         this.§8]§ = this.§9]§ = true;
         this.§@m§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §8l§(param1:Boolean = false) : void
      {
         if(this.§^E§)
         {
            this.§^E§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §0N§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§^E§ || param1 == null && this.§^E§ == null)
         {
            if(this.§25§ != 0 || this.§"!<§ != 0)
            {
               param2.translate(-this.§25§,-this.§"!<§);
            }
            if(this.§ else§ != 1 || this.§?I§ != 1)
            {
               param2.scale(this.§ else§,this.§?I§);
            }
            if(this.§?r§ != 0)
            {
               param2.rotate(this.§?r§);
            }
            if(this.§+Z§ != 0 || this.§04§ != 0)
            {
               param2.translate(this.§+Z§,this.§04§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§0N§(_loc4_.§^E§,§0y§);
               param2.concat(§0y§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§^E§ == this)
         {
            param1.§0N§(this,param2);
            param2.invert();
            return param2;
         }
         §[7§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §[7§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §[7§.indexOf(_loc4_) == -1)
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
            _loc4_.§0N§(_loc4_.§^E§,§0y§);
            param2.concat(§0y§);
            _loc4_ = _loc4_.parent;
         }
         §7!D§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§0N§(_loc4_.§^E§,§0y§);
            §7!D§.concat(§0y§);
            _loc4_ = _loc4_.parent;
         }
         §7!D§.invert();
         param2.concat(§7!D§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §[!-§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§8]§ || !this.§9]§))
         {
            return null;
         }
         if(this.getBounds(this,§'R§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §7!D§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§0N§(_loc2_.§^E§,§0y§);
            §7!D§.concat(§0y§);
            _loc2_ = _loc2_.parent;
         }
         return §7!D§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §7!D§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§0N§(_loc2_.§^E§,§0y§);
            §7!D§.concat(§0y§);
            _loc2_ = _loc2_.parent;
         }
         §7!D§.invert();
         return §7!D§.transformPoint(param1);
      }
      
      public function render(param1:§@`§, param2:Number) : void
      {
         throw new §[!-§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§@m§)
            {
               return;
            }
            this.§@m§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §?b§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§^E§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §%S§();
         if(param1 != this.§^E§ && this.§^E§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§^E§ = param1;
         if(this.§^E§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§^E§)
         {
            this.§^E§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§^E§)
         {
            this.§^E§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §7!0§() : Matrix
      {
         return this.§0N§(this.§^E§);
      }
      
      public function get §+!8§() : Rectangle
      {
         return this.getBounds(this.§^E§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§^E§,§'R§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§ else§ = 1;
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
         return this.getBounds(this.§^E§,§'R§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§?I§ = 1;
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
         var _loc2_:Array = §%S§();
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
      
      public function §^H§(param1:Matrix3D) : void
      {
         if(this.§?r§ == 0 && this.§ else§ == 1 && this.§?I§ == 1)
         {
            if(this.§+Z§ + this.§25§ != 0 || this.§04§ + this.§"!<§ != 0)
            {
               param1.prependTranslation(this.§+Z§ + this.§25§,this.§04§ + this.§"!<§,0);
            }
         }
         else
         {
            if(this.§+Z§ != 0 || this.§04§ != 0)
            {
               param1.prependTranslation(this.§+Z§,this.§04§,0);
            }
            if(this.§?r§ != 0)
            {
               param1.prependRotation(this.§?r§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§ else§ != 1 || this.§?I§ != 1)
            {
               param1.prependScale(this.§ else§,this.§?I§,1);
            }
            if(this.§25§ != 0 || this.§"!<§ != 0)
            {
               param1.prependTranslation(this.§25§,this.§"!<§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§+Z§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§+Z§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§04§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§04§ = param1;
      }
      
      public function get pivotX() : Number
      {
         return this.§25§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§25§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§"!<§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§"!<§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§ else§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§ else§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§?I§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§?I§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§?r§;
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
         this.§?r§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.§%A§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§%A§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§8]§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§8]§ = param1;
      }
      
      public function get §=!5§() : Boolean
      {
         return this.§9]§;
      }
      
      public function set §=!5§(param1:Boolean) : void
      {
         this.§9]§ = param1;
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
         return this.§^E§;
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
