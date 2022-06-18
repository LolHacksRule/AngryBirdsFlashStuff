package §]!6§
{
   import §6D§.§7Z§;
   import §6D§.§false§;
   import §8!#§.§-!§;
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
      
      private static var §>!D§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §5!!§:Rectangle = new Rectangle();
      
      private static var §'i§:Matrix = new Matrix();
      
      private static var §+R§:Matrix = new Matrix();
      
      protected static var §true§:int = 0;
       
      
      private var §4F§:Number;
      
      private var §1v§:Number;
      
      private var §';§:Number;
      
      private var §^!=§:Number;
      
      private var §%!B§:Number;
      
      private var §98§:Number;
      
      private var §;z§:Number;
      
      private var §3!C§:Number;
      
      private var §!!?§:Boolean;
      
      private var §^H§:Boolean;
      
      private var mName:String;
      
      private var §^1§:Number;
      
      private var §%%§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §false§();
         }
         this.§4F§ = this.§1v§ = this.§';§ = this.§^!=§ = this.§;z§ = 0;
         this.§%!B§ = this.§98§ = this.§3!C§ = 1;
         this.§!!?§ = this.§^H§ = true;
         this.§^1§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §<!F§(param1:Boolean = false) : void
      {
         if(this.§%%§)
         {
            this.§%%§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §5D§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§%%§ || param1 == null && this.§%%§ == null)
         {
            if(this.§';§ != 0 || this.§^!=§ != 0)
            {
               param2.translate(-this.§';§,-this.§^!=§);
            }
            if(this.§%!B§ != 1 || this.§98§ != 1)
            {
               param2.scale(this.§%!B§,this.§98§);
            }
            if(this.§;z§ != 0)
            {
               param2.rotate(this.§;z§);
            }
            if(this.§4F§ != 0 || this.§1v§ != 0)
            {
               param2.translate(this.§4F§,this.§1v§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§5D§(_loc4_.§%%§,§'i§);
               param2.concat(§'i§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§%%§ == this)
         {
            param1.§5D§(this,param2);
            param2.invert();
            return param2;
         }
         §>!D§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §>!D§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §>!D§.indexOf(_loc4_) == -1)
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
            _loc4_.§5D§(_loc4_.§%%§,§'i§);
            param2.concat(§'i§);
            _loc4_ = _loc4_.parent;
         }
         §+R§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§5D§(_loc4_.§%%§,§'i§);
            §+R§.concat(§'i§);
            _loc4_ = _loc4_.parent;
         }
         §+R§.invert();
         param2.concat(§+R§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §7Z§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§!!?§ || !this.§^H§))
         {
            return null;
         }
         if(this.getBounds(this,§5!!§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §+R§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§5D§(_loc2_.§%%§,§'i§);
            §+R§.concat(§'i§);
            _loc2_ = _loc2_.parent;
         }
         return §+R§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §+R§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§5D§(_loc2_.§%%§,§'i§);
            §+R§.concat(§'i§);
            _loc2_ = _loc2_.parent;
         }
         §+R§.invert();
         return §+R§.transformPoint(param1);
      }
      
      public function render(param1:§-!§, param2:Number) : void
      {
         throw new §7Z§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§^1§)
            {
               return;
            }
            this.§^1§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §2G§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§%%§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §3L§();
         if(param1 != this.§%%§ && this.§%%§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§%%§ = param1;
         if(this.§%%§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§%%§)
         {
            this.§%%§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§%%§)
         {
            this.§%%§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §>!$§() : Matrix
      {
         return this.§5D§(this.§%%§);
      }
      
      public function get §5`§() : Rectangle
      {
         return this.getBounds(this.§%%§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§%%§,§5!!§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§%!B§ = 1;
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
         return this.getBounds(this.§%%§,§5!!§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§98§ = 1;
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
         var _loc2_:Array = §3L§();
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
      
      public function §-4§(param1:Matrix3D) : void
      {
         if(this.§;z§ == 0 && this.§%!B§ == 1 && this.§98§ == 1)
         {
            if(this.§4F§ + this.§';§ != 0 || this.§1v§ + this.§^!=§ != 0)
            {
               param1.prependTranslation(this.§4F§ + this.§';§,this.§1v§ + this.§^!=§,0);
            }
         }
         else
         {
            if(this.§4F§ != 0 || this.§1v§ != 0)
            {
               param1.prependTranslation(this.§4F§,this.§1v§,0);
            }
            if(this.§;z§ != 0)
            {
               param1.prependRotation(this.§;z§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§%!B§ != 1 || this.§98§ != 1)
            {
               param1.prependScale(this.§%!B§,this.§98§,1);
            }
            if(this.§';§ != 0 || this.§^!=§ != 0)
            {
               param1.prependTranslation(this.§';§,this.§^!=§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§4F§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§4F§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§1v§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§1v§ = param1;
      }
      
      public function get pivotX() : Number
      {
         return this.§';§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§';§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§^!=§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§^!=§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§%!B§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§%!B§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§98§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§98§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§;z§;
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
         this.§;z§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.§3!C§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§3!C§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§!!?§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§!!?§ = param1;
      }
      
      public function get §]M§() : Boolean
      {
         return this.§^H§;
      }
      
      public function set §]M§(param1:Boolean) : void
      {
         this.§^H§ = param1;
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
         return this.§%%§;
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
