package §case §
{
   import flash.errors.IllegalOperationError;
   import flash.geom.Point;
   import starling.events.Event;
   import starling.events.§_-A8§;
   
   public class Stage extends DisplayObjectContainer
   {
       
      
      private var §_-LO§:int;
      
      private var §_-Fy§:int;
      
      private var §_-iw§:uint;
      
      private var §_-ht§:Vector.<DisplayObject>;
      
      public function Stage(param1:int, param2:int, param3:uint = 0)
      {
         super();
         this.§_-LO§ = param1;
         this.§_-Fy§ = param2;
         this.§_-iw§ = param3;
         this.§_-ht§ = new Vector.<DisplayObject>();
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.§_-ht§ = null;
      }
      
      override public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:int = 0;
         if(param2 == §_-A8§.ENTER_FRAME)
         {
            _loc3_ = this.§_-ht§.indexOf(param1);
            if(_loc3_ < 0)
            {
               this.§_-ht§.push(param1);
            }
         }
      }
      
      override public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:int = 0;
         if(param2 == §_-A8§.ENTER_FRAME)
         {
            _loc3_ = this.§_-ht§.indexOf(param1);
            if(_loc3_ >= 0)
            {
               this.§_-ht§.splice(_loc3_,1);
            }
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:§_-A8§ = null;
         var _loc3_:DisplayObject = null;
         if(this.§_-ht§.length > 0)
         {
            _loc2_ = new §_-A8§(Event.ENTER_FRAME,param1);
            for each(_loc3_ in this.§_-ht§)
            {
               _loc3_.dispatchEvent(_loc2_);
            }
         }
      }
      
      override public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!visible || !§_-IX§))
         {
            return null;
         }
         var _loc3_:DisplayObject = super.hitTest(param1,param2);
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
         return this.§_-iw§;
      }
      
      override public function set color(param1:uint) : void
      {
         this.§_-iw§ = param1;
      }
      
      public function get stageWidth() : int
      {
         return this.§_-LO§;
      }
      
      public function set stageWidth(param1:int) : void
      {
         this.§_-LO§ = param1;
      }
      
      public function get stageHeight() : int
      {
         return this.§_-Fy§;
      }
      
      public function set stageHeight(param1:int) : void
      {
         this.§_-Fy§ = param1;
      }
   }
}
