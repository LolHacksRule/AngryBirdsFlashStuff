package §_-pF§
{
   import flash.errors.IllegalOperationError;
   import flash.geom.Point;
   import starling.events.Event;
   import starling.events.§_-8q§;
   
   public class Stage extends DisplayObjectContainer
   {
       
      
      private var §_-Fy§:int;
      
      private var §_-XU§:int;
      
      private var §_-us§:uint;
      
      public function Stage(param1:int, param2:int, param3:uint = 0)
      {
         super();
         this.§_-Fy§ = param1;
         this.§_-XU§ = param2;
         this.§_-us§ = param3;
      }
      
      public function §_-CR§(param1:Number) : void
      {
         dispatchEventOnChildren(new §_-8q§(Event.ENTER_FRAME,param1));
      }
      
      override public function hitTestPoint(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!visible || !§_-7e§))
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
      
      public function get color() : uint
      {
         return this.§_-us§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§_-us§ = param1;
      }
      
      public function get stageWidth() : int
      {
         return this.§_-Fy§;
      }
      
      public function set stageWidth(param1:int) : void
      {
         this.§_-Fy§ = param1;
      }
      
      public function get stageHeight() : int
      {
         return this.§_-XU§;
      }
      
      public function set stageHeight(param1:int) : void
      {
         this.§_-XU§ = param1;
      }
   }
}
