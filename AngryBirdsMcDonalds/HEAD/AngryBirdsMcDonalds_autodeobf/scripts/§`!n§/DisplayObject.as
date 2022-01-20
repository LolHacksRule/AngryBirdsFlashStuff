package §`!n§
{
   import §%%§.§,!<§;
   import §3!'§.§+!6§;
   import §3!'§.§if §;
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
      
      private static var § !=§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §`E§:Rectangle = new Rectangle();
      
      private static var §9X§:Matrix = new Matrix();
      
      private static var §[2§:Matrix = new Matrix();
      
      protected static var §-!1§:int = 0;
       
      
      private var §=y§:Number;
      
      private var §#J§:Number;
      
      private var §>s§:Number;
      
      private var §#!^§:Number;
      
      private var §<!I§:Number;
      
      private var §-!q§:Number;
      
      private var §#!g§:Number;
      
      private var §7E§:Number;
      
      private var §#1§:Boolean;
      
      private var §^K§:Boolean;
      
      private var §2R§:Number;
      
      private var mName:String;
      
      private var §2!h§:Number;
      
      private var §]K§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §+!6§();
         }
         this.§=y§ = this.§#J§ = this.§>s§ = this.§#!^§ = this.§#!g§ = 0;
         this.§<!I§ = this.§-!q§ = this.§7E§ = 1;
         this.§#1§ = this.§^K§ = true;
         this.§2!h§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §,!g§(param1:Boolean = false) : void
      {
         if(this.§]K§)
         {
            this.§]K§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §'!C§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§]K§ || param1 == null && this.§]K§ == null)
         {
            if(this.§>s§ != 0 || this.§#!^§ != 0)
            {
               param2.translate(-this.§>s§,-this.§#!^§);
            }
            if(this.§<!I§ != 1 || this.§-!q§ != 1)
            {
               param2.scale(this.§<!I§,this.§-!q§);
            }
            if(this.§#!g§ != 0)
            {
               param2.rotate(this.§#!g§);
            }
            if(this.§=y§ != 0 || this.§#J§ != 0)
            {
               param2.translate(this.§=y§,this.§#J§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§'!C§(_loc4_.§]K§,§9X§);
               param2.concat(§9X§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§]K§ == this)
         {
            param1.§'!C§(this,param2);
            param2.invert();
            return param2;
         }
         § !=§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            § !=§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && § !=§.indexOf(_loc4_) == -1)
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
            _loc4_.§'!C§(_loc4_.§]K§,§9X§);
            param2.concat(§9X§);
            _loc4_ = _loc4_.parent;
         }
         §[2§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§'!C§(_loc4_.§]K§,§9X§);
            §[2§.concat(§9X§);
            _loc4_ = _loc4_.parent;
         }
         §[2§.invert();
         param2.concat(§[2§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §if §("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§#1§ || !this.§^K§))
         {
            return null;
         }
         if(this.getBounds(this,§`E§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §[2§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§'!C§(_loc2_.§]K§,§9X§);
            §[2§.concat(§9X§);
            _loc2_ = _loc2_.parent;
         }
         return §[2§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §[2§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§'!C§(_loc2_.§]K§,§9X§);
            §[2§.concat(§9X§);
            _loc2_ = _loc2_.parent;
         }
         §[2§.invert();
         return §[2§.transformPoint(param1);
      }
      
      public function render(param1:§,!<§, param2:Number) : void
      {
         throw new §if §("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§2!h§)
            {
               return;
            }
            this.§2!h§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §&!4§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§]K§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §>Q§();
         if(param1 != this.§]K§ && this.§]K§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§]K§ = param1;
         if(this.§]K§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§]K§)
         {
            this.§]K§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§]K§)
         {
            this.§]K§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §,C§() : Matrix
      {
         return this.§'!C§(this.§]K§);
      }
      
      public function get §1x§() : Rectangle
      {
         return this.getBounds(this.§]K§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§]K§,§`E§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§<!I§ = 1;
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
         return this.getBounds(this.§]K§,§`E§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§-!q§ = 1;
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
         var _loc2_:Array = §>Q§();
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
      
      public function §&3§(param1:Matrix3D) : void
      {
         if(this.§#!g§ == 0 && this.§<!I§ == 1 && this.§-!q§ == 1)
         {
            if(this.§=y§ + this.§>s§ != 0 || this.§#J§ + this.§#!^§ != 0)
            {
               param1.prependTranslation(this.§=y§ + this.§>s§,this.§#J§ + this.§#!^§,0);
            }
         }
         else
         {
            if(this.§=y§ != 0 || this.§#J§ != 0)
            {
               param1.prependTranslation(this.§=y§,this.§#J§,0);
            }
            if(this.§#!g§ != 0)
            {
               param1.prependRotation(this.§#!g§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§<!I§ != 1 || this.§-!q§ != 1)
            {
               param1.prependScale(this.§<!I§,this.§-!q§,1);
            }
            if(this.§>s§ != 0 || this.§#!^§ != 0)
            {
               param1.prependTranslation(this.§>s§,this.§#!^§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§=y§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§=y§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§#J§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§#J§ = param1;
      }
      
      public function get z() : Number
      {
         return this.§2R§;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.§]K§)
         {
            this.§2R§ = param1;
         }
      }
      
      public function get pivotX() : Number
      {
         return this.§>s§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§>s§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§#!^§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§#!^§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§<!I§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§<!I§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§-!q§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§-!q§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§#!g§;
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
         this.§#!g§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.§7E§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§7E§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§#1§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§#1§ = param1;
      }
      
      public function get §77§() : Boolean
      {
         return this.§^K§;
      }
      
      public function set §77§(param1:Boolean) : void
      {
         this.§^K§ = param1;
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
         return this.§]K§;
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
