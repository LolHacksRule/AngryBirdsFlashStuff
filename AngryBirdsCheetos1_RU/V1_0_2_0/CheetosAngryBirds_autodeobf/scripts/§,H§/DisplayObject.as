package §,H§
{
   import §2!P§.§@9§;
   import §][§.§#x§;
   import §][§.§67§;
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
      
      private static var §]Y§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §7r§:Rectangle = new Rectangle();
      
      private static var § g§:Matrix = new Matrix();
      
      private static var §#!%§:Matrix = new Matrix();
      
      protected static var §>?§:int = 0;
       
      
      private var §,!_§:Number;
      
      private var §4b§:Number;
      
      private var §+!O§:Number;
      
      private var §7j§:Number;
      
      private var §%!V§:Number;
      
      private var §'C§:Number;
      
      private var §7e§:Number;
      
      private var mAlpha:Number;
      
      private var §5!U§:Boolean;
      
      private var §1v§:Boolean;
      
      private var mName:String;
      
      private var §'!&§:Number;
      
      private var §&n§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §#x§();
         }
         this.§,!_§ = this.§4b§ = this.§+!O§ = this.§7j§ = this.§7e§ = 0;
         this.§%!V§ = this.§'C§ = this.mAlpha = 1;
         this.§5!U§ = this.§1v§ = true;
         this.§'!&§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §@J§(param1:Boolean = false) : void
      {
         if(this.§&n§)
         {
            this.§&n§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §implements§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§&n§ || param1 == null && this.§&n§ == null)
         {
            if(this.§+!O§ != 0 || this.§7j§ != 0)
            {
               param2.translate(-this.§+!O§,-this.§7j§);
            }
            if(this.§%!V§ != 1 || this.§'C§ != 1)
            {
               param2.scale(this.§%!V§,this.§'C§);
            }
            if(this.§7e§ != 0)
            {
               param2.rotate(this.§7e§);
            }
            if(this.§,!_§ != 0 || this.§4b§ != 0)
            {
               param2.translate(this.§,!_§,this.§4b§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§implements§(_loc4_.§&n§,§ g§);
               param2.concat(§ g§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§&n§ == this)
         {
            param1.§implements§(this,param2);
            param2.invert();
            return param2;
         }
         §]Y§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §]Y§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §]Y§.indexOf(_loc4_) == -1)
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
            _loc4_.§implements§(_loc4_.§&n§,§ g§);
            param2.concat(§ g§);
            _loc4_ = _loc4_.parent;
         }
         §#!%§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§implements§(_loc4_.§&n§,§ g§);
            §#!%§.concat(§ g§);
            _loc4_ = _loc4_.parent;
         }
         §#!%§.invert();
         param2.concat(§#!%§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §67§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§5!U§ || !this.§1v§))
         {
            return null;
         }
         if(this.getBounds(this,§7r§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §#!%§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§implements§(_loc2_.§&n§,§ g§);
            §#!%§.concat(§ g§);
            _loc2_ = _loc2_.parent;
         }
         return §#!%§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §#!%§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§implements§(_loc2_.§&n§,§ g§);
            §#!%§.concat(§ g§);
            _loc2_ = _loc2_.parent;
         }
         §#!%§.invert();
         return §#!%§.transformPoint(param1);
      }
      
      public function render(param1:§@9§, param2:Number) : void
      {
         throw new §67§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§'!&§)
            {
               return;
            }
            this.§'!&§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §#u§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§&n§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §@l§();
         if(param1 != this.§&n§ && this.§&n§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§&n§ = param1;
         if(this.§&n§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§&n§)
         {
            this.§&n§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§&n§)
         {
            this.§&n§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §`f§() : Matrix
      {
         return this.§implements§(this.§&n§);
      }
      
      public function get §1!Q§() : Rectangle
      {
         return this.getBounds(this.§&n§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§&n§,§7r§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§%!V§ = 1;
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
         return this.getBounds(this.§&n§,§7r§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§'C§ = 1;
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
         var _loc2_:Array = §@l§();
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
      
      public function §[!"§(param1:Matrix3D) : void
      {
         if(this.§7e§ == 0 && this.§%!V§ == 1 && this.§'C§ == 1)
         {
            if(this.§,!_§ + this.§+!O§ != 0 || this.§4b§ + this.§7j§ != 0)
            {
               param1.prependTranslation(this.§,!_§ + this.§+!O§,this.§4b§ + this.§7j§,0);
            }
         }
         else
         {
            if(this.§,!_§ != 0 || this.§4b§ != 0)
            {
               param1.prependTranslation(this.§,!_§,this.§4b§,0);
            }
            if(this.§7e§ != 0)
            {
               param1.prependRotation(this.§7e§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§%!V§ != 1 || this.§'C§ != 1)
            {
               param1.prependScale(this.§%!V§,this.§'C§,1);
            }
            if(this.§+!O§ != 0 || this.§7j§ != 0)
            {
               param1.prependTranslation(this.§+!O§,this.§7j§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§,!_§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§,!_§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§4b§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§4b§ = param1;
      }
      
      public function get pivotX() : Number
      {
         return this.§+!O§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§+!O§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§7j§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§7j§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§%!V§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§%!V§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§'C§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§'C§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§7e§;
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
         this.§7e§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.mAlpha;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.mAlpha = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§5!U§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§5!U§ = param1;
      }
      
      public function get §09§() : Boolean
      {
         return this.§1v§;
      }
      
      public function set §09§(param1:Boolean) : void
      {
         this.§1v§ = param1;
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
         return this.§&n§;
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
