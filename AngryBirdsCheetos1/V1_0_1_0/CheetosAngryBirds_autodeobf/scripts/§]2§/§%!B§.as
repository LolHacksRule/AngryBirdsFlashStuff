package §]2§
{
   import §<o§.§7!1§;
   import §@,§.§4h§;
   import flash.display.Stage;
   
   public class §%!B§
   {
       
      
      private var §'Z§:Vector.<§[4§>;
      
      protected var §0!B§:§[4§;
      
      private var mNextState:String;
      
      protected var §;0§:§7!1§ = null;
      
      private var §3i§:Number;
      
      private var §&!=§:Number;
      
      public function §%!B§(param1:§7!1§)
      {
         super();
         this.§'Z§ = new Vector.<§[4§>();
         this.§;0§ = param1;
         this.§3i§ = this.§;0§.stage.stageWidth;
         this.§&!=§ = this.§;0§.stage.stageHeight;
      }
      
      public function §6!T§() : String
      {
         if(this.§0!B§ != null)
         {
            return this.§0!B§.mName;
         }
         return §[4§.§=!D§;
      }
      
      public function §2! §() : §[4§
      {
         if(this.§0!B§ != null)
         {
            return this.§0!B§;
         }
         return null;
      }
      
      public function §&>§(param1:String) : §[4§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§'Z§.length)
         {
            if((this.§'Z§[_loc2_] as §[4§).mName == param1)
            {
               return this.§'Z§[_loc2_] as §[4§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §[!K§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §0n§() : Boolean
      {
         return this.mNextState != §[4§.§=!D§;
      }
      
      public function §2y§() : Boolean
      {
         if(this.mNextState != §[4§.§=!D§)
         {
            this.§3C§(this.mNextState);
            this.setViewSize(this.§3i§,this.§&!=§);
            this.mNextState = §[4§.§=!D§;
            return true;
         }
         return false;
      }
      
      public function §3C§(param1:String) : Boolean
      {
         var _loc2_:§[4§ = null;
         var _loc3_:§[4§ = null;
         for each(_loc3_ in this.§'Z§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §4h§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§0!B§ != null)
         {
            §4h§.log("deActivate state: " + this.§0!B§.mName);
            this.§0!B§.deActivate();
            this.previousStateDeactivate();
            this.§;0§.removeChild(this.§0!B§.§9!A§);
         }
         this.§0!B§ = _loc2_;
         §4h§.log("Activate state: " + this.§0!B§.mName);
         this.§;0§.addChildAt(this.§0!B§.§9!A§,0);
         this.§0!B§.activate();
         this.§0!B§.activateComplete();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §6'§(param1:§[4§) : Boolean
      {
         if(param1 != null)
         {
            this.§'Z§.push(param1);
            param1.§[!U§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§0!B§)
         {
            return §[4§.§^Z§;
         }
         return this.§0!B§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§;0§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§;0§.height;
      }
      
      public function get canvas() : §7!1§
      {
         return this.§;0§;
      }
      
      public function get stage() : Stage
      {
         return this.§;0§.stage;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§0!B§)
         {
            this.§0!B§.setViewSize(param1,param2);
         }
         this.§3i§ = param1;
         this.§&!=§ = param2;
      }
   }
}
