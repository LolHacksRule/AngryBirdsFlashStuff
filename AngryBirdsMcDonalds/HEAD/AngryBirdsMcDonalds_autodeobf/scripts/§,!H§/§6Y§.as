package §,!H§
{
   import §'+§.§1u§;
   import §@!1§.§&!J§;
   import flash.display.Stage;
   
   public class §6Y§
   {
       
      
      private var §7j§:Vector.<§ for§>;
      
      protected var §"d§:§ for§;
      
      private var mNextState:String;
      
      protected var §5B§:§&!J§ = null;
      
      private var §1!=§:Number;
      
      private var §5E§:Number;
      
      public function §6Y§(param1:§&!J§)
      {
         super();
         this.§7j§ = new Vector.<§ for§>();
         this.§5B§ = param1;
         this.§1!=§ = this.§5B§.stage.stageWidth;
         this.§5E§ = this.§5B§.stage.stageHeight;
      }
      
      public function §5n§() : String
      {
         if(this.§"d§ != null)
         {
            return this.§"d§.mName;
         }
         return § for§.§9!3§;
      }
      
      public function §`L§() : § for§
      {
         if(this.§"d§ != null)
         {
            return this.§"d§;
         }
         return null;
      }
      
      public function §3,§(param1:String) : § for§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§7j§.length)
         {
            if((this.§7j§[_loc2_] as § for§).mName == param1)
            {
               return this.§7j§[_loc2_] as § for§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §-G§(param1:String, param2:§ for§) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§7j§.length)
         {
            if((this.§7j§[_loc3_] as § for§).mName == param1)
            {
               this.§7j§[_loc3_] = param2;
               param2.§>e§ = this;
            }
            _loc3_++;
         }
      }
      
      public function §^?§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §!j§() : Boolean
      {
         return this.mNextState != § for§.§9!3§;
      }
      
      public function §&R§() : String
      {
         return this.mNextState;
      }
      
      public function §-!=§() : Boolean
      {
         if(this.mNextState != § for§.§9!3§)
         {
            this.§"[§(this.mNextState);
            this.setViewSize(this.§1!=§,this.§5E§);
            this.mNextState = § for§.§9!3§;
            return true;
         }
         return false;
      }
      
      public function §"[§(param1:String) : Boolean
      {
         var _loc2_:§ for§ = null;
         var _loc3_:§ for§ = null;
         for each(_loc3_ in this.§7j§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §1u§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§"d§ != null)
         {
            §1u§.log("deActivate state: " + this.§"d§.mName);
            this.§"d§.deActivate();
            this.previousStateDeactivate();
            this.§5B§.removeChild(this.§"d§.§]!M§);
         }
         this.§"d§ = _loc2_;
         §1u§.log("Activate state: " + this.§"d§.mName);
         this.stage.frameRate = this.§"d§.§`!P§();
         this.§5B§.addChildAt(this.§"d§.§]!M§,0);
         this.§"d§.activate();
         this.§"d§.§1!f§();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §!!e§(param1:§ for§) : Boolean
      {
         if(param1 != null)
         {
            this.§7j§.push(param1);
            param1.§>e§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§"d§)
         {
            return § for§.§2!O§;
         }
         return this.§"d§.run(param1);
      }
      
      public function §9$§() : Number
      {
         return this.§5B§.width;
      }
      
      public function §]!=§() : Number
      {
         return this.§5B§.height;
      }
      
      public function get canvas() : §&!J§
      {
         return this.§5B§;
      }
      
      public function get stage() : Stage
      {
         return this.§5B§.stage;
      }
      
      public function §&w§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§"d§)
         {
            this.§"d§.setViewSize(param1,param2);
         }
         this.§1!=§ = param1;
         this.§5E§ = param2;
      }
   }
}
