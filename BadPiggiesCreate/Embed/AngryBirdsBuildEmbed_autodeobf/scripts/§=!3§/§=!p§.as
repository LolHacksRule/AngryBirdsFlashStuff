package §=!3§
{
   import § !A§.§"!8§;
   import § !r§.§`![§;
   import flash.display.Stage;
   
   public class §=!p§
   {
       
      
      private var §5!%§:Vector.<§;!!§>;
      
      protected var §<n§:§;!!§;
      
      private var mNextState:String;
      
      protected var §4a§:§"!8§ = null;
      
      private var §;b§:Number;
      
      private var §7!L§:Number;
      
      public function §=!p§(param1:§"!8§)
      {
         super();
         this.§5!%§ = new Vector.<§;!!§>();
         this.§4a§ = param1;
         this.§;b§ = this.§4a§.stage.stageWidth;
         this.§7!L§ = this.§4a§.stage.stageHeight;
      }
      
      public function §^!^§() : String
      {
         if(this.§<n§ != null)
         {
            return this.§<n§.mName;
         }
         return §;!!§.§!3§;
      }
      
      public function §?8§() : §;!!§
      {
         if(this.§<n§ != null)
         {
            return this.§<n§;
         }
         return null;
      }
      
      public function §8! §(param1:String) : §;!!§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§5!%§.length)
         {
            if((this.§5!%§[_loc2_] as §;!!§).mName == param1)
            {
               return this.§5!%§[_loc2_] as §;!!§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §8!W§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get § 8§() : Boolean
      {
         return this.mNextState != §;!!§.§!3§;
      }
      
      public function §0!v§() : Boolean
      {
         if(this.mNextState != §;!!§.§!3§)
         {
            this.§&!f§(this.mNextState);
            this.setViewSize(this.§;b§,this.§7!L§);
            this.mNextState = §;!!§.§!3§;
            return true;
         }
         return false;
      }
      
      public function §&!f§(param1:String) : Boolean
      {
         var _loc2_:§;!!§ = null;
         var _loc3_:§;!!§ = null;
         for each(_loc3_ in this.§5!%§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §`![§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§<n§ != null)
         {
            §`![§.log("deActivate state: " + this.§<n§.mName);
            this.§<n§.deActivate();
            this.previousStateDeactivate();
            this.§4a§.removeChild(this.§<n§.§>E§);
         }
         this.§<n§ = _loc2_;
         §`![§.log("Activate state: " + this.§<n§.mName);
         this.stage.frameRate = this.§<n§.getTargetFrameRate();
         this.§4a§.addChildAt(this.§<n§.§>E§,0);
         this.§<n§.activate();
         this.§<n§.§+R§();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function § Y§(param1:§;!!§) : Boolean
      {
         if(param1 != null)
         {
            this.§5!%§.push(param1);
            param1.§7'§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§<n§)
         {
            return §;!!§.§8K§;
         }
         return this.§<n§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§4a§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§4a§.height;
      }
      
      public function get canvas() : §"!8§
      {
         return this.§4a§;
      }
      
      public function get stage() : Stage
      {
         return this.§4a§.stage;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§<n§)
         {
            this.§<n§.setViewSize(param1,param2);
         }
         this.§;b§ = param1;
         this.§7!L§ = param2;
      }
   }
}
