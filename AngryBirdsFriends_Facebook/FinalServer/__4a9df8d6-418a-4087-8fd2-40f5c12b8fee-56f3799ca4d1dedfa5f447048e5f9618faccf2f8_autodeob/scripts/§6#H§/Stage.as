package §6#H§
{
   import §!$;§.§;"#§;
   import §!$;§.Event;
   import flash.errors.IllegalOperationError;
   import flash.geom.Point;
   import starling.§core:starling_internal§.*;
   
   public class Stage extends DisplayObjectContainer
   {
       
      
      private var §>H§:int;
      
      private var §^l§:int;
      
      private var §?_§:Number;
      
      private var §@#R§:Number;
      
      private var §0!j§:uint;
      
      private var §4!I§:§;"#§;
      
      private var §+m§:Vector.<DisplayObject>;
      
      public function Stage(param1:int, param2:int, param3:uint = 0)
      {
         this.§4!I§ = new §;"#§(Event.ENTER_FRAME,0);
         super();
         this.§>H§ = param1;
         this.§^l§ = param2;
         this.§?_§ = param1;
         this.§@#R§ = param2;
         this.§0!j§ = param3;
         this.§+m§ = new Vector.<DisplayObject>();
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.§+m§ = null;
      }
      
      override public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:int = 0;
         if(param2 == §;"#§.ENTER_FRAME)
         {
            _loc3_ = this.§+m§.indexOf(param1);
            if(_loc3_ < 0)
            {
               this.§+m§.push(param1);
            }
         }
      }
      
      override public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:int = 0;
         if(param2 == §;"#§.ENTER_FRAME)
         {
            _loc3_ = this.§+m§.indexOf(param1);
            if(_loc3_ >= 0)
            {
               this.§+m§.splice(_loc3_,1);
            }
         }
      }
      
      public function §-"%§(param1:Number) : void
      {
         var _loc2_:§;"#§ = null;
         var _loc3_:DisplayObject = null;
         this.§4!I§.reset(Event.ENTER_FRAME,false,param1);
         if(this.§+m§.length > 0)
         {
            _loc2_ = this.§4!I§;
            for each(_loc3_ in this.§+m§)
            {
               _loc3_.dispatchEvent(_loc2_);
            }
         }
      }
      
      override public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!visible || !§?#N§))
         {
            return null;
         }
         if(param1.x < 0 || param1.x > this.§>H§ || param1.y < 0 || param1.y > this.§^l§)
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
         return this.§0!j§;
      }
      
      override public function set color(param1:uint) : void
      {
         this.§0!j§ = param1;
      }
      
      public function get stageWidth() : int
      {
         return this.§>H§;
      }
      
      public function set stageWidth(param1:int) : void
      {
         this.§>H§ = param1;
      }
      
      public function get stageHeight() : int
      {
         return this.§^l§;
      }
      
      public function set stageHeight(param1:int) : void
      {
         this.§^l§ = param1;
      }
      
      public function get §!"b§() : Number
      {
         return this.§?_§;
      }
      
      public function set §!"b§(param1:Number) : void
      {
         this.§?_§ = param1;
      }
      
      public function get §<"3§() : Number
      {
         return this.§@#R§;
      }
      
      public function set §<"3§(param1:Number) : void
      {
         this.§@#R§ = param1;
      }
   }
}
