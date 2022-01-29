package §^"S§
{
   import §5#m§.§?!"§;
   import §5#m§.Event;
   import flash.errors.IllegalOperationError;
   import flash.geom.Point;
   import starling.§core:starling_internal§.*;
   
   public class Stage extends DisplayObjectContainer
   {
       
      
      private var §4"V§:int;
      
      private var §""&§:int;
      
      private var § "1§:Number;
      
      private var §!#F§:Number;
      
      private var § !J§:uint;
      
      private var §-#E§:§?!"§;
      
      private var §]t§:Vector.<DisplayObject>;
      
      public function Stage(param1:int, param2:int, param3:uint = 0)
      {
         this.§-#E§ = new §?!"§(Event.ENTER_FRAME,0);
         super();
         this.§4"V§ = param1;
         this.§""&§ = param2;
         this.§ "1§ = param1;
         this.§!#F§ = param2;
         this.§ !J§ = param3;
         this.§]t§ = new Vector.<DisplayObject>();
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.§]t§ = null;
      }
      
      override public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:int = 0;
         if(param2 == §?!"§.ENTER_FRAME)
         {
            _loc3_ = this.§]t§.indexOf(param1);
            if(_loc3_ < 0)
            {
               this.§]t§.push(param1);
            }
         }
      }
      
      override public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:int = 0;
         if(param2 == §?!"§.ENTER_FRAME)
         {
            _loc3_ = this.§]t§.indexOf(param1);
            if(_loc3_ >= 0)
            {
               this.§]t§.splice(_loc3_,1);
            }
         }
      }
      
      public function §'#F§(param1:Number) : void
      {
         var _loc2_:§?!"§ = null;
         var _loc3_:DisplayObject = null;
         this.§-#E§.reset(Event.ENTER_FRAME,false,param1);
         if(this.§]t§.length > 0)
         {
            _loc2_ = this.§-#E§;
            for each(_loc3_ in this.§]t§)
            {
               _loc3_.dispatchEvent(_loc2_);
            }
         }
      }
      
      override public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!visible || !§?C§))
         {
            return null;
         }
         if(param1.x < 0 || param1.x > this.§4"V§ || param1.y < 0 || param1.y > this.§""&§)
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
         return this.§ !J§;
      }
      
      override public function set color(param1:uint) : void
      {
         this.§ !J§ = param1;
      }
      
      public function get stageWidth() : int
      {
         return this.§4"V§;
      }
      
      public function set stageWidth(param1:int) : void
      {
         this.§4"V§ = param1;
      }
      
      public function get stageHeight() : int
      {
         return this.§""&§;
      }
      
      public function set stageHeight(param1:int) : void
      {
         this.§""&§ = param1;
      }
      
      public function get §0!§() : Number
      {
         return this.§ "1§;
      }
      
      public function set §0!§(param1:Number) : void
      {
         this.§ "1§ = param1;
      }
      
      public function get §53§() : Number
      {
         return this.§!#F§;
      }
      
      public function set §53§(param1:Number) : void
      {
         this.§!#F§ = param1;
      }
   }
}
