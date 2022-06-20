package §[c§
{
   import §##y§.§<Y§;
   import §6"p§.§^"t§;
   import flash.display.Stage;
   
   public class §@!<§
   {
       
      
      private var §5#F§:Vector.<§ #a§>;
      
      protected var §^#k§:§ #a§;
      
      private var §+!t§:String;
      
      private var § #k§:String;
      
      protected var §]#s§:§<Y§ = null;
      
      private var §6$'§:Number;
      
      private var §?"4§:Number;
      
      public function §@!<§(param1:§<Y§)
      {
         super();
         this.§5#F§ = new Vector.<§ #a§>();
         this.§]#s§ = param1;
         this.§6$'§ = this.§]#s§.stage.stageWidth;
         this.§?"4§ = this.§]#s§.stage.stageHeight;
      }
      
      public function §%#7§() : String
      {
         if(this.§^#k§ != null)
         {
            return this.§^#k§.§&$"§;
         }
         return § #a§.§?!T§;
      }
      
      public function §9"n§() : § #a§
      {
         if(this.§^#k§ != null)
         {
            return this.§^#k§;
         }
         return null;
      }
      
      public function §5#W§(param1:String) : § #a§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§5#F§.length)
         {
            if((this.§5#F§[_loc2_] as § #a§).§&$"§ == param1)
            {
               return this.§5#F§[_loc2_] as § #a§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §,m§(param1:String, param2:Class) : § #a§
      {
         var _loc4_:§ #a§ = null;
         var _loc3_:int = 0;
         while(_loc3_ < this.§5#F§.length)
         {
            if((this.§5#F§[_loc3_] as § #a§).§&$"§ == param1)
            {
               _loc4_ = this.createStateObject(param2);
               this.§5#F§[_loc3_] = _loc4_;
               _loc4_.§'#V§ = this;
               return _loc4_;
            }
            _loc3_++;
         }
         throw new Error("State \'" + param1 + "\' not found.");
      }
      
      protected function createStateObject(param1:Class) : § #a§
      {
         return new param1();
      }
      
      public function §3#§(param1:String) : void
      {
         this.§+!t§ = param1;
      }
      
      public function get §@0§() : Boolean
      {
         return this.§+!t§ != § #a§.§?!T§;
      }
      
      public function §-"8§() : String
      {
         return this.§+!t§;
      }
      
      public function §?"!§() : String
      {
         return this.§ #k§;
      }
      
      public function §=5§() : Boolean
      {
         if(this.§+!t§ != § #a§.§?!T§)
         {
            this.setState(this.§+!t§);
            this.setViewSize(this.§6$'§,this.§?"4§);
            this.§ #k§ = this.§+!t§;
            this.§+!t§ = § #a§.§?!T§;
            return true;
         }
         return false;
      }
      
      public function setState(param1:String) : Boolean
      {
         var _loc2_:§ #a§ = null;
         var _loc3_:§ #a§ = null;
         for each(_loc3_ in this.§5#F§)
         {
            if(_loc3_.§&$"§ == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §^"t§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         var _loc4_:Boolean = false;
         if(this.§^#k§ != null)
         {
            §^"t§.log("deActivate state: " + this.§^#k§.§&$"§);
            _loc4_ = this.§^#k§.§ M§;
            this.§^#k§.§ M§ = false;
            this.§^#k§.deActivate();
            this.previousStateDeactivate();
            this.§]#s§.removeChild(this.§^#k§.§&"h§);
         }
         this.§^#k§ = _loc2_;
         §^"t§.log("Activate state: " + this.§^#k§.§&$"§);
         this.stage.frameRate = this.§^#k§.getTargetFrameRate();
         this.§]#s§.addChildAt(this.§^#k§.§&"h§,0);
         this.§^#k§.activate(this.§?"!§());
         this.§^#k§.§"]§(_loc4_);
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §!#G§(param1:§ #a§) : Boolean
      {
         if(param1 != null)
         {
            this.§5#F§.push(param1);
            param1.§'#V§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§^#k§)
         {
            return § #a§.§[$?§;
         }
         if(this.§^#k§.nextState)
         {
            return § #a§.§2#1§;
         }
         return this.§^#k§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§]#s§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§]#s§.height;
      }
      
      public function get canvas() : §<Y§
      {
         return this.§]#s§;
      }
      
      public function get stage() : Stage
      {
         return this.§]#s§.stage;
      }
      
      public function §#>§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§^#k§)
         {
            this.§^#k§.setViewSize(param1,param2);
         }
         this.§6$'§ = param1;
         this.§?"4§ = param2;
      }
   }
}
