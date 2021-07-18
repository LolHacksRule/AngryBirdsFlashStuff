package §"U§
{
   import §6v§.§@V§;
   import flash.display.MovieClip;
   
   public class §!o§ extends §@V§
   {
      
      private static const §=N§:Number = 1000 / 60;
       
      
      private var §?L§:String;
      
      private var §"J§:String;
      
      private var §>!H§:int = 0;
      
      private var §;L§:int = 0;
      
      private var §9g§:Number = 0;
      
      private var §;!C§:Boolean = false;
      
      public function §!o§(param1:XML, param2:§[Q§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §4P§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§9g§ += param1;
         this.§;L§ = this.§9g§ / §=N§;
         while(this.§>!H§ < this.§;L§)
         {
            ++this.§>!H§;
            mClip.gotoAndStop(this.§>!H§);
            this.§?L§ = mClip.currentLabel;
            if(this.§?L§ != this.§"J§)
            {
               _loc2_ = this.§?L§;
               this.§;L§ = this.§>!H§;
               this.§9g§ = this.§;L§ * §=N§;
            }
         }
         this.§>!H§ = this.§;L§;
         this.§"J§ = this.§?L§;
         return _loc2_;
      }
      
      public function §>[§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §,5§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function § !O§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §4R§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§?L§ = param1;
         this.§"J§ = param1;
         this.§;L§ = mClip.currentFrame;
         this.§>!H§ = mClip.currentFrame;
         this.§9g§ = mClip.currentFrame * §=N§;
      }
      
      public function §7u§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §8!;§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §+c§() : Boolean
      {
         return this.§;!C§;
      }
      
      public function set §+c§(param1:Boolean) : void
      {
         this.§;!C§ = param1;
      }
   }
}
