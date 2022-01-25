package §@W§
{
   import §1!4§.§^!^§;
   import §<!!§.§-"§;
   import flash.display.Stage;
   
   public class §[!'§
   {
       
      
      private var §+V§:Vector.<§2!_§>;
      
      protected var §+![§:§2!_§;
      
      private var mNextState:String;
      
      protected var §%D§:§^!^§ = null;
      
      private var §+!D§:Number;
      
      private var §5!P§:Number;
      
      public function §[!'§(param1:§^!^§)
      {
         super();
         this.§+V§ = new Vector.<§2!_§>();
         this.§%D§ = param1;
         this.§+!D§ = this.§%D§.stage.stageWidth;
         this.§5!P§ = this.§%D§.stage.stageHeight;
      }
      
      public function §<!S§() : String
      {
         if(this.§+![§ != null)
         {
            return this.§+![§.mName;
         }
         return §2!_§.§>B§;
      }
      
      public function §?!7§() : §2!_§
      {
         if(this.§+![§ != null)
         {
            return this.§+![§;
         }
         return null;
      }
      
      public function §'9§(param1:String) : §2!_§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§+V§.length)
         {
            if((this.§+V§[_loc2_] as §2!_§).mName == param1)
            {
               return this.§+V§[_loc2_] as §2!_§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function § 7§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §&!;§() : Boolean
      {
         return this.mNextState != §2!_§.§>B§;
      }
      
      public function §'e§() : Boolean
      {
         if(this.mNextState != §2!_§.§>B§)
         {
            this.§-!D§(this.mNextState);
            this.setViewSize(this.§+!D§,this.§5!P§);
            this.mNextState = §2!_§.§>B§;
            return true;
         }
         return false;
      }
      
      public function §-!D§(param1:String) : Boolean
      {
         var _loc2_:§2!_§ = null;
         var _loc3_:§2!_§ = null;
         for each(_loc3_ in this.§+V§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §-"§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§+![§ != null)
         {
            §-"§.log("deActivate state: " + this.§+![§.mName);
            this.§+![§.deActivate();
            this.previousStateDeactivate();
            this.§%D§.removeChild(this.§+![§.§1!?§);
         }
         this.§+![§ = _loc2_;
         §-"§.log("Activate state: " + this.§+![§.mName);
         this.stage.frameRate = this.§+![§.§"!'§();
         this.§%D§.addChildAt(this.§+![§.§1!?§,0);
         this.§+![§.activate();
         this.§+![§.§@!U§();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §-e§(param1:§2!_§) : Boolean
      {
         if(param1 != null)
         {
            this.§+V§.push(param1);
            param1.§4!Z§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§+![§)
         {
            return §2!_§.§'!<§;
         }
         return this.§+![§.run(param1);
      }
      
      public function §5h§() : Number
      {
         return this.§%D§.width;
      }
      
      public function §,!B§() : Number
      {
         return this.§%D§.height;
      }
      
      public function get canvas() : §^!^§
      {
         return this.§%D§;
      }
      
      public function get stage() : Stage
      {
         return this.§%D§.stage;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§+![§)
         {
            this.§+![§.setViewSize(param1,param2);
         }
         this.§+!D§ = param1;
         this.§5!P§ = param2;
      }
   }
}
