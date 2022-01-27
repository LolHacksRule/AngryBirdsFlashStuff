package §^w§
{
   import §"1§.§3'§;
   import §?>§.§19§;
   import flash.display.Stage;
   
   public class §@!O§
   {
       
      
      private var §1o§:Vector.<§-!,§>;
      
      protected var §0!$§:§-!,§;
      
      private var mNextState:String;
      
      protected var §1^§:§19§ = null;
      
      private var §0k§:Number;
      
      private var §#=§:Number;
      
      public function §@!O§(param1:§19§)
      {
         super();
         this.§1o§ = new Vector.<§-!,§>();
         this.§1^§ = param1;
         this.§0k§ = this.§1^§.stage.stageWidth;
         this.§#=§ = this.§1^§.stage.stageHeight;
      }
      
      public function §`!?§() : String
      {
         if(this.§0!$§ != null)
         {
            return this.§0!$§.mName;
         }
         return §-!,§.§[!=§;
      }
      
      public function §[x§() : §-!,§
      {
         if(this.§0!$§ != null)
         {
            return this.§0!$§;
         }
         return null;
      }
      
      public function § j§(param1:String) : §-!,§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§1o§.length)
         {
            if((this.§1o§[_loc2_] as §-!,§).mName == param1)
            {
               return this.§1o§[_loc2_] as §-!,§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §?c§(param1:String, param2:§-!,§) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§1o§.length)
         {
            if((this.§1o§[_loc3_] as §-!,§).mName == param1)
            {
               this.§1o§[_loc3_] = param2;
               param2.§>c§ = this;
            }
            _loc3_++;
         }
      }
      
      public function §?%§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §]!"§() : Boolean
      {
         return this.mNextState != §-!,§.§[!=§;
      }
      
      public function §5#§() : String
      {
         return this.mNextState;
      }
      
      public function §#! §() : Boolean
      {
         if(this.mNextState != §-!,§.§[!=§)
         {
            this.§?!F§(this.mNextState);
            this.setViewSize(this.§0k§,this.§#=§);
            this.mNextState = §-!,§.§[!=§;
            return true;
         }
         return false;
      }
      
      public function §?!F§(param1:String) : Boolean
      {
         var _loc2_:§-!,§ = null;
         var _loc3_:§-!,§ = null;
         for each(_loc3_ in this.§1o§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §3'§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§0!$§ != null)
         {
            §3'§.log("deActivate state: " + this.§0!$§.mName);
            this.§0!$§.deActivate();
            this.previousStateDeactivate();
            this.§1^§.removeChild(this.§0!$§.§46§);
         }
         this.§0!$§ = _loc2_;
         §3'§.log("Activate state: " + this.§0!$§.mName);
         this.stage.frameRate = this.§0!$§.§%!>§();
         this.§1^§.addChildAt(this.§0!$§.§46§,0);
         this.§0!$§.activate();
         this.§0!$§.§,R§();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §^!3§(param1:§-!,§) : Boolean
      {
         if(param1 != null)
         {
            this.§1o§.push(param1);
            param1.§>c§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§0!$§)
         {
            return §-!,§.§7L§;
         }
         return this.§0!$§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§1^§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§1^§.height;
      }
      
      public function get canvas() : §19§
      {
         return this.§1^§;
      }
      
      public function get stage() : Stage
      {
         return this.§1^§.stage;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§0!$§)
         {
            this.§0!$§.setViewSize(param1,param2);
         }
         this.§0k§ = param1;
         this.§#=§ = param2;
      }
   }
}
