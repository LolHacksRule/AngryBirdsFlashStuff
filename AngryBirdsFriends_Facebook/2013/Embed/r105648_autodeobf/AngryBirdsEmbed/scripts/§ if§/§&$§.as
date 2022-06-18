package § if§
{
   import §4y§.§"s§;
   import §?!8§.§2>§;
   import flash.display.Stage;
   
   public class §&$§
   {
       
      
      private var §2Q§:Vector.<§2q§>;
      
      protected var §,!"§:§2q§;
      
      private var mNextState:String;
      
      protected var §3v§:§"s§ = null;
      
      private var §9n§:Number;
      
      private var §3!,§:Number;
      
      public function §&$§(param1:§"s§)
      {
         super();
         this.§2Q§ = new Vector.<§2q§>();
         this.§3v§ = param1;
         this.§9n§ = this.§3v§.stage.stageWidth;
         this.§3!,§ = this.§3v§.stage.stageHeight;
      }
      
      public function §-A§() : String
      {
         if(this.§,!"§ != null)
         {
            return this.§,!"§.mName;
         }
         return §2q§.§;9§;
      }
      
      public function §?I§() : §2q§
      {
         if(this.§,!"§ != null)
         {
            return this.§,!"§;
         }
         return null;
      }
      
      public function §7c§(param1:String) : §2q§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§2Q§.length)
         {
            if((this.§2Q§[_loc2_] as §2q§).mName == param1)
            {
               return this.§2Q§[_loc2_] as §2q§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §4M§(param1:String, param2:§2q§) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§2Q§.length)
         {
            if((this.§2Q§[_loc3_] as §2q§).mName == param1)
            {
               this.§2Q§[_loc3_] = param2;
               param2.§2!-§ = this;
            }
            _loc3_++;
         }
      }
      
      public function §`m§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §9w§() : Boolean
      {
         return this.mNextState != §2q§.§;9§;
      }
      
      public function §"!7§() : String
      {
         return this.mNextState;
      }
      
      public function §>K§() : Boolean
      {
         if(this.mNextState != §2q§.§;9§)
         {
            this.§<0§(this.mNextState);
            this.setViewSize(this.§9n§,this.§3!,§);
            this.mNextState = §2q§.§;9§;
            return true;
         }
         return false;
      }
      
      public function §<0§(param1:String) : Boolean
      {
         var _loc2_:§2q§ = null;
         var _loc3_:§2q§ = null;
         for each(_loc3_ in this.§2Q§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §2>§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§,!"§ != null)
         {
            §2>§.log("deActivate state: " + this.§,!"§.mName);
            this.§,!"§.deActivate();
            this.previousStateDeactivate();
            this.§3v§.removeChild(this.§,!"§.§>@§);
         }
         this.§,!"§ = _loc2_;
         §2>§.log("Activate state: " + this.§,!"§.mName);
         this.stage.frameRate = this.§,!"§.§8i§();
         this.§3v§.addChildAt(this.§,!"§.§>@§,0);
         this.§,!"§.activate();
         this.§,!"§.§"z§();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §01§(param1:§2q§) : Boolean
      {
         if(param1 != null)
         {
            this.§2Q§.push(param1);
            param1.§2!-§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§,!"§)
         {
            return §2q§.§>T§;
         }
         return this.§,!"§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§3v§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§3v§.height;
      }
      
      public function get canvas() : §"s§
      {
         return this.§3v§;
      }
      
      public function get stage() : Stage
      {
         return this.§3v§.stage;
      }
      
      public function §,n§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§,!"§)
         {
            this.§,!"§.setViewSize(param1,param2);
         }
         this.§9n§ = param1;
         this.§3!,§ = param2;
      }
   }
}
