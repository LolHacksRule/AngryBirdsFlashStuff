package §9§#1
{
   import §9"`§.§-"H§;
   import §9&§.§@"K§;
   import flash.display.Stage;
   
   public class §`w§
   {
       
      
      private var §##-§:Vector.<§1" §>;
      
      protected var §2"c§:§1" §;
      
      private var §+!v§:String;
      
      private var §5!-§:String;
      
      protected var §1!e§:§@"K§ = null;
      
      private var §5"[§:Number;
      
      private var §%"8§:Number;
      
      public function §`w§(param1:§@"K§)
      {
         super();
         this.§##-§ = new Vector.<§1" §>();
         this.§1!e§ = param1;
         this.§5"[§ = this.§1!e§.stage.stageWidth;
         this.§%"8§ = this.§1!e§.stage.stageHeight;
      }
      
      public function §?!D§() : String
      {
         if(this.§2"c§ != null)
         {
            return this.§2"c§.mName;
         }
         return §1" §.§;"U§;
      }
      
      public function §%#&§() : §1" §
      {
         if(this.§2"c§ != null)
         {
            return this.§2"c§;
         }
         return null;
      }
      
      public function §-"v§(param1:String) : §1" §
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§##-§.length)
         {
            if((this.§##-§[_loc2_] as §1" §).mName == param1)
            {
               return this.§##-§[_loc2_] as §1" §;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §`0§(param1:String) : void
      {
         this.§+!v§ = param1;
      }
      
      public function get §6!e§() : Boolean
      {
         return this.§+!v§ != §1" §.§;"U§;
      }
      
      public function §]"%§() : String
      {
         return this.§+!v§;
      }
      
      public function §#"q§() : String
      {
         return this.§5!-§;
      }
      
      public function §[!R§() : Boolean
      {
         if(this.§+!v§ != §1" §.§;"U§)
         {
            this.§,#%§(this.§+!v§);
            this.setViewSize(this.§5"[§,this.§%"8§);
            this.§5!-§ = this.§+!v§;
            this.§+!v§ = §1" §.§;"U§;
            return true;
         }
         return false;
      }
      
      public function §,#%§(param1:String) : Boolean
      {
         var _loc2_:§1" § = null;
         var _loc3_:§1" § = null;
         for each(_loc3_ in this.§##-§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §-"H§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         var _loc4_:Boolean = false;
         if(this.§2"c§ != null)
         {
            §-"H§.log("deActivate state: " + this.§2"c§.mName);
            _loc4_ = this.§2"c§.skipTransition;
            this.§2"c§.skipTransition = false;
            this.§2"c§.deActivate();
            this.previousStateDeactivate();
            this.§1!e§.removeChild(this.§2"c§.§0v§);
         }
         this.§2"c§ = _loc2_;
         §-"H§.log("Activate state: " + this.§2"c§.mName);
         this.stage.frameRate = this.§2"c§.§=!n§();
         this.§1!e§.addChildAt(this.§2"c§.§0v§,0);
         this.§2"c§.activate(this.§#"q§());
         this.§2"c§.activateComplete(_loc4_);
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §^!%§(param1:§1" §) : Boolean
      {
         if(param1 != null)
         {
            this.§##-§.push(param1);
            param1.§6!!§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§2"c§)
         {
            return §1" §.§>"&§;
         }
         if(this.§2"c§.nextState)
         {
            return §1" §.§,!R§;
         }
         return this.§2"c§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§1!e§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§1!e§.height;
      }
      
      public function get canvas() : §@"K§
      {
         return this.§1!e§;
      }
      
      public function get stage() : Stage
      {
         return this.§1!e§.stage;
      }
      
      public function §[t§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§2"c§)
         {
            this.§2"c§.setViewSize(param1,param2);
         }
         this.§5"[§ = param1;
         this.§%"8§ = param2;
      }
   }
}
