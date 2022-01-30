package §^C§
{
   import §0P§.§with§;
   import §;4§.§]!%§;
   import flash.display.Stage;
   
   public class §""1§
   {
       
      
      private var §,!G§:Vector.<§5!L§>;
      
      protected var §9!7§:§5!L§;
      
      private var §=!v§:String;
      
      private var §]!t§:String;
      
      protected var §`!j§:§with§ = null;
      
      private var §'"+§:Number;
      
      private var §,!T§:Number;
      
      public function §""1§(param1:§with§)
      {
         super();
         this.§,!G§ = new Vector.<§5!L§>();
         this.§`!j§ = param1;
         this.§'"+§ = this.§`!j§.stage.stageWidth;
         this.§,!T§ = this.§`!j§.stage.stageHeight;
      }
      
      public function §9"§() : String
      {
         if(this.§9!7§ != null)
         {
            return this.§9!7§.mName;
         }
         return §5!L§.§&v§;
      }
      
      public function §3!>§() : §5!L§
      {
         if(this.§9!7§ != null)
         {
            return this.§9!7§;
         }
         return null;
      }
      
      public function §5p§(param1:String) : §5!L§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§,!G§.length)
         {
            if((this.§,!G§[_loc2_] as §5!L§).mName == param1)
            {
               return this.§,!G§[_loc2_] as §5!L§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §'"6§(param1:String) : void
      {
         this.§=!v§ = param1;
      }
      
      public function get §0![§() : Boolean
      {
         return this.§=!v§ != §5!L§.§&v§;
      }
      
      public function §+!?§() : String
      {
         return this.§=!v§;
      }
      
      public function §5>§() : String
      {
         return this.§]!t§;
      }
      
      public function §&!-§() : Boolean
      {
         if(this.§=!v§ != §5!L§.§&v§)
         {
            this.§7I§(this.§=!v§);
            this.setViewSize(this.§'"+§,this.§,!T§);
            this.§]!t§ = this.§=!v§;
            this.§=!v§ = §5!L§.§&v§;
            return true;
         }
         return false;
      }
      
      public function §7I§(param1:String) : Boolean
      {
         var _loc2_:§5!L§ = null;
         var _loc3_:§5!L§ = null;
         for each(_loc3_ in this.§,!G§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §]!%§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         var _loc4_:Boolean = false;
         if(this.§9!7§ != null)
         {
            §]!%§.log("deActivate state: " + this.§9!7§.mName);
            _loc4_ = this.§9!7§.§?p§;
            this.§9!7§.§?p§ = false;
            this.§9!7§.deActivate();
            this.previousStateDeactivate();
            this.§`!j§.removeChild(this.§9!7§.§[<§);
         }
         this.§9!7§ = _loc2_;
         §]!%§.log("Activate state: " + this.§9!7§.mName);
         this.stage.frameRate = this.§9!7§.§`!G§();
         this.§`!j§.addChildAt(this.§9!7§.§[<§,0);
         this.§9!7§.activate(this.§5>§());
         this.§9!7§.§#!+§(_loc4_);
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §,!H§(param1:§5!L§) : Boolean
      {
         if(param1 != null)
         {
            this.§,!G§.push(param1);
            param1.§11§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§9!7§)
         {
            return §5!L§.§`!D§;
         }
         if(this.§9!7§.nextState)
         {
            return §5!L§.§>3§;
         }
         return this.§9!7§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§`!j§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§`!j§.height;
      }
      
      public function get canvas() : §with§
      {
         return this.§`!j§;
      }
      
      public function get stage() : Stage
      {
         return this.§`!j§.stage;
      }
      
      public function §<g§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§9!7§)
         {
            this.§9!7§.setViewSize(param1,param2);
         }
         this.§'"+§ = param1;
         this.§,!T§ = param2;
      }
   }
}
