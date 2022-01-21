package §&c§
{
   import flash.errors.IllegalOperationError;
   import flash.geom.Point;
   import starling.events.§1I§;
   import starling.events.Event;
   
   public class Stage extends DisplayObjectContainer
   {
       
      
      private var §+![§:int;
      
      private var §]d§:int;
      
      private var §9!X§:uint;
      
      private var §]!9§:Vector.<DisplayObject>;
      
      public function Stage(param1:int, param2:int, param3:uint = 0)
      {
         super();
         this.§+![§ = param1;
         this.§]d§ = param2;
         this.§9!X§ = param3;
         this.§]!9§ = new Vector.<DisplayObject>();
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.§]!9§ = null;
      }
      
      override public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:int = 0;
         if(param2 == §1I§.ENTER_FRAME)
         {
            _loc3_ = this.§]!9§.indexOf(param1);
            if(_loc3_ < 0)
            {
               this.§]!9§.push(param1);
            }
         }
      }
      
      override public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:int = 0;
         if(param2 == §1I§.ENTER_FRAME)
         {
            _loc3_ = this.§]!9§.indexOf(param1);
            if(_loc3_ >= 0)
            {
               this.§]!9§.splice(_loc3_,1);
            }
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:§1I§ = null;
         var _loc3_:DisplayObject = null;
         if(this.§]!9§.length > 0)
         {
            _loc2_ = new §1I§(Event.ENTER_FRAME,param1);
            for each(_loc3_ in this.§]!9§)
            {
               _loc3_.dispatchEvent(_loc2_);
            }
         }
      }
      
      override public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!visible || !§8m§))
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
         return this.§9!X§;
      }
      
      override public function set color(param1:uint) : void
      {
         this.§9!X§ = param1;
      }
      
      public function get stageWidth() : int
      {
         return this.§+![§;
      }
      
      public function set stageWidth(param1:int) : void
      {
         this.§+![§ = param1;
      }
      
      public function get stageHeight() : int
      {
         return this.§]d§;
      }
      
      public function set stageHeight(param1:int) : void
      {
         this.§]d§ = param1;
      }
   }
}
