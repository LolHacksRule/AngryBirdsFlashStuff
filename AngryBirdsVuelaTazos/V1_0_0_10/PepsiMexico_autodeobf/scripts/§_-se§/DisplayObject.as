package §_-se§
{
   import §_-B2§.§_-Ke§;
   import §_-dQ§.§_-Pa§;
   import §_-dQ§.§_-wO§;
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
       
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §_-ui§:Number;
      
      private var §_-np§:Number;
      
      private var §_-bk§:Number;
      
      private var §_-ZC§:Number;
      
      private var §_-Gc§:Number;
      
      private var mAlpha:Number;
      
      private var §_-Jv§:Boolean;
      
      private var §_-GF§:Boolean;
      
      private var mName:String;
      
      private var §_-nE§:Number;
      
      private var §_-I§:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new §_-wO§();
         }
         this.mX = this.mY = this.§_-ui§ = this.§_-np§ = this.§_-Gc§ = 0;
         this.§_-bk§ = this.§_-ZC§ = this.mAlpha = 1;
         this.§_-Jv§ = this.§_-GF§ = true;
         this.§_-nE§ = -1;
      }
      
      public function dispose() : void
      {
         §_-7a§();
      }
      
      public function §_-R1§(param1:Boolean = false) : void
      {
         if(this.§_-I§)
         {
            this.§_-I§.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function §_-h3§(param1:DisplayObject) : Matrix
      {
         var _loc2_:Matrix = null;
         var _loc3_:Matrix = null;
         if(param1 == this)
         {
            return new Matrix();
         }
         if(param1 == null)
         {
            _loc2_ = new Matrix();
            var _loc6_:DisplayObject = this;
            while(_loc6_)
            {
               _loc2_.concat(_loc6_.§_-kQ§);
               _loc6_ = _loc6_.parent;
            }
            return _loc2_;
         }
         if(param1.§_-I§ == this)
         {
            _loc3_ = param1.§_-kQ§;
            _loc3_.invert();
            return _loc3_;
         }
         if(param1 == this.§_-I§)
         {
            return this.§_-kQ§;
         }
         var _loc4_:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
         var _loc5_:DisplayObject = null;
         _loc6_ = this;
         while(_loc6_)
         {
            _loc4_.push(_loc6_);
            _loc6_ = _loc6_.parent;
         }
         _loc6_ = param1;
         while(_loc6_ && _loc4_.indexOf(_loc6_) == -1)
         {
            _loc6_ = _loc6_.parent;
         }
         if(_loc6_ == null)
         {
            throw new ArgumentError("Object not connected to target");
         }
         _loc5_ = _loc6_;
         _loc2_ = new Matrix();
         _loc6_ = this;
         while(_loc6_ != _loc5_)
         {
            _loc2_.concat(_loc6_.§_-kQ§);
            _loc6_ = _loc6_.parent;
         }
         _loc3_ = new Matrix();
         _loc6_ = param1;
         while(_loc6_ != _loc5_)
         {
            _loc3_.concat(_loc6_.§_-kQ§);
            _loc6_ = _loc6_.parent;
         }
         _loc3_.invert();
         _loc2_.concat(_loc3_);
         return _loc2_;
      }
      
      public function getBounds(param1:DisplayObject) : Rectangle
      {
         throw new §_-Pa§("Method needs to be implemented in subclass");
      }
      
      public function hitTestPoint(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.§_-Jv§ || !this.§_-GF§))
         {
            return null;
         }
         if(this.getBounds(this).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         var _loc2_:Matrix = new Matrix();
         var _loc3_:DisplayObject = this;
         while(_loc3_)
         {
            _loc2_.concat(_loc3_.§_-kQ§);
            _loc3_ = _loc3_.parent;
         }
         return _loc2_.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         var _loc2_:Matrix = new Matrix();
         var _loc3_:DisplayObject = this;
         while(_loc3_)
         {
            _loc2_.concat(_loc3_.§_-kQ§);
            _loc3_ = _loc3_.parent;
         }
         _loc2_.invert();
         return _loc2_.transformPoint(param1);
      }
      
      public function render(param1:§_-Ke§, param2:Number) : void
      {
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.§_-nE§)
            {
               return;
            }
            this.§_-nE§ = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function §_-p-§(param1:DisplayObjectContainer) : void
      {
         this.§_-I§ = param1;
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function §_-3W§(param1:Matrix3D) : void
      {
         if(this.mX != 0 || this.mY != 0)
         {
            param1.prependTranslation(this.mX,this.mY,0);
         }
         if(this.§_-Gc§ != 0)
         {
            param1.prependRotation(this.§_-Gc§ / Math.PI * 180,Vector3D.Z_AXIS);
         }
         if(this.§_-bk§ != 1 || this.§_-ZC§ != 1)
         {
            param1.prependScale(this.§_-bk§,this.§_-ZC§,1);
         }
         if(this.§_-ui§ != 0 || this.§_-np§ != 0)
         {
            param1.prependTranslation(-this.§_-ui§,-this.§_-np§,0);
         }
      }
      
      public function get §_-kQ§() : Matrix
      {
         var _loc1_:Matrix = new Matrix();
         if(this.§_-ui§ != 0 || this.§_-np§ != 0)
         {
            _loc1_.translate(-this.§_-ui§,-this.§_-np§);
         }
         if(this.§_-bk§ != 1 || this.§_-ZC§ != 1)
         {
            _loc1_.scale(this.§_-bk§,this.§_-ZC§);
         }
         if(this.§_-Gc§ != 0)
         {
            _loc1_.rotate(this.§_-Gc§);
         }
         if(this.mX != 0 || this.mY != 0)
         {
            _loc1_.translate(this.mX,this.mY);
         }
         return _loc1_;
      }
      
      public function get §_-Br§() : Rectangle
      {
         return this.getBounds(this.§_-I§);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.§_-I§).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.§_-bk§ = 1;
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
         return this.getBounds(this.§_-I§).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.§_-ZC§ = 1;
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
         return this.§_-ui§;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.§_-ui§ = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.§_-np§;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.§_-np§ = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.§_-bk§;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.§_-bk§ = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.§_-ZC§;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.§_-ZC§ = param1;
      }
      
      public function get rotation() : Number
      {
         return this.§_-Gc§;
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
         this.§_-Gc§ = param1;
      }
      
      public function get alpha() : Number
      {
         return this.mAlpha;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.mAlpha = Math.max(0,Math.min(1,param1));
      }
      
      public function get visible() : Boolean
      {
         return this.§_-Jv§;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§_-Jv§ = param1;
      }
      
      public function get §_-kU§() : Boolean
      {
         return this.§_-GF§;
      }
      
      public function set §_-kU§(param1:Boolean) : void
      {
         this.§_-GF§ = param1;
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
         return this.§_-I§;
      }
      
      public function get stage() : Stage
      {
         return this.root as Stage;
      }
   }
}
