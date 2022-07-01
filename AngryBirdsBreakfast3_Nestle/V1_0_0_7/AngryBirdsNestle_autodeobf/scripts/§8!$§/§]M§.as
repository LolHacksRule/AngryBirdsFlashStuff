package §8!$§
{
   import § !Q§.§"D§;
   import §="3§.§0!z§;
   import flash.display.Stage;
   
   public class §]M§
   {
       
      
      private var §0"'§:Vector.<§@![§>;
      
      protected var §,Z§:§@![§;
      
      private var §]!f§:String;
      
      private var §<"1§:String;
      
      protected var §6L§:§0!z§ = null;
      
      private var §-!k§:Number;
      
      private var §]v§:Number;
      
      public function §]M§(param1:§0!z§)
      {
         super();
         this.§0"'§ = new Vector.<§@![§>();
         this.§6L§ = param1;
         this.§-!k§ = this.§6L§.stage.stageWidth;
         this.§]v§ = this.§6L§.stage.stageHeight;
      }
      
      public function §=!+§() : String
      {
         if(this.§,Z§ != null)
         {
            return this.§,Z§.mName;
         }
         return §@![§.§ !_§;
      }
      
      public function §']§() : §@![§
      {
         if(this.§,Z§ != null)
         {
            return this.§,Z§;
         }
         return null;
      }
      
      public function §?!%§(param1:String) : §@![§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§0"'§.length)
         {
            if((this.§0"'§[_loc2_] as §@![§).mName == param1)
            {
               return this.§0"'§[_loc2_] as §@![§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §8!`§(param1:String) : void
      {
         this.§]!f§ = param1;
      }
      
      public function get §&!o§() : Boolean
      {
         return this.§]!f§ != §@![§.§ !_§;
      }
      
      public function §0_§() : String
      {
         return this.§]!f§;
      }
      
      public function §#Q§() : String
      {
         return this.§<"1§;
      }
      
      public function §?F§() : Boolean
      {
         if(this.§]!f§ != §@![§.§ !_§)
         {
            this.§;v§(this.§]!f§);
            this.setViewSize(this.§-!k§,this.§]v§);
            this.§<"1§ = this.§]!f§;
            this.§]!f§ = §@![§.§ !_§;
            return true;
         }
         return false;
      }
      
      public function §;v§(param1:String) : Boolean
      {
         var _loc2_:§@![§ = null;
         var _loc3_:§@![§ = null;
         for each(_loc3_ in this.§0"'§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §"D§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         var _loc4_:Boolean = false;
         if(this.§,Z§ != null)
         {
            §"D§.log("deActivate state: " + this.§,Z§.mName);
            _loc4_ = this.§,Z§.§;!h§;
            this.§,Z§.§;!h§ = false;
            this.§,Z§.deActivate();
            this.previousStateDeactivate();
            this.§6L§.removeChild(this.§,Z§.§%!D§);
         }
         this.§,Z§ = _loc2_;
         §"D§.log("Activate state: " + this.§,Z§.mName);
         this.stage.frameRate = this.§,Z§.§,e§();
         this.§6L§.addChildAt(this.§,Z§.§%!D§,0);
         this.§,Z§.activate(this.§#Q§());
         this.§,Z§.§=!>§(_loc4_);
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §["4§(param1:§@![§) : Boolean
      {
         if(param1 != null)
         {
            this.§0"'§.push(param1);
            param1.§=" § = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§,Z§)
         {
            return §@![§.§2-§;
         }
         if(this.§,Z§.nextState)
         {
            return §@![§.§1!?§;
         }
         return this.§,Z§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§6L§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§6L§.height;
      }
      
      public function get canvas() : §0!z§
      {
         return this.§6L§;
      }
      
      public function get stage() : Stage
      {
         return this.§6L§.stage;
      }
      
      public function §"0§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§,Z§)
         {
            this.§,Z§.setViewSize(param1,param2);
         }
         this.§-!k§ = param1;
         this.§]v§ = param2;
      }
   }
}
