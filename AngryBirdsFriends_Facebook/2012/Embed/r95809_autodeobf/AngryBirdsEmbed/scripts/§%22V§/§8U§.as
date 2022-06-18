package §"V§
{
   import §2!,§.§,`§;
   import §2x§.§'!@§;
   import flash.display.Stage;
   
   public class §8U§
   {
       
      
      private var §0!C§:Vector.<§true§>;
      
      protected var §!!4§:§true§;
      
      private var mNextState:String;
      
      protected var §`!>§:§,`§ = null;
      
      private var §#&§:Number;
      
      private var § !#§:Number;
      
      public function §8U§(param1:§,`§)
      {
         super();
         this.§0!C§ = new Vector.<§true§>();
         this.§`!>§ = param1;
         this.§#&§ = this.§`!>§.stage.stageWidth;
         this.§ !#§ = this.§`!>§.stage.stageHeight;
      }
      
      public function §`!$§() : String
      {
         if(this.§!!4§ != null)
         {
            return this.§!!4§.mName;
         }
         return §true§.§'§;
      }
      
      public function §&!5§() : §true§
      {
         if(this.§!!4§ != null)
         {
            return this.§!!4§;
         }
         return null;
      }
      
      public function §var §(param1:String) : §true§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§0!C§.length)
         {
            if((this.§0!C§[_loc2_] as §true§).mName == param1)
            {
               return this.§0!C§[_loc2_] as §true§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §]I§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §+d§() : Boolean
      {
         return this.mNextState != §true§.§'§;
      }
      
      public function §!!,§() : Boolean
      {
         if(this.mNextState != §true§.§'§)
         {
            this.§]#§(this.mNextState);
            this.setViewSize(this.§#&§,this.§ !#§);
            this.mNextState = §true§.§'§;
            return true;
         }
         return false;
      }
      
      public function §]#§(param1:String) : Boolean
      {
         var _loc2_:§true§ = null;
         var _loc3_:§true§ = null;
         for each(_loc3_ in this.§0!C§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §'!@§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§!!4§ != null)
         {
            §'!@§.log("deActivate state: " + this.§!!4§.mName);
            this.§!!4§.deActivate();
            this.previousStateDeactivate();
            this.§`!>§.removeChild(this.§!!4§.§'M§);
         }
         this.§!!4§ = _loc2_;
         §'!@§.log("Activate state: " + this.§!!4§.mName);
         this.stage.frameRate = this.§!!4§.§8Q§();
         this.§`!>§.addChildAt(this.§!!4§.§'M§,0);
         this.§!!4§.activate();
         this.§!!4§.§"I§();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §8w§(param1:§true§) : Boolean
      {
         if(param1 != null)
         {
            this.§0!C§.push(param1);
            param1.§6a§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§!!4§)
         {
            return §true§.§<!+§;
         }
         return this.§!!4§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§`!>§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§`!>§.height;
      }
      
      public function get canvas() : §,`§
      {
         return this.§`!>§;
      }
      
      public function get stage() : Stage
      {
         return this.§`!>§.stage;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§!!4§)
         {
            this.§!!4§.setViewSize(param1,param2);
         }
         this.§#&§ = param1;
         this.§ !#§ = param2;
      }
   }
}
