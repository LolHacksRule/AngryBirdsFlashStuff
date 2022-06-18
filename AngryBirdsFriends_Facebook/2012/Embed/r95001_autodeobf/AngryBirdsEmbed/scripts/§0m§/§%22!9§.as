package §0m§
{
   import §9H§.§@M§;
   import §[!&§.§[R§;
   import flash.display.Stage;
   
   public class §"!9§
   {
       
      
      private var §8w§:Vector.<§1!,§>;
      
      protected var §#!7§:§1!,§;
      
      private var mNextState:String;
      
      protected var §<!E§:§[R§ = null;
      
      private var §=;§:Number;
      
      private var §8u§:Number;
      
      public function §"!9§(param1:§[R§)
      {
         super();
         this.§8w§ = new Vector.<§1!,§>();
         this.§<!E§ = param1;
         this.§=;§ = this.§<!E§.stage.stageWidth;
         this.§8u§ = this.§<!E§.stage.stageHeight;
      }
      
      public function §<#§() : String
      {
         if(this.§#!7§ != null)
         {
            return this.§#!7§.mName;
         }
         return §1!,§.§+g§;
      }
      
      public function §^b§() : §1!,§
      {
         if(this.§#!7§ != null)
         {
            return this.§#!7§;
         }
         return null;
      }
      
      public function §1n§(param1:String) : §1!,§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§8w§.length)
         {
            if((this.§8w§[_loc2_] as §1!,§).mName == param1)
            {
               return this.§8w§[_loc2_] as §1!,§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §case§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §[e§() : Boolean
      {
         return this.mNextState != §1!,§.§+g§;
      }
      
      public function §7`§() : Boolean
      {
         if(this.mNextState != §1!,§.§+g§)
         {
            this.§%h§(this.mNextState);
            this.setViewSize(this.§=;§,this.§8u§);
            this.mNextState = §1!,§.§+g§;
            return true;
         }
         return false;
      }
      
      public function §%h§(param1:String) : Boolean
      {
         var _loc2_:§1!,§ = null;
         var _loc3_:§1!,§ = null;
         for each(_loc3_ in this.§8w§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §@M§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§#!7§ != null)
         {
            §@M§.log("deActivate state: " + this.§#!7§.mName);
            this.§#!7§.deActivate();
            this.previousStateDeactivate();
            this.§<!E§.removeChild(this.§#!7§.§8!!§);
         }
         this.§#!7§ = _loc2_;
         §@M§.log("Activate state: " + this.§#!7§.mName);
         this.stage.frameRate = this.§#!7§.§2Y§();
         this.§<!E§.addChildAt(this.§#!7§.§8!!§,0);
         this.§#!7§.activate();
         this.§#!7§.§<!&§();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §!a§(param1:§1!,§) : Boolean
      {
         if(param1 != null)
         {
            this.§8w§.push(param1);
            param1.§-!"§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§#!7§)
         {
            return §1!,§.§4^§;
         }
         return this.§#!7§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§<!E§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§<!E§.height;
      }
      
      public function get canvas() : §[R§
      {
         return this.§<!E§;
      }
      
      public function get stage() : Stage
      {
         return this.§<!E§.stage;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§#!7§)
         {
            this.§#!7§.setViewSize(param1,param2);
         }
         this.§=;§ = param1;
         this.§8u§ = param2;
      }
   }
}
