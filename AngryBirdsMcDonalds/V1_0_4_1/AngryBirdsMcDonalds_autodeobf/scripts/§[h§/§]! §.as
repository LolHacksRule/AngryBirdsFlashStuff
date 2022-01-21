package §[h§
{
   import §+$§.§"!p§;
   import flash.display.MovieClip;
   
   public class §]! § extends §"!p§
   {
      
      private static const §;!G§:Number = 1000 / 60;
       
      
      private var §;s§:String;
      
      private var §<-§:String;
      
      private var §?!d§:int = 0;
      
      private var § 5§:int = 0;
      
      private var §]D§:Number = 0;
      
      private var §6o§:Boolean = false;
      
      public function §]! §(param1:XML, param2:§ !&§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §&!§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§]D§ += param1;
         this.§ 5§ = this.§]D§ / §;!G§;
         while(this.§?!d§ < this.§ 5§)
         {
            ++this.§?!d§;
            mClip.gotoAndStop(this.§?!d§);
            this.§;s§ = mClip.currentLabel;
            if(this.§;s§ != this.§<-§)
            {
               _loc2_ = this.§;s§;
               this.§ 5§ = this.§?!d§;
               this.§]D§ = this.§ 5§ * §;!G§;
            }
         }
         this.§?!d§ = this.§ 5§;
         this.§<-§ = this.§;s§;
         return _loc2_;
      }
      
      public function §[p§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function § ]§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §7J§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §7q§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§;s§ = param1;
         this.§<-§ = param1;
         this.§ 5§ = mClip.currentFrame;
         this.§?!d§ = mClip.currentFrame;
         this.§]D§ = mClip.currentFrame * §;!G§;
      }
      
      public function §-v§() : String
      {
         return mClip.currentLabel;
      }
      
      public function § <§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §4!V§() : Boolean
      {
         return this.§6o§;
      }
      
      public function set §4!V§(param1:Boolean) : void
      {
         this.§6o§ = param1;
      }
   }
}
