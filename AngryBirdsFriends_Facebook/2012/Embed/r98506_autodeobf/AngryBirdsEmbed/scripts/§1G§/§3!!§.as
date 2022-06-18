package §1G§
{
   import §"!>§.§=n§;
   import §-p§.§&2§;
   import flash.display.Stage;
   
   public class §3!!§
   {
       
      
      private var §^!!§:Vector.<§`U§>;
      
      protected var §2^§:§`U§;
      
      private var mNextState:String;
      
      protected var §1!0§:§=n§ = null;
      
      private var §!"§:Number;
      
      private var §6!E§:Number;
      
      public function §3!!§(param1:§=n§)
      {
         super();
         this.§^!!§ = new Vector.<§`U§>();
         this.§1!0§ = param1;
         this.§!"§ = this.§1!0§.stage.stageWidth;
         this.§6!E§ = this.§1!0§.stage.stageHeight;
      }
      
      public function §7#§() : String
      {
         if(this.§2^§ != null)
         {
            return this.§2^§.mName;
         }
         return §`U§.§3V§;
      }
      
      public function §%!>§() : §`U§
      {
         if(this.§2^§ != null)
         {
            return this.§2^§;
         }
         return null;
      }
      
      public function §>!4§(param1:String) : §`U§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§^!!§.length)
         {
            if((this.§^!!§[_loc2_] as §`U§).mName == param1)
            {
               return this.§^!!§[_loc2_] as §`U§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §`!$§(param1:String, param2:§`U§) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§^!!§.length)
         {
            if((this.§^!!§[_loc3_] as §`U§).mName == param1)
            {
               this.§^!!§[_loc3_] = param2;
               param2.§1!;§ = this;
            }
            _loc3_++;
         }
      }
      
      public function §>A§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §9v§() : Boolean
      {
         return this.mNextState != §`U§.§3V§;
      }
      
      public function § d§() : String
      {
         return this.mNextState;
      }
      
      public function § ^§() : Boolean
      {
         if(this.mNextState != §`U§.§3V§)
         {
            this.§!!,§(this.mNextState);
            this.setViewSize(this.§!"§,this.§6!E§);
            this.mNextState = §`U§.§3V§;
            return true;
         }
         return false;
      }
      
      public function §!!,§(param1:String) : Boolean
      {
         var _loc2_:§`U§ = null;
         var _loc3_:§`U§ = null;
         for each(_loc3_ in this.§^!!§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §&2§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§2^§ != null)
         {
            §&2§.log("deActivate state: " + this.§2^§.mName);
            this.§2^§.deActivate();
            this.previousStateDeactivate();
            this.§1!0§.removeChild(this.§2^§.§]?§);
         }
         this.§2^§ = _loc2_;
         §&2§.log("Activate state: " + this.§2^§.mName);
         this.stage.frameRate = this.§2^§.§!;§();
         this.§1!0§.addChildAt(this.§2^§.§]?§,0);
         this.§2^§.activate();
         this.§2^§.§2,§();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §%p§(param1:§`U§) : Boolean
      {
         if(param1 != null)
         {
            this.§^!!§.push(param1);
            param1.§1!;§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§2^§)
         {
            return §`U§.§=I§;
         }
         return this.§2^§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§1!0§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§1!0§.height;
      }
      
      public function get canvas() : §=n§
      {
         return this.§1!0§;
      }
      
      public function get stage() : Stage
      {
         return this.§1!0§.stage;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§2^§)
         {
            this.§2^§.setViewSize(param1,param2);
         }
         this.§!"§ = param1;
         this.§6!E§ = param2;
      }
   }
}
