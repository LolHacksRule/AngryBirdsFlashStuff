package §-!"§
{
   import §9L§.§^D§;
   import §@R§.§4,§;
   import flash.display.Stage;
   
   public class §]7§
   {
       
      
      private var §-!J§:Vector.<§=p§>;
      
      protected var §3a§:§=p§;
      
      private var mNextState:String;
      
      protected var §=Z§:§^D§ = null;
      
      private var §%D§:Number;
      
      private var §0w§:Number;
      
      public function §]7§(param1:§^D§)
      {
         super();
         this.§-!J§ = new Vector.<§=p§>();
         this.§=Z§ = param1;
         this.§%D§ = this.§=Z§.stage.stageWidth;
         this.§0w§ = this.§=Z§.stage.stageHeight;
      }
      
      public function §2!0§() : String
      {
         if(this.§3a§ != null)
         {
            return this.§3a§.mName;
         }
         return §=p§.§>o§;
      }
      
      public function §=!@§() : §=p§
      {
         if(this.§3a§ != null)
         {
            return this.§3a§;
         }
         return null;
      }
      
      public function §1!N§(param1:String) : §=p§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§-!J§.length)
         {
            if((this.§-!J§[_loc2_] as §=p§).mName == param1)
            {
               return this.§-!J§[_loc2_] as §=p§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §4!>§(param1:String, param2:§=p§) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§-!J§.length)
         {
            if((this.§-!J§[_loc3_] as §=p§).mName == param1)
            {
               this.§-!J§[_loc3_] = param2;
               param2.§6!D§ = this;
            }
            _loc3_++;
         }
      }
      
      public function §9^§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §0!?§() : Boolean
      {
         return this.mNextState != §=p§.§>o§;
      }
      
      public function §`R§() : String
      {
         return this.mNextState;
      }
      
      public function §1G§() : Boolean
      {
         if(this.mNextState != §=p§.§>o§)
         {
            this.§!L§(this.mNextState);
            this.setViewSize(this.§%D§,this.§0w§);
            this.mNextState = §=p§.§>o§;
            return true;
         }
         return false;
      }
      
      public function §!L§(param1:String) : Boolean
      {
         var _loc2_:§=p§ = null;
         var _loc3_:§=p§ = null;
         for each(_loc3_ in this.§-!J§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §4,§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§3a§ != null)
         {
            §4,§.log("deActivate state: " + this.§3a§.mName);
            this.§3a§.deActivate();
            this.previousStateDeactivate();
            this.§=Z§.removeChild(this.§3a§.§;=§);
         }
         this.§3a§ = _loc2_;
         §4,§.log("Activate state: " + this.§3a§.mName);
         this.stage.frameRate = this.§3a§.§9u§();
         this.§=Z§.addChildAt(this.§3a§.§;=§,0);
         this.§3a§.activate();
         this.§3a§.§+v§();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §?!%§(param1:§=p§) : Boolean
      {
         if(param1 != null)
         {
            this.§-!J§.push(param1);
            param1.§6!D§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§3a§)
         {
            return §=p§.§^o§;
         }
         return this.§3a§.run(param1);
      }
      
      public function §+C§() : Number
      {
         return this.§=Z§.width;
      }
      
      public function §6!K§() : Number
      {
         return this.§=Z§.height;
      }
      
      public function get canvas() : §^D§
      {
         return this.§=Z§;
      }
      
      public function get stage() : Stage
      {
         return this.§=Z§.stage;
      }
      
      public function §`!'§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§3a§)
         {
            this.§3a§.setViewSize(param1,param2);
         }
         this.§%D§ = param1;
         this.§0w§ = param2;
      }
   }
}
