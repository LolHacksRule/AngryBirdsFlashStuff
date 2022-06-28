package §+0§
{
   import §"x§.§-8§;
   import §]2§.§-9§;
   import flash.display.Stage;
   
   public class §3!B§
   {
       
      
      private var §+U§:Vector.<§,!E§>;
      
      protected var §00§:§,!E§;
      
      private var mNextState:String;
      
      protected var § !j§:§-9§ = null;
      
      private var §"!V§:Number;
      
      private var §-!e§:Number;
      
      public function §3!B§(param1:§-9§)
      {
         super();
         this.§+U§ = new Vector.<§,!E§>();
         this.§ !j§ = param1;
         this.§"!V§ = this.§ !j§.stage.stageWidth;
         this.§-!e§ = this.§ !j§.stage.stageHeight;
      }
      
      public function §6!O§() : String
      {
         if(this.§00§ != null)
         {
            return this.§00§.mName;
         }
         return §,!E§.§'!=§;
      }
      
      public function §0@§() : §,!E§
      {
         if(this.§00§ != null)
         {
            return this.§00§;
         }
         return null;
      }
      
      public function §?!K§(param1:String) : §,!E§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§+U§.length)
         {
            if((this.§+U§[_loc2_] as §,!E§).mName == param1)
            {
               return this.§+U§[_loc2_] as §,!E§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §@!n§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §0!q§() : Boolean
      {
         return this.mNextState != §,!E§.§'!=§;
      }
      
      public function §!!b§() : Boolean
      {
         if(this.mNextState != §,!E§.§'!=§)
         {
            this.§@!-§(this.mNextState);
            this.setViewSize(this.§"!V§,this.§-!e§);
            this.mNextState = §,!E§.§'!=§;
            return true;
         }
         return false;
      }
      
      public function §@!-§(param1:String) : Boolean
      {
         var _loc2_:§,!E§ = null;
         var _loc3_:§,!E§ = null;
         for each(_loc3_ in this.§+U§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §-8§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§00§ != null)
         {
            §-8§.log("deActivate state: " + this.§00§.mName);
            this.§00§.deActivate();
            this.previousStateDeactivate();
            this.§ !j§.removeChild(this.§00§.§2O§);
         }
         this.§00§ = _loc2_;
         §-8§.log("Activate state: " + this.§00§.mName);
         this.stage.frameRate = this.§00§.§>9§();
         this.§ !j§.addChildAt(this.§00§.§2O§,0);
         this.§00§.activate();
         this.§00§.§?!B§();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §!]§(param1:§,!E§) : Boolean
      {
         if(param1 != null)
         {
            this.§+U§.push(param1);
            param1.§&!g§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§00§)
         {
            return §,!E§.§`g§;
         }
         return this.§00§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§ !j§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§ !j§.height;
      }
      
      public function get canvas() : §-9§
      {
         return this.§ !j§;
      }
      
      public function get stage() : Stage
      {
         return this.§ !j§.stage;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§00§)
         {
            this.§00§.setViewSize(param1,param2);
         }
         this.§"!V§ = param1;
         this.§-!e§ = param2;
      }
   }
}
