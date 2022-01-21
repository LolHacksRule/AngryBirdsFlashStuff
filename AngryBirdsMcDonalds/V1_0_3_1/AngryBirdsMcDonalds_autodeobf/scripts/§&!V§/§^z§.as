package §&!V§
{
   import §5K§.§[C§;
   import §<!Z§.§,H§;
   import flash.display.Stage;
   
   public class §^z§
   {
       
      
      private var §4!7§:Vector.<§=O§>;
      
      protected var §%!+§:§=O§;
      
      private var mNextState:String;
      
      protected var §,!6§:§,H§ = null;
      
      private var §5!f§:Number;
      
      private var §`§:Number;
      
      public function §^z§(param1:§,H§)
      {
         super();
         this.§4!7§ = new Vector.<§=O§>();
         this.§,!6§ = param1;
         this.§5!f§ = this.§,!6§.stage.stageWidth;
         this.§`§ = this.§,!6§.stage.stageHeight;
      }
      
      public function §@!,§() : String
      {
         if(this.§%!+§ != null)
         {
            return this.§%!+§.mName;
         }
         return §=O§.§]L§;
      }
      
      public function §,y§() : §=O§
      {
         if(this.§%!+§ != null)
         {
            return this.§%!+§;
         }
         return null;
      }
      
      public function §3!U§(param1:String) : §=O§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§4!7§.length)
         {
            if((this.§4!7§[_loc2_] as §=O§).mName == param1)
            {
               return this.§4!7§[_loc2_] as §=O§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §5u§(param1:String, param2:§=O§) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§4!7§.length)
         {
            if((this.§4!7§[_loc3_] as §=O§).mName == param1)
            {
               this.§4!7§[_loc3_] = param2;
               param2.§#!_§ = this;
            }
            _loc3_++;
         }
      }
      
      public function §>R§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §6!N§() : Boolean
      {
         return this.mNextState != §=O§.§]L§;
      }
      
      public function §<x§() : String
      {
         return this.mNextState;
      }
      
      public function §[!]§() : Boolean
      {
         if(this.mNextState != §=O§.§]L§)
         {
            this.§"?§(this.mNextState);
            this.setViewSize(this.§5!f§,this.§`§);
            this.mNextState = §=O§.§]L§;
            return true;
         }
         return false;
      }
      
      public function §"?§(param1:String) : Boolean
      {
         var _loc2_:§=O§ = null;
         var _loc3_:§=O§ = null;
         for each(_loc3_ in this.§4!7§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §[C§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§%!+§ != null)
         {
            §[C§.log("deActivate state: " + this.§%!+§.mName);
            this.§%!+§.deActivate();
            this.previousStateDeactivate();
            this.§,!6§.removeChild(this.§%!+§.§7U§);
         }
         this.§%!+§ = _loc2_;
         §[C§.log("Activate state: " + this.§%!+§.mName);
         this.stage.frameRate = this.§%!+§.§0§();
         this.§,!6§.addChildAt(this.§%!+§.§7U§,0);
         this.§%!+§.activate();
         this.§%!+§.§-F§();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §%!7§(param1:§=O§) : Boolean
      {
         if(param1 != null)
         {
            this.§4!7§.push(param1);
            param1.§#!_§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§%!+§)
         {
            return §=O§.§7I§;
         }
         return this.§%!+§.run(param1);
      }
      
      public function §2i§() : Number
      {
         return this.§,!6§.width;
      }
      
      public function §[!c§() : Number
      {
         return this.§,!6§.height;
      }
      
      public function get canvas() : §,H§
      {
         return this.§,!6§;
      }
      
      public function get stage() : Stage
      {
         return this.§,!6§.stage;
      }
      
      public function §8V§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§%!+§)
         {
            this.§%!+§.setViewSize(param1,param2);
         }
         this.§5!f§ = param1;
         this.§`§ = param2;
      }
   }
}
