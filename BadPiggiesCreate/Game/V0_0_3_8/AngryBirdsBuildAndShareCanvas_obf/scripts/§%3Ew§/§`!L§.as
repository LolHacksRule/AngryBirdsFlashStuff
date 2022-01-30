package §>w§
{
   import §4u§.§<!L§;
   import §6!]§.§-d§;
   import flash.display.Stage;
   
   public class §`!L§
   {
       
      
      private var §;q§:Vector.<§4E§>;
      
      protected var §@!W§:§4E§;
      
      private var mNextState:String;
      
      protected var §,W§:§-d§ = null;
      
      private var §!!]§:Number;
      
      private var §8B§:Number;
      
      public function §`!L§(param1:§-d§)
      {
         super();
         this.§;q§ = new Vector.<§4E§>();
         this.§,W§ = param1;
         this.§!!]§ = this.§,W§.stage.stageWidth;
         this.§8B§ = this.§,W§.stage.stageHeight;
      }
      
      public function §+!z§() : String
      {
         if(this.§@!W§ != null)
         {
            return this.§@!W§.mName;
         }
         return §4E§.§9n§;
      }
      
      public function § #§() : §4E§
      {
         if(this.§@!W§ != null)
         {
            return this.§@!W§;
         }
         return null;
      }
      
      public function §^&§(param1:String) : §4E§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§;q§.length)
         {
            if((this.§;q§[_loc2_] as §4E§).mName == param1)
            {
               return this.§;q§[_loc2_] as §4E§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §,!X§(param1:String, param2:§4E§) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§;q§.length)
         {
            if((this.§;q§[_loc3_] as §4E§).mName == param1)
            {
               this.§;q§[_loc3_] = param2;
               param2.§^!g§ = this;
            }
            _loc3_++;
         }
      }
      
      public function §6?§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §>""§() : Boolean
      {
         return this.mNextState != §4E§.§9n§;
      }
      
      public function §!!_§() : String
      {
         return this.mNextState;
      }
      
      public function §0v§() : Boolean
      {
         if(this.mNextState != §4E§.§9n§)
         {
            this.§-8§(this.mNextState);
            this.setViewSize(this.§!!]§,this.§8B§);
            this.mNextState = §4E§.§9n§;
            return true;
         }
         return false;
      }
      
      public function §-8§(param1:String) : Boolean
      {
         var _loc2_:§4E§ = null;
         var _loc3_:§4E§ = null;
         for each(_loc3_ in this.§;q§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §<!L§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§@!W§ != null)
         {
            §<!L§.log("deActivate state: " + this.§@!W§.mName);
            this.§@!W§.deActivate();
            this.previousStateDeactivate();
            this.§,W§.removeChild(this.§@!W§.§`!-§);
         }
         this.§@!W§ = _loc2_;
         §<!L§.log("Activate state: " + this.§@!W§.mName);
         this.stage.frameRate = this.§@!W§.getTargetFrameRate();
         this.§,W§.addChildAt(this.§@!W§.§`!-§,0);
         this.§@!W§.activate();
         this.§@!W§.§-J§();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §;r§(param1:§4E§) : Boolean
      {
         if(param1 != null)
         {
            this.§;q§.push(param1);
            param1.§^!g§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§@!W§)
         {
            return §4E§.§+!S§;
         }
         return this.§@!W§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§,W§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§,W§.height;
      }
      
      public function get canvas() : §-d§
      {
         return this.§,W§;
      }
      
      public function get stage() : Stage
      {
         return this.§,W§.stage;
      }
      
      public function §;!G§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§@!W§)
         {
            this.§@!W§.setViewSize(param1,param2);
         }
         this.§!!]§ = param1;
         this.§8B§ = param2;
      }
   }
}
