package §!a§
{
   import § !3§.§!X§;
   import §>!E§.§@x§;
   import flash.display.Stage;
   
   public class §?v§
   {
       
      
      private var §-$§:Vector.<§&6§>;
      
      protected var §,!b§:§&6§;
      
      private var mNextState:String;
      
      protected var §1!]§:§@x§ = null;
      
      private var §4A§:Number;
      
      private var §[X§:Number;
      
      public function §?v§(param1:§@x§)
      {
         super();
         this.§-$§ = new Vector.<§&6§>();
         this.§1!]§ = param1;
         this.§4A§ = this.§1!]§.stage.stageWidth;
         this.§[X§ = this.§1!]§.stage.stageHeight;
      }
      
      public function §6Q§() : String
      {
         if(this.§,!b§ != null)
         {
            return this.§,!b§.mName;
         }
         return §&6§.§]&§;
      }
      
      public function §,m§() : §&6§
      {
         if(this.§,!b§ != null)
         {
            return this.§,!b§;
         }
         return null;
      }
      
      public function §>!<§(param1:String) : §&6§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§-$§.length)
         {
            if((this.§-$§[_loc2_] as §&6§).mName == param1)
            {
               return this.§-$§[_loc2_] as §&6§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §8m§(param1:String, param2:§&6§) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§-$§.length)
         {
            if((this.§-$§[_loc3_] as §&6§).mName == param1)
            {
               this.§-$§[_loc3_] = param2;
               param2.§#!Z§ = this;
            }
            _loc3_++;
         }
      }
      
      public function §@z§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §!!P§() : Boolean
      {
         return this.mNextState != §&6§.§]&§;
      }
      
      public function §4Z§() : String
      {
         return this.mNextState;
      }
      
      public function §9U§() : Boolean
      {
         if(this.mNextState != §&6§.§]&§)
         {
            this.§;!?§(this.mNextState);
            this.setViewSize(this.§4A§,this.§[X§);
            this.mNextState = §&6§.§]&§;
            return true;
         }
         return false;
      }
      
      public function §;!?§(param1:String) : Boolean
      {
         var _loc2_:§&6§ = null;
         var _loc3_:§&6§ = null;
         for each(_loc3_ in this.§-$§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §!X§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§,!b§ != null)
         {
            §!X§.log("deActivate state: " + this.§,!b§.mName);
            this.§,!b§.deActivate();
            this.previousStateDeactivate();
            this.§1!]§.removeChild(this.§,!b§.§"!B§);
         }
         this.§,!b§ = _loc2_;
         §!X§.log("Activate state: " + this.§,!b§.mName);
         this.stage.frameRate = this.§,!b§.§!!Y§();
         this.§1!]§.addChildAt(this.§,!b§.§"!B§,0);
         this.§,!b§.activate();
         this.§,!b§.§-!X§();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §&#§(param1:§&6§) : Boolean
      {
         if(param1 != null)
         {
            this.§-$§.push(param1);
            param1.§#!Z§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§,!b§)
         {
            return §&6§.§'+§;
         }
         return this.§,!b§.run(param1);
      }
      
      public function §#!&§() : Number
      {
         return this.§1!]§.width;
      }
      
      public function §'V§() : Number
      {
         return this.§1!]§.height;
      }
      
      public function get canvas() : §@x§
      {
         return this.§1!]§;
      }
      
      public function get stage() : Stage
      {
         return this.§1!]§.stage;
      }
      
      public function §@8§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§,!b§)
         {
            this.§,!b§.setViewSize(param1,param2);
         }
         this.§4A§ = param1;
         this.§[X§ = param2;
      }
   }
}
