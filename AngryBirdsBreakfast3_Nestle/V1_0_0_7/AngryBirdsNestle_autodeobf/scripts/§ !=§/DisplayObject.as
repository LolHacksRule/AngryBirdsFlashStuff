package § !=§
{
   import §^$§.§1k§;
   import §^$§.§5"0§;
   import §`V§.§^M§;
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
      
      private static var §]=§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var § !A§:Rectangle = new Rectangle();
      
      private static var §7!y§:Matrix = new Matrix();
      
      private static var §"9§:Matrix = new Matrix();
      
      protected static var §?U§:int = 0;
       
      
      private var §'!a§:Number;
      
      private var §[6§:Number;
      
      private var §]!E§:Number;
      
      private var §<""§:Number;
      
      private var §^!O§:Number;
      
      private var §?"+§:Number;
      
      private var §;f§:Number;
      
      private var §%I§:Number;
      
      private var §[l§:Boolean;
      
      private var §1!M§:Boolean;
      
      private var §?y§:Number;
      
      private var mName:String;
      
      private var §3!P§:Number;
      
      private var §,l§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §5"0§();
         }
         this.§'!a§ = this.§[6§ = this.§]!E§ = this.§<""§ = this.§;f§ = 0;
         this.§^!O§ = this.§?"+§ = this.§%I§ = 1;
         this.§[l§ = this.§1!M§ = true;
         this.§3!P§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §0!#§(param1:Boolean = false) : void
      {
         if(this.§,l§)
         {
            this.§,l§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §@!-§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§,l§ || param1 == null && this.§,l§ == null)
         {
            if(this.§]!E§ != 0 || this.§<""§ != 0)
            {
               param2.translate(-this.§]!E§,-this.§<""§);
            }
            if(this.§^!O§ != 1 || this.§?"+§ != 1)
            {
               param2.scale(this.§^!O§,this.§?"+§);
            }
            if(this.§;f§ != 0)
            {
               param2.rotate(this.§;f§);
            }
            if(this.§'!a§ != 0 || this.§[6§ != 0)
            {
               param2.translate(this.§'!a§,this.§[6§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§@!-§(_loc4_.§,l§,§7!y§);
               param2.concat(§7!y§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§,l§ == this)
         {
            param1.§@!-§(this,param2);
            param2.invert();
            return param2;
         }
         §]=§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §]=§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §]=§.indexOf(_loc4_) == -1)
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
            _loc4_.§@!-§(_loc4_.§,l§,§7!y§);
            param2.concat(§7!y§);
            _loc4_ = _loc4_.parent;
         }
         §"9§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§@!-§(_loc4_.§,l§,§7!y§);
            §"9§.concat(§7!y§);
            _loc4_ = _loc4_.parent;
         }
         §"9§.invert();
         param2.concat(§"9§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §1k§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§[l§ || !this.§1!M§))
         {
            return null;
         }
         if(this.getBounds(this,§ !A§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §"9§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§@!-§(_loc2_.§,l§,§7!y§);
            §"9§.concat(§7!y§);
            _loc2_ = _loc2_.parent;
         }
         return §"9§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §"9§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§@!-§(_loc2_.§,l§,§7!y§);
            §"9§.concat(§7!y§);
            _loc2_ = _loc2_.parent;
         }
         §"9§.invert();
         return §"9§.transformPoint(param1);
      }
      
      public function render(param1:§^M§, param2:Number) : void
      {
         throw new §1k§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§3!P§)
            {
               return;
            }
            this.§3!P§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §'#§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§,l§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §2!;§();
         if(param1 != this.§,l§ && this.§,l§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§,l§ = param1;
         if(this.§,l§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§,l§)
         {
            this.§,l§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§,l§)
         {
            this.§,l§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §,!1§() : Matrix
      {
         return this.§@!-§(this.§,l§);
      }
      
      public function get §4N§() : Rectangle
      {
         return this.getBounds(this.§,l§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§,l§,§ !A§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§^!O§ = 1;
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
         return this.getBounds(this.§,l§,§ !A§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§?"+§ = 1;
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
         var _loc2_:Array = §2!;§();
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
      
      public function §=,§(param1:Matrix3D) : void
      {
         if(this.§;f§ == 0 && this.§^!O§ == 1 && this.§?"+§ == 1)
         {
            if(this.§'!a§ + this.§]!E§ != 0 || this.§[6§ + this.§<""§ != 0)
            {
               param1.prependTranslation(this.§'!a§ + this.§]!E§,this.§[6§ + this.§<""§,0);
            }
         }
         else
         {
            if(this.§'!a§ != 0 || this.§[6§ != 0)
            {
               param1.prependTranslation(this.§'!a§,this.§[6§,0);
            }
            if(this.§;f§ != 0)
            {
               param1.prependRotation(this.§;f§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§^!O§ != 1 || this.§?"+§ != 1)
            {
               param1.prependScale(this.§^!O§,this.§?"+§,1);
            }
            if(this.§]!E§ != 0 || this.§<""§ != 0)
            {
               param1.prependTranslation(this.§]!E§,this.§<""§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§'!a§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§'!a§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§[6§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§[6§ = param1;
      }
      
      public function get z() : Number
      {
         return this.§?y§;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.§,l§)
         {
            this.§?y§ = param1;
         }
      }
      
      public function get pivotX() : Number
      {
         return this.§]!E§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§]!E§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§<""§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§<""§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§^!O§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§^!O§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§?"+§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§?"+§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§;f§;
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
         this.§;f§ = param1;
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
         return this.§[l§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§[l§ = param1;
      }
      
      public function get §8!Z§() : Boolean
      {
         return this.§1!M§;
      }
      
      public function set §8!Z§(param1:Boolean) : void
      {
         this.§1!M§ = param1;
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
         return this.§,l§;
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
