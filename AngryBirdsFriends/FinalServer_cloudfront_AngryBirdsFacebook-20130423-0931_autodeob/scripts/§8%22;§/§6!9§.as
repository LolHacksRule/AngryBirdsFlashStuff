package §8";§
{
   import §%"J§.§!`§;
   import §+!c§.§;!=§;
   import flash.display.Stage;
   
   public class §6!9§
   {
       
      
      private var §0"R§:Vector.<§+d§>;
      
      protected var §=2§:§+d§;
      
      private var mNextState:String;
      
      protected var §%3§:§!`§ = null;
      
      private var §,!&§:Number;
      
      private var §+!i§:Number;
      
      public function §6!9§(param1:§!`§)
      {
         super();
         this.§0"R§ = new Vector.<§+d§>();
         this.§%3§ = param1;
         this.§,!&§ = this.§%3§.stage.stageWidth;
         this.§+!i§ = this.§%3§.stage.stageHeight;
      }
      
      public function §%^§() : String
      {
         if(this.§=2§ != null)
         {
            return this.§=2§.mName;
         }
         return §+d§.§-!7§;
      }
      
      public function §2!d§() : §+d§
      {
         if(this.§=2§ != null)
         {
            return this.§=2§;
         }
         return null;
      }
      
      public function §]!G§(param1:String) : §+d§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§0"R§.length)
         {
            if((this.§0"R§[_loc2_] as §+d§).mName == param1)
            {
               return this.§0"R§[_loc2_] as §+d§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §&!4§(param1:String, param2:§+d§) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§0"R§.length)
         {
            if((this.§0"R§[_loc3_] as §+d§).mName == param1)
            {
               this.§0"R§[_loc3_] = param2;
               param2.§8!G§ = this;
            }
            _loc3_++;
         }
      }
      
      public function §`H§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §^!t§() : Boolean
      {
         return this.mNextState != §+d§.§-!7§;
      }
      
      public function §&!u§() : String
      {
         return this.mNextState;
      }
      
      public function §@">§() : Boolean
      {
         if(this.mNextState != §+d§.§-!7§)
         {
            this.§`",§(this.mNextState);
            this.setViewSize(this.§,!&§,this.§+!i§);
            this.mNextState = §+d§.§-!7§;
            return true;
         }
         return false;
      }
      
      public function §`",§(param1:String) : Boolean
      {
         var _loc2_:§+d§ = null;
         var _loc3_:§+d§ = null;
         for each(_loc3_ in this.§0"R§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §;!=§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§=2§ != null)
         {
            §;!=§.log("deActivate state: " + this.§=2§.mName);
            this.§=2§.deActivate();
            this.previousStateDeactivate();
            this.§%3§.removeChild(this.§=2§.§?!T§);
         }
         this.§=2§ = _loc2_;
         §;!=§.log("Activate state: " + this.§=2§.mName);
         this.stage.frameRate = this.§=2§.§1!_§();
         this.§%3§.addChildAt(this.§=2§.§?!T§,0);
         this.§=2§.activate();
         this.§=2§.§=k§();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §%1§(param1:§+d§) : Boolean
      {
         if(param1 != null)
         {
            this.§0"R§.push(param1);
            param1.§8!G§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§=2§)
         {
            return §+d§.§8!I§;
         }
         return this.§=2§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§%3§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§%3§.height;
      }
      
      public function get canvas() : §!`§
      {
         return this.§%3§;
      }
      
      public function get stage() : Stage
      {
         return this.§%3§.stage;
      }
      
      public function §5!l§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§=2§)
         {
            this.§=2§.setViewSize(param1,param2);
         }
         this.§,!&§ = param1;
         this.§+!i§ = param2;
      }
   }
}
