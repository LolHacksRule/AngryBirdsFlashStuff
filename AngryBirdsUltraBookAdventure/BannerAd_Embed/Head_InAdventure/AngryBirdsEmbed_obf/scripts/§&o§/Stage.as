package §&o§
{
   import flash.errors.IllegalOperationError;
   import flash.geom.Point;
   import starling.events.§8h§;
   import starling.events.Event;
   
   public class Stage extends DisplayObjectContainer
   {
       
      
      private var §[s§:int;
      
      private var §8!&§:int;
      
      private var §2!;§:uint;
      
      private var §1d§:Vector.<DisplayObject>;
      
      public function Stage(param1:int, param2:int, param3:uint = 0)
      {
         super();
         this.§[s§ = param1;
         this.§8!&§ = param2;
         this.§2!;§ = param3;
         this.§1d§ = new Vector.<DisplayObject>();
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.§1d§ = null;
      }
      
      override public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:int = 0;
         if(param2 == §8h§.ENTER_FRAME)
         {
            _loc3_ = this.§1d§.indexOf(param1);
            if(_loc3_ < 0)
            {
               this.§1d§.push(param1);
            }
         }
      }
      
      override public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:int = 0;
         if(param2 == §8h§.ENTER_FRAME)
         {
            _loc3_ = this.§1d§.indexOf(param1);
            if(_loc3_ >= 0)
            {
               this.§1d§.splice(_loc3_,1);
            }
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:§8h§ = null;
         var _loc3_:DisplayObject = null;
         if(this.§1d§.length > 0)
         {
            _loc2_ = new §8h§(Event.ENTER_FRAME,param1);
            for each(_loc3_ in this.§1d§)
            {
               _loc3_.dispatchEvent(_loc2_);
            }
         }
      }
      
      override public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!visible || !§3!D§))
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
         return this.§2!;§;
      }
      
      override public function set color(param1:uint) : void
      {
         this.§2!;§ = param1;
      }
      
      public function get stageWidth() : int
      {
         return this.§[s§;
      }
      
      public function set stageWidth(param1:int) : void
      {
         this.§[s§ = param1;
      }
      
      public function get stageHeight() : int
      {
         return this.§8!&§;
      }
      
      public function set stageHeight(param1:int) : void
      {
         this.§8!&§ = param1;
      }
   }
}
