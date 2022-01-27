package §8!A§
{
   import §16§.§;v§;
   import §;!!§.§+t§;
   import §;!!§.§0H§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §'&§ extends §+t§
   {
      
      private static const §'`§:Number = 0.2;
      
      private static const §<a§:Number = 5;
       
      
      private var §-!J§:Boolean = false;
      
      protected var §-j§:Number = -1;
      
      protected var §9S§:Number = 0;
      
      private var §=!I§:Boolean = false;
      
      private var §2B§:Number = 5;
      
      private var §0[§:Boolean = false;
      
      private var §70§:Boolean = false;
      
      public function §'&§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         super.setLoadingScreen(param1);
         this.§3U§(0);
      }
      
      private function §7`§() : int
      {
         if(!this.§70§)
         {
            return §0H§.STATE_STATUS_RUNNING;
         }
         return §0H§.STATE_STATUS_COMPLETED;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:int = 0;
         if(this.§-j§ == -1)
         {
            this.§-j§ = new Date().time;
         }
         if(!this.§-!J§)
         {
            _loc3_ = super.run(param1);
            if(_loc3_ == §0H§.STATE_STATUS_COMPLETED)
            {
               this.§-!J§ = true;
               this.§9S§ = 1;
            }
         }
         var _loc2_:Number = this.§#n§();
         this.§3U§(_loc2_);
         if(_loc2_ == 1 && this.§-!J§)
         {
            if(!this.§0[§)
            {
               this.§0[§ = true;
               §;v§.§<"§.addEventListener(§;v§.SERVER_CALL_COMPLETE,this.§4!'§);
               §;v§.§<"§.§+!J§();
            }
            else if(this.§70§)
            {
               return this.§7`§();
            }
         }
         return §0H§.STATE_STATUS_RUNNING;
      }
      
      private function §4!'§(param1:Event) : void
      {
         this.§70§ = true;
      }
      
      private function §#n§() : Number
      {
         var _loc1_:Number = this.§%G§(this.§9S§ == 1);
         if(this.§9S§ == 1 && _loc1_ == 1)
         {
            return 1;
         }
         return this.§9S§ * 0.8 + _loc1_ * 0.2;
      }
      
      private function §%G§(param1:Boolean) : Number
      {
         if(param1)
         {
            --this.§2B§;
         }
         var _loc2_:Number = Math.min((new Date().time - this.§-j§) / 1000,this.§2B§) / this.§2B§;
         return Number(1 - Math.pow(1 - _loc2_,2));
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         this.§9S§ = param1;
      }
      
      private function §3U§(param1:Number) : void
      {
         if(§^e§.getChildByName("Bar"))
         {
            (§^e§.getChildByName("Bar") as MovieClip).mcProgress.scaleX = param1;
         }
      }
   }
}
