package §6!@§
{
   import §,§.§!!I§;
   import §?@§.§"]§;
   import flash.display.Stage;
   
   public class §4!V§
   {
       
      
      private var §4O§:Vector.<§ !!§>;
      
      protected var §>!c§:§ !!§;
      
      private var mNextState:String;
      
      protected var §;!Y§:§!!I§ = null;
      
      private var §?!?§:Number;
      
      private var §@!a§:Number;
      
      public function §4!V§(param1:§!!I§)
      {
         super();
         this.§4O§ = new Vector.<§ !!§>();
         this.§;!Y§ = param1;
         this.§?!?§ = this.§;!Y§.stage.stageWidth;
         this.§@!a§ = this.§;!Y§.stage.stageHeight;
      }
      
      public function §3]§() : String
      {
         if(this.§>!c§ != null)
         {
            return this.§>!c§.mName;
         }
         return § !!§.§<!3§;
      }
      
      public function §&!Y§() : § !!§
      {
         if(this.§>!c§ != null)
         {
            return this.§>!c§;
         }
         return null;
      }
      
      public function §3!G§(param1:String) : § !!§
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§4O§.length)
         {
            if((this.§4O§[_loc2_] as § !!§).mName == param1)
            {
               return this.§4O§[_loc2_] as § !!§;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §3!9§(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function get §5!$§() : Boolean
      {
         return this.mNextState != § !!§.§<!3§;
      }
      
      public function §1!2§() : Boolean
      {
         if(this.mNextState != § !!§.§<!3§)
         {
            this.§[g§(this.mNextState);
            this.setViewSize(this.§?!?§,this.§@!a§);
            this.mNextState = § !!§.§<!3§;
            return true;
         }
         return false;
      }
      
      public function §[g§(param1:String) : Boolean
      {
         var _loc2_:§ !!§ = null;
         var _loc3_:§ !!§ = null;
         for each(_loc3_ in this.§4O§)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            §"]§.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         if(this.§>!c§ != null)
         {
            §"]§.log("deActivate state: " + this.§>!c§.mName);
            this.§>!c§.deActivate();
            this.previousStateDeactivate();
            this.§;!Y§.removeChild(this.§>!c§.§]!+§);
         }
         this.§>!c§ = _loc2_;
         §"]§.log("Activate state: " + this.§>!c§.mName);
         this.stage.frameRate = this.§>!c§.§%!]§();
         this.§;!Y§.addChildAt(this.§>!c§.§]!+§,0);
         this.§>!c§.activate();
         this.§>!c§.§^D§();
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function §7!E§(param1:§ !!§) : Boolean
      {
         if(param1 != null)
         {
            this.§4O§.push(param1);
            param1.§<!O§ = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.§>!c§)
         {
            return § !!§.§<X§;
         }
         return this.§>!c§.run(param1);
      }
      
      public function §,V§() : Number
      {
         return this.§;!Y§.width;
      }
      
      public function §6!D§() : Number
      {
         return this.§;!Y§.height;
      }
      
      public function get canvas() : §!!I§
      {
         return this.§;!Y§;
      }
      
      public function get stage() : Stage
      {
         return this.§;!Y§.stage;
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.§>!c§)
         {
            this.§>!c§.setViewSize(param1,param2);
         }
         this.§?!?§ = param1;
         this.§@!a§ = param2;
      }
   }
}
