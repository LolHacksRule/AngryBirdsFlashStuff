package §_-SE§
{
   import flash.errors.IllegalOperationError;
   import flash.geom.Point;
   import starling.events.Event;
   import starling.events.§_-Ti§;
   
   public class Stage extends DisplayObjectContainer
   {
       
      
      private var §_-3Y§:int;
      
      private var §_-cy§:int;
      
      private var §_-70§:uint;
      
      private var §_-bH§:Vector.<DisplayObject>;
      
      public function Stage(param1:int, param2:int, param3:uint = 0)
      {
         super();
         this.§_-3Y§ = param1;
         this.§_-cy§ = param2;
         this.§_-70§ = param3;
         this.§_-bH§ = new Vector.<DisplayObject>();
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.§_-bH§ = null;
      }
      
      override public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:int = 0;
         if(param2 == §_-Ti§.ENTER_FRAME)
         {
            _loc3_ = this.§_-bH§.indexOf(param1);
            if(_loc3_ < 0)
            {
               this.§_-bH§.push(param1);
            }
         }
      }
      
      override public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:int = 0;
         if(param2 == §_-Ti§.ENTER_FRAME)
         {
            _loc3_ = this.§_-bH§.indexOf(param1);
            if(_loc3_ >= 0)
            {
               this.§_-bH§.splice(_loc3_,1);
            }
         }
      }
      
      public function §_-TL§(param1:Number) : void
      {
         var _loc2_:§_-Ti§ = null;
         var _loc3_:DisplayObject = null;
         if(this.§_-bH§.length > 0)
         {
            _loc2_ = new §_-Ti§(Event.ENTER_FRAME,param1);
            for each(_loc3_ in this.§_-bH§)
            {
               _loc3_.dispatchEvent(_loc2_);
            }
         }
      }
      
      override public function hitTestPoint(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!visible || !§_-54§))
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
         return this.§_-70§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§_-70§ = param1;
      }
      
      public function get stageWidth() : int
      {
         return this.§_-3Y§;
      }
      
      public function set stageWidth(param1:int) : void
      {
         this.§_-3Y§ = param1;
      }
      
      public function get stageHeight() : int
      {
         return this.§_-cy§;
      }
      
      public function set stageHeight(param1:int) : void
      {
         this.§_-cy§ = param1;
      }
   }
}
