package §!!L§
{
   import §6!Q§.§7!7§;
   import §]!>§.§&"§;
   import flash.display.Stage;
   
   public class §[!C§
   {
       
      
      private var §`!Q§:Vector.<§&!R§>;
      
      protected var §#3§:§&!R§;
      
      private var mNextState:String;
      
      protected var §#R§:§&"§ = null;
      
      private var §"h§:Number;
      
      private var §%c§:Number;
      
      public function §[!C§(param1:§&"§)
      {
         super();
         this.§`!Q§ = new Vector.<§&!R§>();
         this.§#R§ = param1;
         this.§"h§ = this.§#R§.stage.stageWidth;
         this.§%c§ = this.§#R§.stage.stageHeight;
      }
      
      public function §7!a§() : String
      {
         if(this.§#3§ != null)
         {
            return this.§#3§.mName;
         }
         return §&!R§.§<K§;
      }
      
      public function §8D§() : §&!R§
      {
         if(this.§#3§ != null)
         {
            return this.§#3§;
         }
         return null;
      }
      
      public function §%6§(param1:String) : §&!R§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§`!Q§.length)
         {
            if((this.§`!Q§[_loc2_] as §&!R§).mName == param1)
            {
               return this.§`!Q§[_loc2_] as §&!R§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §!d§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §each §() : Boolean
      {
         return this.mNextState != §&!R§.§<K§;
      }
      
      public function §2?§() : Boolean
      {
         if(this.mNextState != §&!R§.§<K§)
         {
            this.§0X§(this.mNextState);
            this.setViewSize(this.§"h§,this.§%c§);
            this.mNextState = §&!R§.§<K§;
            return true;
         }
         return false;
      }
      
      public function §0X§(param1:String) : Boolean
      {
         var _loc2_:§&!R§ = null;
         var _loc3_:§&!R§ = null;
         for each(_loc3_ in this.§`!Q§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §7!7§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§#3§ != null)
         {
            §7!7§.log("deActivate state: " + this.§#3§.mName);
            this.§#3§.deActivate();
            this.previousStateDeactivate();
            this.§#R§.removeChild(this.§#3§.§8q§);
         }
         this.§#3§ = _loc2_;
         §7!7§.log("Activate state: " + this.§#3§.mName);
         this.stage.frameRate = this.§#3§.§;F§();
         this.§#R§.addChildAt(this.§#3§.§8q§,0);
         this.§#3§.activate();
         this.§#3§.§#&§();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §'!K§(param1:§&!R§) : Boolean
      {
         if(param1 != null)
         {
            this.§`!Q§.push(param1);
            param1.§]!B§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§#3§)
         {
            return §&!R§.§19§;
         }
         return this.§#3§.run(param1);
      }
      
      public function §@!?§() : Number
      {
         return this.§#R§.width;
      }
      
      public function §@!U§() : Number
      {
         return this.§#R§.height;
      }
      
      public function get canvas() : §&"§
      {
         return this.§#R§;
      }
      
      public function get stage() : Stage
      {
         return this.§#R§.stage;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§#3§)
         {
            this.§#3§.setViewSize(param1,param2);
         }
         this.§"h§ = param1;
         this.§%c§ = param2;
      }
   }
}
