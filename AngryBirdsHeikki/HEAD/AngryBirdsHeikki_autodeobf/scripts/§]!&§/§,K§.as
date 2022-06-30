package §]!&§
{
   import §+!M§.§^<§;
   import flash.display.MovieClip;
   
   public class §,K§ extends §^<§
   {
      
      private static const §,3§:Number = 1000 / 60;
       
      
      private var §?w§:String;
      
      private var §=e§:String;
      
      private var §+K§:int = 0;
      
      private var §3g§:int = 0;
      
      private var §-H§:Number = 0;
      
      private var §>!d§:Boolean = false;
      
      public function §,K§(param1:XML, param2:§5!5§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §2"§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§-H§ += param1;
         this.§3g§ = this.§-H§ / §,3§;
         while(this.§+K§ < this.§3g§)
         {
            ++this.§+K§;
            mClip.gotoAndStop(this.§+K§);
            this.§?w§ = mClip.currentLabel;
            if(this.§?w§ != this.§=e§)
            {
               _loc2_ = this.§?w§;
               this.§3g§ = this.§+K§;
               this.§-H§ = this.§3g§ * §,3§;
            }
         }
         this.§+K§ = this.§3g§;
         this.§=e§ = this.§?w§;
         return _loc2_;
      }
      
      public function §6!Y§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §+r§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §=D§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §var §(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§?w§ = param1;
         this.§=e§ = param1;
         this.§3g§ = mClip.currentFrame;
         this.§+K§ = mClip.currentFrame;
         this.§-H§ = mClip.currentFrame * §,3§;
      }
      
      public function §4!c§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §7!D§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §4w§() : Boolean
      {
         return this.§>!d§;
      }
      
      public function set §4w§(param1:Boolean) : void
      {
         this.§>!d§ = param1;
      }
   }
}
