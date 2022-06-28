package §8,§
{
   import §6z§.§[g§;
   import §<i§.§#!%§;
   import flash.display.Stage;
   
   public class §3!?§
   {
       
      
      private var §8'§:Vector.<§+_§>;
      
      protected var §"!5§:§+_§;
      
      private var mNextState:String;
      
      protected var §>!+§:§#!%§ = null;
      
      private var §1z§:Number;
      
      private var §3C§:Number;
      
      public function §3!?§(param1:§#!%§)
      {
         super();
         this.§8'§ = new Vector.<§+_§>();
         this.§>!+§ = param1;
         this.§1z§ = this.§>!+§.stage.stageWidth;
         this.§3C§ = this.§>!+§.stage.stageHeight;
      }
      
      public function §+!0§() : String
      {
         if(this.§"!5§ != null)
         {
            return this.§"!5§.mName;
         }
         return §+_§.§7!v§;
      }
      
      public function §-#§() : §+_§
      {
         if(this.§"!5§ != null)
         {
            return this.§"!5§;
         }
         return null;
      }
      
      public function §%!<§(param1:String) : §+_§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§8'§.length)
         {
            if((this.§8'§[_loc2_] as §+_§).mName == param1)
            {
               return this.§8'§[_loc2_] as §+_§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function § !,§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §9!4§() : Boolean
      {
         return this.mNextState != §+_§.§7!v§;
      }
      
      public function §7$§() : Boolean
      {
         if(this.mNextState != §+_§.§7!v§)
         {
            this.§ !7§(this.mNextState);
            this.setViewSize(this.§1z§,this.§3C§);
            this.mNextState = §+_§.§7!v§;
            return true;
         }
         return false;
      }
      
      public function § !7§(param1:String) : Boolean
      {
         var _loc2_:§+_§ = null;
         var _loc3_:§+_§ = null;
         for each(_loc3_ in this.§8'§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §[g§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§"!5§ != null)
         {
            §[g§.log("deActivate state: " + this.§"!5§.mName);
            this.§"!5§.deActivate();
            this.previousStateDeactivate();
            this.§>!+§.removeChild(this.§"!5§.§8!9§);
         }
         this.§"!5§ = _loc2_;
         §[g§.log("Activate state: " + this.§"!5§.mName);
         this.stage.frameRate = this.§"!5§.§6!_§();
         this.§>!+§.addChildAt(this.§"!5§.§8!9§,0);
         this.§"!5§.activate();
         this.§"!5§.§&S§();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §?!-§(param1:§+_§) : Boolean
      {
         if(param1 != null)
         {
            this.§8'§.push(param1);
            param1.§&!x§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§"!5§)
         {
            return §+_§.§<3§;
         }
         return this.§"!5§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§>!+§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§>!+§.height;
      }
      
      public function get canvas() : §#!%§
      {
         return this.§>!+§;
      }
      
      public function get stage() : Stage
      {
         return this.§>!+§.stage;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§"!5§)
         {
            this.§"!5§.setViewSize(param1,param2);
         }
         this.§1z§ = param1;
         this.§3C§ = param2;
      }
   }
}
