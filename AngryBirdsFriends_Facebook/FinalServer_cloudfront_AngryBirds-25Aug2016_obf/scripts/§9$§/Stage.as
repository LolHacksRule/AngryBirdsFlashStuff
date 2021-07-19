package §9$§
{
   import §?a§.§+"a§;
   import §?a§.Event;
   import flash.errors.IllegalOperationError;
   import flash.geom.Point;
   import starling.§core:starling_internal§.*;
   
   public class Stage extends DisplayObjectContainer
   {
       
      
      private var §]<§:int;
      
      private var §""b§:int;
      
      private var §!!<§:Number;
      
      private var §71§:Number;
      
      private var §@#!§:uint;
      
      private var §1y§:§+"a§;
      
      private var §%#P§:Vector.<DisplayObject>;
      
      public function Stage(param1:int, param2:int, param3:uint = 0)
      {
         this.§1y§ = new §+"a§(Event.ENTER_FRAME,0);
         super();
         this.§]<§ = param1;
         this.§""b§ = param2;
         this.§!!<§ = param1;
         this.§71§ = param2;
         this.§@#!§ = param3;
         this.§%#P§ = new Vector.<DisplayObject>();
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.§%#P§ = null;
      }
      
      override public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:int = 0;
         if(param2 == §+"a§.ENTER_FRAME)
         {
            _loc3_ = this.§%#P§.indexOf(param1);
            if(_loc3_ < 0)
            {
               this.§%#P§.push(param1);
            }
         }
      }
      
      override public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:int = 0;
         if(param2 == §+"a§.ENTER_FRAME)
         {
            _loc3_ = this.§%#P§.indexOf(param1);
            if(_loc3_ >= 0)
            {
               this.§%#P§.splice(_loc3_,1);
            }
         }
      }
      
      public function §%"f§(param1:Number) : void
      {
         var _loc2_:§+"a§ = null;
         var _loc3_:DisplayObject = null;
         this.§1y§.reset(Event.ENTER_FRAME,false,param1);
         if(this.§%#P§.length > 0)
         {
            _loc2_ = this.§1y§;
            for each(_loc3_ in this.§%#P§)
            {
               _loc3_.dispatchEvent(_loc2_);
            }
         }
      }
      
      override public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!visible || !§0$6§))
         {
            return null;
         }
         if(param1.x < 0 || param1.x > this.§]<§ || param1.y < 0 || param1.y > this.§""b§)
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
         return this.§@#!§;
      }
      
      override public function set color(param1:uint) : void
      {
         this.§@#!§ = param1;
      }
      
      public function get stageWidth() : int
      {
         return this.§]<§;
      }
      
      public function set stageWidth(param1:int) : void
      {
         this.§]<§ = param1;
      }
      
      public function get stageHeight() : int
      {
         return this.§""b§;
      }
      
      public function set stageHeight(param1:int) : void
      {
         this.§""b§ = param1;
      }
      
      public function get §^"p§() : Number
      {
         return this.§!!<§;
      }
      
      public function set §^"p§(param1:Number) : void
      {
         this.§!!<§ = param1;
      }
      
      public function get §4"O§() : Number
      {
         return this.§71§;
      }
      
      public function set §4"O§(param1:Number) : void
      {
         this.§71§ = param1;
      }
   }
}
