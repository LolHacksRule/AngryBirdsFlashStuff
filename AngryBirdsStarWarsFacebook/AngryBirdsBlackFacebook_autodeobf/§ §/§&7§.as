package § §#8
{
   import §0!=§.§'"]§;
   import §5t§.Log;
   import flash.display.Stage;
   
   public class §&7§
   {
       
      
      private var §="o§:Vector.<§4#`§>;
      
      protected var §2A§:§4#`§;
      
      private var §+0§:String;
      
      private var §%#1§:String;
      
      protected var §["A§:§'"]§ = null;
      
      private var §+"p§:Number;
      
      private var §?!"§:Number;
      
      public function §&7§(param1:§'"]§)
      {
         super();
         this.§="o§ = new Vector.<§4#`§>();
         this.§["A§ = param1;
         this.§+"p§ = this.§["A§.stage.stageWidth;
         this.§?!"§ = this.§["A§.stage.stageHeight;
      }
      
      public function §]?§() : String
      {
         if(this.§2A§ != null)
         {
            return this.§2A§.mName;
         }
         return §4#`§.§"l§;
      }
      
      public function §@!2§() : §4#`§
      {
         if(this.§2A§ != null)
         {
            return this.§2A§;
         }
         return null;
      }
      
      public function §<#+§(param1:String) : §4#`§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§="o§.length)
         {
            if((this.§="o§[_loc2_] as §4#`§).mName == param1)
            {
               return this.§="o§[_loc2_] as §4#`§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §<"P§(param1:String, param2:Class) : §4#`§
      {
         var _loc4_:§4#`§ = null;
         var _loc3_:int = 0;
         while(_loc3_ < this.§="o§.length)
         {
            if((this.§="o§[_loc3_] as §4#`§).mName == param1)
            {
               _loc4_ = this.§[#P§(param2);
               this.§="o§[_loc3_] = _loc4_;
               _loc4_.§!;§ = this;
               return _loc4_;
            }
            _loc3_++;
         }
         throw new Error("State \'" + param1 + "\' not found.");
      }
      
      protected function §[#P§(param1:Class) : §4#`§
      {
         return new param1();
      }
      
      public function § g§(param1:String) : void
      {
         this.§+0§ = param1;
      }
      
      public function get §6m§() : Boolean
      {
         return this.§+0§ != §4#`§.§"l§;
      }
      
      public function §3"C§() : String
      {
         return this.§+0§;
      }
      
      public function §,u§() : String
      {
         return this.§%#1§;
      }
      
      public function §'"s§() : Boolean
      {
         if(this.§+0§ != §4#`§.§"l§)
         {
            this.§,W§(this.§+0§);
            this.setViewSize(this.§+"p§,this.§?!"§);
            this.§%#1§ = this.§+0§;
            this.§+0§ = §4#`§.§"l§;
            return true;
         }
         return false;
      }
      
      public function §,W§(param1:String) : Boolean
      {
         var _loc2_:§4#`§ = null;
         var _loc3_:§4#`§ = null;
         for each(_loc3_ in this.§="o§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            Log.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         var _loc4_:Boolean = false;
         if(this.§2A§ != null)
         {
            Log.log("deActivate state: " + this.§2A§.mName);
            _loc4_ = this.§2A§.skipTransition;
            this.§2A§.skipTransition = false;
            this.§2A§.deActivate();
            this.previousStateDeactivate();
            this.§["A§.removeChild(this.§2A§.§%G§);
         }
         this.§2A§ = _loc2_;
         Log.log("Activate state: " + this.§2A§.mName);
         this.stage.frameRate = this.§2A§.§[#^§();
         this.§["A§.addChildAt(this.§2A§.§%G§,0);
         this.§2A§.activate(this.§,u§());
         this.§2A§.activateComplete(_loc4_);
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §7![§(param1:§4#`§) : Boolean
      {
         if(param1 != null)
         {
            this.§="o§.push(param1);
            param1.§!;§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§2A§)
         {
            return §4#`§.§"#8§;
         }
         if(this.§2A§.nextState)
         {
            return §4#`§.§-#_§;
         }
         return this.§2A§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§["A§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§["A§.height;
      }
      
      public function get canvas() : §'"]§
      {
         return this.§["A§;
      }
      
      public function get stage() : Stage
      {
         return this.§["A§.stage;
      }
      
      public function §&"4§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§2A§)
         {
            this.§2A§.setViewSize(param1,param2);
         }
         this.§+"p§ = param1;
         this.§?!"§ = param2;
      }
   }
}
