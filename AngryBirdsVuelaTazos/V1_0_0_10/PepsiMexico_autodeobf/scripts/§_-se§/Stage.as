package §_-se§
{
   import flash.errors.IllegalOperationError;
   import flash.geom.Point;
   import starling.events.Event;
   import starling.events.§_-cE§;
   
   public class Stage extends DisplayObjectContainer
   {
       
      
      private var §_-NR§:int;
      
      private var §_-F0§:int;
      
      private var §_-63§:uint;
      
      public function Stage(param1:int, param2:int, param3:uint = 0)
      {
         super();
         this.§_-NR§ = param1;
         this.§_-F0§ = param2;
         this.§_-63§ = param3;
      }
      
      public function §_-DV§(param1:Number) : void
      {
         dispatchEventOnChildren(new §_-cE§(Event.ENTER_FRAME,param1));
      }
      
      override public function hitTestPoint(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!visible || !§_-kU§))
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
         return this.§_-63§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§_-63§ = param1;
      }
      
      public function get stageWidth() : int
      {
         return this.§_-NR§;
      }
      
      public function set stageWidth(param1:int) : void
      {
         this.§_-NR§ = param1;
      }
      
      public function get stageHeight() : int
      {
         return this.§_-F0§;
      }
      
      public function set stageHeight(param1:int) : void
      {
         this.§_-F0§ = param1;
      }
   }
}
