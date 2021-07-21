package §>M§
{
   import §'!D§.§0j§;
   import flash.display.MovieClip;
   
   public class §-!P§ extends §0j§
   {
      
      private static const §#!`§:Number = 1000 / 60;
       
      
      private var §"w§:String;
      
      private var §+!f§:String;
      
      private var §+f§:int = 0;
      
      private var §<R§:int = 0;
      
      private var §?$§:Number = 0;
      
      private var §]!Y§:Boolean = false;
      
      public function §-!P§(param1:XML, param2:§<6§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §5J§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§?$§ += param1;
         this.§<R§ = this.§?$§ / §#!`§;
         while(this.§+f§ < this.§<R§)
         {
            ++this.§+f§;
            mClip.gotoAndStop(this.§+f§);
            this.§"w§ = mClip.currentLabel;
            if(this.§"w§ != this.§+!f§)
            {
               _loc2_ = this.§"w§;
               this.§<R§ = this.§+f§;
               this.§?$§ = this.§<R§ * §#!`§;
            }
         }
         this.§+f§ = this.§<R§;
         this.§+!f§ = this.§"w§;
         return _loc2_;
      }
      
      public function §,t§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §?!U§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §[3§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function § m§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§"w§ = param1;
         this.§+!f§ = param1;
         this.§<R§ = mClip.currentFrame;
         this.§+f§ = mClip.currentFrame;
         this.§?$§ = mClip.currentFrame * §#!`§;
      }
      
      public function §>?§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §1i§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §`!N§() : Boolean
      {
         return this.§]!Y§;
      }
      
      public function set §`!N§(param1:Boolean) : void
      {
         this.§]!Y§ = param1;
      }
   }
}
