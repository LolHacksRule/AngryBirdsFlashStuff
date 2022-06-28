package §%-§
{
   import flash.errors.IllegalOperationError;
   import flash.geom.Point;
   import starling.events.§!r§;
   import starling.events.Event;
   
   public class Stage extends DisplayObjectContainer
   {
       
      
      private var §9Q§:int;
      
      private var §9p§:int;
      
      private var §#!A§:uint;
      
      private var §8b§:Vector.<DisplayObject>;
      
      public function Stage(param1:int, param2:int, param3:uint = 0)
      {
         super();
         this.§9Q§ = param1;
         this.§9p§ = param2;
         this.§#!A§ = param3;
         this.§8b§ = new Vector.<DisplayObject>();
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.§8b§ = null;
      }
      
      override public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:int = 0;
         if(param2 == §!r§.ENTER_FRAME)
         {
            _loc3_ = this.§8b§.indexOf(param1);
            if(_loc3_ < 0)
            {
               this.§8b§.push(param1);
            }
         }
      }
      
      override public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:int = 0;
         if(param2 == §!r§.ENTER_FRAME)
         {
            _loc3_ = this.§8b§.indexOf(param1);
            if(_loc3_ >= 0)
            {
               this.§8b§.splice(_loc3_,1);
            }
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:§!r§ = null;
         var _loc3_:DisplayObject = null;
         if(this.§8b§.length > 0)
         {
            _loc2_ = new §!r§(Event.ENTER_FRAME,param1);
            for each(_loc3_ in this.§8b§)
            {
               _loc3_.dispatchEvent(_loc2_);
            }
         }
      }
      
      override public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!visible || !§4!5§))
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
         return this.§#!A§;
      }
      
      override public function set color(param1:uint) : void
      {
         this.§#!A§ = param1;
      }
      
      public function get stageWidth() : int
      {
         return this.§9Q§;
      }
      
      public function set stageWidth(param1:int) : void
      {
         this.§9Q§ = param1;
      }
      
      public function get stageHeight() : int
      {
         return this.§9p§;
      }
      
      public function set stageHeight(param1:int) : void
      {
         this.§9p§ = param1;
      }
   }
}
