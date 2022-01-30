package §]!2§
{
   import §0!F§.§3`§;
   import §6!$§.§0!q§;
   import §6!$§.§?f§;
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
      
      private static var §;P§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §1!A§:Rectangle = new Rectangle();
      
      private static var §"j§:Matrix = new Matrix();
      
      private static var §8!o§:Matrix = new Matrix();
      
      protected static var § if§:int = 0;
       
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §5!2§:Number;
      
      private var §`P§:Number;
      
      private var §+"4§:Number;
      
      private var §@i§:Number;
      
      private var §^@§:Number;
      
      private var §,!J§:Number;
      
      private var §5l§:Boolean;
      
      private var §<!q§:Boolean;
      
      private var mName:String;
      
      private var §4x§:Number;
      
      private var §`!,§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §0!q§();
         }
         this.mX = this.mY = this.§5!2§ = this.§`P§ = this.§^@§ = 0;
         this.§+"4§ = this.§@i§ = this.§,!J§ = 1;
         this.§5l§ = this.§<!q§ = true;
         this.§4x§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §[o§(param1:Boolean = false) : void
      {
         if(this.§`!,§)
         {
            this.§`!,§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §'!b§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§`!,§ || param1 == null && this.§`!,§ == null)
         {
            if(this.§5!2§ != 0 || this.§`P§ != 0)
            {
               param2.translate(-this.§5!2§,-this.§`P§);
            }
            if(this.§+"4§ != 1 || this.§@i§ != 1)
            {
               param2.scale(this.§+"4§,this.§@i§);
            }
            if(this.§^@§ != 0)
            {
               param2.rotate(this.§^@§);
            }
            if(this.mX != 0 || this.mY != 0)
            {
               param2.translate(this.mX,this.mY);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§'!b§(_loc4_.§`!,§,§"j§);
               param2.concat(§"j§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§`!,§ == this)
         {
            param1.§'!b§(this,param2);
            param2.invert();
            return param2;
         }
         §;P§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §;P§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §;P§.indexOf(_loc4_) == -1)
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
            _loc4_.§'!b§(_loc4_.§`!,§,§"j§);
            param2.concat(§"j§);
            _loc4_ = _loc4_.parent;
         }
         §8!o§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§'!b§(_loc4_.§`!,§,§"j§);
            §8!o§.concat(§"j§);
            _loc4_ = _loc4_.parent;
         }
         §8!o§.invert();
         param2.concat(§8!o§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §?f§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§5l§ || !this.§<!q§))
         {
            return null;
         }
         if(this.getBounds(this,§1!A§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §8!o§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§'!b§(_loc2_.§`!,§,§"j§);
            §8!o§.concat(§"j§);
            _loc2_ = _loc2_.parent;
         }
         return §8!o§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §8!o§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§'!b§(_loc2_.§`!,§,§"j§);
            §8!o§.concat(§"j§);
            _loc2_ = _loc2_.parent;
         }
         §8!o§.invert();
         return §8!o§.transformPoint(param1);
      }
      
      public function render(param1:§3`§, param2:Number) : void
      {
         throw new §?f§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§4x§)
            {
               return;
            }
            this.§4x§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §70§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§`!,§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = § y§();
         if(param1 != this.§`!,§ && this.§`!,§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§`!,§ = param1;
         if(this.§`!,§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§`!,§)
         {
            this.§`!,§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§`!,§)
         {
            this.§`!,§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §0x§() : Matrix
      {
         return this.§'!b§(this.§`!,§);
      }
      
      public function get §2!5§() : Rectangle
      {
         return this.getBounds(this.§`!,§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§`!,§,§1!A§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§+"4§ = 1;
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
         return this.getBounds(this.§`!,§,§1!A§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§@i§ = 1;
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
         var _loc2_:Array = § y§();
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
      
      public function §"!]§(param1:Matrix3D) : void
      {
         if(this.§^@§ == 0 && this.§+"4§ == 1 && this.§@i§ == 1)
         {
            if(this.mX + this.§5!2§ != 0 || this.mY + this.§`P§ != 0)
            {
               param1.prependTranslation(this.mX + this.§5!2§,this.mY + this.§`P§,0);
            }
         }
         else
         {
            if(this.mX != 0 || this.mY != 0)
            {
               param1.prependTranslation(this.mX,this.mY,0);
            }
            if(this.§^@§ != 0)
            {
               param1.prependRotation(this.§^@§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§+"4§ != 1 || this.§@i§ != 1)
            {
               param1.prependScale(this.§+"4§,this.§@i§,1);
            }
            if(this.§5!2§ != 0 || this.§`P§ != 0)
            {
               param1.prependTranslation(this.§5!2§,this.§`P§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function set x(param1:Number) : void
      {
         this.mX = param1;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function set y(param1:Number) : void
      {
         this.mY = param1;
      }
      
      public function get pivotX() : Number
      {
         return this.§5!2§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§5!2§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§`P§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§`P§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§+"4§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§+"4§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§@i§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§@i§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§^@§;
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
         this.§^@§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.§,!J§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§,!J§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§5l§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§5l§ = param1;
      }
      
      public function get §7!'§() : Boolean
      {
         return this.§<!q§;
      }
      
      public function set §7!'§(param1:Boolean) : void
      {
         this.§<!q§ = param1;
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
         return this.§`!,§;
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
