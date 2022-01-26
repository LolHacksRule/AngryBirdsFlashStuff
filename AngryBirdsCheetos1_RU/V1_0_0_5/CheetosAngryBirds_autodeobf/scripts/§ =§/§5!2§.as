package § =§
{
   import §!4§.§=!Z§;
   import §`2§.§ if§;
   import flash.display.Stage;
   
   public class §5!2§
   {
       
      
      private var §1i§:Vector.<§ x§>;
      
      protected var §8A§:§ x§;
      
      private var mNextState:String;
      
      protected var §,$§:§ if§ = null;
      
      private var §?J§:Number;
      
      private var §]H§:Number;
      
      public function §5!2§(param1:§ if§)
      {
         super();
         this.§1i§ = new Vector.<§ x§>();
         this.§,$§ = param1;
         this.§?J§ = this.§,$§.stage.stageWidth;
         this.§]H§ = this.§,$§.stage.stageHeight;
      }
      
      public function §@!K§() : String
      {
         if(this.§8A§ != null)
         {
            return this.§8A§.mName;
         }
         return § x§.§^!C§;
      }
      
      public function §>t§() : § x§
      {
         if(this.§8A§ != null)
         {
            return this.§8A§;
         }
         return null;
      }
      
      public function §4s§(param1:String) : § x§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§1i§.length)
         {
            if((this.§1i§[_loc2_] as § x§).mName == param1)
            {
               return this.§1i§[_loc2_] as § x§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §?!#§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §<!N§() : Boolean
      {
         return this.mNextState != § x§.§^!C§;
      }
      
      public function §!!P§() : Boolean
      {
         if(this.mNextState != § x§.§^!C§)
         {
            this.§]s§(this.mNextState);
            this.setViewSize(this.§?J§,this.§]H§);
            this.mNextState = § x§.§^!C§;
            return true;
         }
         return false;
      }
      
      public function §]s§(param1:String) : Boolean
      {
         var _loc2_:§ x§ = null;
         var _loc3_:§ x§ = null;
         for each(_loc3_ in this.§1i§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §=!Z§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§8A§ != null)
         {
            §=!Z§.log("deActivate state: " + this.§8A§.mName);
            this.§8A§.deActivate();
            this.previousStateDeactivate();
            this.§,$§.removeChild(this.§8A§.§&!C§);
         }
         this.§8A§ = _loc2_;
         §=!Z§.log("Activate state: " + this.§8A§.mName);
         this.stage.frameRate = this.§8A§.§`!O§();
         this.§,$§.addChildAt(this.§8A§.§&!C§,0);
         this.§8A§.activate();
         this.§8A§.activateComplete();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §4!K§(param1:§ x§) : Boolean
      {
         if(param1 != null)
         {
            this.§1i§.push(param1);
            param1.§+!1§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§8A§)
         {
            return § x§.§[t§;
         }
         return this.§8A§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§,$§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§,$§.height;
      }
      
      public function get canvas() : § if§
      {
         return this.§,$§;
      }
      
      public function get stage() : Stage
      {
         return this.§,$§.stage;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§8A§)
         {
            this.§8A§.setViewSize(param1,param2);
         }
         this.§?J§ = param1;
         this.§]H§ = param2;
      }
   }
}
