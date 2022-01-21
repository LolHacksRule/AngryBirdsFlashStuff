package §5!5§
{
   import §5%§.§%!,§;
   import §8<§.§<!7§;
   import flash.display.Stage;
   
   public class §^g§
   {
       
      
      private var §27§:Vector.<§1!b§>;
      
      protected var §`!S§:§1!b§;
      
      private var mNextState:String;
      
      protected var § !!§:§%!,§ = null;
      
      private var §>+§:Number;
      
      private var §"4§:Number;
      
      public function §^g§(param1:§%!,§)
      {
         super();
         this.§27§ = new Vector.<§1!b§>();
         this.§ !!§ = param1;
         this.§>+§ = this.§ !!§.stage.stageWidth;
         this.§"4§ = this.§ !!§.stage.stageHeight;
      }
      
      public function §<!i§() : String
      {
         if(this.§`!S§ != null)
         {
            return this.§`!S§.mName;
         }
         return §1!b§.§?i§;
      }
      
      public function §9!B§() : §1!b§
      {
         if(this.§`!S§ != null)
         {
            return this.§`!S§;
         }
         return null;
      }
      
      public function §5!V§(param1:String) : §1!b§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§27§.length)
         {
            if((this.§27§[_loc2_] as §1!b§).mName == param1)
            {
               return this.§27§[_loc2_] as §1!b§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §>!j§(param1:String, param2:§1!b§) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§27§.length)
         {
            if((this.§27§[_loc3_] as §1!b§).mName == param1)
            {
               this.§27§[_loc3_] = param2;
               param2.§<B§ = this;
            }
            _loc3_++;
         }
      }
      
      public function §]!D§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §6!H§() : Boolean
      {
         return this.mNextState != §1!b§.§?i§;
      }
      
      public function §0!;§() : String
      {
         return this.mNextState;
      }
      
      public function §;!F§() : Boolean
      {
         if(this.mNextState != §1!b§.§?i§)
         {
            this.§;h§(this.mNextState);
            this.setViewSize(this.§>+§,this.§"4§);
            this.mNextState = §1!b§.§?i§;
            return true;
         }
         return false;
      }
      
      public function §;h§(param1:String) : Boolean
      {
         var _loc2_:§1!b§ = null;
         var _loc3_:§1!b§ = null;
         for each(_loc3_ in this.§27§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §<!7§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§`!S§ != null)
         {
            §<!7§.log("deActivate state: " + this.§`!S§.mName);
            this.§`!S§.deActivate();
            this.previousStateDeactivate();
            this.§ !!§.removeChild(this.§`!S§.§%!l§);
         }
         this.§`!S§ = _loc2_;
         §<!7§.log("Activate state: " + this.§`!S§.mName);
         this.stage.frameRate = this.§`!S§.§>#§();
         this.§ !!§.addChildAt(this.§`!S§.§%!l§,0);
         this.§`!S§.activate();
         this.§`!S§.§7!S§();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §;!a§(param1:§1!b§) : Boolean
      {
         if(param1 != null)
         {
            this.§27§.push(param1);
            param1.§<B§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§`!S§)
         {
            return §1!b§.§!!"§;
         }
         return this.§`!S§.run(param1);
      }
      
      public function §;!>§() : Number
      {
         return this.§ !!§.width;
      }
      
      public function §,!F§() : Number
      {
         return this.§ !!§.height;
      }
      
      public function get canvas() : §%!,§
      {
         return this.§ !!§;
      }
      
      public function get stage() : Stage
      {
         return this.§ !!§.stage;
      }
      
      public function §1!F§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§`!S§)
         {
            this.§`!S§.setViewSize(param1,param2);
         }
         this.§>+§ = param1;
         this.§"4§ = param2;
      }
   }
}
