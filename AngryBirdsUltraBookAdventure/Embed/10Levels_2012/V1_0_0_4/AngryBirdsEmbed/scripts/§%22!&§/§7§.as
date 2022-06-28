package §"!&§
{
   import §#'§.§'Q§;
   import §+!"§.§5!<§;
   import flash.display.Stage;
   
   public class §7§
   {
       
      
      private var §6x§:Vector.<§#!,§>;
      
      protected var §7r§:§#!,§;
      
      private var mNextState:String;
      
      protected var §7P§:§'Q§ = null;
      
      private var §4!7§:Number;
      
      private var §'O§:Number;
      
      public function §7§(param1:§'Q§)
      {
         super();
         this.§6x§ = new Vector.<§#!,§>();
         this.§7P§ = param1;
         this.§4!7§ = this.§7P§.stage.stageWidth;
         this.§'O§ = this.§7P§.stage.stageHeight;
      }
      
      public function §?c§() : String
      {
         if(this.§7r§ != null)
         {
            return this.§7r§.mName;
         }
         return §#!,§.§47§;
      }
      
      public function §8y§() : §#!,§
      {
         if(this.§7r§ != null)
         {
            return this.§7r§;
         }
         return null;
      }
      
      public function §%D§(param1:String) : §#!,§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§6x§.length)
         {
            if((this.§6x§[_loc2_] as §#!,§).mName == param1)
            {
               return this.§6x§[_loc2_] as §#!,§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §'<§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §"M§() : Boolean
      {
         return this.mNextState != §#!,§.§47§;
      }
      
      public function §'K§() : Boolean
      {
         if(this.mNextState != §#!,§.§47§)
         {
            this.§1!A§(this.mNextState);
            this.setViewSize(this.§4!7§,this.§'O§);
            this.mNextState = §#!,§.§47§;
            return true;
         }
         return false;
      }
      
      public function §1!A§(param1:String) : Boolean
      {
         var _loc2_:§#!,§ = null;
         var _loc3_:§#!,§ = null;
         for each(_loc3_ in this.§6x§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §5!<§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§7r§ != null)
         {
            §5!<§.log("deActivate state: " + this.§7r§.mName);
            this.§7r§.deActivate();
            this.previousStateDeactivate();
            this.§7P§.removeChild(this.§7r§.§[0§);
         }
         this.§7r§ = _loc2_;
         §5!<§.log("Activate state: " + this.§7r§.mName);
         this.stage.frameRate = this.§7r§.§#K§();
         this.§7P§.addChildAt(this.§7r§.§[0§,0);
         this.§7r§.activate();
         this.§7r§.§4Q§();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §^'§(param1:§#!,§) : Boolean
      {
         if(param1 != null)
         {
            this.§6x§.push(param1);
            param1.§-_§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§7r§)
         {
            return §#!,§.§0m§;
         }
         return this.§7r§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§7P§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§7P§.height;
      }
      
      public function get canvas() : §'Q§
      {
         return this.§7P§;
      }
      
      public function get stage() : Stage
      {
         return this.§7P§.stage;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§7r§)
         {
            this.§7r§.setViewSize(param1,param2);
         }
         this.§4!7§ = param1;
         this.§'O§ = param2;
      }
   }
}
