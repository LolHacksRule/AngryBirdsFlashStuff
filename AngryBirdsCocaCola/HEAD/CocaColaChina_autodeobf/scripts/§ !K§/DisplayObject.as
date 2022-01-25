package § !K§
{
   import §6l§.§23§;
   import §;S§.§7!B§;
   import §;S§.§?!'§;
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
      
      private static var § w§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §7M§:Rectangle = new Rectangle();
      
      private static var §]!!§:Matrix = new Matrix();
      
      private static var §[! §:Matrix = new Matrix();
      
      protected static var §+y§:int = 0;
       
      
      private var §03§:Number;
      
      private var §5,§:Number;
      
      private var §[,§:Number;
      
      private var §6!V§:Number;
      
      private var §"_§:Number;
      
      private var §;!;§:Number;
      
      private var §1Q§:Number;
      
      private var §3!F§:Number;
      
      private var §;!3§:Boolean;
      
      private var §2;§:Boolean;
      
      private var mName:String;
      
      private var §@6§:Number;
      
      private var §8!Q§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §7!B§();
         }
         this.§03§ = this.§5,§ = this.§[,§ = this.§6!V§ = this.§1Q§ = 0;
         this.§"_§ = this.§;!;§ = this.§3!F§ = 1;
         this.§;!3§ = this.§2;§ = true;
         this.§@6§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §5s§(param1:Boolean = false) : void
      {
         if(this.§8!Q§)
         {
            this.§8!Q§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §]`§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§8!Q§ || param1 == null && this.§8!Q§ == null)
         {
            if(this.§[,§ != 0 || this.§6!V§ != 0)
            {
               param2.translate(-this.§[,§,-this.§6!V§);
            }
            if(this.§"_§ != 1 || this.§;!;§ != 1)
            {
               param2.scale(this.§"_§,this.§;!;§);
            }
            if(this.§1Q§ != 0)
            {
               param2.rotate(this.§1Q§);
            }
            if(this.§03§ != 0 || this.§5,§ != 0)
            {
               param2.translate(this.§03§,this.§5,§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§]`§(_loc4_.§8!Q§,§]!!§);
               param2.concat(§]!!§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§8!Q§ == this)
         {
            param1.§]`§(this,param2);
            param2.invert();
            return param2;
         }
         § w§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            § w§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && § w§.indexOf(_loc4_) == -1)
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
            _loc4_.§]`§(_loc4_.§8!Q§,§]!!§);
            param2.concat(§]!!§);
            _loc4_ = _loc4_.parent;
         }
         §[! §.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§]`§(_loc4_.§8!Q§,§]!!§);
            §[! §.concat(§]!!§);
            _loc4_ = _loc4_.parent;
         }
         §[! §.invert();
         param2.concat(§[! §);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §?!'§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§;!3§ || !this.§2;§))
         {
            return null;
         }
         if(this.getBounds(this,§7M§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §[! §.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§]`§(_loc2_.§8!Q§,§]!!§);
            §[! §.concat(§]!!§);
            _loc2_ = _loc2_.parent;
         }
         return §[! §.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §[! §.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§]`§(_loc2_.§8!Q§,§]!!§);
            §[! §.concat(§]!!§);
            _loc2_ = _loc2_.parent;
         }
         §[! §.invert();
         return §[! §.transformPoint(param1);
      }
      
      public function render(param1:§23§, param2:Number) : void
      {
         throw new §?!'§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§@6§)
            {
               return;
            }
            this.§@6§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §22§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§8!Q§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §!K§();
         if(param1 != this.§8!Q§ && this.§8!Q§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§8!Q§ = param1;
         if(this.§8!Q§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§8!Q§)
         {
            this.§8!Q§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§8!Q§)
         {
            this.§8!Q§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §1!>§() : Matrix
      {
         return this.§]`§(this.§8!Q§);
      }
      
      public function get §3!'§() : Rectangle
      {
         return this.getBounds(this.§8!Q§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§8!Q§,§7M§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§"_§ = 1;
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
         return this.getBounds(this.§8!Q§,§7M§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§;!;§ = 1;
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
         var _loc2_:Array = §!K§();
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
      
      public function §8!-§(param1:Matrix3D) : void
      {
         if(this.§1Q§ == 0 && this.§"_§ == 1 && this.§;!;§ == 1)
         {
            if(this.§03§ + this.§[,§ != 0 || this.§5,§ + this.§6!V§ != 0)
            {
               param1.prependTranslation(this.§03§ + this.§[,§,this.§5,§ + this.§6!V§,0);
            }
         }
         else
         {
            if(this.§03§ != 0 || this.§5,§ != 0)
            {
               param1.prependTranslation(this.§03§,this.§5,§,0);
            }
            if(this.§1Q§ != 0)
            {
               param1.prependRotation(this.§1Q§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§"_§ != 1 || this.§;!;§ != 1)
            {
               param1.prependScale(this.§"_§,this.§;!;§,1);
            }
            if(this.§[,§ != 0 || this.§6!V§ != 0)
            {
               param1.prependTranslation(this.§[,§,this.§6!V§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§03§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§03§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§5,§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§5,§ = param1;
      }
      
      public function get pivotX() : Number
      {
         return this.§[,§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§[,§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§6!V§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§6!V§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§"_§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§"_§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§;!;§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§;!;§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§1Q§;
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
         this.§1Q§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.§3!F§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§3!F§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§;!3§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§;!3§ = param1;
      }
      
      public function get §^Y§() : Boolean
      {
         return this.§2;§;
      }
      
      public function set §^Y§(param1:Boolean) : void
      {
         this.§2;§ = param1;
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
         return this.§8!Q§;
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
