package §+j§
{
   import §<R§.§[!u§;
   import §=!7§.§1!7§;
   import flash.display.Stage;
   
   public class §0C§
   {
       
      
      private var §>E§:Vector.<§@!_§>;
      
      protected var §!M§:§@!_§;
      
      private var §@!!§:String;
      
      private var §+"3§:String;
      
      protected var §"3§:§[!u§ = null;
      
      private var §=!W§:Number;
      
      private var §,"2§:Number;
      
      public function §0C§(param1:§[!u§)
      {
         super();
         this.§>E§ = new Vector.<§@!_§>();
         this.§"3§ = param1;
         this.§=!W§ = this.§"3§.stage.stageWidth;
         this.§,"2§ = this.§"3§.stage.stageHeight;
      }
      
      public function §9!a§() : String
      {
         if(this.§!M§ != null)
         {
            return this.§!M§.mName;
         }
         return §@!_§.§-q§;
      }
      
      public function §9!5§() : §@!_§
      {
         if(this.§!M§ != null)
         {
            return this.§!M§;
         }
         return null;
      }
      
      public function §8@§(param1:String) : §@!_§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§>E§.length)
         {
            if((this.§>E§[_loc2_] as §@!_§).mName == param1)
            {
               return this.§>E§[_loc2_] as §@!_§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §8=§(param1:String) : void
      {
         this.§@!!§ = param1;
      }
      
      public function get §^""§() : Boolean
      {
         return this.§@!!§ != §@!_§.§-q§;
      }
      
      public function §&!]§() : String
      {
         return this.§@!!§;
      }
      
      public function §'"+§() : String
      {
         return this.§+"3§;
      }
      
      public function §%<§() : Boolean
      {
         if(this.§@!!§ != §@!_§.§-q§)
         {
            this.§-"'§(this.§@!!§);
            this.setViewSize(this.§=!W§,this.§,"2§);
            this.§+"3§ = this.§@!!§;
            this.§@!!§ = §@!_§.§-q§;
            return true;
         }
         return false;
      }
      
      public function §-"'§(param1:String) : Boolean
      {
         var _loc2_:§@!_§ = null;
         var _loc3_:§@!_§ = null;
         for each(_loc3_ in this.§>E§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §1!7§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         var _loc4_:Boolean = false;
         if(this.§!M§ != null)
         {
            §1!7§.log("deActivate state: " + this.§!M§.mName);
            _loc4_ = this.§!M§.§9j§;
            this.§!M§.§9j§ = false;
            this.§!M§.deActivate();
            this.previousStateDeactivate();
            this.§"3§.removeChild(this.§!M§.§<q§);
         }
         this.§!M§ = _loc2_;
         §1!7§.log("Activate state: " + this.§!M§.mName);
         this.stage.frameRate = this.§!M§.§>D§();
         this.§"3§.addChildAt(this.§!M§.§<q§,0);
         this.§!M§.activate(this.§'"+§());
         this.§!M§.§,!_§(_loc4_);
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §-!r§(param1:§@!_§) : Boolean
      {
         if(param1 != null)
         {
            this.§>E§.push(param1);
            param1.§6U§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§!M§)
         {
            return §@!_§.§?x§;
         }
         if(this.§!M§.nextState)
         {
            return §@!_§.§4"%§;
         }
         return this.§!M§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§"3§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§"3§.height;
      }
      
      public function get canvas() : §[!u§
      {
         return this.§"3§;
      }
      
      public function get stage() : Stage
      {
         return this.§"3§.stage;
      }
      
      public function §-!v§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§!M§)
         {
            this.§!M§.setViewSize(param1,param2);
         }
         this.§=!W§ = param1;
         this.§,"2§ = param2;
      }
   }
}
