package §6O§
{
   import §'!k§.§"d§;
   import §6!C§.§6E§;
   import flash.display.Stage;
   
   public class §@!w§
   {
       
      
      private var §7c§:Vector.<§6!x§>;
      
      protected var §;f§:§6!x§;
      
      private var §=^§:String;
      
      private var §=!u§:String;
      
      protected var §"%§:§"d§ = null;
      
      private var §@!,§:Number;
      
      private var § $§:Number;
      
      public function §@!w§(param1:§"d§)
      {
         super();
         this.§7c§ = new Vector.<§6!x§>();
         this.§"%§ = param1;
         this.§@!,§ = this.§"%§.stage.stageWidth;
         this.§ $§ = this.§"%§.stage.stageHeight;
      }
      
      public function §=9§() : String
      {
         if(this.§;f§ != null)
         {
            return this.§;f§.mName;
         }
         return §6!x§.§7!-§;
      }
      
      public function §'B§() : §6!x§
      {
         if(this.§;f§ != null)
         {
            return this.§;f§;
         }
         return null;
      }
      
      public function §6^§(param1:String) : §6!x§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§7c§.length)
         {
            if((this.§7c§[_loc2_] as §6!x§).mName == param1)
            {
               return this.§7c§[_loc2_] as §6!x§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §'Q§(param1:String) : void
      {
         this.§=^§ = param1;
      }
      
      public function get §48§() : Boolean
      {
         return this.§=^§ != §6!x§.§7!-§;
      }
      
      public function §8!3§() : String
      {
         return this.§=^§;
      }
      
      public function § "8§() : String
      {
         return this.§=!u§;
      }
      
      public function §1!c§() : Boolean
      {
         if(this.§=^§ != §6!x§.§7!-§)
         {
            this.§[!y§(this.§=^§);
            this.setViewSize(this.§@!,§,this.§ $§);
            this.§=!u§ = this.§=^§;
            this.§=^§ = §6!x§.§7!-§;
            return true;
         }
         return false;
      }
      
      public function §[!y§(param1:String) : Boolean
      {
         var _loc2_:§6!x§ = null;
         var _loc3_:§6!x§ = null;
         for each(_loc3_ in this.§7c§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §6E§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         var _loc4_:Boolean = false;
         if(this.§;f§ != null)
         {
            §6E§.log("deActivate state: " + this.§;f§.mName);
            _loc4_ = this.§;f§.§=D§;
            this.§;f§.§=D§ = false;
            this.§;f§.deActivate();
            this.previousStateDeactivate();
            this.§"%§.removeChild(this.§;f§.§9A§);
         }
         this.§;f§ = _loc2_;
         §6E§.log("Activate state: " + this.§;f§.mName);
         this.stage.frameRate = this.§;f§.§,!3§();
         this.§"%§.addChildAt(this.§;f§.§9A§,0);
         this.§;f§.activate(this.§ "8§());
         this.§;f§.§ 5§(_loc4_);
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §,!B§(param1:§6!x§) : Boolean
      {
         if(param1 != null)
         {
            this.§7c§.push(param1);
            param1.§49§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§;f§)
         {
            return §6!x§.§+"<§;
         }
         return this.§;f§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§"%§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§"%§.height;
      }
      
      public function get canvas() : §"d§
      {
         return this.§"%§;
      }
      
      public function get stage() : Stage
      {
         return this.§"%§.stage;
      }
      
      public function §',§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§;f§)
         {
            this.§;f§.setViewSize(param1,param2);
         }
         this.§@!,§ = param1;
         this.§ $§ = param2;
      }
   }
}
