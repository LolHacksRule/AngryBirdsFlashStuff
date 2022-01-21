package §6!Q§
{
   import §8!M§.§'!]§;
   import §=<§.§1+§;
   import flash.display.Stage;
   
   public class §"!H§
   {
       
      
      private var §^!P§:Vector.<§ !"§>;
      
      protected var §"!g§:§ !"§;
      
      private var mNextState:String;
      
      protected var §[A§:§'!]§ = null;
      
      private var §0I§:Number;
      
      private var § !a§:Number;
      
      public function §"!H§(param1:§'!]§)
      {
         super();
         this.§^!P§ = new Vector.<§ !"§>();
         this.§[A§ = param1;
         this.§0I§ = this.§[A§.stage.stageWidth;
         this.§ !a§ = this.§[A§.stage.stageHeight;
      }
      
      public function §6T§() : String
      {
         if(this.§"!g§ != null)
         {
            return this.§"!g§.mName;
         }
         return § !"§.§+!4§;
      }
      
      public function §7z§() : § !"§
      {
         if(this.§"!g§ != null)
         {
            return this.§"!g§;
         }
         return null;
      }
      
      public function §>F§(param1:String) : § !"§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§^!P§.length)
         {
            if((this.§^!P§[_loc2_] as § !"§).mName == param1)
            {
               return this.§^!P§[_loc2_] as § !"§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §8!U§(param1:String, param2:§ !"§) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§^!P§.length)
         {
            if((this.§^!P§[_loc3_] as § !"§).mName == param1)
            {
               this.§^!P§[_loc3_] = param2;
               param2.§]t§ = this;
            }
            _loc3_++;
         }
      }
      
      public function §0! §(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §0@§() : Boolean
      {
         return this.mNextState != § !"§.§+!4§;
      }
      
      public function §`b§() : String
      {
         return this.mNextState;
      }
      
      public function §2!S§() : Boolean
      {
         if(this.mNextState != § !"§.§+!4§)
         {
            this.§3!N§(this.mNextState);
            this.setViewSize(this.§0I§,this.§ !a§);
            this.mNextState = § !"§.§+!4§;
            return true;
         }
         return false;
      }
      
      public function §3!N§(param1:String) : Boolean
      {
         var _loc2_:§ !"§ = null;
         var _loc3_:§ !"§ = null;
         for each(_loc3_ in this.§^!P§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §1+§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§"!g§ != null)
         {
            §1+§.log("deActivate state: " + this.§"!g§.mName);
            this.§"!g§.deActivate();
            this.previousStateDeactivate();
            this.§[A§.removeChild(this.§"!g§.§`n§);
         }
         this.§"!g§ = _loc2_;
         §1+§.log("Activate state: " + this.§"!g§.mName);
         this.stage.frameRate = this.§"!g§.§1f§();
         this.§[A§.addChildAt(this.§"!g§.§`n§,0);
         this.§"!g§.activate();
         this.§"!g§.§6"§();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §8!n§(param1:§ !"§) : Boolean
      {
         if(param1 != null)
         {
            this.§^!P§.push(param1);
            param1.§]t§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§"!g§)
         {
            return § !"§.§!x§;
         }
         return this.§"!g§.run(param1);
      }
      
      public function §4P§() : Number
      {
         return this.§[A§.width;
      }
      
      public function §^n§() : Number
      {
         return this.§[A§.height;
      }
      
      public function get canvas() : §'!]§
      {
         return this.§[A§;
      }
      
      public function get stage() : Stage
      {
         return this.§[A§.stage;
      }
      
      public function §6]§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§"!g§)
         {
            this.§"!g§.setViewSize(param1,param2);
         }
         this.§0I§ = param1;
         this.§ !a§ = param2;
      }
   }
}
