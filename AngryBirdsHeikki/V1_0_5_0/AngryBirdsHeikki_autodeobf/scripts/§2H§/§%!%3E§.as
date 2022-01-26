package §2H§
{
   import § !"§.§,g§;
   import §1!K§.§>!<§;
   import flash.display.Stage;
   
   public class §%!>§
   {
       
      
      private var §'-§:Vector.<§>!^§>;
      
      protected var §4!'§:§>!^§;
      
      private var mNextState:String;
      
      protected var §11§:§,g§ = null;
      
      private var §&;§:Number;
      
      private var § r§:Number;
      
      public function §%!>§(param1:§,g§)
      {
         super();
         this.§'-§ = new Vector.<§>!^§>();
         this.§11§ = param1;
         this.§&;§ = this.§11§.stage.stageWidth;
         this.§ r§ = this.§11§.stage.stageHeight;
      }
      
      public function §>!-§() : String
      {
         if(this.§4!'§ != null)
         {
            return this.§4!'§.mName;
         }
         return §>!^§.§%3§;
      }
      
      public function §?!0§() : §>!^§
      {
         if(this.§4!'§ != null)
         {
            return this.§4!'§;
         }
         return null;
      }
      
      public function §@!?§(param1:String) : §>!^§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§'-§.length)
         {
            if((this.§'-§[_loc2_] as §>!^§).mName == param1)
            {
               return this.§'-§[_loc2_] as §>!^§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §8!P§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §35§() : Boolean
      {
         return this.mNextState != §>!^§.§%3§;
      }
      
      public function §!!U§() : Boolean
      {
         if(this.mNextState != §>!^§.§%3§)
         {
            this.§ !$§(this.mNextState);
            this.setViewSize(this.§&;§,this.§ r§);
            this.mNextState = §>!^§.§%3§;
            return true;
         }
         return false;
      }
      
      public function § !$§(param1:String) : Boolean
      {
         var _loc2_:§>!^§ = null;
         var _loc3_:§>!^§ = null;
         for each(_loc3_ in this.§'-§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §>!<§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§4!'§ != null)
         {
            §>!<§.log("deActivate state: " + this.§4!'§.mName);
            this.§4!'§.deActivate();
            this.previousStateDeactivate();
            this.§11§.removeChild(this.§4!'§.§%@§);
         }
         this.§4!'§ = _loc2_;
         §>!<§.log("Activate state: " + this.§4!'§.mName);
         this.stage.frameRate = this.§4!'§.§4!F§();
         this.§11§.addChildAt(this.§4!'§.§%@§,0);
         this.§4!'§.activate();
         this.§4!'§.§+6§();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §5!,§(param1:§>!^§) : Boolean
      {
         if(param1 != null)
         {
            this.§'-§.push(param1);
            param1.§true § = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§4!'§)
         {
            return §>!^§.§<!X§;
         }
         return this.§4!'§.run(param1);
      }
      
      public function §3g§() : Number
      {
         return this.§11§.width;
      }
      
      public function §@!_§() : Number
      {
         return this.§11§.height;
      }
      
      public function get canvas() : §,g§
      {
         return this.§11§;
      }
      
      public function get stage() : Stage
      {
         return this.§11§.stage;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§4!'§)
         {
            this.§4!'§.setViewSize(param1,param2);
         }
         this.§&;§ = param1;
         this.§ r§ = param2;
      }
   }
}
