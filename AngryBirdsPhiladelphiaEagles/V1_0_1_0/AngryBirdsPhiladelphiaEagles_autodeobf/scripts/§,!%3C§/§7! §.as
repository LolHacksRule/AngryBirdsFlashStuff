package §,!<§
{
   import §-!5§.§5s§;
   import §<!F§.§-q§;
   import flash.display.Stage;
   
   public class §7! §
   {
       
      
      private var §&d§:Vector.<§6!M§>;
      
      protected var §=!G§:§6!M§;
      
      private var mNextState:String;
      
      protected var §[a§:§-q§ = null;
      
      private var §^b§:Number;
      
      private var §6d§:Number;
      
      public function §7! §(param1:§-q§)
      {
         super();
         this.§&d§ = new Vector.<§6!M§>();
         this.§[a§ = param1;
         this.§^b§ = this.§[a§.stage.stageWidth;
         this.§6d§ = this.§[a§.stage.stageHeight;
      }
      
      public function §50§() : String
      {
         if(this.§=!G§ != null)
         {
            return this.§=!G§.mName;
         }
         return §6!M§.§@!1§;
      }
      
      public function §-!9§() : §6!M§
      {
         if(this.§=!G§ != null)
         {
            return this.§=!G§;
         }
         return null;
      }
      
      public function §65§(param1:String) : §6!M§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§&d§.length)
         {
            if((this.§&d§[_loc2_] as §6!M§).mName == param1)
            {
               return this.§&d§[_loc2_] as §6!M§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function § t§(param1:String, param2:§6!M§) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§&d§.length)
         {
            if((this.§&d§[_loc3_] as §6!M§).mName == param1)
            {
               this.§&d§[_loc3_] = param2;
               param2.§2i§ = this;
            }
            _loc3_++;
         }
      }
      
      public function §3!;§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §6!7§() : Boolean
      {
         return this.mNextState != §6!M§.§@!1§;
      }
      
      public function §!!&§() : String
      {
         return this.mNextState;
      }
      
      public function §4e§() : Boolean
      {
         if(this.mNextState != §6!M§.§@!1§)
         {
            this.§"!5§(this.mNextState);
            this.setViewSize(this.§^b§,this.§6d§);
            this.mNextState = §6!M§.§@!1§;
            return true;
         }
         return false;
      }
      
      public function §"!5§(param1:String) : Boolean
      {
         var _loc2_:§6!M§ = null;
         var _loc3_:§6!M§ = null;
         for each(_loc3_ in this.§&d§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §5s§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§=!G§ != null)
         {
            §5s§.log("deActivate state: " + this.§=!G§.mName);
            this.§=!G§.deActivate();
            this.previousStateDeactivate();
            this.§[a§.removeChild(this.§=!G§.§5+§);
         }
         this.§=!G§ = _loc2_;
         §5s§.log("Activate state: " + this.§=!G§.mName);
         this.stage.frameRate = this.§=!G§.§5D§();
         this.§[a§.addChildAt(this.§=!G§.§5+§,0);
         this.§=!G§.activate();
         this.§=!G§.§?!4§();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §7N§(param1:§6!M§) : Boolean
      {
         if(param1 != null)
         {
            this.§&d§.push(param1);
            param1.§2i§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§=!G§)
         {
            return §6!M§.§4u§;
         }
         return this.§=!G§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§[a§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§[a§.height;
      }
      
      public function get canvas() : §-q§
      {
         return this.§[a§;
      }
      
      public function get stage() : Stage
      {
         return this.§[a§.stage;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§=!G§)
         {
            this.§=!G§.setViewSize(param1,param2);
         }
         this.§^b§ = param1;
         this.§6d§ = param2;
      }
   }
}
