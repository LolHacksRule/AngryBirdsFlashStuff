package §7!B§
{
   import §!!K§.§?%§;
   import §4!S§.§#!s§;
   import §4!S§.§%!Y§;
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
      
      private static var §]%§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §@!%§:Rectangle = new Rectangle();
      
      private static var §'V§:Matrix = new Matrix();
      
      private static var §[!u§:Matrix = new Matrix();
      
      protected static var §@"§:int = 0;
       
      
      private var §#!u§:Number;
      
      private var §<h§:Number;
      
      private var §`Q§:Number;
      
      private var §-Z§:Number;
      
      private var §5!A§:Number;
      
      private var §,!C§:Number;
      
      private var §`!j§:Number;
      
      private var §2!y§:Number;
      
      private var §1!M§:Boolean;
      
      private var §<!!§:Boolean;
      
      private var mName:String;
      
      private var §"!'§:Number;
      
      private var §8!Q§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §#!s§();
         }
         this.§#!u§ = this.§<h§ = this.§`Q§ = this.§-Z§ = this.§`!j§ = 0;
         this.§5!A§ = this.§,!C§ = this.§2!y§ = 1;
         this.§1!M§ = this.§<!!§ = true;
         this.§"!'§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §;!S§(param1:Boolean = false) : void
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
      
      public function §6!8§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
            if(this.§`Q§ != 0 || this.§-Z§ != 0)
            {
               param2.translate(-this.§`Q§,-this.§-Z§);
            }
            if(this.§5!A§ != 1 || this.§,!C§ != 1)
            {
               param2.scale(this.§5!A§,this.§,!C§);
            }
            if(this.§`!j§ != 0)
            {
               param2.rotate(this.§`!j§);
            }
            if(this.§#!u§ != 0 || this.§<h§ != 0)
            {
               param2.translate(this.§#!u§,this.§<h§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§6!8§(_loc4_.§8!Q§,§'V§);
               param2.concat(§'V§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§8!Q§ == this)
         {
            param1.§6!8§(this,param2);
            param2.invert();
            return param2;
         }
         §]%§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §]%§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §]%§.indexOf(_loc4_) == -1)
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
            _loc4_.§6!8§(_loc4_.§8!Q§,§'V§);
            param2.concat(§'V§);
            _loc4_ = _loc4_.parent;
         }
         §[!u§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§6!8§(_loc4_.§8!Q§,§'V§);
            §[!u§.concat(§'V§);
            _loc4_ = _loc4_.parent;
         }
         §[!u§.invert();
         param2.concat(§[!u§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §%!Y§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         §§push(Boolean(param2));
         if(Boolean(param2))
         {
            §§pop();
            if(!this.§1!M§ || !this.§<!!§)
            {
               return null;
            }
            if(this.getBounds(this,§@!%§).containsPoint(param1))
            {
               return this;
            }
            return null;
         }
         §§goto(addr29);
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §[!u§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§6!8§(_loc2_.§8!Q§,§'V§);
            §[!u§.concat(§'V§);
            _loc2_ = _loc2_.parent;
         }
         return §[!u§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §[!u§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§6!8§(_loc2_.§8!Q§,§'V§);
            §[!u§.concat(§'V§);
            _loc2_ = _loc2_.parent;
         }
         §[!u§.invert();
         return §[!u§.transformPoint(param1);
      }
      
      public function render(param1:§?%§, param2:Number) : void
      {
         throw new §%!Y§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§"!'§)
            {
               return;
            }
            this.§"!'§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §^i§(param1:DisplayObjectContainer) : void
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
         _loc3_ = §=! §();
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
      
      public function get §`%§() : Matrix
      {
         return this.§6!8§(this.§8!Q§);
      }
      
      public function get §6<§() : Rectangle
      {
         return this.getBounds(this.§8!Q§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§8!Q§,§@!%§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§5!A§ = 1;
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
         return this.getBounds(this.§8!Q§,§@!%§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§,!C§ = 1;
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
         var _loc2_:Array = §=! §();
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
      
      public function §5U§(param1:Matrix3D) : void
      {
         if(this.§`!j§ == 0 && this.§5!A§ == 1 && this.§,!C§ == 1)
         {
            if(this.§#!u§ + this.§`Q§ != 0 || this.§<h§ + this.§-Z§ != 0)
            {
               param1.prependTranslation(this.§#!u§ + this.§`Q§,this.§<h§ + this.§-Z§,0);
            }
         }
         else
         {
            if(this.§#!u§ != 0 || this.§<h§ != 0)
            {
               param1.prependTranslation(this.§#!u§,this.§<h§,0);
            }
            if(this.§`!j§ != 0)
            {
               param1.prependRotation(this.§`!j§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§5!A§ != 1 || this.§,!C§ != 1)
            {
               param1.prependScale(this.§5!A§,this.§,!C§,1);
            }
            if(this.§`Q§ != 0 || this.§-Z§ != 0)
            {
               param1.prependTranslation(this.§`Q§,this.§-Z§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§#!u§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§#!u§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§<h§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§<h§ = param1;
      }
      
      public function get pivotX() : Number
      {
         return this.§`Q§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§`Q§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§-Z§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§-Z§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§5!A§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§5!A§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§,!C§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§,!C§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§`!j§;
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
         this.§`!j§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.§2!y§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§2!y§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§1!M§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§1!M§ = param1;
      }
      
      public function get §]!F§() : Boolean
      {
         return this.§<!!§;
      }
      
      public function set §]!F§(param1:Boolean) : void
      {
         this.§<!!§ = param1;
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
