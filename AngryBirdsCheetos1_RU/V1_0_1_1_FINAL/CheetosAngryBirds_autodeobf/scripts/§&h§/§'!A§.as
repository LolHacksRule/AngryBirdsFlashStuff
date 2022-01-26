package §&h§
{
   import § N§.§]M§;
   import §^!O§.§=!S§;
   import flash.display.Stage;
   
   public class §'!A§
   {
       
      
      private var §18§:Vector.<§+Y§>;
      
      protected var §@!K§:§+Y§;
      
      private var mNextState:String;
      
      protected var §&"§:§=!S§ = null;
      
      private var §1]§:Number;
      
      private var §"j§:Number;
      
      public function §'!A§(param1:§=!S§)
      {
         super();
         this.§18§ = new Vector.<§+Y§>();
         this.§&"§ = param1;
         this.§1]§ = this.§&"§.stage.stageWidth;
         this.§"j§ = this.§&"§.stage.stageHeight;
      }
      
      public function §<!Z§() : String
      {
         if(this.§@!K§ != null)
         {
            return this.§@!K§.mName;
         }
         return §+Y§.§3!=§;
      }
      
      public function §[!0§() : §+Y§
      {
         if(this.§@!K§ != null)
         {
            return this.§@!K§;
         }
         return null;
      }
      
      public function §+,§(param1:String) : §+Y§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§18§.length)
         {
            if((this.§18§[_loc2_] as §+Y§).mName == param1)
            {
               return this.§18§[_loc2_] as §+Y§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §]![§(param1:String, param2:§+Y§) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§18§.length)
         {
            if((this.§18§[_loc3_] as §+Y§).mName == param1)
            {
               this.§18§[_loc3_] = param2;
               param2.§^v§ = this;
            }
            _loc3_++;
         }
      }
      
      public function §1V§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §!!S§() : Boolean
      {
         return this.mNextState != §+Y§.§3!=§;
      }
      
      public function §>!8§() : String
      {
         return this.mNextState;
      }
      
      public function §"!C§() : Boolean
      {
         if(this.mNextState != §+Y§.§3!=§)
         {
            this.§%>§(this.mNextState);
            this.setViewSize(this.§1]§,this.§"j§);
            this.mNextState = §+Y§.§3!=§;
            return true;
         }
         return false;
      }
      
      public function §%>§(param1:String) : Boolean
      {
         var _loc2_:§+Y§ = null;
         var _loc3_:§+Y§ = null;
         for each(_loc3_ in this.§18§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §]M§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§@!K§ != null)
         {
            §]M§.log("deActivate state: " + this.§@!K§.mName);
            this.§@!K§.deActivate();
            this.previousStateDeactivate();
            this.§&"§.removeChild(this.§@!K§.§;!5§);
         }
         this.§@!K§ = _loc2_;
         §]M§.log("Activate state: " + this.§@!K§.mName);
         this.stage.frameRate = this.§@!K§.§[!-§();
         this.§&"§.addChildAt(this.§@!K§.§;!5§,0);
         this.§@!K§.activate();
         this.§@!K§.activateComplete();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §2v§(param1:§+Y§) : Boolean
      {
         if(param1 != null)
         {
            this.§18§.push(param1);
            param1.§^v§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§@!K§)
         {
            return §+Y§.§5V§;
         }
         return this.§@!K§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§&"§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§&"§.height;
      }
      
      public function get canvas() : §=!S§
      {
         return this.§&"§;
      }
      
      public function get stage() : Stage
      {
         return this.§&"§.stage;
      }
      
      public function §=!6§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§@!K§)
         {
            this.§@!K§.setViewSize(param1,param2);
         }
         this.§1]§ = param1;
         this.§"j§ = param2;
      }
   }
}
