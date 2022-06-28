package §,_§
{
   import §8E§.§"!6§;
   import §8E§.§6g§;
   import §catch§.§'d§;
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
      
      private static var §]U§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §;k§:Rectangle = new Rectangle();
      
      private static var §!!G§:Matrix = new Matrix();
      
      private static var §@4§:Matrix = new Matrix();
      
      protected static var §9!G§:int = 0;
       
      
      private var §^C§:Number;
      
      private var §0§:Number;
      
      private var §3!4§:Number;
      
      private var §;!0§:Number;
      
      private var §'G§:Number;
      
      private var §8w§:Number;
      
      private var §@!$§:Number;
      
      private var §[k§:Number;
      
      private var §7!3§:Boolean;
      
      private var §!3§:Boolean;
      
      private var mName:String;
      
      private var §!!4§:Number;
      
      private var §<u§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §6g§();
         }
         this.§^C§ = this.§0§ = this.§3!4§ = this.§;!0§ = this.§@!$§ = 0;
         this.§'G§ = this.§8w§ = this.§[k§ = 1;
         this.§7!3§ = this.§!3§ = true;
         this.§!!4§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §]9§(param1:Boolean = false) : void
      {
         if(this.§<u§)
         {
            this.§<u§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §>!>§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§<u§ || param1 == null && this.§<u§ == null)
         {
            if(this.§3!4§ != 0 || this.§;!0§ != 0)
            {
               param2.translate(-this.§3!4§,-this.§;!0§);
            }
            if(this.§'G§ != 1 || this.§8w§ != 1)
            {
               param2.scale(this.§'G§,this.§8w§);
            }
            if(this.§@!$§ != 0)
            {
               param2.rotate(this.§@!$§);
            }
            if(this.§^C§ != 0 || this.§0§ != 0)
            {
               param2.translate(this.§^C§,this.§0§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§>!>§(_loc4_.§<u§,§!!G§);
               param2.concat(§!!G§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§<u§ == this)
         {
            param1.§>!>§(this,param2);
            param2.invert();
            return param2;
         }
         §]U§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §]U§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §]U§.indexOf(_loc4_) == -1)
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
            _loc4_.§>!>§(_loc4_.§<u§,§!!G§);
            param2.concat(§!!G§);
            _loc4_ = _loc4_.parent;
         }
         §@4§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§>!>§(_loc4_.§<u§,§!!G§);
            §@4§.concat(§!!G§);
            _loc4_ = _loc4_.parent;
         }
         §@4§.invert();
         param2.concat(§@4§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §"!6§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§7!3§ || !this.§!3§))
         {
            return null;
         }
         if(this.getBounds(this,§;k§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §@4§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§>!>§(_loc2_.§<u§,§!!G§);
            §@4§.concat(§!!G§);
            _loc2_ = _loc2_.parent;
         }
         return §@4§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §@4§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§>!>§(_loc2_.§<u§,§!!G§);
            §@4§.concat(§!!G§);
            _loc2_ = _loc2_.parent;
         }
         §@4§.invert();
         return §@4§.transformPoint(param1);
      }
      
      public function render(param1:§'d§, param2:Number) : void
      {
         throw new §"!6§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§!!4§)
            {
               return;
            }
            this.§!!4§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §]"§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§<u§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §=n§();
         if(param1 != this.§<u§ && this.§<u§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§<u§ = param1;
         if(this.§<u§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§<u§)
         {
            this.§<u§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§<u§)
         {
            this.§<u§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §^e§() : Matrix
      {
         return this.§>!>§(this.§<u§);
      }
      
      public function get §4!1§() : Rectangle
      {
         return this.getBounds(this.§<u§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§<u§,§;k§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§'G§ = 1;
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
         return this.getBounds(this.§<u§,§;k§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§8w§ = 1;
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
         var _loc2_:Array = §=n§();
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
      
      public function §]@§(param1:Matrix3D) : void
      {
         if(this.§@!$§ == 0 && this.§'G§ == 1 && this.§8w§ == 1)
         {
            if(this.§^C§ + this.§3!4§ != 0 || this.§0§ + this.§;!0§ != 0)
            {
               param1.prependTranslation(this.§^C§ + this.§3!4§,this.§0§ + this.§;!0§,0);
            }
         }
         else
         {
            if(this.§^C§ != 0 || this.§0§ != 0)
            {
               param1.prependTranslation(this.§^C§,this.§0§,0);
            }
            if(this.§@!$§ != 0)
            {
               param1.prependRotation(this.§@!$§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§'G§ != 1 || this.§8w§ != 1)
            {
               param1.prependScale(this.§'G§,this.§8w§,1);
            }
            if(this.§3!4§ != 0 || this.§;!0§ != 0)
            {
               param1.prependTranslation(this.§3!4§,this.§;!0§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§^C§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§^C§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§0§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§0§ = param1;
      }
      
      public function get pivotX() : Number
      {
         return this.§3!4§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§3!4§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§;!0§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§;!0§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§'G§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§'G§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§8w§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§8w§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§@!$§;
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
         this.§@!$§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.§[k§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§[k§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§7!3§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§7!3§ = param1;
      }
      
      public function get §!!%§() : Boolean
      {
         return this.§!3§;
      }
      
      public function set §!!%§(param1:Boolean) : void
      {
         this.§!3§ = param1;
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
         return this.§<u§;
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
