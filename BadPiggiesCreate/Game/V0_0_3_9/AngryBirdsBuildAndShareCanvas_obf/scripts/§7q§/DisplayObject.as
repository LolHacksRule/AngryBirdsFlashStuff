package §7q§
{
   import §-N§.§,!p§;
   import §3k§.§,!a§;
   import §3k§.§6!9§;
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
      
      private static var §9!;§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §4q§:Rectangle = new Rectangle();
      
      private static var §+F§:Matrix = new Matrix();
      
      private static var §,I§:Matrix = new Matrix();
      
      protected static var §<!@§:int = 0;
       
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §6o§:Number;
      
      private var §["2§:Number;
      
      private var §7<§:Number;
      
      private var §4O§:Number;
      
      private var §-3§:Number;
      
      private var §&"0§:Number;
      
      private var § @§:Boolean;
      
      private var §^""§:Boolean;
      
      private var mName:String;
      
      private var §=!p§:Number;
      
      private var §+!l§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §6!9§();
         }
         this.mX = this.mY = this.§6o§ = this.§["2§ = this.§-3§ = 0;
         this.§7<§ = this.§4O§ = this.§&"0§ = 1;
         this.§ @§ = this.§^""§ = true;
         this.§=!p§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §,!Q§(param1:Boolean = false) : void
      {
         if(this.§+!l§)
         {
            this.§+!l§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function § !a§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§+!l§ || param1 == null && this.§+!l§ == null)
         {
            if(this.§6o§ != 0 || this.§["2§ != 0)
            {
               param2.translate(-this.§6o§,-this.§["2§);
            }
            if(this.§7<§ != 1 || this.§4O§ != 1)
            {
               param2.scale(this.§7<§,this.§4O§);
            }
            if(this.§-3§ != 0)
            {
               param2.rotate(this.§-3§);
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
               _loc4_.§ !a§(_loc4_.§+!l§,§+F§);
               param2.concat(§+F§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§+!l§ == this)
         {
            param1.§ !a§(this,param2);
            param2.invert();
            return param2;
         }
         §9!;§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §9!;§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §9!;§.indexOf(_loc4_) == -1)
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
            _loc4_.§ !a§(_loc4_.§+!l§,§+F§);
            param2.concat(§+F§);
            _loc4_ = _loc4_.parent;
         }
         §,I§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§ !a§(_loc4_.§+!l§,§+F§);
            §,I§.concat(§+F§);
            _loc4_ = _loc4_.parent;
         }
         §,I§.invert();
         param2.concat(§,I§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §,!a§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§ @§ || !this.§^""§))
         {
            return null;
         }
         if(this.getBounds(this,§4q§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §,I§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§ !a§(_loc2_.§+!l§,§+F§);
            §,I§.concat(§+F§);
            _loc2_ = _loc2_.parent;
         }
         return §,I§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §,I§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§ !a§(_loc2_.§+!l§,§+F§);
            §,I§.concat(§+F§);
            _loc2_ = _loc2_.parent;
         }
         §,I§.invert();
         return §,I§.transformPoint(param1);
      }
      
      public function render(param1:§,!p§, param2:Number) : void
      {
         throw new §,!a§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§=!p§)
            {
               return;
            }
            this.§=!p§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §2%§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§+!l§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §%"2§();
         if(param1 != this.§+!l§ && this.§+!l§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§+!l§ = param1;
         if(this.§+!l§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§+!l§)
         {
            this.§+!l§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§+!l§)
         {
            this.§+!l§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §;+§() : Matrix
      {
         return this.§ !a§(this.§+!l§);
      }
      
      public function get §2!"§() : Rectangle
      {
         return this.getBounds(this.§+!l§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§+!l§,§4q§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§7<§ = 1;
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
         return this.getBounds(this.§+!l§,§4q§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§4O§ = 1;
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
         var _loc2_:Array = §%"2§();
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
      
      public function §`!`§(param1:Matrix3D) : void
      {
         if(this.§-3§ == 0 && this.§7<§ == 1 && this.§4O§ == 1)
         {
            if(this.mX + this.§6o§ != 0 || this.mY + this.§["2§ != 0)
            {
               param1.prependTranslation(this.mX + this.§6o§,this.mY + this.§["2§,0);
            }
         }
         else
         {
            if(this.mX != 0 || this.mY != 0)
            {
               param1.prependTranslation(this.mX,this.mY,0);
            }
            if(this.§-3§ != 0)
            {
               param1.prependRotation(this.§-3§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§7<§ != 1 || this.§4O§ != 1)
            {
               param1.prependScale(this.§7<§,this.§4O§,1);
            }
            if(this.§6o§ != 0 || this.§["2§ != 0)
            {
               param1.prependTranslation(this.§6o§,this.§["2§,0);
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
         return this.§6o§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§6o§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§["2§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§["2§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§7<§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§7<§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§4O§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§4O§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§-3§;
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
         this.§-3§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.§&"0§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§&"0§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§ @§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§ @§ = param1;
      }
      
      public function get §7!&§() : Boolean
      {
         return this.§^""§;
      }
      
      public function set §7!&§(param1:Boolean) : void
      {
         this.§^""§ = param1;
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
         return this.§+!l§;
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
