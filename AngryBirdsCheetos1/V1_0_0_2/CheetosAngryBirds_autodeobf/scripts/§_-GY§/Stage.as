package §_-GY§
{
   import flash.errors.IllegalOperationError;
   import flash.geom.Point;
   import starling.events.Event;
   import starling.events.§_-4q§;
   
   public class Stage extends DisplayObjectContainer
   {
       
      
      private var §_-a9§:int;
      
      private var §_-7y§:int;
      
      private var §_-kG§:uint;
      
      private var §_-9S§:Vector.<DisplayObject>;
      
      public function Stage(param1:int, param2:int, param3:uint = 0)
      {
         super();
         this.§_-a9§ = param1;
         this.§_-7y§ = param2;
         this.§_-kG§ = param3;
         this.§_-9S§ = new Vector.<DisplayObject>();
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.§_-9S§ = null;
      }
      
      override public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:int = 0;
         if(param2 == §_-4q§.ENTER_FRAME)
         {
            _loc3_ = this.§_-9S§.indexOf(param1);
            if(_loc3_ < 0)
            {
               this.§_-9S§.push(param1);
            }
         }
      }
      
      override public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:int = 0;
         if(param2 == §_-4q§.ENTER_FRAME)
         {
            _loc3_ = this.§_-9S§.indexOf(param1);
            if(_loc3_ >= 0)
            {
               this.§_-9S§.splice(_loc3_,1);
            }
         }
      }
      
      public function §_-cj§(param1:Number) : void
      {
         var _loc2_:§_-4q§ = null;
         var _loc3_:DisplayObject = null;
         if(this.§_-9S§.length > 0)
         {
            _loc2_ = new §_-4q§(Event.ENTER_FRAME,param1);
            for each(_loc3_ in this.§_-9S§)
            {
               _loc3_.dispatchEvent(_loc2_);
            }
         }
      }
      
      override public function hitTestPoint(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!visible || !§_-6q§))
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
         return this.§_-kG§;
      }
      
      override public function set color(param1:uint) : void
      {
         this.§_-kG§ = param1;
      }
      
      public function get stageWidth() : int
      {
         return this.§_-a9§;
      }
      
      public function set stageWidth(param1:int) : void
      {
         this.§_-a9§ = param1;
      }
      
      public function get stageHeight() : int
      {
         return this.§_-7y§;
      }
      
      public function set stageHeight(param1:int) : void
      {
         this.§_-7y§ = param1;
      }
   }
}
