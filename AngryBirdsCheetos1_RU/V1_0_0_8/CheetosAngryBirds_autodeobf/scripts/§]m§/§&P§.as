package §]m§
{
   import §'D§.§8e§;
   import §=Z§.§4N§;
   import flash.display.Stage;
   
   public class §&P§
   {
       
      
      private var §'!V§:Vector.<§-D§>;
      
      protected var § g§:§-D§;
      
      private var mNextState:String;
      
      protected var §3!J§:§4N§ = null;
      
      private var §#b§:Number;
      
      private var §%h§:Number;
      
      public function §&P§(param1:§4N§)
      {
         super();
         this.§'!V§ = new Vector.<§-D§>();
         this.§3!J§ = param1;
         this.§#b§ = this.§3!J§.stage.stageWidth;
         this.§%h§ = this.§3!J§.stage.stageHeight;
      }
      
      public function §%P§() : String
      {
         if(this.§ g§ != null)
         {
            return this.§ g§.mName;
         }
         return §-D§.§%v§;
      }
      
      public function §"!A§() : §-D§
      {
         if(this.§ g§ != null)
         {
            return this.§ g§;
         }
         return null;
      }
      
      public function §^!Q§(param1:String) : §-D§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§'!V§.length)
         {
            if((this.§'!V§[_loc2_] as §-D§).mName == param1)
            {
               return this.§'!V§[_loc2_] as §-D§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function § !$§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §&!_§() : Boolean
      {
         return this.mNextState != §-D§.§%v§;
      }
      
      public function §=H§() : Boolean
      {
         if(this.mNextState != §-D§.§%v§)
         {
            this.§%!G§(this.mNextState);
            this.setViewSize(this.§#b§,this.§%h§);
            this.mNextState = §-D§.§%v§;
            return true;
         }
         return false;
      }
      
      public function §%!G§(param1:String) : Boolean
      {
         var _loc2_:§-D§ = null;
         var _loc3_:§-D§ = null;
         for each(_loc3_ in this.§'!V§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §8e§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§ g§ != null)
         {
            §8e§.log("deActivate state: " + this.§ g§.mName);
            this.§ g§.deActivate();
            this.previousStateDeactivate();
            this.§3!J§.removeChild(this.§ g§.§`K§);
         }
         this.§ g§ = _loc2_;
         §8e§.log("Activate state: " + this.§ g§.mName);
         this.stage.frameRate = this.§ g§.§@!&§();
         this.§3!J§.addChildAt(this.§ g§.§`K§,0);
         this.§ g§.activate();
         this.§ g§.activateComplete();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §#N§(param1:§-D§) : Boolean
      {
         if(param1 != null)
         {
            this.§'!V§.push(param1);
            param1.§`d§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§ g§)
         {
            return §-D§.§5E§;
         }
         return this.§ g§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§3!J§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§3!J§.height;
      }
      
      public function get canvas() : §4N§
      {
         return this.§3!J§;
      }
      
      public function get stage() : Stage
      {
         return this.§3!J§.stage;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§ g§)
         {
            this.§ g§.setViewSize(param1,param2);
         }
         this.§#b§ = param1;
         this.§%h§ = param2;
      }
   }
}
