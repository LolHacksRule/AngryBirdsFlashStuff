package §>@§
{
   import §<"P§.§8#-§;
   import §<"p§.§?!T§;
   import flash.display.Stage;
   
   public class §%!4§
   {
       
      
      private var §&#h§:Vector.<§'!L§>;
      
      protected var §9#0§:§'!L§;
      
      private var § #H§:String;
      
      private var §21§:String;
      
      protected var §'!P§:§8#-§ = null;
      
      private var §0?§:Number;
      
      private var §,#k§:Number;
      
      public function §%!4§(param1:§8#-§)
      {
         super();
         this.§&#h§ = new Vector.<§'!L§>();
         this.§'!P§ = param1;
         this.§0?§ = this.§'!P§.stage.stageWidth;
         this.§,#k§ = this.§'!P§.stage.stageHeight;
      }
      
      public function §="!§() : String
      {
         if(this.§9#0§ != null)
         {
            return this.§9#0§.§;!p§;
         }
         return §'!L§.§[#,§;
      }
      
      public function §[##§() : §'!L§
      {
         if(this.§9#0§ != null)
         {
            return this.§9#0§;
         }
         return null;
      }
      
      public function §6!v§(param1:String) : §'!L§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§&#h§.length)
         {
            if((this.§&#h§[_loc2_] as §'!L§).§;!p§ == param1)
            {
               return this.§&#h§[_loc2_] as §'!L§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §-"J§(param1:String, param2:Class) : §'!L§
      {
         var _loc4_:§'!L§ = null;
         var _loc3_:int = 0;
         while(_loc3_ < this.§&#h§.length)
         {
            if((this.§&#h§[_loc3_] as §'!L§).§;!p§ == param1)
            {
               _loc4_ = this.createStateObject(param2);
               this.§&#h§[_loc3_] = _loc4_;
               _loc4_.§&"C§ = this;
               return _loc4_;
            }
            _loc3_++;
         }
         throw new Error("State \'" + param1 + "\' not found.");
      }
      
      protected function createStateObject(param1:Class) : §'!L§
      {
         return new param1();
      }
      
      public function §5"p§(param1:String) : void
      {
         this.§ #H§ = param1;
      }
      
      public function get §5$"§() : Boolean
      {
         return this.§ #H§ != §'!L§.§[#,§;
      }
      
      public function §'N§() : String
      {
         return this.§ #H§;
      }
      
      public function §"#J§() : String
      {
         return this.§21§;
      }
      
      public function §?"m§() : Boolean
      {
         if(this.§ #H§ != §'!L§.§[#,§)
         {
            this.setState(this.§ #H§);
            this.setViewSize(this.§0?§,this.§,#k§);
            this.§21§ = this.§ #H§;
            this.§ #H§ = §'!L§.§[#,§;
            return true;
         }
         return false;
      }
      
      public function setState(param1:String) : Boolean
      {
         var _loc2_:§'!L§ = null;
         var _loc3_:§'!L§ = null;
         for each(_loc3_ in this.§&#h§)
         {
            if(_loc3_.§;!p§ == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §?!T§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         var _loc4_:Boolean = false;
         if(this.§9#0§ != null)
         {
            §?!T§.log("deActivate state: " + this.§9#0§.§;!p§);
            _loc4_ = this.§9#0§.§>"#§;
            this.§9#0§.§>"#§ = false;
            this.§9#0§.deActivate();
            this.previousStateDeactivate();
            this.§'!P§.removeChild(this.§9#0§.§'$&§);
         }
         this.§9#0§ = _loc2_;
         §?!T§.log("Activate state: " + this.§9#0§.§;!p§);
         this.stage.frameRate = this.§9#0§.getTargetFrameRate();
         this.§'!P§.addChildAt(this.§9#0§.§'$&§,0);
         this.§9#0§.activate(this.§"#J§());
         this.§9#0§.§6"h§(_loc4_);
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §?!7§(param1:§'!L§) : Boolean
      {
         if(param1 != null)
         {
            this.§&#h§.push(param1);
            param1.§&"C§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§9#0§)
         {
            return §'!L§.§"#=§;
         }
         if(this.§9#0§.nextState)
         {
            return §'!L§.§`!?§;
         }
         return this.§9#0§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§'!P§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§'!P§.height;
      }
      
      public function get canvas() : §8#-§
      {
         return this.§'!P§;
      }
      
      public function get stage() : Stage
      {
         return this.§'!P§.stage;
      }
      
      public function §^"1§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§9#0§)
         {
            this.§9#0§.setViewSize(param1,param2);
         }
         this.§0?§ = param1;
         this.§,#k§ = param2;
      }
   }
}
