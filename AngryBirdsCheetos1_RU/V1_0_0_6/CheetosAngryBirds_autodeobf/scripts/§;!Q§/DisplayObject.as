package §;!Q§
{
   import §-!§.§3!5§;
   import §9!6§.§&!;§;
   import §9!6§.§1=§;
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
      
      private static var §+5§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §`G§:Rectangle = new Rectangle();
      
      private static var §@-§:Matrix = new Matrix();
      
      private static var §<o§:Matrix = new Matrix();
      
      protected static var §9!X§:int = 0;
       
      
      private var §"9§:Number;
      
      private var §[g§:Number;
      
      private var §1!H§:Number;
      
      private var §+!`§:Number;
      
      private var §4!9§:Number;
      
      private var §[m§:Number;
      
      private var §-w§:Number;
      
      private var mAlpha:Number;
      
      private var §'S§:Boolean;
      
      private var §`!`§:Boolean;
      
      private var mName:String;
      
      private var §=^§:Number;
      
      private var §]!!§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §&!;§();
         }
         this.§"9§ = this.§[g§ = this.§1!H§ = this.§+!`§ = this.§-w§ = 0;
         this.§4!9§ = this.§[m§ = this.mAlpha = 1;
         this.§'S§ = this.§`!`§ = true;
         this.§=^§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §=!F§(param1:Boolean = false) : void
      {
         if(this.§]!!§)
         {
            this.§]!!§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §@!X§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§]!!§ || param1 == null && this.§]!!§ == null)
         {
            if(this.§1!H§ != 0 || this.§+!`§ != 0)
            {
               param2.translate(-this.§1!H§,-this.§+!`§);
            }
            if(this.§4!9§ != 1 || this.§[m§ != 1)
            {
               param2.scale(this.§4!9§,this.§[m§);
            }
            if(this.§-w§ != 0)
            {
               param2.rotate(this.§-w§);
            }
            if(this.§"9§ != 0 || this.§[g§ != 0)
            {
               param2.translate(this.§"9§,this.§[g§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§@!X§(_loc4_.§]!!§,§@-§);
               param2.concat(§@-§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§]!!§ == this)
         {
            param1.§@!X§(this,param2);
            param2.invert();
            return param2;
         }
         §+5§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §+5§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §+5§.indexOf(_loc4_) == -1)
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
            _loc4_.§@!X§(_loc4_.§]!!§,§@-§);
            param2.concat(§@-§);
            _loc4_ = _loc4_.parent;
         }
         §<o§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§@!X§(_loc4_.§]!!§,§@-§);
            §<o§.concat(§@-§);
            _loc4_ = _loc4_.parent;
         }
         §<o§.invert();
         param2.concat(§<o§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §1=§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§'S§ || !this.§`!`§))
         {
            return null;
         }
         if(this.getBounds(this,§`G§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §<o§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§@!X§(_loc2_.§]!!§,§@-§);
            §<o§.concat(§@-§);
            _loc2_ = _loc2_.parent;
         }
         return §<o§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §<o§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§@!X§(_loc2_.§]!!§,§@-§);
            §<o§.concat(§@-§);
            _loc2_ = _loc2_.parent;
         }
         §<o§.invert();
         return §<o§.transformPoint(param1);
      }
      
      public function render(param1:§3!5§, param2:Number) : void
      {
         throw new §1=§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§=^§)
            {
               return;
            }
            this.§=^§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §#&§(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§]!!§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §-7§();
         if(param1 != this.§]!!§ && this.§]!!§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§]!!§ = param1;
         if(this.§]!!§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§]!!§)
         {
            this.§]!!§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§]!!§)
         {
            this.§]!!§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §#!3§() : Matrix
      {
         return this.§@!X§(this.§]!!§);
      }
      
      public function get §6[§() : Rectangle
      {
         return this.getBounds(this.§]!!§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§]!!§,§`G§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§4!9§ = 1;
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
         return this.getBounds(this.§]!!§,§`G§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§[m§ = 1;
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
         var _loc2_:Array = §-7§();
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
      
      public function §8!K§(param1:Matrix3D) : void
      {
         if(this.§-w§ == 0 && this.§4!9§ == 1 && this.§[m§ == 1)
         {
            if(this.§"9§ + this.§1!H§ != 0 || this.§[g§ + this.§+!`§ != 0)
            {
               param1.prependTranslation(this.§"9§ + this.§1!H§,this.§[g§ + this.§+!`§,0);
            }
         }
         else
         {
            if(this.§"9§ != 0 || this.§[g§ != 0)
            {
               param1.prependTranslation(this.§"9§,this.§[g§,0);
            }
            if(this.§-w§ != 0)
            {
               param1.prependRotation(this.§-w§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§4!9§ != 1 || this.§[m§ != 1)
            {
               param1.prependScale(this.§4!9§,this.§[m§,1);
            }
            if(this.§1!H§ != 0 || this.§+!`§ != 0)
            {
               param1.prependTranslation(this.§1!H§,this.§+!`§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§"9§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§"9§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§[g§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§[g§ = param1;
      }
      
      public function get pivotX() : Number
      {
         return this.§1!H§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§1!H§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§+!`§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§+!`§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§4!9§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§4!9§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§[m§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§[m§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§-w§;
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
         this.§-w§ = param1;
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
         return this.§'S§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§'S§ = param1;
      }
      
      public function get §+!T§() : Boolean
      {
         return this.§`!`§;
      }
      
      public function set §+!T§(param1:Boolean) : void
      {
         this.§`!`§ = param1;
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
         return this.§]!!§;
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
