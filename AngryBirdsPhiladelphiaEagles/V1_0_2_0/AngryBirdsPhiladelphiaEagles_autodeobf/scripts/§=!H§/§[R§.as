package §=!H§
{
   import §9c§.§6P§;
   import flash.display.MovieClip;
   
   public class §[R§ extends §6P§
   {
      
      private static const §5m§:Number = 1000 / 60;
       
      
      private var §9,§:String;
      
      private var §^!3§:String;
      
      private var §[V§:int = 0;
      
      private var §;!'§:int = 0;
      
      private var §<7§:Number = 0;
      
      private var §1!3§:Boolean = false;
      
      public function §[R§(param1:XML, param2:§9V§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function § ,§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§<7§ += param1;
         this.§;!'§ = this.§<7§ / §5m§;
         while(this.§[V§ < this.§;!'§)
         {
            ++this.§[V§;
            mClip.gotoAndStop(this.§[V§);
            this.§9,§ = mClip.currentLabel;
            if(this.§9,§ != this.§^!3§)
            {
               _loc2_ = this.§9,§;
               this.§;!'§ = this.§[V§;
               this.§<7§ = this.§;!'§ * §5m§;
            }
         }
         this.§[V§ = this.§;!'§;
         this.§^!3§ = this.§9,§;
         return _loc2_;
      }
      
      public function §2$§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §^r§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §,L§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §3A§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§9,§ = param1;
         this.§^!3§ = param1;
         this.§;!'§ = mClip.currentFrame;
         this.§[V§ = mClip.currentFrame;
         this.§<7§ = mClip.currentFrame * §5m§;
      }
      
      public function §62§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §>P§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §6-§() : Boolean
      {
         return this.§1!3§;
      }
      
      public function set §6-§(param1:Boolean) : void
      {
         this.§1!3§ = param1;
      }
   }
}
