package §_-LP§
{
   import flash.errors.IllegalOperationError;
   import flash.geom.Point;
   import starling.events.Event;
   import starling.events.§_-fx§;
   
   public class Stage extends DisplayObjectContainer
   {
       
      
      private var §_-sa§:int;
      
      private var §_-cr§:int;
      
      private var §_-T-§:uint;
      
      private var §_-bY§:Vector.<DisplayObject>;
      
      public function Stage(param1:int, param2:int, param3:uint = 0)
      {
         super();
         this.§_-sa§ = param1;
         this.§_-cr§ = param2;
         this.§_-T-§ = param3;
         this.§_-bY§ = new Vector.<DisplayObject>();
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.§_-bY§ = null;
      }
      
      override public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:int = 0;
         if(param2 == §_-fx§.ENTER_FRAME)
         {
            _loc3_ = this.§_-bY§.indexOf(param1);
            if(_loc3_ < 0)
            {
               this.§_-bY§.push(param1);
            }
         }
      }
      
      override public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:int = 0;
         if(param2 == §_-fx§.ENTER_FRAME)
         {
            _loc3_ = this.§_-bY§.indexOf(param1);
            if(_loc3_ >= 0)
            {
               this.§_-bY§.splice(_loc3_,1);
            }
         }
      }
      
      public function §_-IE§(param1:Number) : void
      {
         var _loc2_:§_-fx§ = null;
         var _loc3_:DisplayObject = null;
         if(this.§_-bY§.length > 0)
         {
            _loc2_ = new §_-fx§(Event.ENTER_FRAME,param1);
            for each(_loc3_ in this.§_-bY§)
            {
               _loc3_.dispatchEvent(_loc2_);
            }
         }
      }
      
      override public function hitTestPoint(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!visible || !§_-pE§))
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
         return this.§_-T-§;
      }
      
      public function set color(param1:uint) : void
      {
         this.§_-T-§ = param1;
      }
      
      public function get stageWidth() : int
      {
         return this.§_-sa§;
      }
      
      public function set stageWidth(param1:int) : void
      {
         this.§_-sa§ = param1;
      }
      
      public function get stageHeight() : int
      {
         return this.§_-cr§;
      }
      
      public function set stageHeight(param1:int) : void
      {
         this.§_-cr§ = param1;
      }
   }
}
