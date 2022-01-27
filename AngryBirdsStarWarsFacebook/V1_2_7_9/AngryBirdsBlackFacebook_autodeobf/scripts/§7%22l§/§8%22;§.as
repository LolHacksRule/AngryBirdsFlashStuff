package §7"l§
{
   import §0"I§.§5!s§;
   import §1G§.§7m§;
   import flash.display.Stage;
   
   public class §8";§
   {
       
      
      private var §4!D§:Vector.<§,!Y§>;
      
      protected var §^"Z§:§,!Y§;
      
      private var §""2§:String;
      
      private var §"^§:String;
      
      protected var §7"A§:§7m§ = null;
      
      private var §<"z§:Number;
      
      private var §5#0§:Number;
      
      public function §8";§(param1:§7m§)
      {
         super();
         this.§4!D§ = new Vector.<§,!Y§>();
         this.§7"A§ = param1;
         this.§<"z§ = this.§7"A§.stage.stageWidth;
         this.§5#0§ = this.§7"A§.stage.stageHeight;
      }
      
      public function §=#$§() : String
      {
         if(this.§^"Z§ != null)
         {
            return this.§^"Z§.mName;
         }
         return §,!Y§.§73§;
      }
      
      public function §[s§() : §,!Y§
      {
         if(this.§^"Z§ != null)
         {
            return this.§^"Z§;
         }
         return null;
      }
      
      public function §;r§(param1:String) : §,!Y§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§4!D§.length)
         {
            if((this.§4!D§[_loc2_] as §,!Y§).mName == param1)
            {
               return this.§4!D§[_loc2_] as §,!Y§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §0"B§(param1:String) : void
      {
         this.§""2§ = param1;
      }
      
      public function get §97§() : Boolean
      {
         return this.§""2§ != §,!Y§.§73§;
      }
      
      public function §1"i§() : String
      {
         return this.§""2§;
      }
      
      public function §+Q§() : String
      {
         return this.§"^§;
      }
      
      public function §[T§() : Boolean
      {
         if(this.§""2§ != §,!Y§.§73§)
         {
            this.§?!L§(this.§""2§);
            this.setViewSize(this.§<"z§,this.§5#0§);
            this.§"^§ = this.§""2§;
            this.§""2§ = §,!Y§.§73§;
            return true;
         }
         return false;
      }
      
      public function §?!L§(param1:String) : Boolean
      {
         var _loc2_:§,!Y§ = null;
         var _loc3_:§,!Y§ = null;
         for each(_loc3_ in this.§4!D§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §5!s§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         var _loc4_:Boolean = false;
         if(this.§^"Z§ != null)
         {
            §5!s§.log("deActivate state: " + this.§^"Z§.mName);
            _loc4_ = this.§^"Z§.skipTransition;
            this.§^"Z§.skipTransition = false;
            this.§^"Z§.deActivate();
            this.previousStateDeactivate();
            this.§7"A§.removeChild(this.§^"Z§.§ "6§);
         }
         this.§^"Z§ = _loc2_;
         §5!s§.log("Activate state: " + this.§^"Z§.mName);
         this.stage.frameRate = this.§^"Z§.§@z§();
         this.§7"A§.addChildAt(this.§^"Z§.§ "6§,0);
         this.§^"Z§.activate(this.§+Q§());
         this.§^"Z§.activateComplete(_loc4_);
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §;"g§(param1:§,!Y§) : Boolean
      {
         if(param1 != null)
         {
            this.§4!D§.push(param1);
            param1.§<!2§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§^"Z§)
         {
            return §,!Y§.§%#'§;
         }
         if(this.§^"Z§.nextState)
         {
            return §,!Y§.§8"+§;
         }
         return this.§^"Z§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§7"A§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§7"A§.height;
      }
      
      public function get canvas() : §7m§
      {
         return this.§7"A§;
      }
      
      public function get stage() : Stage
      {
         return this.§7"A§.stage;
      }
      
      public function §#!§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§^"Z§)
         {
            this.§^"Z§.setViewSize(param1,param2);
         }
         this.§<"z§ = param1;
         this.§5#0§ = param2;
      }
   }
}
