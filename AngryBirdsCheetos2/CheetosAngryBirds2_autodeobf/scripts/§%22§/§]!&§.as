package §"§
{
   import §>^§.§!6§;
   import flash.display.Stage;
   import §throw§.§=! §;
   
   public class §]!&§
   {
       
      
      private var §&!&§:Vector.<§%!$§>;
      
      protected var §1!H§:§%!$§;
      
      private var mNextState:String;
      
      protected var §#Z§:§=! § = null;
      
      private var §8m§:Number;
      
      private var §&d§:Number;
      
      public function §]!&§(param1:§=! §)
      {
         super();
         this.§&!&§ = new Vector.<§%!$§>();
         this.§#Z§ = param1;
         this.§8m§ = this.§#Z§.stage.stageWidth;
         this.§&d§ = this.§#Z§.stage.stageHeight;
      }
      
      public function §@n§() : String
      {
         if(this.§1!H§ != null)
         {
            return this.§1!H§.mName;
         }
         return §%!$§.§7!@§;
      }
      
      public function §!!%§() : §%!$§
      {
         if(this.§1!H§ != null)
         {
            return this.§1!H§;
         }
         return null;
      }
      
      public function §0!+§(param1:String) : §%!$§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§&!&§.length)
         {
            if((this.§&!&§[_loc2_] as §%!$§).mName == param1)
            {
               return this.§&!&§[_loc2_] as §%!$§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §?!$§(param1:String, param2:§%!$§) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§&!&§.length)
         {
            if((this.§&!&§[_loc3_] as §%!$§).mName == param1)
            {
               this.§&!&§[_loc3_] = param2;
               param2.§]!2§ = this;
            }
            _loc3_++;
         }
      }
      
      public function §'A§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §%T§() : Boolean
      {
         return this.mNextState != §%!$§.§7!@§;
      }
      
      public function §`z§() : String
      {
         return this.mNextState;
      }
      
      public function §%n§() : Boolean
      {
         if(this.mNextState != §%!$§.§7!@§)
         {
            this.§;!;§(this.mNextState);
            this.setViewSize(this.§8m§,this.§&d§);
            this.mNextState = §%!$§.§7!@§;
            return true;
         }
         return false;
      }
      
      public function §;!;§(param1:String) : Boolean
      {
         var _loc2_:§%!$§ = null;
         var _loc3_:§%!$§ = null;
         for each(_loc3_ in this.§&!&§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §!6§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§1!H§ != null)
         {
            §!6§.log("deActivate state: " + this.§1!H§.mName);
            this.§1!H§.deActivate();
            this.previousStateDeactivate();
            this.§#Z§.removeChild(this.§1!H§.§8!2§);
         }
         this.§1!H§ = _loc2_;
         §!6§.log("Activate state: " + this.§1!H§.mName);
         this.stage.frameRate = this.§1!H§.§7!`§();
         this.§#Z§.addChildAt(this.§1!H§.§8!2§,0);
         this.§1!H§.activate();
         this.§1!H§.activateComplete();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §4y§(param1:§%!$§) : Boolean
      {
         if(param1 != null)
         {
            this.§&!&§.push(param1);
            param1.§]!2§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§1!H§)
         {
            return §%!$§.§]!P§;
         }
         return this.§1!H§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§#Z§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§#Z§.height;
      }
      
      public function get canvas() : §=! §
      {
         return this.§#Z§;
      }
      
      public function get stage() : Stage
      {
         return this.§#Z§.stage;
      }
      
      public function §]!B§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§1!H§)
         {
            this.§1!H§.setViewSize(param1,param2);
         }
         this.§8m§ = param1;
         this.§&d§ = param2;
      }
   }
}
