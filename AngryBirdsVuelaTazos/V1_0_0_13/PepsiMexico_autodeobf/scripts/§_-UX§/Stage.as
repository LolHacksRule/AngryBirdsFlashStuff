package §_-UX§
{
   import flash.errors.IllegalOperationError;
   import flash.geom.Point;
   import starling.events.Event;
   import starling.events.§_-zS§;
   
   public class Stage extends DisplayObjectContainer
   {
       
      
      private var §_-NR§:int;
      
      private var §_-gD§:int;
      
      private var §_-W§:uint;
      
      private var §_-Zr§:Vector.<DisplayObject>;
      
      public function Stage(param1:int, param2:int, param3:uint = 0)
      {
         super();
         this.§_-NR§ = param1;
         this.§_-gD§ = param2;
         this.§_-W§ = param3;
         this.§_-Zr§ = new Vector.<DisplayObject>();
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.§_-Zr§ = null;
      }
      
      override public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:int = 0;
         if(param2 == §_-zS§.ENTER_FRAME)
         {
            _loc3_ = this.§_-Zr§.indexOf(param1);
            if(_loc3_ < 0)
            {
               this.§_-Zr§.push(param1);
            }
         }
      }
      
      override public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:int = 0;
         if(param2 == §_-zS§.ENTER_FRAME)
         {
            _loc3_ = this.§_-Zr§.indexOf(param1);
            if(_loc3_ >= 0)
            {
               this.§_-Zr§.splice(_loc3_,1);
            }
         }
      }
      
      public function §_-rp§(param1:Number) : void
      {
         var _loc2_:§_-zS§ = null;
         var _loc3_:DisplayObject = null;
         if(this.§_-Zr§.length > 0)
         {
            _loc2_ = new §_-zS§(Event.ENTER_FRAME,param1);
            for each(_loc3_ in this.§_-Zr§)
            {
               _loc3_.dispatchEvent(_loc2_);
            }
         }
      }
      
      override public function hitTestPoint(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!visible || !§_-SS§))
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
         return this.§_-W§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§_-W§ = param1;
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
         return this.§_-gD§;
      }
      
      public function set stageHeight(param1:int) : void
      {
         this.§_-gD§ = param1;
      }
   }
}
