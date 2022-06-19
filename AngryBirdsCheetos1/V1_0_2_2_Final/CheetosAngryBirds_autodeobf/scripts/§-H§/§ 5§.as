package §-H§
{
   import § !0§.§##§;
   import § !G§.§ #§;
   import flash.display.Stage;
   
   public class § 5§
   {
       
      
      private var §continue§:Vector.<§&c§>;
      
      protected var §+!3§:§&c§;
      
      private var mNextState:String;
      
      protected var §1C§:§##§ = null;
      
      private var §#Z§:Number;
      
      private var §%!&§:Number;
      
      public function § 5§(param1:§##§)
      {
         super();
         this.§continue§ = new Vector.<§&c§>();
         this.§1C§ = param1;
         this.§#Z§ = this.§1C§.stage.stageWidth;
         this.§%!&§ = this.§1C§.stage.stageHeight;
      }
      
      public function §&G§() : String
      {
         if(this.§+!3§ != null)
         {
            return this.§+!3§.mName;
         }
         return §&c§.§&`§;
      }
      
      public function §?!1§() : §&c§
      {
         if(this.§+!3§ != null)
         {
            return this.§+!3§;
         }
         return null;
      }
      
      public function §[!=§(param1:String) : §&c§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§continue§.length)
         {
            if((this.§continue§[_loc2_] as §&c§).mName == param1)
            {
               return this.§continue§[_loc2_] as §&c§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §=T§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §8!1§() : Boolean
      {
         return this.mNextState != §&c§.§&`§;
      }
      
      public function §"3§() : Boolean
      {
         if(this.mNextState != §&c§.§&`§)
         {
            this.§3!3§(this.mNextState);
            this.setViewSize(this.§#Z§,this.§%!&§);
            this.mNextState = §&c§.§&`§;
            return true;
         }
         return false;
      }
      
      public function §3!3§(param1:String) : Boolean
      {
         var _loc2_:§&c§ = null;
         var _loc3_:§&c§ = null;
         for each(_loc3_ in this.§continue§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            § #§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§+!3§ != null)
         {
            § #§.log("deActivate state: " + this.§+!3§.mName);
            this.§+!3§.deActivate();
            this.previousStateDeactivate();
            this.§1C§.removeChild(this.§+!3§.§?!N§);
         }
         this.§+!3§ = _loc2_;
         § #§.log("Activate state: " + this.§+!3§.mName);
         this.stage.frameRate = this.§+!3§.§4f§();
         this.§1C§.addChildAt(this.§+!3§.§?!N§,0);
         this.§+!3§.activate();
         this.§+!3§.activateComplete();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §#d§(param1:§&c§) : Boolean
      {
         if(param1 != null)
         {
            this.§continue§.push(param1);
            param1.§7P§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§+!3§)
         {
            return §&c§.§!!Z§;
         }
         return this.§+!3§.run(param1);
      }
      
      public function getAppWidth() : Number
      {
         return this.§1C§.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.§1C§.height;
      }
      
      public function get canvas() : §##§
      {
         return this.§1C§;
      }
      
      public function get stage() : Stage
      {
         return this.§1C§.stage;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§+!3§)
         {
            this.§+!3§.setViewSize(param1,param2);
         }
         this.§#Z§ = param1;
         this.§%!&§ = param2;
      }
   }
}
