package §?!=§
{
   import §!6§.§3!5§;
   import §#!9§.§?Z§;
   import flash.display.Stage;
   
   public class §5!,§
   {
       
      
      private var §5!5§:Vector.<§<!>§>;
      
      protected var §,!6§:§<!>§;
      
      private var mNextState:String;
      
      protected var §3s§:§?Z§ = null;
      
      private var §+!M§:Number;
      
      private var §9,§:Number;
      
      public function §5!,§(param1:§?Z§)
      {
         super();
         this.§5!5§ = new Vector.<§<!>§>();
         this.§3s§ = param1;
         this.§+!M§ = this.§3s§.stage.stageWidth;
         this.§9,§ = this.§3s§.stage.stageHeight;
      }
      
      public function §`q§() : String
      {
         if(this.§,!6§ != null)
         {
            return this.§,!6§.mName;
         }
         return §<!>§.§3!9§;
      }
      
      public function §%x§() : §<!>§
      {
         if(this.§,!6§ != null)
         {
            return this.§,!6§;
         }
         return null;
      }
      
      public function §?!+§(param1:String) : §<!>§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§5!5§.length)
         {
            if((this.§5!5§[_loc2_] as §<!>§).mName == param1)
            {
               return this.§5!5§[_loc2_] as §<!>§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §;j§(param1:String, param2:§<!>§) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§5!5§.length)
         {
            if((this.§5!5§[_loc3_] as §<!>§).mName == param1)
            {
               this.§5!5§[_loc3_] = param2;
               param2.§&g§ = this;
            }
            _loc3_++;
         }
      }
      
      public function §%`§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §35§() : Boolean
      {
         return this.mNextState != §<!>§.§3!9§;
      }
      
      public function §]!;§() : String
      {
         return this.mNextState;
      }
      
      public function §extends§() : Boolean
      {
         if(this.mNextState != §<!>§.§3!9§)
         {
            this.§-!-§(this.mNextState);
            this.setViewSize(this.§+!M§,this.§9,§);
            this.mNextState = §<!>§.§3!9§;
            return true;
         }
         return false;
      }
      
      public function §-!-§(param1:String) : Boolean
      {
         var _loc2_:§<!>§ = null;
         var _loc3_:§<!>§ = null;
         for each(_loc3_ in this.§5!5§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §3!5§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§,!6§ != null)
         {
            §3!5§.log("deActivate state: " + this.§,!6§.mName);
            this.§,!6§.deActivate();
            this.previousStateDeactivate();
            this.§3s§.removeChild(this.§,!6§.§!!+§);
         }
         this.§,!6§ = _loc2_;
         §3!5§.log("Activate state: " + this.§,!6§.mName);
         this.stage.frameRate = this.§,!6§.§,<§();
         this.§3s§.addChildAt(this.§,!6§.§!!+§,0);
         this.§,!6§.activate();
         this.§,!6§.§49§();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §]!E§(param1:§<!>§) : Boolean
      {
         if(param1 != null)
         {
            this.§5!5§.push(param1);
            param1.§&g§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§,!6§)
         {
            return §<!>§.§+!3§;
         }
         return this.§,!6§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§3s§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§3s§.height;
      }
      
      public function get canvas() : §?Z§
      {
         return this.§3s§;
      }
      
      public function get stage() : Stage
      {
         return this.§3s§.stage;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§,!6§)
         {
            this.§,!6§.setViewSize(param1,param2);
         }
         this.§+!M§ = param1;
         this.§9,§ = param2;
      }
   }
}
