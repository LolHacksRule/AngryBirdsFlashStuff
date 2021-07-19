package §?z§
{
   import §?""§.§`!o§;
   import each.§!!'§;
   import flash.display.Stage;
   
   public class §;B§
   {
       
      
      private var §'!C§:Vector.<§4!C§>;
      
      protected var §>E§:§4!C§;
      
      private var §5!4§:String;
      
      private var §7C§:String;
      
      protected var §!!U§:§`!o§ = null;
      
      private var §+q§:Number;
      
      private var §;>§:Number;
      
      public function §;B§(param1:§`!o§)
      {
         super();
         this.§'!C§ = new Vector.<§4!C§>();
         this.§!!U§ = param1;
         this.§+q§ = this.§!!U§.stage.stageWidth;
         this.§;>§ = this.§!!U§.stage.stageHeight;
      }
      
      public function §<!&§() : String
      {
         if(this.§>E§ != null)
         {
            return this.§>E§.mName;
         }
         return §4!C§.§9!T§;
      }
      
      public function §'E§() : §4!C§
      {
         if(this.§>E§ != null)
         {
            return this.§>E§;
         }
         return null;
      }
      
      public function §+V§(param1:String) : §4!C§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§'!C§.length)
         {
            if((this.§'!C§[_loc2_] as §4!C§).mName == param1)
            {
               return this.§'!C§[_loc2_] as §4!C§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §<f§(param1:String) : void
      {
         this.§5!4§ = param1;
      }
      
      public function get §,=§() : Boolean
      {
         return this.§5!4§ != §4!C§.§9!T§;
      }
      
      public function §,6§() : String
      {
         return this.§5!4§;
      }
      
      public function §=J§() : String
      {
         return this.§7C§;
      }
      
      public function §&!k§() : Boolean
      {
         if(this.§5!4§ != §4!C§.§9!T§)
         {
            this.§=!V§(this.§5!4§);
            this.setViewSize(this.§+q§,this.§;>§);
            this.§7C§ = this.§5!4§;
            this.§5!4§ = §4!C§.§9!T§;
            return true;
         }
         return false;
      }
      
      public function §=!V§(param1:String) : Boolean
      {
         var _loc2_:§4!C§ = null;
         var _loc3_:§4!C§ = null;
         for each(_loc3_ in this.§'!C§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §!!'§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         var _loc4_:Boolean = false;
         if(this.§>E§ != null)
         {
            §!!'§.log("deActivate state: " + this.§>E§.mName);
            _loc4_ = this.§>E§.§>!j§;
            this.§>E§.§>!j§ = false;
            this.§>E§.deActivate();
            this.previousStateDeactivate();
            this.§!!U§.removeChild(this.§>E§.§#e§);
         }
         this.§>E§ = _loc2_;
         §!!'§.log("Activate state: " + this.§>E§.mName);
         this.stage.frameRate = this.§>E§.§<!%§();
         this.§!!U§.addChildAt(this.§>E§.§#e§,0);
         this.§>E§.activate(this.§=J§());
         this.§>E§.§ !#§(_loc4_);
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §7p§(param1:§4!C§) : Boolean
      {
         if(param1 != null)
         {
            this.§'!C§.push(param1);
            param1.§=z§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§>E§)
         {
            return §4!C§.§-!H§;
         }
         if(this.§>E§.nextState)
         {
            return §4!C§.§8s§;
         }
         return this.§>E§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§!!U§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§!!U§.height;
      }
      
      public function get canvas() : §`!o§
      {
         return this.§!!U§;
      }
      
      public function get stage() : Stage
      {
         return this.§!!U§.stage;
      }
      
      public function §8!U§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§>E§)
         {
            this.§>E§.setViewSize(param1,param2);
         }
         this.§+q§ = param1;
         this.§;>§ = param2;
      }
   }
}
