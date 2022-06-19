package §_-Ls§
{
   import flash.errors.IllegalOperationError;
   import flash.geom.Point;
   import starling.events.Event;
   import starling.events.§_-TW§;
   
   public class Stage extends DisplayObjectContainer
   {
       
      
      private var §_-aC§:int;
      
      private var §_-3v§:int;
      
      private var §_-C4§:uint;
      
      private var §_-Af§:Vector.<DisplayObject>;
      
      public function Stage(param1:int, param2:int, param3:uint = 0)
      {
         super();
         this.§_-aC§ = param1;
         this.§_-3v§ = param2;
         this.§_-C4§ = param3;
         this.§_-Af§ = new Vector.<DisplayObject>();
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.§_-Af§ = null;
      }
      
      override public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:int = 0;
         if(param2 == §_-TW§.ENTER_FRAME)
         {
            _loc3_ = this.§_-Af§.indexOf(param1);
            if(_loc3_ < 0)
            {
               this.§_-Af§.push(param1);
            }
         }
      }
      
      override public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:int = 0;
         if(param2 == §_-TW§.ENTER_FRAME)
         {
            _loc3_ = this.§_-Af§.indexOf(param1);
            if(_loc3_ >= 0)
            {
               this.§_-Af§.splice(_loc3_,1);
            }
         }
      }
      
      public function §_-DS§(param1:Number) : void
      {
         var _loc2_:§_-TW§ = null;
         var _loc3_:DisplayObject = null;
         if(this.§_-Af§.length > 0)
         {
            _loc2_ = new §_-TW§(Event.ENTER_FRAME,param1);
            for each(_loc3_ in this.§_-Af§)
            {
               _loc3_.dispatchEvent(_loc2_);
            }
         }
      }
      
      override public function hitTestPoint(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!visible || !§_-K2§))
         {
            return null;
         }
         var _loc3_:DisplayObject = super.hitTestPoint(param1,param2);
         if(_loc3_ == null)
         {
            _loc3_ = this;
         }
         return _loc3_;
      }
      
      override public function set width(param1:Number) : void
      {
         throw new IllegalOperationError("Cannot set width of stage");
      }
      
      override public function set height(param1:Number) : void
      {
         throw new IllegalOperationError("Cannot set height of stage");
      }
      
      override public function set x(param1:Number) : void
      {
         throw new IllegalOperationError("Cannot set x-coordinate of stage");
      }
      
      override public function set y(param1:Number) : void
      {
         throw new IllegalOperationError("Cannot set y-coordinate of stage");
      }
      
      override public function set scaleX(param1:Number) : void
      {
         throw new IllegalOperationError("Cannot scale stage");
      }
      
      override public function set scaleY(param1:Number) : void
      {
         throw new IllegalOperationError("Cannot scale stage");
      }
      
      override public function set rotation(param1:Number) : void
      {
         throw new IllegalOperationError("Cannot rotate stage");
      }
      
      override public function get color() : uint
      {
         return this.§_-C4§;
      }
      
      override public function set color(param1:uint) : void
      {
         this.§_-C4§ = param1;
      }
      
      public function get stageWidth() : int
      {
         return this.§_-aC§;
      }
      
      public function set stageWidth(param1:int) : void
      {
         this.§_-aC§ = param1;
      }
      
      public function get stageHeight() : int
      {
         return this.§_-3v§;
      }
      
      public function set stageHeight(param1:int) : void
      {
         this.§_-3v§ = param1;
      }
   }
}
