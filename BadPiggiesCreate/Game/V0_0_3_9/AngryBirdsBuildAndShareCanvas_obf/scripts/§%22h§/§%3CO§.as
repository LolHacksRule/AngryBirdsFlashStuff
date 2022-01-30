package §"h§
{
   import §@!;§.§&F§;
   import §^s§.§#!p§;
   import flash.display.Stage;
   
   public class §<O§
   {
       
      
      private var §5!K§:Vector.<§<"+§>;
      
      protected var §'-§:§<"+§;
      
      private var mNextState:String;
      
      protected var §[!d§:§#!p§ = null;
      
      private var §9!K§:Number;
      
      private var §@0§:Number;
      
      public function §<O§(param1:§#!p§)
      {
         super();
         this.§5!K§ = new Vector.<§<"+§>();
         this.§[!d§ = param1;
         this.§9!K§ = this.§[!d§.stage.stageWidth;
         this.§@0§ = this.§[!d§.stage.stageHeight;
      }
      
      public function §>U§() : String
      {
         if(this.§'-§ != null)
         {
            return this.§'-§.mName;
         }
         return §<"+§.§3!^§;
      }
      
      public function §+!C§() : §<"+§
      {
         if(this.§'-§ != null)
         {
            return this.§'-§;
         }
         return null;
      }
      
      public function §4!E§(param1:String) : §<"+§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§5!K§.length)
         {
            if((this.§5!K§[_loc2_] as §<"+§).mName == param1)
            {
               return this.§5!K§[_loc2_] as §<"+§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §@W§(param1:String, param2:§<"+§) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§5!K§.length)
         {
            if((this.§5!K§[_loc3_] as §<"+§).mName == param1)
            {
               this.§5!K§[_loc3_] = param2;
               param2.§3c§ = this;
            }
            _loc3_++;
         }
      }
      
      public function §<g§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §"+§() : Boolean
      {
         return this.mNextState != §<"+§.§3!^§;
      }
      
      public function §96§() : String
      {
         return this.mNextState;
      }
      
      public function §4w§() : Boolean
      {
         if(this.mNextState != §<"+§.§3!^§)
         {
            this.§'2§(this.mNextState);
            this.setViewSize(this.§9!K§,this.§@0§);
            this.mNextState = §<"+§.§3!^§;
            return true;
         }
         return false;
      }
      
      public function §'2§(param1:String) : Boolean
      {
         var _loc2_:§<"+§ = null;
         var _loc3_:§<"+§ = null;
         for each(_loc3_ in this.§5!K§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §&F§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§'-§ != null)
         {
            §&F§.log("deActivate state: " + this.§'-§.mName);
            this.§'-§.deActivate();
            this.previousStateDeactivate();
            this.§[!d§.removeChild(this.§'-§.§5H§);
         }
         this.§'-§ = _loc2_;
         §&F§.log("Activate state: " + this.§'-§.mName);
         this.stage.frameRate = this.§'-§.getTargetFrameRate();
         this.§[!d§.addChildAt(this.§'-§.§5H§,0);
         this.§'-§.activate();
         this.§'-§.§]!1§();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §?!B§(param1:§<"+§) : Boolean
      {
         if(param1 != null)
         {
            this.§5!K§.push(param1);
            param1.§3c§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§'-§)
         {
            return §<"+§.§<!Q§;
         }
         return this.§'-§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§[!d§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§[!d§.height;
      }
      
      public function get canvas() : §#!p§
      {
         return this.§[!d§;
      }
      
      public function get stage() : Stage
      {
         return this.§[!d§.stage;
      }
      
      public function §1!o§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§'-§)
         {
            this.§'-§.setViewSize(param1,param2);
         }
         this.§9!K§ = param1;
         this.§@0§ = param2;
      }
   }
}
