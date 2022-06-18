package §<!P§
{
   import §-!6§.§>I§;
   import §3i§.§2!`§;
   import flash.display.Stage;
   
   public class §[!T§
   {
       
      
      private var §]!§:Vector.<§>l§>;
      
      protected var §`8§:§>l§;
      
      private var mNextState:String;
      
      protected var §`3§:§2!`§ = null;
      
      private var §,!R§:Number;
      
      private var §^!]§:Number;
      
      public function §[!T§(param1:§2!`§)
      {
         super();
         this.§]!§ = new Vector.<§>l§>();
         this.§`3§ = param1;
         this.§,!R§ = this.§`3§.stage.stageWidth;
         this.§^!]§ = this.§`3§.stage.stageHeight;
      }
      
      public function §0^§() : String
      {
         if(this.§`8§ != null)
         {
            return this.§`8§.mName;
         }
         return §>l§.§<+§;
      }
      
      public function §3!M§() : §>l§
      {
         if(this.§`8§ != null)
         {
            return this.§`8§;
         }
         return null;
      }
      
      public function §5V§(param1:String) : §>l§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§]!§.length)
         {
            if((this.§]!§[_loc2_] as §>l§).mName == param1)
            {
               return this.§]!§[_loc2_] as §>l§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function § t§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get § !R§() : Boolean
      {
         return this.mNextState != §>l§.§<+§;
      }
      
      public function §1!D§() : String
      {
         return this.mNextState;
      }
      
      public function §2%§() : Boolean
      {
         if(this.mNextState != §>l§.§<+§)
         {
            this.§=!0§(this.mNextState);
            this.setViewSize(this.§,!R§,this.§^!]§);
            this.mNextState = §>l§.§<+§;
            return true;
         }
         return false;
      }
      
      public function §=!0§(param1:String) : Boolean
      {
         var _loc2_:§>l§ = null;
         var _loc3_:§>l§ = null;
         for each(_loc3_ in this.§]!§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §>I§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§`8§ != null)
         {
            §>I§.log("deActivate state: " + this.§`8§.mName);
            this.§`8§.deActivate();
            this.previousStateDeactivate();
            this.§`3§.removeChild(this.§`8§.§3!F§);
         }
         this.§`8§ = _loc2_;
         §>I§.log("Activate state: " + this.§`8§.mName);
         this.stage.frameRate = this.§`8§.§'1§();
         this.§`3§.addChildAt(this.§`8§.§3!F§,0);
         this.§`8§.activate();
         this.§`8§.activateComplete();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §,!2§(param1:§>l§) : Boolean
      {
         if(param1 != null)
         {
            this.§]!§.push(param1);
            param1.§+v§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§`8§)
         {
            return §>l§.§]!4§;
         }
         return this.§`8§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§`3§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§`3§.height;
      }
      
      public function get canvas() : §2!`§
      {
         return this.§`3§;
      }
      
      public function get stage() : Stage
      {
         return this.§`3§.stage;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§`8§)
         {
            this.§`8§.setViewSize(param1,param2);
         }
         this.§,!R§ = param1;
         this.§^!]§ = param2;
      }
   }
}
