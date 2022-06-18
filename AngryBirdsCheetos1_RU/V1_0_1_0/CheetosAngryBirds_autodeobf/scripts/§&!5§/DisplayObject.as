package §&!5§
{
   import §"4§.§+s§;
   import §%I§.§!!8§;
   import §%I§.§?!P§;
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
      
      private static var §<!$§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §-n§:Rectangle = new Rectangle();
      
      private static var §?!9§:Matrix = new Matrix();
      
      private static var §0!J§:Matrix = new Matrix();
      
      protected static var §]!"§:int = 0;
       
      
      private var § !2§:Number;
      
      private var §'!F§:Number;
      
      private var §4!M§:Number;
      
      private var §;H§:Number;
      
      private var §!y§:Number;
      
      private var §9!A§:Number;
      
      private var §>!]§:Number;
      
      private var mAlpha:Number;
      
      private var §^!7§:Boolean;
      
      private var §6[§:Boolean;
      
      private var mName:String;
      
      private var §7N§:Number;
      
      private var §6!<§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §?!P§();
         }
         this.§ !2§ = this.§'!F§ = this.§4!M§ = this.§;H§ = this.§>!]§ = 0;
         this.§!y§ = this.§9!A§ = this.mAlpha = 1;
         this.§^!7§ = this.§6[§ = true;
         this.§7N§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §-Q§(param1:Boolean = false) : void
      {
         if(this.§6!<§)
         {
            this.§6!<§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §@!X§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§6!<§ || param1 == null && this.§6!<§ == null)
         {
            if(this.§4!M§ != 0 || this.§;H§ != 0)
            {
               param2.translate(-this.§4!M§,-this.§;H§);
            }
            if(this.§!y§ != 1 || this.§9!A§ != 1)
            {
               param2.scale(this.§!y§,this.§9!A§);
            }
            if(this.§>!]§ != 0)
            {
               param2.rotate(this.§>!]§);
            }
            if(this.§ !2§ != 0 || this.§'!F§ != 0)
            {
               param2.translate(this.§ !2§,this.§'!F§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§@!X§(_loc4_.§6!<§,§?!9§);
               param2.concat(§?!9§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§6!<§ == this)
         {
            param1.§@!X§(this,param2);
            param2.invert();
            return param2;
         }
         §<!$§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §<!$§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §<!$§.indexOf(_loc4_) == -1)
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
            _loc4_.§@!X§(_loc4_.§6!<§,§?!9§);
            param2.concat(§?!9§);
            _loc4_ = _loc4_.parent;
         }
         §0!J§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§@!X§(_loc4_.§6!<§,§?!9§);
            §0!J§.concat(§?!9§);
            _loc4_ = _loc4_.parent;
         }
         §0!J§.invert();
         param2.concat(§0!J§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §!!8§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§^!7§ || !this.§6[§))
         {
            return null;
         }
         if(this.getBounds(this,§-n§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §0!J§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§@!X§(_loc2_.§6!<§,§?!9§);
            §0!J§.concat(§?!9§);
            _loc2_ = _loc2_.parent;
         }
         return §0!J§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §0!J§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§@!X§(_loc2_.§6!<§,§?!9§);
            §0!J§.concat(§?!9§);
            _loc2_ = _loc2_.parent;
         }
         §0!J§.invert();
         return §0!J§.transformPoint(param1);
      }
      
      public function render(param1:§+s§, param2:Number) : void
      {
         throw new §!!8§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§7N§)
            {
               return;
            }
            this.§7N§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §7b§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§6!<§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §2!U§();
         if(param1 != this.§6!<§ && this.§6!<§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§6!<§ = param1;
         if(this.§6!<§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§6!<§)
         {
            this.§6!<§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§6!<§)
         {
            this.§6!<§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §;7§() : Matrix
      {
         return this.§@!X§(this.§6!<§);
      }
      
      public function get §!!R§() : Rectangle
      {
         return this.getBounds(this.§6!<§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§6!<§,§-n§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§!y§ = 1;
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
         return this.getBounds(this.§6!<§,§-n§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§9!A§ = 1;
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
         var _loc2_:Array = §2!U§();
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
      
      public function §-!E§(param1:Matrix3D) : void
      {
         if(this.§>!]§ == 0 && this.§!y§ == 1 && this.§9!A§ == 1)
         {
            if(this.§ !2§ + this.§4!M§ != 0 || this.§'!F§ + this.§;H§ != 0)
            {
               param1.prependTranslation(this.§ !2§ + this.§4!M§,this.§'!F§ + this.§;H§,0);
            }
         }
         else
         {
            if(this.§ !2§ != 0 || this.§'!F§ != 0)
            {
               param1.prependTranslation(this.§ !2§,this.§'!F§,0);
            }
            if(this.§>!]§ != 0)
            {
               param1.prependRotation(this.§>!]§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§!y§ != 1 || this.§9!A§ != 1)
            {
               param1.prependScale(this.§!y§,this.§9!A§,1);
            }
            if(this.§4!M§ != 0 || this.§;H§ != 0)
            {
               param1.prependTranslation(this.§4!M§,this.§;H§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§ !2§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§ !2§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§'!F§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§'!F§ = param1;
      }
      
      public function get pivotX() : Number
      {
         return this.§4!M§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§4!M§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§;H§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§;H§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§!y§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§!y§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§9!A§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§9!A§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§>!]§;
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
         this.§>!]§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.mAlpha;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.mAlpha = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§^!7§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§^!7§ = param1;
      }
      
      public function get §7!9§() : Boolean
      {
         return this.§6[§;
      }
      
      public function set §7!9§(param1:Boolean) : void
      {
         this.§6[§ = param1;
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
         return this.§6!<§;
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
