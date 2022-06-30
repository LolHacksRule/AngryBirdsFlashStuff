package §>!G§
{
   import §&!b§.§ c§;
   import §>'§.§??§;
   import flash.display.Stage;
   
   public class §+3§
   {
       
      
      private var §0!g§:Vector.<§6!9§>;
      
      protected var §%!M§:§6!9§;
      
      private var mNextState:String;
      
      protected var §8!I§:§??§ = null;
      
      private var §;v§:Number;
      
      private var §do §:Number;
      
      public function §+3§(param1:§??§)
      {
         super();
         this.§0!g§ = new Vector.<§6!9§>();
         this.§8!I§ = param1;
         this.§;v§ = this.§8!I§.stage.stageWidth;
         this.§do § = this.§8!I§.stage.stageHeight;
      }
      
      public function §>!#§() : String
      {
         if(this.§%!M§ != null)
         {
            return this.§%!M§.mName;
         }
         return §6!9§.§@N§;
      }
      
      public function §6e§() : §6!9§
      {
         if(this.§%!M§ != null)
         {
            return this.§%!M§;
         }
         return null;
      }
      
      public function §=!_§(param1:String) : §6!9§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§0!g§.length)
         {
            if((this.§0!g§[_loc2_] as §6!9§).mName == param1)
            {
               return this.§0!g§[_loc2_] as §6!9§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §;!5§(param1:String, param2:§6!9§) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§0!g§.length)
         {
            if((this.§0!g§[_loc3_] as §6!9§).mName == param1)
            {
               this.§0!g§[_loc3_] = param2;
               param2.§`1§ = this;
            }
            _loc3_++;
         }
      }
      
      public function §0!9§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §",§() : Boolean
      {
         return this.mNextState != §6!9§.§@N§;
      }
      
      public function §1!9§() : String
      {
         return this.mNextState;
      }
      
      public function §4!`§() : Boolean
      {
         if(this.mNextState != §6!9§.§@N§)
         {
            this.§=!A§(this.mNextState);
            this.setViewSize(this.§;v§,this.§do §);
            this.mNextState = §6!9§.§@N§;
            return true;
         }
         return false;
      }
      
      public function §=!A§(param1:String) : Boolean
      {
         var _loc2_:§6!9§ = null;
         var _loc3_:§6!9§ = null;
         for each(_loc3_ in this.§0!g§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            § c§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§%!M§ != null)
         {
            § c§.log("deActivate state: " + this.§%!M§.mName);
            this.§%!M§.deActivate();
            this.previousStateDeactivate();
            this.§8!I§.removeChild(this.§%!M§.§4!B§);
         }
         this.§%!M§ = _loc2_;
         § c§.log("Activate state: " + this.§%!M§.mName);
         this.stage.frameRate = this.§%!M§.§%O§();
         this.§8!I§.addChildAt(this.§%!M§.§4!B§,0);
         this.§%!M§.activate();
         this.§%!M§.§8M§();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §%Y§(param1:§6!9§) : Boolean
      {
         if(param1 != null)
         {
            this.§0!g§.push(param1);
            param1.§`1§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§%!M§)
         {
            return §6!9§.§"!<§;
         }
         return this.§%!M§.run(param1);
      }
      
      public function §]!"§() : Number
      {
         return this.§8!I§.width;
      }
      
      public function §?!&§() : Number
      {
         return this.§8!I§.height;
      }
      
      public function get canvas() : §??§
      {
         return this.§8!I§;
      }
      
      public function get stage() : Stage
      {
         return this.§8!I§.stage;
      }
      
      public function §62§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§%!M§)
         {
            this.§%!M§.setViewSize(param1,param2);
         }
         this.§;v§ = param1;
         this.§do § = param2;
      }
   }
}
