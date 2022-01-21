package §&c§
{
   import § %§.§3!e§;
   import §^!L§.§4!L§;
   import §^!L§.§5H§;
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
      
      private static var §7x§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §]!E§:Rectangle = new Rectangle();
      
      private static var §"!3§:Matrix = new Matrix();
      
      private static var §1!e§:Matrix = new Matrix();
      
      protected static var §+K§:int = 0;
       
      
      private var § !^§:Number;
      
      private var §0p§:Number;
      
      private var §[3§:Number;
      
      private var §75§:Number;
      
      private var §+-§:Number;
      
      private var §'H§:Number;
      
      private var §3!+§:Number;
      
      private var §24§:Number;
      
      private var §#!+§:Boolean;
      
      private var §!e§:Boolean;
      
      private var mName:String;
      
      private var §&!8§:Number;
      
      private var §`!<§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §5H§();
         }
         this.§ !^§ = this.§0p§ = this.§[3§ = this.§75§ = this.§3!+§ = 0;
         this.§+-§ = this.§'H§ = this.§24§ = 1;
         this.§#!+§ = this.§!e§ = true;
         this.§&!8§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §`!D§(param1:Boolean = false) : void
      {
         if(this.§`!<§)
         {
            this.§`!<§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §1d§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§`!<§ || param1 == null && this.§`!<§ == null)
         {
            if(this.§[3§ != 0 || this.§75§ != 0)
            {
               param2.translate(-this.§[3§,-this.§75§);
            }
            if(this.§+-§ != 1 || this.§'H§ != 1)
            {
               param2.scale(this.§+-§,this.§'H§);
            }
            if(this.§3!+§ != 0)
            {
               param2.rotate(this.§3!+§);
            }
            if(this.§ !^§ != 0 || this.§0p§ != 0)
            {
               param2.translate(this.§ !^§,this.§0p§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§1d§(_loc4_.§`!<§,§"!3§);
               param2.concat(§"!3§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§`!<§ == this)
         {
            param1.§1d§(this,param2);
            param2.invert();
            return param2;
         }
         §7x§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §7x§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §7x§.indexOf(_loc4_) == -1)
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
            _loc4_.§1d§(_loc4_.§`!<§,§"!3§);
            param2.concat(§"!3§);
            _loc4_ = _loc4_.parent;
         }
         §1!e§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§1d§(_loc4_.§`!<§,§"!3§);
            §1!e§.concat(§"!3§);
            _loc4_ = _loc4_.parent;
         }
         §1!e§.invert();
         param2.concat(§1!e§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §4!L§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§#!+§ || !this.§!e§))
         {
            return null;
         }
         if(this.getBounds(this,§]!E§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §1!e§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§1d§(_loc2_.§`!<§,§"!3§);
            §1!e§.concat(§"!3§);
            _loc2_ = _loc2_.parent;
         }
         return §1!e§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §1!e§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§1d§(_loc2_.§`!<§,§"!3§);
            §1!e§.concat(§"!3§);
            _loc2_ = _loc2_.parent;
         }
         §1!e§.invert();
         return §1!e§.transformPoint(param1);
      }
      
      public function render(param1:§3!e§, param2:Number) : void
      {
         throw new §4!L§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§&!8§)
            {
               return;
            }
            this.§&!8§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §1<§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§`!<§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §"!>§();
         if(param1 != this.§`!<§ && this.§`!<§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§`!<§ = param1;
         if(this.§`!<§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§`!<§)
         {
            this.§`!<§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§`!<§)
         {
            this.§`!<§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §@!4§() : Matrix
      {
         return this.§1d§(this.§`!<§);
      }
      
      public function get §`!5§() : Rectangle
      {
         return this.getBounds(this.§`!<§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§`!<§,§]!E§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§+-§ = 1;
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
         return this.getBounds(this.§`!<§,§]!E§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§'H§ = 1;
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
         var _loc2_:Array = §"!>§();
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
      
      public function §=L§(param1:Matrix3D) : void
      {
         if(this.§3!+§ == 0 && this.§+-§ == 1 && this.§'H§ == 1)
         {
            if(this.§ !^§ + this.§[3§ != 0 || this.§0p§ + this.§75§ != 0)
            {
               param1.prependTranslation(this.§ !^§ + this.§[3§,this.§0p§ + this.§75§,0);
            }
         }
         else
         {
            if(this.§ !^§ != 0 || this.§0p§ != 0)
            {
               param1.prependTranslation(this.§ !^§,this.§0p§,0);
            }
            if(this.§3!+§ != 0)
            {
               param1.prependRotation(this.§3!+§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§+-§ != 1 || this.§'H§ != 1)
            {
               param1.prependScale(this.§+-§,this.§'H§,1);
            }
            if(this.§[3§ != 0 || this.§75§ != 0)
            {
               param1.prependTranslation(this.§[3§,this.§75§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§ !^§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§ !^§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§0p§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§0p§ = param1;
      }
      
      public function get pivotX() : Number
      {
         return this.§[3§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§[3§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§75§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§75§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§+-§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§+-§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§'H§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§'H§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§3!+§;
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
         this.§3!+§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.§24§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§24§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§#!+§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§#!+§ = param1;
      }
      
      public function get §8m§() : Boolean
      {
         return this.§!e§;
      }
      
      public function set §8m§(param1:Boolean) : void
      {
         this.§!e§ = param1;
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
         return this.§`!<§;
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
