package §^5§
{
   import §"!C§.§9>§;
   import §`!W§.§2v§;
   import flash.display.Stage;
   
   public class §<!R§
   {
       
      
      private var §-!>§:Vector.<§]!,§>;
      
      protected var §'!K§:§]!,§;
      
      private var mNextState:String;
      
      protected var §'!0§:§9>§ = null;
      
      private var §&Q§:Number;
      
      private var §>! §:Number;
      
      public function §<!R§(param1:§9>§)
      {
         super();
         this.§-!>§ = new Vector.<§]!,§>();
         this.§'!0§ = param1;
         this.§&Q§ = this.§'!0§.stage.stageWidth;
         this.§>! § = this.§'!0§.stage.stageHeight;
      }
      
      public function §>;§() : String
      {
         if(this.§'!K§ != null)
         {
            return this.§'!K§.mName;
         }
         return §]!,§.§@D§;
      }
      
      public function §]!d§() : §]!,§
      {
         if(this.§'!K§ != null)
         {
            return this.§'!K§;
         }
         return null;
      }
      
      public function §6!K§(param1:String) : §]!,§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§-!>§.length)
         {
            if((this.§-!>§[_loc2_] as §]!,§).mName == param1)
            {
               return this.§-!>§[_loc2_] as §]!,§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §5B§(param1:String, param2:§]!,§) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§-!>§.length)
         {
            if((this.§-!>§[_loc3_] as §]!,§).mName == param1)
            {
               this.§-!>§[_loc3_] = param2;
               param2.§&!P§ = this;
            }
            _loc3_++;
         }
      }
      
      public function §^!Z§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §?!?§() : Boolean
      {
         return this.mNextState != §]!,§.§@D§;
      }
      
      public function §%!7§() : String
      {
         return this.mNextState;
      }
      
      public function §2!2§() : Boolean
      {
         if(this.mNextState != §]!,§.§@D§)
         {
            this.§'v§(this.mNextState);
            this.setViewSize(this.§&Q§,this.§>! §);
            this.mNextState = §]!,§.§@D§;
            return true;
         }
         return false;
      }
      
      public function §'v§(param1:String) : Boolean
      {
         var _loc2_:§]!,§ = null;
         var _loc3_:§]!,§ = null;
         for each(_loc3_ in this.§-!>§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §2v§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§'!K§ != null)
         {
            §2v§.log("deActivate state: " + this.§'!K§.mName);
            this.§'!K§.deActivate();
            this.previousStateDeactivate();
            this.§'!0§.removeChild(this.§'!K§.§[8§);
         }
         this.§'!K§ = _loc2_;
         §2v§.log("Activate state: " + this.§'!K§.mName);
         this.stage.frameRate = this.§'!K§.§`!<§();
         this.§'!0§.addChildAt(this.§'!K§.§[8§,0);
         this.§'!K§.activate();
         this.§'!K§.§^!M§();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §<&§(param1:§]!,§) : Boolean
      {
         if(param1 != null)
         {
            this.§-!>§.push(param1);
            param1.§&!P§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§'!K§)
         {
            return §]!,§.§!!E§;
         }
         return this.§'!K§.run(param1);
      }
      
      public function §]!-§() : Number
      {
         return this.§'!0§.width;
      }
      
      public function §<§() : Number
      {
         return this.§'!0§.height;
      }
      
      public function get canvas() : §9>§
      {
         return this.§'!0§;
      }
      
      public function get stage() : Stage
      {
         return this.§'!0§.stage;
      }
      
      public function §4!+§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§'!K§)
         {
            this.§'!K§.setViewSize(param1,param2);
         }
         this.§&Q§ = param1;
         this.§>! § = param2;
      }
   }
}
