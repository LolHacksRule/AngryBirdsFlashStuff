package §<!A§
{
   import §'6§.§?!L§;
   import §?!$§.§+!,§;
   import flash.display.Stage;
   
   public class §5y§
   {
       
      
      private var §?!3§:Vector.<§,!?§>;
      
      protected var §#s§:§,!?§;
      
      private var mNextState:String;
      
      protected var §,Y§:§+!,§ = null;
      
      private var §2P§:Number;
      
      private var §5!D§:Number;
      
      public function §5y§(param1:§+!,§)
      {
         super();
         this.§?!3§ = new Vector.<§,!?§>();
         this.§,Y§ = param1;
         this.§2P§ = this.§,Y§.stage.stageWidth;
         this.§5!D§ = this.§,Y§.stage.stageHeight;
      }
      
      public function §@x§() : String
      {
         if(this.§#s§ != null)
         {
            return this.§#s§.mName;
         }
         return §,!?§.§??§;
      }
      
      public function §`!%§() : §,!?§
      {
         if(this.§#s§ != null)
         {
            return this.§#s§;
         }
         return null;
      }
      
      public function §[i§(param1:String) : §,!?§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§?!3§.length)
         {
            if((this.§?!3§[_loc2_] as §,!?§).mName == param1)
            {
               return this.§?!3§[_loc2_] as §,!?§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §8C§(param1:String, param2:§,!?§) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§?!3§.length)
         {
            if((this.§?!3§[_loc3_] as §,!?§).mName == param1)
            {
               this.§?!3§[_loc3_] = param2;
               param2.§3!-§ = this;
            }
            _loc3_++;
         }
      }
      
      public function §#!%§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §5!M§() : Boolean
      {
         return this.mNextState != §,!?§.§??§;
      }
      
      public function §"o§() : String
      {
         return this.mNextState;
      }
      
      public function §+!!§() : Boolean
      {
         if(this.mNextState != §,!?§.§??§)
         {
            this.§-_§(this.mNextState);
            this.setViewSize(this.§2P§,this.§5!D§);
            this.mNextState = §,!?§.§??§;
            return true;
         }
         return false;
      }
      
      public function §-_§(param1:String) : Boolean
      {
         var _loc2_:§,!?§ = null;
         var _loc3_:§,!?§ = null;
         for each(_loc3_ in this.§?!3§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §?!L§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§#s§ != null)
         {
            §?!L§.log("deActivate state: " + this.§#s§.mName);
            this.§#s§.deActivate();
            this.previousStateDeactivate();
            this.§,Y§.removeChild(this.§#s§.§`8§);
         }
         this.§#s§ = _loc2_;
         §?!L§.log("Activate state: " + this.§#s§.mName);
         this.stage.frameRate = this.§#s§.§!!0§();
         this.§,Y§.addChildAt(this.§#s§.§`8§,0);
         this.§#s§.activate();
         this.§#s§.§,c§();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §3R§(param1:§,!?§) : Boolean
      {
         if(param1 != null)
         {
            this.§?!3§.push(param1);
            param1.§3!-§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§#s§)
         {
            return §,!?§.§'E§;
         }
         return this.§#s§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§,Y§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§,Y§.height;
      }
      
      public function get canvas() : §+!,§
      {
         return this.§,Y§;
      }
      
      public function get stage() : Stage
      {
         return this.§,Y§.stage;
      }
      
      public function §#E§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§#s§)
         {
            this.§#s§.setViewSize(param1,param2);
         }
         this.§2P§ = param1;
         this.§5!D§ = param2;
      }
   }
}
