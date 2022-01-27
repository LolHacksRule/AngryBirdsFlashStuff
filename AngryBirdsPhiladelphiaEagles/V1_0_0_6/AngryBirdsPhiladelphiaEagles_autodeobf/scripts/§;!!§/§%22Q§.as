package §;!!§
{
   import §"! §.§6<§;
   import §3!O§.§5q§;
   import flash.display.Stage;
   
   public class §"Q§
   {
       
      
      private var §;E§:Vector.<§0H§>;
      
      protected var §0!3§:§0H§;
      
      private var mNextState:String;
      
      protected var §`r§:§6<§ = null;
      
      private var §3n§:Number;
      
      private var §0!'§:Number;
      
      public function §"Q§(param1:§6<§)
      {
         super();
         this.§;E§ = new Vector.<§0H§>();
         this.§`r§ = param1;
         this.§3n§ = this.§`r§.stage.stageWidth;
         this.§0!'§ = this.§`r§.stage.stageHeight;
      }
      
      public function §1'§() : String
      {
         if(this.§0!3§ != null)
         {
            return this.§0!3§.mName;
         }
         return §0H§.§;5§;
      }
      
      public function §-!>§() : §0H§
      {
         if(this.§0!3§ != null)
         {
            return this.§0!3§;
         }
         return null;
      }
      
      public function §6!F§(param1:String) : §0H§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§;E§.length)
         {
            if((this.§;E§[_loc2_] as §0H§).mName == param1)
            {
               return this.§;E§[_loc2_] as §0H§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §,x§(param1:String, param2:§0H§) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§;E§.length)
         {
            if((this.§;E§[_loc3_] as §0H§).mName == param1)
            {
               this.§;E§[_loc3_] = param2;
               param2.§;@§ = this;
            }
            _loc3_++;
         }
      }
      
      public function §"x§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §0u§() : Boolean
      {
         return this.mNextState != §0H§.§;5§;
      }
      
      public function § !J§() : String
      {
         return this.mNextState;
      }
      
      public function §84§() : Boolean
      {
         if(this.mNextState != §0H§.§;5§)
         {
            this.§&!O§(this.mNextState);
            this.setViewSize(this.§3n§,this.§0!'§);
            this.mNextState = §0H§.§;5§;
            return true;
         }
         return false;
      }
      
      public function §&!O§(param1:String) : Boolean
      {
         var _loc2_:§0H§ = null;
         var _loc3_:§0H§ = null;
         for each(_loc3_ in this.§;E§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §5q§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§0!3§ != null)
         {
            §5q§.log("deActivate state: " + this.§0!3§.mName);
            this.§0!3§.deActivate();
            this.previousStateDeactivate();
            this.§`r§.removeChild(this.§0!3§.§+!N§);
         }
         this.§0!3§ = _loc2_;
         §5q§.log("Activate state: " + this.§0!3§.mName);
         this.stage.frameRate = this.§0!3§.§,Y§();
         this.§`r§.addChildAt(this.§0!3§.§+!N§,0);
         this.§0!3§.activate();
         this.§0!3§.§default§();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §1!O§(param1:§0H§) : Boolean
      {
         if(param1 != null)
         {
            this.§;E§.push(param1);
            param1.§;@§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§0!3§)
         {
            return §0H§.§?&§;
         }
         return this.§0!3§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§`r§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§`r§.height;
      }
      
      public function get canvas() : §6<§
      {
         return this.§`r§;
      }
      
      public function get stage() : Stage
      {
         return this.§`r§.stage;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§0!3§)
         {
            this.§0!3§.setViewSize(param1,param2);
         }
         this.§3n§ = param1;
         this.§0!'§ = param2;
      }
   }
}
