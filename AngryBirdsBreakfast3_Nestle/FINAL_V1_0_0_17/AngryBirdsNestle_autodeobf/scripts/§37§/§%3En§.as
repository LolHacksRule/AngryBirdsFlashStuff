package §37§
{
   import §,!'§.§6!L§;
   import §24§.;
   import flash.display.Stage;
   
   public class §>n§
   {
       
      
      private var §`!H§:Vector.<§9!c§>;
      
      protected var §#,§:§9!c§;
      
      private var §=! §:String;
      
      private var §8!!§:String;
      
      protected var §-!x§:§6!L§ = null;
      
      private var §^!J§:Number;
      
      private var §+=§:Number;
      
      public function §>n§(param1:§6!L§)
      {
         super();
         this.§`!H§ = new Vector.<§9!c§>();
         this.§-!x§ = param1;
         this.§^!J§ = this.§-!x§.stage.stageWidth;
         this.§+=§ = this.§-!x§.stage.stageHeight;
      }
      
      public function §!!w§() : String
      {
         if(this.§#,§ != null)
         {
            return this.§#,§.mName;
         }
         return §9!c§.§8!w§;
      }
      
      public function §-!w§() : §9!c§
      {
         if(this.§#,§ != null)
         {
            return this.§#,§;
         }
         return null;
      }
      
      public function §=J§(param1:String) : §9!c§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§`!H§.length)
         {
            if((this.§`!H§[_loc2_] as §9!c§).mName == param1)
            {
               return this.§`!H§[_loc2_] as §9!c§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §7"6§(param1:String) : void
      {
         this.§=! § = param1;
      }
      
      public function get §0o§() : Boolean
      {
         return this.§=! § != §9!c§.§8!w§;
      }
      
      public function §<!$§() : String
      {
         return this.§=! §;
      }
      
      public function §%j§() : String
      {
         return this.§8!!§;
      }
      
      public function §6!;§() : Boolean
      {
         if(this.§=! § != §9!c§.§8!w§)
         {
            this.§'l§(this.§=! §);
            this.setViewSize(this.§^!J§,this.§+=§);
            this.§8!!§ = this.§=! §;
            this.§=! § = §9!c§.§8!w§;
            return true;
         }
         return false;
      }
      
      public function §'l§(param1:String) : Boolean
      {
         var _loc2_:§9!c§ = null;
         var _loc3_:§9!c§ = null;
         for each(_loc3_ in this.§`!H§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §#7§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         var _loc4_:Boolean = false;
         if(this.§#,§ != null)
         {
            §#7§.log("deActivate state: " + this.§#,§.mName);
            _loc4_ = this.§#,§.§7;§;
            this.§#,§.§7;§ = false;
            this.§#,§.deActivate();
            this.previousStateDeactivate();
            this.§-!x§.removeChild(this.§#,§.§&%§);
         }
         this.§#,§ = _loc2_;
         §#7§.log("Activate state: " + this.§#,§.mName);
         this.stage.frameRate = this.§#,§.§9R§();
         this.§-!x§.addChildAt(this.§#,§.§&%§,0);
         this.§#,§.activate(this.§%j§());
         this.§#,§.§,!^§(_loc4_);
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §1""§(param1:§9!c§) : Boolean
      {
         if(param1 != null)
         {
            this.§`!H§.push(param1);
            param1.§3"7§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§#,§)
         {
            return §9!c§.§%!j§;
         }
         if(this.§#,§.nextState)
         {
            return §9!c§.§6+§;
         }
         return this.§#,§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§-!x§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§-!x§.height;
      }
      
      public function get canvas() : §6!L§
      {
         return this.§-!x§;
      }
      
      public function get stage() : Stage
      {
         return this.§-!x§.stage;
      }
      
      public function §0!#§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§#,§)
         {
            this.§#,§.setViewSize(param1,param2);
         }
         this.§^!J§ = param1;
         this.§+=§ = param2;
      }
   }
}
