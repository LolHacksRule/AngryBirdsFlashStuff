package §,#e§
{
   import §,$&§.§%"<§;
   import §,$&§.Event;
   import flash.errors.IllegalOperationError;
   import flash.geom.Point;
   import starling.§core:starling_internal§.*;
   
   public class Stage extends DisplayObjectContainer
   {
       
      
      private var §>"h§:int;
      
      private var §"#G§:int;
      
      private var §"f§:Number;
      
      private var §-O§:Number;
      
      private var §?$D§:uint;
      
      private var §3"?§:§%"<§;
      
      private var §6""§:Vector.<DisplayObject>;
      
      public function Stage(param1:int, param2:int, param3:uint = 0)
      {
         this.§3"?§ = new §%"<§(Event.ENTER_FRAME,0);
         super();
         this.§>"h§ = param1;
         this.§"#G§ = param2;
         this.§"f§ = param1;
         this.§-O§ = param2;
         this.§?$D§ = param3;
         this.§6""§ = new Vector.<DisplayObject>();
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.§6""§ = null;
      }
      
      override public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:int = 0;
         if(param2 == §%"<§.ENTER_FRAME)
         {
            _loc3_ = this.§6""§.indexOf(param1);
            if(_loc3_ < 0)
            {
               this.§6""§.push(param1);
            }
         }
      }
      
      override public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:int = 0;
         if(param2 == §%"<§.ENTER_FRAME)
         {
            _loc3_ = this.§6""§.indexOf(param1);
            if(_loc3_ >= 0)
            {
               this.§6""§.splice(_loc3_,1);
            }
         }
      }
      
      public function §]W§(param1:Number) : void
      {
         var _loc2_:§%"<§ = null;
         var _loc3_:DisplayObject = null;
         this.§3"?§.reset(Event.ENTER_FRAME,false,param1);
         if(this.§6""§.length > 0)
         {
            _loc2_ = this.§3"?§;
            for each(_loc3_ in this.§6""§)
            {
               _loc3_.dispatchEvent(_loc2_);
            }
         }
      }
      
      override public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!visible || !§4"e§))
         {
            return null;
         }
         if(param1.x < 0 || param1.x > this.§>"h§ || param1.y < 0 || param1.y > this.§"#G§)
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
         return this.§?$D§;
      }
      
      override public function set color(param1:uint) : void
      {
         this.§?$D§ = param1;
      }
      
      public function get stageWidth() : int
      {
         return this.§>"h§;
      }
      
      public function set stageWidth(param1:int) : void
      {
         this.§>"h§ = param1;
      }
      
      public function get stageHeight() : int
      {
         return this.§"#G§;
      }
      
      public function set stageHeight(param1:int) : void
      {
         this.§"#G§ = param1;
      }
      
      public function get § ,§() : Number
      {
         return this.§"f§;
      }
      
      public function set § ,§(param1:Number) : void
      {
         this.§"f§ = param1;
      }
      
      public function get §8I§() : Number
      {
         return this.§-O§;
      }
      
      public function set §8I§(param1:Number) : void
      {
         this.§-O§ = param1;
      }
   }
}
