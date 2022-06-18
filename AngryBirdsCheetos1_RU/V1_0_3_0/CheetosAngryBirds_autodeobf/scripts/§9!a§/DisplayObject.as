package §9!a§
{
   import §>N§.§>q§;
   import §[y§.§ "§;
   import §[y§.§ 8§;
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
      
      private static var §&X§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §"n§:Rectangle = new Rectangle();
      
      private static var §&h§:Matrix = new Matrix();
      
      private static var §&!E§:Matrix = new Matrix();
      
      protected static var §7!U§:int = 0;
       
      
      private var §!-§:Number;
      
      private var §[4§:Number;
      
      private var §=3§:Number;
      
      private var §`!G§:Number;
      
      private var §0!6§:Number;
      
      private var §@M§:Number;
      
      private var §0x§:Number;
      
      private var mAlpha:Number;
      
      private var §^!6§:Boolean;
      
      private var §?L§:Boolean;
      
      private var mName:String;
      
      private var §=U§:Number;
      
      private var §4%§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new § "§();
         }
         this.§!-§ = this.§[4§ = this.§=3§ = this.§`!G§ = this.§0x§ = 0;
         this.§0!6§ = this.§@M§ = this.mAlpha = 1;
         this.§^!6§ = this.§?L§ = true;
         this.§=U§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §'+§(param1:Boolean = false) : void
      {
         if(this.§4%§)
         {
            this.§4%§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §!!2§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§4%§ || param1 == null && this.§4%§ == null)
         {
            if(this.§=3§ != 0 || this.§`!G§ != 0)
            {
               param2.translate(-this.§=3§,-this.§`!G§);
            }
            if(this.§0!6§ != 1 || this.§@M§ != 1)
            {
               param2.scale(this.§0!6§,this.§@M§);
            }
            if(this.§0x§ != 0)
            {
               param2.rotate(this.§0x§);
            }
            if(this.§!-§ != 0 || this.§[4§ != 0)
            {
               param2.translate(this.§!-§,this.§[4§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§!!2§(_loc4_.§4%§,§&h§);
               param2.concat(§&h§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§4%§ == this)
         {
            param1.§!!2§(this,param2);
            param2.invert();
            return param2;
         }
         §&X§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §&X§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §&X§.indexOf(_loc4_) == -1)
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
            _loc4_.§!!2§(_loc4_.§4%§,§&h§);
            param2.concat(§&h§);
            _loc4_ = _loc4_.parent;
         }
         §&!E§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§!!2§(_loc4_.§4%§,§&h§);
            §&!E§.concat(§&h§);
            _loc4_ = _loc4_.parent;
         }
         §&!E§.invert();
         param2.concat(§&!E§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new § 8§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§^!6§ || !this.§?L§))
         {
            return null;
         }
         if(this.getBounds(this,§"n§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §&!E§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§!!2§(_loc2_.§4%§,§&h§);
            §&!E§.concat(§&h§);
            _loc2_ = _loc2_.parent;
         }
         return §&!E§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §&!E§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§!!2§(_loc2_.§4%§,§&h§);
            §&!E§.concat(§&h§);
            _loc2_ = _loc2_.parent;
         }
         §&!E§.invert();
         return §&!E§.transformPoint(param1);
      }
      
      public function render(param1:§>q§, param2:Number) : void
      {
         throw new § 8§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§=U§)
            {
               return;
            }
            this.§=U§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §1P§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§4%§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §6D§();
         if(param1 != this.§4%§ && this.§4%§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§4%§ = param1;
         if(this.§4%§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§4%§)
         {
            this.§4%§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§4%§)
         {
            this.§4%§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §0!#§() : Matrix
      {
         return this.§!!2§(this.§4%§);
      }
      
      public function get §#!F§() : Rectangle
      {
         return this.getBounds(this.§4%§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§4%§,§"n§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§0!6§ = 1;
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
         return this.getBounds(this.§4%§,§"n§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§@M§ = 1;
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
         var _loc2_:Array = §6D§();
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
      
      public function §7S§(param1:Matrix3D) : void
      {
         if(this.§0x§ == 0 && this.§0!6§ == 1 && this.§@M§ == 1)
         {
            if(this.§!-§ + this.§=3§ != 0 || this.§[4§ + this.§`!G§ != 0)
            {
               param1.prependTranslation(this.§!-§ + this.§=3§,this.§[4§ + this.§`!G§,0);
            }
         }
         else
         {
            if(this.§!-§ != 0 || this.§[4§ != 0)
            {
               param1.prependTranslation(this.§!-§,this.§[4§,0);
            }
            if(this.§0x§ != 0)
            {
               param1.prependRotation(this.§0x§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§0!6§ != 1 || this.§@M§ != 1)
            {
               param1.prependScale(this.§0!6§,this.§@M§,1);
            }
            if(this.§=3§ != 0 || this.§`!G§ != 0)
            {
               param1.prependTranslation(this.§=3§,this.§`!G§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§!-§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§!-§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§[4§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§[4§ = param1;
      }
      
      public function get pivotX() : Number
      {
         return this.§=3§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§=3§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§`!G§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§`!G§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§0!6§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§0!6§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§@M§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§@M§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§0x§;
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
         this.§0x§ = param1;
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
         return this.§^!6§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§^!6§ = param1;
      }
      
      public function get §`!M§() : Boolean
      {
         return this.§?L§;
      }
      
      public function set §`!M§(param1:Boolean) : void
      {
         this.§?L§ = param1;
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
         return this.§4%§;
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
