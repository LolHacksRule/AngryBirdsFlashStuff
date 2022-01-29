package §7"§
{
   import §@l§.§8"9§;
   import §]!6§.§6Y§;
   import flash.display.Stage;
   
   public class §<! §
   {
       
      
      private var §?"E§:Vector.<§`#@§>;
      
      protected var § "n§:§`#@§;
      
      private var §=#k§:String;
      
      private var §@u§:String;
      
      protected var §2D§:§8"9§ = null;
      
      private var §!"T§:Number;
      
      private var §0F§:Number;
      
      public function §<! §(param1:§8"9§)
      {
         super();
         this.§?"E§ = new Vector.<§`#@§>();
         this.§2D§ = param1;
         this.§!"T§ = this.§2D§.stage.stageWidth;
         this.§0F§ = this.§2D§.stage.stageHeight;
      }
      
      public function § Y§() : String
      {
         if(this.§ "n§ != null)
         {
            return this.§ "n§.§=q§;
         }
         return §`#@§.§&f§;
      }
      
      public function §=!&§() : §`#@§
      {
         if(this.§ "n§ != null)
         {
            return this.§ "n§;
         }
         return null;
      }
      
      public function §""V§(param1:String) : §`#@§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§?"E§.length)
         {
            if((this.§?"E§[_loc2_] as §`#@§).§=q§ == param1)
            {
               return this.§?"E§[_loc2_] as §`#@§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §6#"§(param1:String, param2:Class) : §`#@§
      {
         var _loc4_:§`#@§ = null;
         var _loc3_:int = 0;
         while(_loc3_ < this.§?"E§.length)
         {
            if((this.§?"E§[_loc3_] as §`#@§).§=q§ == param1)
            {
               _loc4_ = this.createStateObject(param2);
               this.§?"E§[_loc3_] = _loc4_;
               _loc4_.§5#_§ = this;
               return _loc4_;
            }
            _loc3_++;
         }
         throw new Error("State \'" + param1 + "\' not found.");
      }
      
      protected function createStateObject(param1:Class) : §`#@§
      {
         return new param1();
      }
      
      public function §1"h§(param1:String) : void
      {
         this.§=#k§ = param1;
      }
      
      public function get §6s§() : Boolean
      {
         return this.§=#k§ != §`#@§.§&f§;
      }
      
      public function §[#c§() : String
      {
         return this.§=#k§;
      }
      
      public function §4""§() : String
      {
         return this.§@u§;
      }
      
      public function §]"<§() : Boolean
      {
         if(this.§=#k§ != §`#@§.§&f§)
         {
            this.setState(this.§=#k§);
            this.setViewSize(this.§!"T§,this.§0F§);
            this.§@u§ = this.§=#k§;
            this.§=#k§ = §`#@§.§&f§;
            return true;
         }
         return false;
      }
      
      public function setState(param1:String) : Boolean
      {
         var _loc2_:§`#@§ = null;
         var _loc3_:§`#@§ = null;
         for each(_loc3_ in this.§?"E§)
         {
            if(_loc3_.§=q§ == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §6Y§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         var _loc4_:Boolean = false;
         if(this.§ "n§ != null)
         {
            §6Y§.log("deActivate state: " + this.§ "n§.§=q§);
            _loc4_ = this.§ "n§.§16§;
            this.§ "n§.§16§ = false;
            this.§ "n§.deActivate();
            this.previousStateDeactivate();
            this.§2D§.removeChild(this.§ "n§.§4"D§);
         }
         this.§ "n§ = _loc2_;
         §6Y§.log("Activate state: " + this.§ "n§.§=q§);
         this.stage.frameRate = this.§ "n§.getTargetFrameRate();
         this.§2D§.addChildAt(this.§ "n§.§4"D§,0);
         this.§ "n§.activate(this.§4""§());
         this.§ "n§.§#$1§(_loc4_);
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §,#Z§(param1:§`#@§) : Boolean
      {
         if(param1 != null)
         {
            this.§?"E§.push(param1);
            param1.§5#_§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§ "n§)
         {
            return §`#@§.§5a§;
         }
         if(this.§ "n§.nextState)
         {
            return §`#@§.§]"H§;
         }
         return this.§ "n§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§2D§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§2D§.height;
      }
      
      public function get canvas() : §8"9§
      {
         return this.§2D§;
      }
      
      public function get stage() : Stage
      {
         return this.§2D§.stage;
      }
      
      public function § "?§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§ "n§)
         {
            this.§ "n§.setViewSize(param1,param2);
         }
         this.§!"T§ = param1;
         this.§0F§ = param2;
      }
   }
}
