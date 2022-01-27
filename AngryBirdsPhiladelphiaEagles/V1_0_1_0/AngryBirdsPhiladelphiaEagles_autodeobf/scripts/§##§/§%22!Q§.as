package §##§
{
   import §,!<§.§39§;
   import §,!<§.§6!M§;
   import §4!D§.§>!4§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §"!Q§ extends §39§
   {
      
      private static const §<!3§:Number = 0.2;
      
      private static const §-!L§:Number = 5;
       
      
      private var § W§:Boolean = false;
      
      protected var §%J§:Number = -1;
      
      protected var §7d§:Number = 0;
      
      private var §"E§:Boolean = false;
      
      private var §5T§:Number = 5;
      
      private var §7!'§:Boolean = false;
      
      private var §<-§:Boolean = false;
      
      public function §"!Q§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         super.setLoadingScreen(param1);
         this.§"!'§(0);
      }
      
      private function §;=§() : int
      {
         if(!this.§<-§)
         {
            return §6!M§.STATE_STATUS_RUNNING;
         }
         return §6!M§.STATE_STATUS_COMPLETED;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:int = 0;
         if(this.§%J§ == -1)
         {
            this.§%J§ = new Date().time;
         }
         if(!this.§ W§)
         {
            _loc3_ = super.run(param1);
            if(_loc3_ == §6!M§.STATE_STATUS_COMPLETED)
            {
               this.§ W§ = true;
               this.§7d§ = 1;
            }
         }
         var _loc2_:Number = this.§"!%§();
         this.§"!'§(_loc2_);
         if(_loc2_ == 1 && this.§ W§)
         {
            if(!this.§7!'§)
            {
               this.§7!'§ = true;
               §>!4§.§4J§.addEventListener(§>!4§.SERVER_CALL_COMPLETE,this.§<1§);
               §>!4§.§4J§.§&§();
            }
            else if(this.§<-§)
            {
               return this.§;=§();
            }
         }
         return §6!M§.STATE_STATUS_RUNNING;
      }
      
      private function §<1§(param1:Event) : void
      {
         this.§<-§ = true;
      }
      
      private function §"!%§() : Number
      {
         var _loc1_:Number = this.§&p§(this.§7d§ == 1);
         if(this.§7d§ == 1 && _loc1_ == 1)
         {
            return 1;
         }
         return this.§7d§ * 0.8 + _loc1_ * 0.2;
      }
      
      private function §&p§(param1:Boolean) : Number
      {
         if(param1)
         {
            --this.§5T§;
         }
         var _loc2_:Number = Math.min((new Date().time - this.§%J§) / 1000,this.§5T§) / this.§5T§;
         return Number(1 - Math.pow(1 - _loc2_,2));
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         this.§7d§ = param1;
      }
      
      private function §"!'§(param1:Number) : void
      {
         if(§3! §.getChildByName("Bar"))
         {
            (§3! §.getChildByName("Bar") as MovieClip).mcProgress.scaleX = param1;
         }
      }
   }
}
