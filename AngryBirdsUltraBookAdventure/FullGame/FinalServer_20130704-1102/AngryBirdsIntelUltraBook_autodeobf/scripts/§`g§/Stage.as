package §`g§
{
   import flash.errors.IllegalOperationError;
   import flash.geom.Point;
   import starling.events.§&Z§;
   import starling.events.Event;
   
   public class Stage extends DisplayObjectContainer
   {
       
      
      private var §3!8§:int;
      
      private var §0!Q§:int;
      
      private var §4t§:uint;
      
      private var §>!r§:Vector.<DisplayObject>;
      
      public function Stage(param1:int, param2:int, param3:uint = 0)
      {
         super();
         this.§3!8§ = param1;
         this.§0!Q§ = param2;
         this.§4t§ = param3;
         this.§>!r§ = new Vector.<DisplayObject>();
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.§>!r§ = null;
      }
      
      override public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:int = 0;
         if(param2 == §&Z§.ENTER_FRAME)
         {
            _loc3_ = this.§>!r§.indexOf(param1);
            if(_loc3_ < 0)
            {
               this.§>!r§.push(param1);
            }
         }
      }
      
      override public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:int = 0;
         if(param2 == §&Z§.ENTER_FRAME)
         {
            _loc3_ = this.§>!r§.indexOf(param1);
            if(_loc3_ >= 0)
            {
               this.§>!r§.splice(_loc3_,1);
            }
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:§&Z§ = null;
         var _loc3_:DisplayObject = null;
         if(this.§>!r§.length > 0)
         {
            _loc2_ = new §&Z§(Event.ENTER_FRAME,param1);
            for each(_loc3_ in this.§>!r§)
            {
               _loc3_.dispatchEvent(_loc2_);
            }
         }
      }
      
      override public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!visible || !§&!U§))
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
         return this.§4t§;
      }
      
      override public function set color(param1:uint) : void
      {
         this.§4t§ = param1;
      }
      
      public function get stageWidth() : int
      {
         return this.§3!8§;
      }
      
      public function set stageWidth(param1:int) : void
      {
         this.§3!8§ = param1;
      }
      
      public function get stageHeight() : int
      {
         return this.§0!Q§;
      }
      
      public function set stageHeight(param1:int) : void
      {
         this.§0!Q§ = param1;
      }
   }
}
