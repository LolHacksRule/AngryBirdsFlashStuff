package §->§
{
   import §&I§.§?!§;
   import §7!9§.§4!3§;
   import §7!9§.§=]§;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.TouchEvent;
   
   public class DisplayObject extends EventDispatcher
   {
      
      private static var §]!5§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §-s§:Rectangle = new Rectangle();
      
      private static var §0j§:Matrix = new Matrix();
      
      private static var §8!B§:Matrix = new Matrix();
      
      protected static var §3-§:int = 0;
       
      
      private var §#d§:Number;
      
      private var §7^§:Number;
      
      private var §&K§:Number;
      
      private var §]r§:Number;
      
      private var §3p§:Number;
      
      private var §`A§:Number;
      
      private var §9a§:Number;
      
      private var §throw§:Number;
      
      private var §%s§:Boolean;
      
      private var §!!=§:Boolean;
      
      private var mName:String;
      
      private var §<!1§:Number;
      
      private var §1L§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §=]§();
         }
         this.§#d§ = this.§7^§ = this.§&K§ = this.§]r§ = this.§9a§ = 0;
         this.§3p§ = this.§`A§ = this.§throw§ = 1;
         this.§%s§ = this.§!!=§ = true;
         this.§<!1§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §"o§(param1:Boolean = false) : void
      {
         if(this.§1L§)
         {
            this.§1L§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function § I§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§1L§ || param1 == null && this.§1L§ == null)
         {
            if(this.§&K§ != 0 || this.§]r§ != 0)
            {
               param2.translate(-this.§&K§,-this.§]r§);
            }
            if(this.§3p§ != 1 || this.§`A§ != 1)
            {
               param2.scale(this.§3p§,this.§`A§);
            }
            if(this.§9a§ != 0)
            {
               param2.rotate(this.§9a§);
            }
            if(this.§#d§ != 0 || this.§7^§ != 0)
            {
               param2.translate(this.§#d§,this.§7^§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§ I§(_loc4_.§1L§,§0j§);
               param2.concat(§0j§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§1L§ == this)
         {
            param1.§ I§(this,param2);
            param2.invert();
            return param2;
         }
         §]!5§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §]!5§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §]!5§.indexOf(_loc4_) == -1)
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
            _loc4_.§ I§(_loc4_.§1L§,§0j§);
            param2.concat(§0j§);
            _loc4_ = _loc4_.parent;
         }
         §8!B§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§ I§(_loc4_.§1L§,§0j§);
            §8!B§.concat(§0j§);
            _loc4_ = _loc4_.parent;
         }
         §8!B§.invert();
         param2.concat(§8!B§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §4!3§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§%s§ || !this.§!!=§))
         {
            return null;
         }
         if(this.getBounds(this,§-s§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §8!B§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§ I§(_loc2_.§1L§,§0j§);
            §8!B§.concat(§0j§);
            _loc2_ = _loc2_.parent;
         }
         return §8!B§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §8!B§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§ I§(_loc2_.§1L§,§0j§);
            §8!B§.concat(§0j§);
            _loc2_ = _loc2_.parent;
         }
         §8!B§.invert();
         return §8!B§.transformPoint(param1);
      }
      
      public function render(param1:§?!§, param2:Number) : void
      {
         throw new §4!3§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§<!1§)
            {
               return;
            }
            this.§<!1§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §3Z§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§1L§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §1W§();
         if(param1 != this.§1L§ && this.§1L§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§1L§ = param1;
         if(this.§1L§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§1L§)
         {
            this.§1L§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§1L§)
         {
            this.§1L§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §`$§() : Matrix
      {
         return this.§ I§(this.§1L§);
      }
      
      public function get §set §() : Rectangle
      {
         return this.getBounds(this.§1L§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§1L§,§-s§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§3p§ = 1;
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
         return this.getBounds(this.§1L§,§-s§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§`A§ = 1;
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
         var _loc2_:Array = §1W§();
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
      
      public function get x() : Number
      {
         return this.§#d§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§#d§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§7^§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§7^§ = param1;
      }
      
      public function get pivotX() : Number
      {
         return this.§&K§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§&K§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§]r§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§]r§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§3p§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§3p§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§`A§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§`A§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§9a§;
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
         this.§9a§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.§throw§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§throw§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§%s§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§%s§ = param1;
      }
      
      public function get §'!D§() : Boolean
      {
         return this.§!!=§;
      }
      
      public function set §'!D§(param1:Boolean) : void
      {
         this.§!!=§ = param1;
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
         return this.§1L§;
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
