package §4!H§
{
   import §&N§.§@,§;
   import §<!Y§.§<o§;
   import flash.display.Stage;
   
   public class §]2§
   {
       
      
      private var §%!B§:Vector.<§[4§>;
      
      protected var §'Z§:§[4§;
      
      private var mNextState:String;
      
      protected var §^!E§:§<o§ = null;
      
      private var § ^§:Number;
      
      private var §3i§:Number;
      
      public function §]2§(param1:§<o§)
      {
         super();
         this.§%!B§ = new Vector.<§[4§>();
         this.§^!E§ = param1;
         this.§ ^§ = this.§^!E§.stage.stageWidth;
         this.§3i§ = this.§^!E§.stage.stageHeight;
      }
      
      public function §0!B§() : String
      {
         if(this.§'Z§ != null)
         {
            return this.§'Z§.mName;
         }
         return §[4§.§=!D§;
      }
      
      public function §6!T§() : §[4§
      {
         if(this.§'Z§ != null)
         {
            return this.§'Z§;
         }
         return null;
      }
      
      public function §2! §(param1:String) : §[4§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§%!B§.length)
         {
            if((this.§%!B§[_loc2_] as §[4§).mName == param1)
            {
               return this.§%!B§[_loc2_] as §[4§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §&>§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §[!K§() : Boolean
      {
         return this.mNextState != §[4§.§=!D§;
      }
      
      public function §0n§() : Boolean
      {
         if(this.mNextState != §[4§.§=!D§)
         {
            this.§2y§(this.mNextState);
            this.§6'§(this.§ ^§,this.§3i§);
            this.mNextState = §[4§.§=!D§;
            return true;
         }
         return false;
      }
      
      public function §2y§(param1:String) : Boolean
      {
         var _loc2_:§[4§ = null;
         var _loc3_:§[4§ = null;
         for each(_loc3_ in this.§%!B§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §@,§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§'Z§ != null)
         {
            §@,§.log("deActivate state: " + this.§'Z§.mName);
            this.§'Z§.deActivate();
            this.previousStateDeactivate();
            this.§^!E§.removeChild(this.§'Z§.§=!<§);
         }
         this.§'Z§ = _loc2_;
         §@,§.log("Activate state: " + this.§'Z§.mName);
         this.§^!E§.addChildAt(this.§'Z§.§=!<§,0);
         this.§'Z§.activate();
         this.§'Z§.activateComplete();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §3C§(param1:§[4§) : Boolean
      {
         if(param1 != null)
         {
            this.§%!B§.push(param1);
            param1.§[!U§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§'Z§)
         {
            return §[4§.§^Z§;
         }
         return this.§'Z§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§^!E§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§^!E§.height;
      }
      
      public function get canvas() : §<o§
      {
         return this.§^!E§;
      }
      
      public function get stage() : Stage
      {
         return this.§^!E§.stage;
      }
      
      public function §6'§(param1:Number, param2:Number) : void
      {
         if(this.§'Z§ && this.§'Z§.§"c§)
         {
            this.§'Z§.§"c§.viewWidth = param1;
            this.§'Z§.§"c§.viewHeight = param2;
         }
         this.§ ^§ = param1;
         this.§3i§ = param2;
      }
   }
}
