package §]4§
{
   import §;8§.§3f§;
   import §@!,§.§8!6§;
   import flash.display.Stage;
   
   public class §&"§
   {
       
      
      private var §<!3§:Vector.<§-§>;
      
      protected var §`k§:§-§;
      
      private var mNextState:String;
      
      protected var §5A§:§8!6§ = null;
      
      private var §<j§:Number;
      
      private var §+Z§:Number;
      
      public function §&"§(param1:§8!6§)
      {
         super();
         this.§<!3§ = new Vector.<§-§>();
         this.§5A§ = param1;
         this.§<j§ = this.§5A§.stage.stageWidth;
         this.§+Z§ = this.§5A§.stage.stageHeight;
      }
      
      public function §-! §() : String
      {
         if(this.§`k§ != null)
         {
            return this.§`k§.mName;
         }
         return §-§.§ !-§;
      }
      
      public function §"! §() : §-§
      {
         if(this.§`k§ != null)
         {
            return this.§`k§;
         }
         return null;
      }
      
      public function §=!1§(param1:String) : §-§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§<!3§.length)
         {
            if((this.§<!3§[_loc2_] as §-§).mName == param1)
            {
               return this.§<!3§[_loc2_] as §-§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §&K§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §[+§() : Boolean
      {
         return this.mNextState != §-§.§ !-§;
      }
      
      public function §,!>§() : Boolean
      {
         if(this.mNextState != §-§.§ !-§)
         {
            this.§?>§(this.mNextState);
            this.setViewSize(this.§<j§,this.§+Z§);
            this.mNextState = §-§.§ !-§;
            return true;
         }
         return false;
      }
      
      public function §?>§(param1:String) : Boolean
      {
         var _loc2_:§-§ = null;
         var _loc3_:§-§ = null;
         for each(_loc3_ in this.§<!3§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §3f§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§`k§ != null)
         {
            §3f§.log("deActivate state: " + this.§`k§.mName);
            this.§`k§.deActivate();
            this.previousStateDeactivate();
            this.§5A§.removeChild(this.§`k§.§1-§);
         }
         this.§`k§ = _loc2_;
         §3f§.log("Activate state: " + this.§`k§.mName);
         this.stage.frameRate = this.§`k§.§4!$§();
         this.§5A§.addChildAt(this.§`k§.§1-§,0);
         this.§`k§.activate();
         this.§`k§.§2_§();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §9!2§(param1:§-§) : Boolean
      {
         if(param1 != null)
         {
            this.§<!3§.push(param1);
            param1.§4F§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§`k§)
         {
            return §-§.§#!?§;
         }
         return this.§`k§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§5A§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§5A§.height;
      }
      
      public function get canvas() : §8!6§
      {
         return this.§5A§;
      }
      
      public function get stage() : Stage
      {
         return this.§5A§.stage;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§`k§)
         {
            this.§`k§.setViewSize(param1,param2);
         }
         this.§<j§ = param1;
         this.§+Z§ = param2;
      }
   }
}
