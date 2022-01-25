package §<!$§
{
   import §#!S§.§&I§;
   import §#!S§.§-v§;
   import §9]§.§0`§;
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
      
      private static var §]&§:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var §-!<§:Rectangle = new Rectangle();
      
      private static var §'§:Matrix = new Matrix();
      
      private static var §4!P§:Matrix = new Matrix();
      
      protected static var §!`§:int = 0;
       
      
      private var §;i§:Number;
      
      private var §%i§:Number;
      
      private var §[D§:Number;
      
      private var §+?§:Number;
      
      private var §'!3§:Number;
      
      private var §"n§:Number;
      
      private var §33§:Number;
      
      private var §0@§:Number;
      
      private var §<B§:Boolean;
      
      private var §&!0§:Boolean;
      
      private var mName:String;
      
      private var §+!M§:Number;
      
      private var §;c§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §&I§();
         }
         this.§;i§ = this.§%i§ = this.§[D§ = this.§+?§ = this.§33§ = 0;
         this.§'!3§ = this.§"n§ = this.§0@§ = 1;
         this.§<B§ = this.§&!0§ = true;
         this.§+!M§ = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function §3!;§(param1:Boolean = false) : void
      {
         if(this.§;c§)
         {
            this.§;c§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §>]§(param1:DisplayObject, param2:Matrix = null) : Matrix
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
         if(param1 == this.§;c§ || param1 == null && this.§;c§ == null)
         {
            if(this.§[D§ != 0 || this.§+?§ != 0)
            {
               param2.translate(-this.§[D§,-this.§+?§);
            }
            if(this.§'!3§ != 1 || this.§"n§ != 1)
            {
               param2.scale(this.§'!3§,this.§"n§);
            }
            if(this.§33§ != 0)
            {
               param2.rotate(this.§33§);
            }
            if(this.§;i§ != 0 || this.§%i§ != 0)
            {
               param2.translate(this.§;i§,this.§%i§);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.§>]§(_loc4_.§;c§,§'§);
               param2.concat(§'§);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.§;c§ == this)
         {
            param1.§>]§(this,param2);
            param2.invert();
            return param2;
         }
         §]&§.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            §]&§.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && §]&§.indexOf(_loc4_) == -1)
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
            _loc4_.§>]§(_loc4_.§;c§,§'§);
            param2.concat(§'§);
            _loc4_ = _loc4_.parent;
         }
         §4!P§.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.§>]§(_loc4_.§;c§,§'§);
            §4!P§.concat(§'§);
            _loc4_ = _loc4_.parent;
         }
         §4!P§.invert();
         param2.concat(§4!P§);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new §-v§("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§<B§ || !this.§&!0§))
         {
            return null;
         }
         if(this.getBounds(this,§-!<§).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         §4!P§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§>]§(_loc2_.§;c§,§'§);
            §4!P§.concat(§'§);
            _loc2_ = _loc2_.parent;
         }
         return §4!P§.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         §4!P§.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.§>]§(_loc2_.§;c§,§'§);
            §4!P§.concat(§'§);
            _loc2_ = _loc2_.parent;
         }
         §4!P§.invert();
         return §4!P§.transformPoint(param1);
      }
      
      public function render(param1:§0`§, param2:Number) : void
      {
         throw new §-v§("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§+!M§)
            {
               return;
            }
            this.§+!M§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §7! §(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.§;c§;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = §;!8§();
         if(param1 != this.§;c§ && this.§;c§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.§;c§ = param1;
         if(this.§;c§ && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§;c§)
         {
            this.§;c§.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.§;c§)
         {
            this.§;c§.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get §9!A§() : Matrix
      {
         return this.§>]§(this.§;c§);
      }
      
      public function get §#e§() : Rectangle
      {
         return this.getBounds(this.§;c§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§;c§,§-!<§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§'!3§ = 1;
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
         return this.getBounds(this.§;c§,§-!<§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§"n§ = 1;
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
         var _loc2_:Array = §;!8§();
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
      
      public function §9G§(param1:Matrix3D) : void
      {
         if(this.§33§ == 0 && this.§'!3§ == 1 && this.§"n§ == 1)
         {
            if(this.§;i§ + this.§[D§ != 0 || this.§%i§ + this.§+?§ != 0)
            {
               param1.prependTranslation(this.§;i§ + this.§[D§,this.§%i§ + this.§+?§,0);
            }
         }
         else
         {
            if(this.§;i§ != 0 || this.§%i§ != 0)
            {
               param1.prependTranslation(this.§;i§,this.§%i§,0);
            }
            if(this.§33§ != 0)
            {
               param1.prependRotation(this.§33§ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.§'!3§ != 1 || this.§"n§ != 1)
            {
               param1.prependScale(this.§'!3§,this.§"n§,1);
            }
            if(this.§[D§ != 0 || this.§+?§ != 0)
            {
               param1.prependTranslation(this.§[D§,this.§+?§,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.§;i§;
      }
      
      public function set x(param1:Number) : void
      {
         this.§;i§ = param1;
      }
      
      public function get y() : Number
      {
         return this.§%i§;
      }
      
      public function set y(param1:Number) : void
      {
         this.§%i§ = param1;
      }
      
      public function get pivotX() : Number
      {
         return this.§[D§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§[D§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§+?§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§+?§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§'!3§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§'!3§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§"n§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§"n§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§33§;
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
         this.§33§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.§0@§;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.§0@§ = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§<B§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§<B§ = param1;
      }
      
      public function get §2!-§() : Boolean
      {
         return this.§&!0§;
      }
      
      public function set §2!-§(param1:Boolean) : void
      {
         this.§&!0§ = param1;
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
         return this.§;c§;
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
