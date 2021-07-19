package §1%§
{
   import §#!b§.§"!"§;
   import §0N§.§2!@§;
   import flash.display.Stage;
   
   public class §9!s§
   {
       
      
      private var §<c§:Vector.<§0!3§>;
      
      protected var §?!M§:§0!3§;
      
      private var §>"?§:String;
      
      private var §]"D§:String;
      
      protected var §2! §:§"!"§ = null;
      
      private var § !%§:Number;
      
      private var §=D§:Number;
      
      public function §9!s§(param1:§"!"§)
      {
         super();
         this.§<c§ = new Vector.<§0!3§>();
         this.§2! § = param1;
         this.§ !%§ = this.§2! §.stage.stageWidth;
         this.§=D§ = this.§2! §.stage.stageHeight;
      }
      
      public function §6![§() : String
      {
         if(this.§?!M§ != null)
         {
            return this.§?!M§.mName;
         }
         return §0!3§.§^![§;
      }
      
      public function §,"7§() : §0!3§
      {
         if(this.§?!M§ != null)
         {
            return this.§?!M§;
         }
         return null;
      }
      
      public function §[!@§(param1:String) : §0!3§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§<c§.length)
         {
            if((this.§<c§[_loc2_] as §0!3§).mName == param1)
            {
               return this.§<c§[_loc2_] as §0!3§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §8!^§(param1:String) : void
      {
         this.§>"?§ = param1;
      }
      
      public function get §!E§() : Boolean
      {
         return this.§>"?§ != §0!3§.§^![§;
      }
      
      public function §@?§() : String
      {
         return this.§>"?§;
      }
      
      public function §@!%§() : String
      {
         return this.§]"D§;
      }
      
      public function §@1§() : Boolean
      {
         if(this.§>"?§ != §0!3§.§^![§)
         {
            this.§+"$§(this.§>"?§);
            this.setViewSize(this.§ !%§,this.§=D§);
            this.§]"D§ = this.§>"?§;
            this.§>"?§ = §0!3§.§^![§;
            return true;
         }
         return false;
      }
      
      public function §+"$§(param1:String) : Boolean
      {
         var _loc2_:§0!3§ = null;
         var _loc3_:§0!3§ = null;
         for each(_loc3_ in this.§<c§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §2!@§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         var _loc4_:Boolean = false;
         if(this.§?!M§ != null)
         {
            §2!@§.log("deActivate state: " + this.§?!M§.mName);
            _loc4_ = this.§?!M§.§;"-§;
            this.§?!M§.§;"-§ = false;
            this.§?!M§.deActivate();
            this.previousStateDeactivate();
            this.§2! §.removeChild(this.§?!M§.§]!$§);
         }
         this.§?!M§ = _loc2_;
         §2!@§.log("Activate state: " + this.§?!M§.mName);
         this.stage.frameRate = this.§?!M§.§?a§();
         this.§2! §.addChildAt(this.§?!M§.§]!$§,0);
         this.§?!M§.activate(this.§@!%§());
         this.§?!M§.§==§(_loc4_);
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §0j§(param1:§0!3§) : Boolean
      {
         if(param1 != null)
         {
            this.§<c§.push(param1);
            param1.§[M§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§?!M§)
         {
            return §0!3§.§ !b§;
         }
         return this.§?!M§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§2! §.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§2! §.height;
      }
      
      public function get canvas() : §"!"§
      {
         return this.§2! §;
      }
      
      public function get stage() : Stage
      {
         return this.§2! §.stage;
      }
      
      public function §9C§(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§?!M§)
         {
            this.§?!M§.setViewSize(param1,param2);
         }
         this.§ !%§ = param1;
         this.§=D§ = param2;
      }
   }
}
