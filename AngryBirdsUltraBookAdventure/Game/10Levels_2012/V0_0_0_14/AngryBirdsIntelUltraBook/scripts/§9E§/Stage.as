package §9E§
{
   import flash.errors.IllegalOperationError;
   import flash.geom.Point;
   import starling.events.§83§;
   import starling.events.Event;
   
   public class Stage extends DisplayObjectContainer
   {
       
      
      private var §>!D§:int;
      
      private var §7!3§:int;
      
      private var §'!k§:uint;
      
      private var §+z§:Vector.<DisplayObject>;
      
      public function Stage(param1:int, param2:int, param3:uint = 0)
      {
         super();
         this.§>!D§ = param1;
         this.§7!3§ = param2;
         this.§'!k§ = param3;
         this.§+z§ = new Vector.<DisplayObject>();
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.§+z§ = null;
      }
      
      override public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:int = 0;
         if(param2 == §83§.ENTER_FRAME)
         {
            _loc3_ = this.§+z§.indexOf(param1);
            if(_loc3_ < 0)
            {
               this.§+z§.push(param1);
            }
         }
      }
      
      override public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:int = 0;
         if(param2 == §83§.ENTER_FRAME)
         {
            _loc3_ = this.§+z§.indexOf(param1);
            if(_loc3_ >= 0)
            {
               this.§+z§.splice(_loc3_,1);
            }
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:§83§ = null;
         var _loc3_:DisplayObject = null;
         if(this.§+z§.length > 0)
         {
            _loc2_ = new §83§(Event.ENTER_FRAME,param1);
            for each(_loc3_ in this.§+z§)
            {
               _loc3_.dispatchEvent(_loc2_);
            }
         }
      }
      
      override public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!visible || !§<V§))
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
         return this.§'!k§;
      }
      
      override public function set color(param1:uint) : void
      {
         this.§'!k§ = param1;
      }
      
      public function get stageWidth() : int
      {
         return this.§>!D§;
      }
      
      public function set stageWidth(param1:int) : void
      {
         this.§>!D§ = param1;
      }
      
      public function get stageHeight() : int
      {
         return this.§7!3§;
      }
      
      public function set stageHeight(param1:int) : void
      {
         this.§7!3§ = param1;
      }
   }
}
