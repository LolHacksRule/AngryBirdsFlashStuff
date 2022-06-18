package §&!v§
{
   import §1P§.§-"i§;
   import §1P§.Event;
   import flash.errors.IllegalOperationError;
   import flash.geom.Point;
   import starling.§core:starling_internal§.*;
   
   public class Stage extends DisplayObjectContainer
   {
       
      
      private var § ";§:int;
      
      private var §;!U§:int;
      
      private var §-#o§:Number;
      
      private var §%"g§:Number;
      
      private var §'"V§:uint;
      
      private var §;"C§:§-"i§;
      
      private var §'U§:Vector.<DisplayObject>;
      
      public function Stage(param1:int, param2:int, param3:uint = 0)
      {
         this.§;"C§ = new §-"i§(Event.ENTER_FRAME,0);
         super();
         this.§ ";§ = param1;
         this.§;!U§ = param2;
         this.§-#o§ = param1;
         this.§%"g§ = param2;
         this.§'"V§ = param3;
         this.§'U§ = new Vector.<DisplayObject>();
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.§'U§ = null;
      }
      
      override public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:int = 0;
         if(param2 == §-"i§.ENTER_FRAME)
         {
            _loc3_ = this.§'U§.indexOf(param1);
            if(_loc3_ < 0)
            {
               this.§'U§.push(param1);
            }
         }
      }
      
      override public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:int = 0;
         if(param2 == §-"i§.ENTER_FRAME)
         {
            _loc3_ = this.§'U§.indexOf(param1);
            if(_loc3_ >= 0)
            {
               this.§'U§.splice(_loc3_,1);
            }
         }
      }
      
      public function §2!X§(param1:Number) : void
      {
         var _loc2_:§-"i§ = null;
         var _loc3_:DisplayObject = null;
         this.§;"C§.reset(Event.ENTER_FRAME,false,param1);
         if(this.§'U§.length > 0)
         {
            _loc2_ = this.§;"C§;
            for each(_loc3_ in this.§'U§)
            {
               _loc3_.dispatchEvent(_loc2_);
            }
         }
      }
      
      override public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!visible || !§ !$§))
         {
            return null;
         }
         if(param1.x < 0 || param1.x > this.§ ";§ || param1.y < 0 || param1.y > this.§;!U§)
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
         return this.§'"V§;
      }
      
      override public function set color(param1:uint) : void
      {
         this.§'"V§ = param1;
      }
      
      public function get stageWidth() : int
      {
         return this.§ ";§;
      }
      
      public function set stageWidth(param1:int) : void
      {
         this.§ ";§ = param1;
      }
      
      public function get stageHeight() : int
      {
         return this.§;!U§;
      }
      
      public function set stageHeight(param1:int) : void
      {
         this.§;!U§ = param1;
      }
      
      public function get §^#5§() : Number
      {
         return this.§-#o§;
      }
      
      public function set §^#5§(param1:Number) : void
      {
         this.§-#o§ = param1;
      }
      
      public function get §,#A§() : Number
      {
         return this.§%"g§;
      }
      
      public function set §,#A§(param1:Number) : void
      {
         this.§%"g§ = param1;
      }
   }
}
