package §"!E§
{
   import §#!4§.§<f§;
   import flash.display.MovieClip;
   
   public class §%O§ extends §<f§
   {
      
      private static const §,!,§:Number = 1000 / 60;
       
      
      private var §+5§:String;
      
      private var §@!e§:String;
      
      private var §[!§:int = 0;
      
      private var §9!P§:int = 0;
      
      private var §"!l§:Number = 0;
      
      private var §@L§:Boolean = false;
      
      public function §%O§(param1:XML, param2:§[!s§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §92§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§"!l§ += param1;
         this.§9!P§ = this.§"!l§ / §,!,§;
         while(this.§[!§ < this.§9!P§)
         {
            ++this.§[!§;
            mClip.gotoAndStop(this.§[!§);
            this.§+5§ = mClip.currentLabel;
            if(this.§+5§ != this.§@!e§)
            {
               _loc2_ = this.§+5§;
               this.§9!P§ = this.§[!§;
               this.§"!l§ = this.§9!P§ * §,!,§;
            }
         }
         this.§[!§ = this.§9!P§;
         this.§@!e§ = this.§+5§;
         return _loc2_;
      }
      
      public function §]!S§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §#E§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §=Q§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §-!a§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§+5§ = param1;
         this.§@!e§ = param1;
         this.§9!P§ = mClip.currentFrame;
         this.§[!§ = mClip.currentFrame;
         this.§"!l§ = mClip.currentFrame * §,!,§;
      }
      
      public function § !V§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §^!=§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §6e§() : Boolean
      {
         return this.§@L§;
      }
      
      public function set §6e§(param1:Boolean) : void
      {
         this.§@L§ = param1;
      }
   }
}
