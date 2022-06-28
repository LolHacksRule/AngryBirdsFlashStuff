package §9W§
{
   import §#!;§.§?h§;
   import §8k§.§@B§;
   import §8k§.§@V§;
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
      
      private static var §8I§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §6!<§:Rectangle = new Rectangle();
      
      private static var §[9§:Matrix = new Matrix();
      
      private static var §4;§:Matrix = new Matrix();
      
      protected static var §<W§:int = 0;
       
      
      private var §<!B§:Number;
      
      private var §,k§:Number;
      
      private var §3O§:Number;
      
      private var §=A§:Number;
      
      private var §,6§:Number;
      
      private var §-3§:Number;
      
      private var §]!C§:Number;
      
      private var §%O§:Number;
      
      private var §!_§:Boolean;
      
      private var §#c§:Boolean;
      
      private var mName:String;
      
      private var §"b§:Number;
      
      private var §[S§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §@B§();
         }
         this.§<!B§ = this.§,k§ = this.§3O§ = this.§=A§ = this.§]!C§ = 0;
         this.§,6§ = this.§-3§ = this.§%O§ = 1;
         this.§!_§ = this.§#c§ = true;
         this.§"b§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §'G§(param1:Boolean = false) : void
      {
         if(this.§[S§)
         {
            this.§[S§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §8w§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§[S§ || param1 == null && this.§[S§ == null)
         {
            if(this.§3O§ != 0 || this.§=A§ != 0)
            {
               param2.translate(-this.§3O§,-this.§=A§);
            }
            if(this.§,6§ != 1 || this.§-3§ != 1)
            {
               param2.scale(this.§,6§,this.§-3§);
            }
            if(this.§]!C§ != 0)
            {
               param2.rotate(this.§]!C§);
            }
            if(this.§<!B§ != 0 || this.§,k§ != 0)
            {
               param2.translate(this.§<!B§,this.§,k§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§8w§(_loc4_.§[S§,§[9§);
               param2.concat(§[9§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§[S§ == this)
         {
            param1.§8w§(this,param2);
            param2.invert();
            return param2;
         }
         §8I§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §8I§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §8I§.indexOf(_loc4_) == -1)
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
            _loc4_.§8w§(_loc4_.§[S§,§[9§);
            param2.concat(§[9§);
            _loc4_ = _loc4_.parent;
         }
         §4;§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§8w§(_loc4_.§[S§,§[9§);
            §4;§.concat(§[9§);
            _loc4_ = _loc4_.parent;
         }
         §4;§.invert();
         param2.concat(§4;§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §@V§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§!_§ || !this.§#c§))
         {
            return null;
         }
         if(this.getBounds(this,§6!<§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §4;§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§8w§(_loc2_.§[S§,§[9§);
            §4;§.concat(§[9§);
            _loc2_ = _loc2_.parent;
         }
         return §4;§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §4;§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§8w§(_loc2_.§[S§,§[9§);
            §4;§.concat(§[9§);
            _loc2_ = _loc2_.parent;
         }
         §4;§.invert();
         return §4;§.transformPoint(param1);
      }
      
      public function render(param1:§?h§, param2:Number) : void
      {
         throw new §@V§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§"b§)
            {
               return;
            }
            this.§"b§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §55§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§[S§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §&B§();
         if(param1 != this.§[S§ && this.§[S§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§[S§ = param1;
         if(this.§[S§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§[S§)
         {
            this.§[S§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§[S§)
         {
            this.§[S§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §9z§() : Matrix
      {
         return this.§8w§(this.§[S§);
      }
      
      public function get §5S§() : Rectangle
      {
         return this.getBounds(this.§[S§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§[S§,§6!<§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§,6§ = 1;
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
         return this.getBounds(this.§[S§,§6!<§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§-3§ = 1;
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
         var _loc2_:Array = §&B§();
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
      
      public function §&f§(param1:Matrix3D) : void
      {
         if(this.§]!C§ == 0 && this.§,6§ == 1 && this.§-3§ == 1)
         {
            if(this.§<!B§ + this.§3O§ != 0 || this.§,k§ + this.§=A§ != 0)
            {
               param1.prependTranslation(this.§<!B§ + this.§3O§,this.§,k§ + this.§=A§,0);
            }
         }
         else
         {
            if(this.§<!B§ != 0 || this.§,k§ != 0)
            {
               param1.prependTranslation(this.§<!B§,this.§,k§,0);
            }
            if(this.§]!C§ != 0)
            {
               param1.prependRotation(this.§]!C§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§,6§ != 1 || this.§-3§ != 1)
            {
               param1.prependScale(this.§,6§,this.§-3§,1);
            }
            if(this.§3O§ != 0 || this.§=A§ != 0)
            {
               param1.prependTranslation(this.§3O§,this.§=A§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§<!B§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§<!B§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§,k§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§,k§ = param1;
      }
      
      public function get pivotX() : Number
      {
         return this.§3O§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§3O§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§=A§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§=A§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§,6§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§,6§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§-3§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§-3§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§]!C§;
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
         this.§]!C§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.§%O§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§%O§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§!_§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§!_§ = param1;
      }
      
      public function get §=O§() : Boolean
      {
         return this.§#c§;
      }
      
      public function set §=O§(param1:Boolean) : void
      {
         this.§#c§ = param1;
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
         return this.§[S§;
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
