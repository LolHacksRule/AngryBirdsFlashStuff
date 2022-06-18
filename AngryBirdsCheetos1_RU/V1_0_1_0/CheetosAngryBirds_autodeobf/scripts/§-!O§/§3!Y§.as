package §-!O§
{
   import §%t§.§@!%§;
   import §@z§.§3u§;
   import flash.display.Stage;
   
   public class §3!Y§
   {
       
      
      private var §%!K§:Vector.<§7'§>;
      
      protected var §`O§:§7'§;
      
      private var mNextState:String;
      
      protected var §8r§:§3u§ = null;
      
      private var §1!<§:Number;
      
      private var §;!'§:Number;
      
      public function §3!Y§(param1:§3u§)
      {
         super();
         this.§%!K§ = new Vector.<§7'§>();
         this.§8r§ = param1;
         this.§1!<§ = this.§8r§.stage.stageWidth;
         this.§;!'§ = this.§8r§.stage.stageHeight;
      }
      
      public function §1B§() : String
      {
         if(this.§`O§ != null)
         {
            return this.§`O§.mName;
         }
         return §7'§.§-[§;
      }
      
      public function §;O§() : §7'§
      {
         if(this.§`O§ != null)
         {
            return this.§`O§;
         }
         return null;
      }
      
      public function §1!9§(param1:String) : §7'§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§%!K§.length)
         {
            if((this.§%!K§[_loc2_] as §7'§).mName == param1)
            {
               return this.§%!K§[_loc2_] as §7'§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §?!-§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §,!6§() : Boolean
      {
         return this.mNextState != §7'§.§-[§;
      }
      
      public function §^g§() : String
      {
         return this.mNextState;
      }
      
      public function §]7§() : Boolean
      {
         if(this.mNextState != §7'§.§-[§)
         {
            this.§&q§(this.mNextState);
            this.setViewSize(this.§1!<§,this.§;!'§);
            this.mNextState = §7'§.§-[§;
            return true;
         }
         return false;
      }
      
      public function §&q§(param1:String) : Boolean
      {
         var _loc2_:§7'§ = null;
         var _loc3_:§7'§ = null;
         for each(_loc3_ in this.§%!K§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §@!%§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§`O§ != null)
         {
            §@!%§.log("deActivate state: " + this.§`O§.mName);
            this.§`O§.deActivate();
            this.previousStateDeactivate();
            this.§8r§.removeChild(this.§`O§.§6`§);
         }
         this.§`O§ = _loc2_;
         §@!%§.log("Activate state: " + this.§`O§.mName);
         this.stage.frameRate = this.§`O§.§>y§();
         this.§8r§.addChildAt(this.§`O§.§6`§,0);
         this.§`O§.activate();
         this.§`O§.activateComplete();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §]M§(param1:§7'§) : Boolean
      {
         if(param1 != null)
         {
            this.§%!K§.push(param1);
            param1.§`&§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§`O§)
         {
            return §7'§.§"k§;
         }
         return this.§`O§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§8r§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§8r§.height;
      }
      
      public function get canvas() : §3u§
      {
         return this.§8r§;
      }
      
      public function get stage() : Stage
      {
         return this.§8r§.stage;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§`O§)
         {
            this.§`O§.setViewSize(param1,param2);
         }
         this.§1!<§ = param1;
         this.§;!'§ = param2;
      }
   }
}
