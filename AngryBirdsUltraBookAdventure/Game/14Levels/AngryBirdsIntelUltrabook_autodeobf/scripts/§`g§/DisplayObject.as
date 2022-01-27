package §`g§
{
   import §2m§.§@>§;
   import §[z§.§@!j§;
   import §[z§.§@F§;
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
      
      private static var §]!1§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §7y§:Rectangle = new Rectangle();
      
      private static var §=!l§:Matrix = new Matrix();
      
      private static var §=3§:Matrix = new Matrix();
      
      protected static var §?!V§:int = 0;
       
      
      private var §#!!§:Number;
      
      private var §!!3§:Number;
      
      private var §1!3§:Number;
      
      private var §;V§:Number;
      
      private var §#K§:Number;
      
      private var §+`§:Number;
      
      private var §2F§:Number;
      
      private var §@5§:Number;
      
      private var § !g§:Boolean;
      
      private var §&!"§:Boolean;
      
      private var §6!e§:Number;
      
      private var mName:String;
      
      private var §`Z§:Number;
      
      private var §3I§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §@F§();
         }
         this.§#!!§ = this.§!!3§ = this.§1!3§ = this.§;V§ = this.§2F§ = 0;
         this.§#K§ = this.§+`§ = this.§@5§ = 1;
         this.§ !g§ = this.§&!"§ = true;
         this.§`Z§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §5&§(param1:Boolean = false) : void
      {
         if(this.§3I§)
         {
            this.§3I§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §,!g§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§3I§ || param1 == null && this.§3I§ == null)
         {
            if(this.§1!3§ != 0 || this.§;V§ != 0)
            {
               param2.translate(-this.§1!3§,-this.§;V§);
            }
            if(this.§#K§ != 1 || this.§+`§ != 1)
            {
               param2.scale(this.§#K§,this.§+`§);
            }
            if(this.§2F§ != 0)
            {
               param2.rotate(this.§2F§);
            }
            if(this.§#!!§ != 0 || this.§!!3§ != 0)
            {
               param2.translate(this.§#!!§,this.§!!3§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§,!g§(_loc4_.§3I§,§=!l§);
               param2.concat(§=!l§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§3I§ == this)
         {
            param1.§,!g§(this,param2);
            param2.invert();
            return param2;
         }
         §]!1§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §]!1§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §]!1§.indexOf(_loc4_) == -1)
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
            _loc4_.§,!g§(_loc4_.§3I§,§=!l§);
            param2.concat(§=!l§);
            _loc4_ = _loc4_.parent;
         }
         §=3§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§,!g§(_loc4_.§3I§,§=!l§);
            §=3§.concat(§=!l§);
            _loc4_ = _loc4_.parent;
         }
         §=3§.invert();
         param2.concat(§=3§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §@!j§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§ !g§ || !this.§&!"§))
         {
            return null;
         }
         if(this.getBounds(this,§7y§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §=3§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§,!g§(_loc2_.§3I§,§=!l§);
            §=3§.concat(§=!l§);
            _loc2_ = _loc2_.parent;
         }
         return §=3§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §=3§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§,!g§(_loc2_.§3I§,§=!l§);
            §=3§.concat(§=!l§);
            _loc2_ = _loc2_.parent;
         }
         §=3§.invert();
         return §=3§.transformPoint(param1);
      }
      
      public function render(param1:§@>§, param2:Number) : void
      {
         throw new §@!j§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§`Z§)
            {
               return;
            }
            this.§`Z§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §"!d§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§3I§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §@O§();
         if(param1 != this.§3I§ && this.§3I§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§3I§ = param1;
         if(this.§3I§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§3I§)
         {
            this.§3I§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§3I§)
         {
            this.§3I§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §[!O§() : Matrix
      {
         return this.§,!g§(this.§3I§);
      }
      
      public function get §`b§() : Rectangle
      {
         return this.getBounds(this.§3I§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§3I§,§7y§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§#K§ = 1;
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
         return this.getBounds(this.§3I§,§7y§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§+`§ = 1;
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
         var _loc2_:Array = §@O§();
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
      
      public function §0!"§(param1:Matrix3D) : void
      {
         if(this.§2F§ == 0 && this.§#K§ == 1 && this.§+`§ == 1)
         {
            if(this.§#!!§ + this.§1!3§ != 0 || this.§!!3§ + this.§;V§ != 0)
            {
               param1.prependTranslation(this.§#!!§ + this.§1!3§,this.§!!3§ + this.§;V§,0);
            }
         }
         else
         {
            if(this.§#!!§ != 0 || this.§!!3§ != 0)
            {
               param1.prependTranslation(this.§#!!§,this.§!!3§,0);
            }
            if(this.§2F§ != 0)
            {
               param1.prependRotation(this.§2F§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§#K§ != 1 || this.§+`§ != 1)
            {
               param1.prependScale(this.§#K§,this.§+`§,1);
            }
            if(this.§1!3§ != 0 || this.§;V§ != 0)
            {
               param1.prependTranslation(this.§1!3§,this.§;V§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§#!!§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§#!!§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§!!3§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§!!3§ = param1;
      }
      
      public function get z() : Number
      {
         return this.§6!e§;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.§3I§)
         {
            this.§6!e§ = param1;
         }
      }
      
      public function get pivotX() : Number
      {
         return this.§1!3§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§1!3§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§;V§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§;V§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§#K§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§#K§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§+`§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§+`§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§2F§;
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
         this.§2F§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.§@5§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§@5§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§ !g§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§ !g§ = param1;
      }
      
      public function get §&!U§() : Boolean
      {
         return this.§&!"§;
      }
      
      public function set §&!U§(param1:Boolean) : void
      {
         this.§&!"§ = param1;
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
         return this.§3I§;
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
