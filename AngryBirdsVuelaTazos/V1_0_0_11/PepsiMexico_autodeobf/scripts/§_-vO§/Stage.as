package §_-vO§
{
   import flash.errors.IllegalOperationError;
   import flash.geom.Point;
   import starling.events.Event;
   import starling.events.§_-UF§;
   
   public class Stage extends DisplayObjectContainer
   {
       
      
      private var §_-x9§:int;
      
      private var §_-Ql§:int;
      
      private var §_-Tj§:uint;
      
      public function Stage(param1:int, param2:int, param3:uint = 0)
      {
         super();
         this.§_-x9§ = param1;
         this.§_-Ql§ = param2;
         this.§_-Tj§ = param3;
      }
      
      public function §_-An§(param1:Number) : void
      {
         dispatchEventOnChildren(new §_-UF§(Event.ENTER_FRAME,param1));
      }
      
      override public function hitTestPoint(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!visible || !§_-wV§))
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
         return this.§_-Tj§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§_-Tj§ = param1;
      }
      
      public function get stageWidth() : int
      {
         return this.§_-x9§;
      }
      
      public function set stageWidth(param1:int) : void
      {
         this.§_-x9§ = param1;
      }
      
      public function get stageHeight() : int
      {
         return this.§_-Ql§;
      }
      
      public function set stageHeight(param1:int) : void
      {
         this.§_-Ql§ = param1;
      }
   }
}
