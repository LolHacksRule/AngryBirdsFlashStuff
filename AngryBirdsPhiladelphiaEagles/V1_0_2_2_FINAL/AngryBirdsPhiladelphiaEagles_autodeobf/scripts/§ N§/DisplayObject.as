package § N§
{
   import §5Z§.§4]§;
   import §7!O§.§%6§;
   import §7!O§.§^!§;
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
      
      private static var §+M§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §`;§:Rectangle = new Rectangle();
      
      private static var §"!§:Matrix = new Matrix();
      
      private static var §#i§:Matrix = new Matrix();
      
      protected static var §#E§:int = 0;
       
      
      private var §]!B§:Number;
      
      private var §5G§:Number;
      
      private var §%O§:Number;
      
      private var §&!I§:Number;
      
      private var §!1§:Number;
      
      private var §%!5§:Number;
      
      private var § !'§:Number;
      
      private var §7"§:Number;
      
      private var §%!Q§:Boolean;
      
      private var §8Y§:Boolean;
      
      private var mName:String;
      
      private var §,e§:Number;
      
      private var §'#§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §^!§();
         }
         this.§]!B§ = this.§5G§ = this.§%O§ = this.§&!I§ = this.§ !'§ = 0;
         this.§!1§ = this.§%!5§ = this.§7"§ = 1;
         this.§%!Q§ = this.§8Y§ = true;
         this.§,e§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §3!I§(param1:Boolean = false) : void
      {
         if(this.§'#§)
         {
            this.§'#§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §>!B§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§'#§ || param1 == null && this.§'#§ == null)
         {
            if(this.§%O§ != 0 || this.§&!I§ != 0)
            {
               param2.translate(-this.§%O§,-this.§&!I§);
            }
            if(this.§!1§ != 1 || this.§%!5§ != 1)
            {
               param2.scale(this.§!1§,this.§%!5§);
            }
            if(this.§ !'§ != 0)
            {
               param2.rotate(this.§ !'§);
            }
            if(this.§]!B§ != 0 || this.§5G§ != 0)
            {
               param2.translate(this.§]!B§,this.§5G§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§>!B§(_loc4_.§'#§,§"!§);
               param2.concat(§"!§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§'#§ == this)
         {
            param1.§>!B§(this,param2);
            param2.invert();
            return param2;
         }
         §+M§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §+M§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §+M§.indexOf(_loc4_) == -1)
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
            _loc4_.§>!B§(_loc4_.§'#§,§"!§);
            param2.concat(§"!§);
            _loc4_ = _loc4_.parent;
         }
         §#i§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§>!B§(_loc4_.§'#§,§"!§);
            §#i§.concat(§"!§);
            _loc4_ = _loc4_.parent;
         }
         §#i§.invert();
         param2.concat(§#i§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §%6§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§%!Q§ || !this.§8Y§))
         {
            return null;
         }
         if(this.getBounds(this,§`;§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §#i§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§>!B§(_loc2_.§'#§,§"!§);
            §#i§.concat(§"!§);
            _loc2_ = _loc2_.parent;
         }
         return §#i§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §#i§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§>!B§(_loc2_.§'#§,§"!§);
            §#i§.concat(§"!§);
            _loc2_ = _loc2_.parent;
         }
         §#i§.invert();
         return §#i§.transformPoint(param1);
      }
      
      public function render(param1:§4]§, param2:Number) : void
      {
         throw new §%6§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§,e§)
            {
               return;
            }
            this.§,e§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §7]§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§'#§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §&O§();
         if(param1 != this.§'#§ && this.§'#§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§'#§ = param1;
         if(this.§'#§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§'#§)
         {
            this.§'#§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§'#§)
         {
            this.§'#§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §5!H§() : Matrix
      {
         return this.§>!B§(this.§'#§);
      }
      
      public function get §>P§() : Rectangle
      {
         return this.getBounds(this.§'#§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§'#§,§`;§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§!1§ = 1;
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
         return this.getBounds(this.§'#§,§`;§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§%!5§ = 1;
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
         var _loc2_:Array = §&O§();
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
      
      public function §>m§(param1:Matrix3D) : void
      {
         if(this.§ !'§ == 0 && this.§!1§ == 1 && this.§%!5§ == 1)
         {
            if(this.§]!B§ + this.§%O§ != 0 || this.§5G§ + this.§&!I§ != 0)
            {
               param1.prependTranslation(this.§]!B§ + this.§%O§,this.§5G§ + this.§&!I§,0);
            }
         }
         else
         {
            if(this.§]!B§ != 0 || this.§5G§ != 0)
            {
               param1.prependTranslation(this.§]!B§,this.§5G§,0);
            }
            if(this.§ !'§ != 0)
            {
               param1.prependRotation(this.§ !'§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§!1§ != 1 || this.§%!5§ != 1)
            {
               param1.prependScale(this.§!1§,this.§%!5§,1);
            }
            if(this.§%O§ != 0 || this.§&!I§ != 0)
            {
               param1.prependTranslation(this.§%O§,this.§&!I§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§]!B§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§]!B§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§5G§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§5G§ = param1;
      }
      
      public function get pivotX() : Number
      {
         return this.§%O§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§%O§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§&!I§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§&!I§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§!1§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§!1§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§%!5§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§%!5§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§ !'§;
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
         this.§ !'§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.§7"§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§7"§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§%!Q§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§%!Q§ = param1;
      }
      
      public function get §!!"§() : Boolean
      {
         return this.§8Y§;
      }
      
      public function set §!!"§(param1:Boolean) : void
      {
         this.§8Y§ = param1;
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
         return this.§'#§;
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
