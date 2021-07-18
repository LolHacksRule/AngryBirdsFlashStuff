package §9"#§
{
   import §!x§.§4"d§;
   import §<!'§.§-"$§;
   import flash.display.Stage;
   
   public class §4w§
   {
       
      
      private var §#Y§:Vector.<§4$5§>;
      
      protected var §`"S§:§4$5§;
      
      private var §="U§:String;
      
      private var §0#@§:String;
      
      protected var §]!i§:§-"$§ = null;
      
      private var §1#u§:Number;
      
      private var §1V§:Number;
      
      public function §4w§(param1:§-"$§)
      {
         super();
         this.§#Y§ = new Vector.<§4$5§>();
         this.§]!i§ = param1;
         this.§1#u§ = this.§]!i§.stage.stageWidth;
         this.§1V§ = this.§]!i§.stage.stageHeight;
      }
      
      public function §^!X§() : String
      {
         if(this.§`"S§ != null)
         {
            return this.§`"S§.§2!4§;
         }
         return §4$5§.§9!w§;
      }
      
      public function § "-§() : §4$5§
      {
         if(this.§`"S§ != null)
         {
            return this.§`"S§;
         }
         return null;
      }
      
      public function §["4§(param1:String) : §4$5§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§#Y§.length)
         {
            if((this.§#Y§[_loc2_] as §4$5§).§2!4§ == param1)
            {
               return this.§#Y§[_loc2_] as §4$5§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §#"o§(param1:String, param2:Class) : §4$5§
      {
         var _loc4_:§4$5§ = null;
         var _loc3_:int = 0;
         while(_loc3_ < this.§#Y§.length)
         {
            if((this.§#Y§[_loc3_] as §4$5§).§2!4§ == param1)
            {
               _loc4_ = this.createStateObject(param2);
               this.§#Y§[_loc3_] = _loc4_;
               _loc4_.§2!g§ = this;
               return _loc4_;
            }
            _loc3_++;
         }
         throw new Error("State \'" + param1 + "\' not found.");
      }
      
      protected function createStateObject(param1:Class) : §4$5§
      {
         return new param1();
      }
      
      public function §7P§(param1:String) : void
      {
         this.§="U§ = param1;
      }
      
      public function get §4!t§() : Boolean
      {
         return this.§="U§ != §4$5§.§9!w§;
      }
      
      public function §^#!§() : String
      {
         return this.§="U§;
      }
      
      public function §"" §() : String
      {
         return this.§0#@§;
      }
      
      public function §"$2§() : Boolean
      {
         if(this.§="U§ != §4$5§.§9!w§)
         {
            this.setState(this.§="U§);
            this.setViewSize(this.§1#u§,this.§1V§);
            this.§0#@§ = this.§="U§;
            this.§="U§ = §4$5§.§9!w§;
            return true;
         }
         return false;
      }
      
      public function setState(param1:String) : Boolean
      {
         var _loc2_:§4$5§ = null;
         var _loc3_:§4$5§ = null;
         for each(_loc3_ in this.§#Y§)
         {
            if(_loc3_.§2!4§ == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §4"d§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         var _loc4_:Boolean = false;
         if(this.§`"S§ != null)
         {
            §4"d§.log("deActivate state: " + this.§`"S§.§2!4§);
            _loc4_ = this.§`"S§.§=z§;
            this.§`"S§.§=z§ = false;
            this.§`"S§.deActivate();
            this.previousStateDeactivate();
            this.§]!i§.removeChild(this.§`"S§.§]Y§);
         }
         this.§`"S§ = _loc2_;
         §4"d§.log("Activate state: " + this.§`"S§.§2!4§);
         this.stage.frameRate = this.§`"S§.getTargetFrameRate();
         this.§]!i§.addChildAt(this.§`"S§.§]Y§,0);
         this.§`"S§.activate(this.§"" §());
         this.§`"S§.§^#C§(_loc4_);
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §4!§(param1:§4$5§) : Boolean
      {
         if(param1 != null)
         {
            this.§#Y§.push(param1);
            param1.§2!g§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§`"S§)
         {
            return §4$5§.§>#z§;
         }
         if(this.§`"S§.nextState)
         {
            return §4$5§.§'!]§;
         }
         return this.§`"S§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§]!i§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§]!i§.height;
      }
      
      public function get canvas() : §-"$§
      {
         return this.§]!i§;
      }
      
      public function get stage() : Stage
      {
         return this.§]!i§.stage;
      }
      
      public function §["]§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§`"S§)
         {
            this.§`"S§.setViewSize(param1,param2);
         }
         this.§1#u§ = param1;
         this.§1V§ = param2;
      }
   }
}
