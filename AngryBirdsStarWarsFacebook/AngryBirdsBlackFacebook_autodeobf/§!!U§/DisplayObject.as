package §!!U§
{
   import §&#H§.§%"H§;
   import §;8§.§@G§;
   import §;8§.§["T§;
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
      
      private static var §!w§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §<g§:Rectangle = new Rectangle();
      
      private static var §#!O§:Matrix = new Matrix();
      
      private static var §7#2§:Matrix = new Matrix();
      
      protected static var §?&§:int = 0;
       
      
      private var §8!+§:Number;
      
      private var §=!Z§:Number;
      
      private var §%!<§:Number;
      
      private var §=!C§:Number;
      
      private var §!!I§:Number;
      
      private var §5i§:Number;
      
      private var §<#W§:Number;
      
      private var §?!0§:Number;
      
      private var §[0§:Boolean;
      
      private var §^#"§:Boolean;
      
      private var §0"^§:Number;
      
      private var mName:String;
      
      private var §@"§:Number;
      
      private var §^#Q§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §["T§();
         }
         this.§8!+§ = this.§=!Z§ = this.§%!<§ = this.§=!C§ = this.§<#W§ = 0;
         this.§!!I§ = this.§5i§ = this.§?!0§ = 1;
         this.§[0§ = this.§^#"§ = true;
         this.§@"§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §'H§(param1:Boolean = false) : void
      {
         if(this.§^#Q§)
         {
            this.§^#Q§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §^">§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§^#Q§ || param1 == null && this.§^#Q§ == null)
         {
            if(this.§%!<§ != 0 || this.§=!C§ != 0)
            {
               param2.translate(-this.§%!<§,-this.§=!C§);
            }
            if(this.§!!I§ != 1 || this.§5i§ != 1)
            {
               param2.scale(this.§!!I§,this.§5i§);
            }
            if(this.§<#W§ != 0)
            {
               param2.rotate(this.§<#W§);
            }
            if(this.§8!+§ != 0 || this.§=!Z§ != 0)
            {
               param2.translate(this.§8!+§,this.§=!Z§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§^">§(_loc4_.§^#Q§,§#!O§);
               param2.concat(§#!O§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§^#Q§ == this)
         {
            param1.§^">§(this,param2);
            param2.invert();
            return param2;
         }
         §!w§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §!w§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §!w§.indexOf(_loc4_) == -1)
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
            _loc4_.§^">§(_loc4_.§^#Q§,§#!O§);
            param2.concat(§#!O§);
            _loc4_ = _loc4_.parent;
         }
         §7#2§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§^">§(_loc4_.§^#Q§,§#!O§);
            §7#2§.concat(§#!O§);
            _loc4_ = _loc4_.parent;
         }
         §7#2§.invert();
         param2.concat(§7#2§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §@G§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§[0§ || !this.§^#"§))
         {
            return null;
         }
         if(this.getBounds(this,§<g§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §7#2§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§^">§(_loc2_.§^#Q§,§#!O§);
            §7#2§.concat(§#!O§);
            _loc2_ = _loc2_.parent;
         }
         return §7#2§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §7#2§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§^">§(_loc2_.§^#Q§,§#!O§);
            §7#2§.concat(§#!O§);
            _loc2_ = _loc2_.parent;
         }
         §7#2§.invert();
         return §7#2§.transformPoint(param1);
      }
      
      public function render(param1:§%"H§, param2:Number) : void
      {
         throw new §@G§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§@"§)
            {
               return;
            }
            this.§@"§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §2#=§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§^#Q§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §-"j§();
         if(param1 != this.§^#Q§ && this.§^#Q§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§^#Q§ = param1;
         if(this.§^#Q§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§^#Q§)
         {
            this.§^#Q§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§^#Q§)
         {
            this.§^#Q§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §3T§() : Matrix
      {
         return this.§^">§(this.§^#Q§);
      }
      
      public function get §@"&§() : Rectangle
      {
         return this.getBounds(this.§^#Q§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§^#Q§,§<g§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§!!I§ = 1;
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
         return this.getBounds(this.§^#Q§,§<g§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§5i§ = 1;
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
         var _loc2_:Array = §-"j§();
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
      
      public function §!]§(param1:Matrix3D) : void
      {
         if(this.§<#W§ == 0 && this.§!!I§ == 1 && this.§5i§ == 1)
         {
            if(this.§8!+§ + this.§%!<§ != 0 || this.§=!Z§ + this.§=!C§ != 0)
            {
               param1.prependTranslation(this.§8!+§ + this.§%!<§,this.§=!Z§ + this.§=!C§,0);
            }
         }
         else
         {
            if(this.§8!+§ != 0 || this.§=!Z§ != 0)
            {
               param1.prependTranslation(this.§8!+§,this.§=!Z§,0);
            }
            if(this.§<#W§ != 0)
            {
               param1.prependRotation(this.§<#W§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§!!I§ != 1 || this.§5i§ != 1)
            {
               param1.prependScale(this.§!!I§,this.§5i§,1);
            }
            if(this.§%!<§ != 0 || this.§=!C§ != 0)
            {
               param1.prependTranslation(this.§%!<§,this.§=!C§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§8!+§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§8!+§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§=!Z§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§=!Z§ = param1;
      }
      
      public function get z() : Number
      {
         return this.§0"^§;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.§^#Q§)
         {
            this.§0"^§ = param1;
         }
      }
      
      public function get pivotX() : Number
      {
         return this.§%!<§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§%!<§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§=!C§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§=!C§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§!!I§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§!!I§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§5i§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§5i§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§<#W§;
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
         this.§<#W§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.§?!0§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§?!0§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§[0§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§[0§ = param1;
      }
      
      public function get §3'§() : Boolean
      {
         return this.§^#"§;
      }
      
      public function set §3'§(param1:Boolean) : void
      {
         this.§^#"§ = param1;
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
         return this.§^#Q§;
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
