package §6H§
{
   import §8c§.§ p§;
   import §>K§.§9X§;
   import flash.display.Stage;
   
   public class §5S§
   {
       
      
      private var §,f§:Vector.<§>3§>;
      
      protected var §?!D§:§>3§;
      
      private var mNextState:String;
      
      protected var §6#§:§ p§ = null;
      
      private var §`i§:Number;
      
      private var §!j§:Number;
      
      public function §5S§(param1:§ p§)
      {
         super();
         this.§,f§ = new Vector.<§>3§>();
         this.§6#§ = param1;
         this.§`i§ = this.§6#§.stage.stageWidth;
         this.§!j§ = this.§6#§.stage.stageHeight;
      }
      
      public function §@!%§() : String
      {
         if(this.§?!D§ != null)
         {
            return this.§?!D§.mName;
         }
         return §>3§.§0s§;
      }
      
      public function §>A§() : §>3§
      {
         if(this.§?!D§ != null)
         {
            return this.§?!D§;
         }
         return null;
      }
      
      public function §?<§(param1:String) : §>3§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§,f§.length)
         {
            if((this.§,f§[_loc2_] as §>3§).mName == param1)
            {
               return this.§,f§[_loc2_] as §>3§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function each(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §9@§() : Boolean
      {
         return this.mNextState != §>3§.§0s§;
      }
      
      public function §0$§() : Boolean
      {
         if(this.mNextState != §>3§.§0s§)
         {
            this.§1!H§(this.mNextState);
            this.setViewSize(this.§`i§,this.§!j§);
            this.mNextState = §>3§.§0s§;
            return true;
         }
         return false;
      }
      
      public function §1!H§(param1:String) : Boolean
      {
         var _loc2_:§>3§ = null;
         var _loc3_:§>3§ = null;
         for each(_loc3_ in this.§,f§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §9X§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§?!D§ != null)
         {
            §9X§.log("deActivate state: " + this.§?!D§.mName);
            this.§?!D§.deActivate();
            this.previousStateDeactivate();
            this.§6#§.removeChild(this.§?!D§.§62§);
         }
         this.§?!D§ = _loc2_;
         §9X§.log("Activate state: " + this.§?!D§.mName);
         this.stage.frameRate = this.§?!D§.§'!6§();
         this.§6#§.addChildAt(this.§?!D§.§62§,0);
         this.§?!D§.activate();
         this.§?!D§.§ Z§();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §5!%§(param1:§>3§) : Boolean
      {
         if(param1 != null)
         {
            this.§,f§.push(param1);
            param1.§'X§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§?!D§)
         {
            return §>3§.§8! §;
         }
         return this.§?!D§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§6#§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§6#§.height;
      }
      
      public function get canvas() : § p§
      {
         return this.§6#§;
      }
      
      public function get stage() : Stage
      {
         return this.§6#§.stage;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§?!D§)
         {
            this.§?!D§.setViewSize(param1,param2);
         }
         this.§`i§ = param1;
         this.§!j§ = param2;
      }
   }
}
