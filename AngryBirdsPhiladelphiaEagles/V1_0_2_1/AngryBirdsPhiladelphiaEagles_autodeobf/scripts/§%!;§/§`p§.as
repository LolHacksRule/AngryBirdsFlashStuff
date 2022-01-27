package §%!;§
{
   import §3!G§.§>y§;
   import §@V§.§`!5§;
   import flash.display.Stage;
   
   public class §`p§
   {
       
      
      private var §^#§:Vector.<§!L§>;
      
      protected var §1!$§:§!L§;
      
      private var mNextState:String;
      
      protected var static:§>y§ = null;
      
      private var §@C§:Number;
      
      private var §&!B§:Number;
      
      public function §`p§(param1:§>y§)
      {
         super();
         this.§^#§ = new Vector.<§!L§>();
         this.static = param1;
         this.§@C§ = this.static.stage.stageWidth;
         this.§&!B§ = this.static.stage.stageHeight;
      }
      
      public function §[!'§() : String
      {
         if(this.§1!$§ != null)
         {
            return this.§1!$§.mName;
         }
         return §!L§.§4W§;
      }
      
      public function §6,§() : §!L§
      {
         if(this.§1!$§ != null)
         {
            return this.§1!$§;
         }
         return null;
      }
      
      public function §2!+§(param1:String) : §!L§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§^#§.length)
         {
            if((this.§^#§[_loc2_] as §!L§).mName == param1)
            {
               return this.§^#§[_loc2_] as §!L§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §#d§(param1:String, param2:§!L§) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§^#§.length)
         {
            if((this.§^#§[_loc3_] as §!L§).mName == param1)
            {
               this.§^#§[_loc3_] = param2;
               param2.§,!<§ = this;
            }
            _loc3_++;
         }
      }
      
      public function §super§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §[!6§() : Boolean
      {
         return this.mNextState != §!L§.§4W§;
      }
      
      public function §,!,§() : String
      {
         return this.mNextState;
      }
      
      public function §9!?§() : Boolean
      {
         if(this.mNextState != §!L§.§4W§)
         {
            this.§-O§(this.mNextState);
            this.setViewSize(this.§@C§,this.§&!B§);
            this.mNextState = §!L§.§4W§;
            return true;
         }
         return false;
      }
      
      public function §-O§(param1:String) : Boolean
      {
         var _loc2_:§!L§ = null;
         var _loc3_:§!L§ = null;
         for each(_loc3_ in this.§^#§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §`!5§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§1!$§ != null)
         {
            §`!5§.log("deActivate state: " + this.§1!$§.mName);
            this.§1!$§.deActivate();
            this.previousStateDeactivate();
            this.static.removeChild(this.§1!$§.§=!"§);
         }
         this.§1!$§ = _loc2_;
         §`!5§.log("Activate state: " + this.§1!$§.mName);
         this.stage.frameRate = this.§1!$§.§true §();
         this.static.addChildAt(this.§1!$§.§=!"§,0);
         this.§1!$§.activate();
         this.§1!$§.§6!%§();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §@!!§(param1:§!L§) : Boolean
      {
         if(param1 != null)
         {
            this.§^#§.push(param1);
            param1.§,!<§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§1!$§)
         {
            return §!L§.§6%§;
         }
         return this.§1!$§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.static.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.static.height;
      }
      
      public function get canvas() : §>y§
      {
         return this.static;
      }
      
      public function get stage() : Stage
      {
         return this.static.stage;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§1!$§)
         {
            this.§1!$§.setViewSize(param1,param2);
         }
         this.§@C§ = param1;
         this.§&!B§ = param2;
      }
   }
}
