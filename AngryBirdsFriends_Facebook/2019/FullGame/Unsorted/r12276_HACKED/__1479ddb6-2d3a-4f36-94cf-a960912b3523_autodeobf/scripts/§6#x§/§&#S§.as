package §6#x§
{
   import §#"3§.§4!h§;
   import §&1§.§,"I§;
   import flash.display.Stage;
   
   public class §&#S§
   {
       
      
      private var §"!%§:Vector.<§'!G§>;
      
      protected var § "F§:§'!G§;
      
      private var §0u§:String;
      
      private var §2#§:String;
      
      protected var § "U§:§,"I§ = null;
      
      private var §;%§:Number;
      
      private var §]"D§:Number;
      
      public function §&#S§(param1:§,"I§)
      {
         super();
         this.§"!%§ = new Vector.<§'!G§>();
         this.§ "U§ = param1;
         this.§;%§ = this.§ "U§.stage.stageWidth;
         this.§]"D§ = this.§ "U§.stage.stageHeight;
      }
      
      public function §1"Z§() : String
      {
         if(this.§ "F§ != null)
         {
            return this.§ "F§.§-#3§;
         }
         return §'!G§.§<"P§;
      }
      
      public function §8"v§() : §'!G§
      {
         if(this.§ "F§ != null)
         {
            return this.§ "F§;
         }
         return null;
      }
      
      public function §7"0§(param1:String) : §'!G§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§"!%§.length)
         {
            if((this.§"!%§[_loc2_] as §'!G§).§-#3§ == param1)
            {
               return this.§"!%§[_loc2_] as §'!G§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §""u§(param1:String, param2:Class) : §'!G§
      {
         var _loc4_:§'!G§ = null;
         var _loc3_:int = 0;
         while(_loc3_ < this.§"!%§.length)
         {
            if((this.§"!%§[_loc3_] as §'!G§).§-#3§ == param1)
            {
               _loc4_ = this.createStateObject(param2);
               this.§"!%§[_loc3_] = _loc4_;
               _loc4_.§!"H§ = this;
               return _loc4_;
            }
            _loc3_++;
         }
         throw new Error("State \'" + param1 + "\' not found.");
      }
      
      protected function createStateObject(param1:Class) : §'!G§
      {
         return new param1();
      }
      
      public function §%!?§(param1:String) : void
      {
         this.§0u§ = param1;
      }
      
      public function get §4B§() : Boolean
      {
         return this.§0u§ != §'!G§.§<"P§;
      }
      
      public function §"#O§() : String
      {
         return this.§0u§;
      }
      
      public function §4!p§() : String
      {
         return this.§2#§;
      }
      
      public function §7"x§() : Boolean
      {
         if(this.§0u§ != §'!G§.§<"P§)
         {
            this.setState(this.§0u§);
            this.setViewSize(this.§;%§,this.§]"D§);
            this.§2#§ = this.§0u§;
            this.§0u§ = §'!G§.§<"P§;
            return true;
         }
         return false;
      }
      
      public function setState(param1:String) : Boolean
      {
         var _loc2_:§'!G§ = null;
         var _loc3_:§'!G§ = null;
         for each(_loc3_ in this.§"!%§)
         {
            if(_loc3_.§-#3§ == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §4!h§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         var _loc4_:Boolean = false;
         if(this.§ "F§ != null)
         {
            §4!h§.log("deActivate state: " + this.§ "F§.§-#3§);
            _loc4_ = this.§ "F§.§=!o§;
            this.§ "F§.§=!o§ = false;
            this.§ "F§.deActivate();
            this.previousStateDeactivate();
            this.§ "U§.removeChild(this.§ "F§.§]#+§);
         }
         this.§ "F§ = _loc2_;
         §4!h§.log("Activate state: " + this.§ "F§.§-#3§);
         this.stage.frameRate = this.§ "F§.getTargetFrameRate();
         this.§ "U§.addChildAt(this.§ "F§.§]#+§,0);
         this.§ "F§.activate(this.§4!p§());
         this.§ "F§.§>^§(_loc4_);
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §"<§(param1:§'!G§) : Boolean
      {
         if(param1 != null)
         {
            this.§"!%§.push(param1);
            param1.§!"H§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§ "F§)
         {
            return §'!G§.§ $3§;
         }
         if(this.§ "F§.nextState)
         {
            return §'!G§.§3!Q§;
         }
         return this.§ "F§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§ "U§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§ "U§.height;
      }
      
      public function get canvas() : §,"I§
      {
         return this.§ "U§;
      }
      
      public function get stage() : Stage
      {
         return this.§ "U§.stage;
      }
      
      public function §[#j§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§ "F§)
         {
            this.§ "F§.setViewSize(param1,param2);
         }
         this.§;%§ = param1;
         this.§]"D§ = param2;
      }
   }
}
