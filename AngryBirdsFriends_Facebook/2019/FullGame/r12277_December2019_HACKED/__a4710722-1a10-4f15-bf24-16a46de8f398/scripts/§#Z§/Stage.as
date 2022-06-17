package §#Z§
{
   import §<!S§.§2"]§;
   import §<!S§.Event;
   import flash.errors.IllegalOperationError;
   import flash.geom.Point;
   import starling.§core:starling_internal§.*;
   
   public class Stage extends DisplayObjectContainer
   {
       
      
      private var §@!l§:int;
      
      private var §,7§:int;
      
      private var §@!E§:Number;
      
      private var §!$!§:Number;
      
      private var §5#n§:uint;
      
      private var §?j§:§2"]§;
      
      private var §[$&§:Vector.<DisplayObject>;
      
      public function Stage(param1:int, param2:int, param3:uint = 0)
      {
         this.§?j§ = new §2"]§(Event.ENTER_FRAME,0);
         super();
         this.§@!l§ = param1;
         this.§,7§ = param2;
         this.§@!E§ = param1;
         this.§!$!§ = param2;
         this.§5#n§ = param3;
         this.§[$&§ = new Vector.<DisplayObject>();
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.§[$&§ = null;
      }
      
      override public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:int = 0;
         if(param2 == §2"]§.ENTER_FRAME)
         {
            _loc3_ = this.§[$&§.indexOf(param1);
            if(_loc3_ < 0)
            {
               this.§[$&§.push(param1);
            }
         }
      }
      
      override public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:int = 0;
         if(param2 == §2"]§.ENTER_FRAME)
         {
            _loc3_ = this.§[$&§.indexOf(param1);
            if(_loc3_ >= 0)
            {
               this.§[$&§.splice(_loc3_,1);
            }
         }
      }
      
      public function §["[§(param1:Number) : void
      {
         var _loc2_:§2"]§ = null;
         var _loc3_:DisplayObject = null;
         this.§?j§.reset(Event.ENTER_FRAME,false,param1);
         if(this.§[$&§.length > 0)
         {
            _loc2_ = this.§?j§;
            for each(_loc3_ in this.§[$&§)
            {
               _loc3_.dispatchEvent(_loc2_);
            }
         }
      }
      
      override public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!visible || !§^"$§))
         {
            return null;
         }
         if(param1.x < 0 || param1.x > this.§@!l§ || param1.y < 0 || param1.y > this.§,7§)
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
         return this.§5#n§;
      }
      
      override public function set color(param1:uint) : void
      {
         this.§5#n§ = param1;
      }
      
      public function get stageWidth() : int
      {
         return this.§@!l§;
      }
      
      public function set stageWidth(param1:int) : void
      {
         this.§@!l§ = param1;
      }
      
      public function get stageHeight() : int
      {
         return this.§,7§;
      }
      
      public function set stageHeight(param1:int) : void
      {
         this.§,7§ = param1;
      }
      
      public function get §^!?§() : Number
      {
         return this.§@!E§;
      }
      
      public function set §^!?§(param1:Number) : void
      {
         this.§@!E§ = param1;
      }
      
      public function get §@#p§() : Number
      {
         return this.§!$!§;
      }
      
      public function set §@#p§(param1:Number) : void
      {
         this.§!$!§ = param1;
      }
   }
}
