package §[A§
{
   import §3v§.§1a§;
   import §4c§.§,!§;
   import flash.display.Stage;
   
   public class §8!B§
   {
       
      
      private var §!!=§:Vector.<§3!'§>;
      
      protected var §6c§:§3!'§;
      
      private var mNextState:String;
      
      protected var §'!5§:§,!§ = null;
      
      private var §++§:Number;
      
      private var §5!A§:Number;
      
      public function §8!B§(param1:§,!§)
      {
         super();
         this.§!!=§ = new Vector.<§3!'§>();
         this.§'!5§ = param1;
         this.§++§ = this.§'!5§.stage.stageWidth;
         this.§5!A§ = this.§'!5§.stage.stageHeight;
      }
      
      public function §5A§() : String
      {
         if(this.§6c§ != null)
         {
            return this.§6c§.mName;
         }
         return §3!'§.§'!$§;
      }
      
      public function §%5§() : §3!'§
      {
         if(this.§6c§ != null)
         {
            return this.§6c§;
         }
         return null;
      }
      
      public function §"4§(param1:String) : §3!'§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§!!=§.length)
         {
            if((this.§!!=§[_loc2_] as §3!'§).mName == param1)
            {
               return this.§!!=§[_loc2_] as §3!'§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §2O§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §+!,§() : Boolean
      {
         return this.mNextState != §3!'§.§'!$§;
      }
      
      public function §4!7§() : Boolean
      {
         if(this.mNextState != §3!'§.§'!$§)
         {
            this.§`^§(this.mNextState);
            this.setViewSize(this.§++§,this.§5!A§);
            this.mNextState = §3!'§.§'!$§;
            return true;
         }
         return false;
      }
      
      public function §`^§(param1:String) : Boolean
      {
         var _loc2_:§3!'§ = null;
         var _loc3_:§3!'§ = null;
         for each(_loc3_ in this.§!!=§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §1a§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§6c§ != null)
         {
            §1a§.log("deActivate state: " + this.§6c§.mName);
            this.§6c§.deActivate();
            this.previousStateDeactivate();
            this.§'!5§.removeChild(this.§6c§.§^!>§);
         }
         this.§6c§ = _loc2_;
         §1a§.log("Activate state: " + this.§6c§.mName);
         this.stage.frameRate = this.§6c§.§?y§();
         this.§'!5§.addChildAt(this.§6c§.§^!>§,0);
         this.§6c§.activate();
         this.§6c§.§8!A§();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §&n§(param1:§3!'§) : Boolean
      {
         if(param1 != null)
         {
            this.§!!=§.push(param1);
            param1.§2!B§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§6c§)
         {
            return §3!'§.§+!$§;
         }
         return this.§6c§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§'!5§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§'!5§.height;
      }
      
      public function get canvas() : §,!§
      {
         return this.§'!5§;
      }
      
      public function get stage() : Stage
      {
         return this.§'!5§.stage;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§6c§)
         {
            this.§6c§.setViewSize(param1,param2);
         }
         this.§++§ = param1;
         this.§5!A§ = param2;
      }
   }
}
