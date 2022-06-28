package §1!&§
{
   import flash.errors.IllegalOperationError;
   import flash.geom.Point;
   import starling.events.§!!Z§;
   import starling.events.Event;
   
   public class Stage extends DisplayObjectContainer
   {
       
      
      private var §^B§:int;
      
      private var §+!d§:int;
      
      private var §"p§:uint;
      
      private var §0;§:Vector.<DisplayObject>;
      
      public function Stage(param1:int, param2:int, param3:uint = 0)
      {
         super();
         this.§^B§ = param1;
         this.§+!d§ = param2;
         this.§"p§ = param3;
         this.§0;§ = new Vector.<DisplayObject>();
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.§0;§ = null;
      }
      
      override public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:int = 0;
         if(param2 == §!!Z§.ENTER_FRAME)
         {
            _loc3_ = this.§0;§.indexOf(param1);
            if(_loc3_ < 0)
            {
               this.§0;§.push(param1);
            }
         }
      }
      
      override public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:int = 0;
         if(param2 == §!!Z§.ENTER_FRAME)
         {
            _loc3_ = this.§0;§.indexOf(param1);
            if(_loc3_ >= 0)
            {
               this.§0;§.splice(_loc3_,1);
            }
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:§!!Z§ = null;
         var _loc3_:DisplayObject = null;
         if(this.§0;§.length > 0)
         {
            _loc2_ = new §!!Z§(Event.ENTER_FRAME,param1);
            for each(_loc3_ in this.§0;§)
            {
               _loc3_.dispatchEvent(_loc2_);
            }
         }
      }
      
      override public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!visible || !§9@§))
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
         return this.§"p§;
      }
      
      override public function set color(param1:uint) : void
      {
         this.§"p§ = param1;
      }
      
      public function get stageWidth() : int
      {
         return this.§^B§;
      }
      
      public function set stageWidth(param1:int) : void
      {
         this.§^B§ = param1;
      }
      
      public function get stageHeight() : int
      {
         return this.§+!d§;
      }
      
      public function set stageHeight(param1:int) : void
      {
         this.§+!d§ = param1;
      }
   }
}
