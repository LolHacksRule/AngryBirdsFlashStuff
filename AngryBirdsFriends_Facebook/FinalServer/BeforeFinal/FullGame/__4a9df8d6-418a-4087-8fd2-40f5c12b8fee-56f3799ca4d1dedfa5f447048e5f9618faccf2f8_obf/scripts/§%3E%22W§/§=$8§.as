package §>"W§
{
   import §&m§.§'5§;
   import §1#v§.§;!Y§;
   import flash.display.Stage;
   
   public class §=$8§
   {
       
      
      private var §6!q§:Vector.<§7Y§>;
      
      protected var §?!8§:§7Y§;
      
      private var §`#g§:String;
      
      private var §9""§:String;
      
      protected var §0#W§:§'5§ = null;
      
      private var §[z§:Number;
      
      private var §`#9§:Number;
      
      public function §=$8§(param1:§'5§)
      {
         super();
         this.§6!q§ = new Vector.<§7Y§>();
         this.§0#W§ = param1;
         this.§[z§ = this.§0#W§.stage.stageWidth;
         this.§`#9§ = this.§0#W§.stage.stageHeight;
      }
      
      public function §'!&§() : String
      {
         if(this.§?!8§ != null)
         {
            return this.§?!8§.§!I§;
         }
         return §7Y§.§8!u§;
      }
      
      public function §-j§() : §7Y§
      {
         if(this.§?!8§ != null)
         {
            return this.§?!8§;
         }
         return null;
      }
      
      public function §`$"§(param1:String) : §7Y§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§6!q§.length)
         {
            if((this.§6!q§[_loc2_] as §7Y§).§!I§ == param1)
            {
               return this.§6!q§[_loc2_] as §7Y§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §["e§(param1:String, param2:Class) : §7Y§
      {
         var _loc4_:§7Y§ = null;
         var _loc3_:int = 0;
         while(_loc3_ < this.§6!q§.length)
         {
            if((this.§6!q§[_loc3_] as §7Y§).§!I§ == param1)
            {
               _loc4_ = this.createStateObject(param2);
               this.§6!q§[_loc3_] = _loc4_;
               _loc4_.§@#$§ = this;
               return _loc4_;
            }
            _loc3_++;
         }
         throw new Error("State \'" + param1 + "\' not found.");
      }
      
      protected function createStateObject(param1:Class) : §7Y§
      {
         return new param1();
      }
      
      public function §1!L§(param1:String) : void
      {
         this.§`#g§ = param1;
      }
      
      public function get §##r§() : Boolean
      {
         return this.§`#g§ != §7Y§.§8!u§;
      }
      
      public function §2"Q§() : String
      {
         return this.§`#g§;
      }
      
      public function §`$7§() : String
      {
         return this.§9""§;
      }
      
      public function §`!A§() : Boolean
      {
         if(this.§`#g§ != §7Y§.§8!u§)
         {
            this.setState(this.§`#g§);
            this.setViewSize(this.§[z§,this.§`#9§);
            this.§9""§ = this.§`#g§;
            this.§`#g§ = §7Y§.§8!u§;
            return true;
         }
         return false;
      }
      
      public function setState(param1:String) : Boolean
      {
         var _loc2_:§7Y§ = null;
         var _loc3_:§7Y§ = null;
         for each(_loc3_ in this.§6!q§)
         {
            if(_loc3_.§!I§ == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §;!Y§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         var _loc4_:Boolean = false;
         if(this.§?!8§ != null)
         {
            §;!Y§.log("deActivate state: " + this.§?!8§.§!I§);
            _loc4_ = this.§?!8§.§-#>§;
            this.§?!8§.§-#>§ = false;
            this.§?!8§.deActivate();
            this.previousStateDeactivate();
            this.§0#W§.removeChild(this.§?!8§.§'#f§);
         }
         this.§?!8§ = _loc2_;
         §;!Y§.log("Activate state: " + this.§?!8§.§!I§);
         this.stage.frameRate = this.§?!8§.getTargetFrameRate();
         this.§0#W§.addChildAt(this.§?!8§.§'#f§,0);
         this.§?!8§.activate(this.§`$7§());
         this.§?!8§.§!!y§(_loc4_);
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §]!s§(param1:§7Y§) : Boolean
      {
         if(param1 != null)
         {
            this.§6!q§.push(param1);
            param1.§@#$§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§?!8§)
         {
            return §7Y§.§2!g§;
         }
         if(this.§?!8§.nextState)
         {
            return §7Y§.§ try§;
         }
         return this.§?!8§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§0#W§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§0#W§.height;
      }
      
      public function get canvas() : §'5§
      {
         return this.§0#W§;
      }
      
      public function get stage() : Stage
      {
         return this.§0#W§.stage;
      }
      
      public function §5!O§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§?!8§)
         {
            this.§?!8§.setViewSize(param1,param2);
         }
         this.§[z§ = param1;
         this.§`#9§ = param2;
      }
   }
}
