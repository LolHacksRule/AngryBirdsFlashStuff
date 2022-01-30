package §9!a§
{
   import §"I§.§=!U§;
   import §"m§.§'!6§;
   import flash.display.Stage;
   
   public class §]D§
   {
       
      
      private var §0!U§:Vector.<§@S§>;
      
      protected var §5!+§:§@S§;
      
      private var §;x§:String;
      
      private var §,"+§:String;
      
      protected var §^J§:§'!6§ = null;
      
      private var §!5§:Number;
      
      private var §!&§:Number;
      
      public function §]D§(param1:§'!6§)
      {
         super();
         this.§0!U§ = new Vector.<§@S§>();
         this.§^J§ = param1;
         this.§!5§ = this.§^J§.stage.stageWidth;
         this.§!&§ = this.§^J§.stage.stageHeight;
      }
      
      public function §]3§() : String
      {
         if(this.§5!+§ != null)
         {
            return this.§5!+§.mName;
         }
         return §@S§.§="$§;
      }
      
      public function §'!K§() : §@S§
      {
         if(this.§5!+§ != null)
         {
            return this.§5!+§;
         }
         return null;
      }
      
      public function §<f§(param1:String) : §@S§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§0!U§.length)
         {
            if((this.§0!U§[_loc2_] as §@S§).mName == param1)
            {
               return this.§0!U§[_loc2_] as §@S§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §0!w§(param1:String) : void
      {
         this.§;x§ = param1;
      }
      
      public function get §2F§() : Boolean
      {
         return this.§;x§ != §@S§.§="$§;
      }
      
      public function §`P§() : String
      {
         return this.§;x§;
      }
      
      public function §4!?§() : String
      {
         return this.§,"+§;
      }
      
      public function §1§() : Boolean
      {
         if(this.§;x§ != §@S§.§="$§)
         {
            this.§2w§(this.§;x§);
            this.setViewSize(this.§!5§,this.§!&§);
            this.§,"+§ = this.§;x§;
            this.§;x§ = §@S§.§="$§;
            return true;
         }
         return false;
      }
      
      public function §2w§(param1:String) : Boolean
      {
         var _loc2_:§@S§ = null;
         var _loc3_:§@S§ = null;
         for each(_loc3_ in this.§0!U§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §=!U§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         var _loc4_:Boolean = false;
         if(this.§5!+§ != null)
         {
            §=!U§.log("deActivate state: " + this.§5!+§.mName);
            _loc4_ = this.§5!+§.§&!l§;
            this.§5!+§.§&!l§ = false;
            this.§5!+§.deActivate();
            this.previousStateDeactivate();
            this.§^J§.removeChild(this.§5!+§.§]!c§);
         }
         this.§5!+§ = _loc2_;
         §=!U§.log("Activate state: " + this.§5!+§.mName);
         this.stage.frameRate = this.§5!+§.§-9§();
         this.§^J§.addChildAt(this.§5!+§.§]!c§,0);
         this.§5!+§.activate(this.§4!?§());
         this.§5!+§.§`W§(_loc4_);
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §8Q§(param1:§@S§) : Boolean
      {
         if(param1 != null)
         {
            this.§0!U§.push(param1);
            param1.§?!%§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§5!+§)
         {
            return §@S§.§#]§;
         }
         if(this.§5!+§.nextState)
         {
            return §@S§.§-!R§;
         }
         return this.§5!+§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§^J§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§^J§.height;
      }
      
      public function get canvas() : §'!6§
      {
         return this.§^J§;
      }
      
      public function get stage() : Stage
      {
         return this.§^J§.stage;
      }
      
      public function §'",§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§5!+§)
         {
            this.§5!+§.setViewSize(param1,param2);
         }
         this.§!5§ = param1;
         this.§!&§ = param2;
      }
   }
}
