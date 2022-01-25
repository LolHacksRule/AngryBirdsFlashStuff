package §8!<§
{
   import §7!H§.§`f§;
   import flash.display.MovieClip;
   
   public class §6!=§ extends §`f§
   {
      
      private static const §38§:Number = 1000 / 60;
       
      
      private var §#5§:String;
      
      private var §<1§:String;
      
      private var §7f§:int = 0;
      
      private var §7P§:int = 0;
      
      private var §[F§:Number = 0;
      
      private var §&r§:Boolean = false;
      
      public function §6!=§(param1:XML, param2:§2W§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §]U§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§[F§ += param1;
         this.§7P§ = this.§[F§ / §38§;
         while(this.§7f§ < this.§7P§)
         {
            ++this.§7f§;
            mClip.gotoAndStop(this.§7f§);
            this.§#5§ = mClip.currentLabel;
            if(this.§#5§ != this.§<1§)
            {
               _loc2_ = this.§#5§;
               this.§7P§ = this.§7f§;
               this.§[F§ = this.§7P§ * §38§;
            }
         }
         this.§7f§ = this.§7P§;
         this.§<1§ = this.§#5§;
         return _loc2_;
      }
      
      public function §,!6§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §5p§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §8!^§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §4&§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§#5§ = param1;
         this.§<1§ = param1;
         this.§7P§ = mClip.currentFrame;
         this.§7f§ = mClip.currentFrame;
         this.§[F§ = mClip.currentFrame * §38§;
      }
      
      public function §&G§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §8,§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §7!U§() : Boolean
      {
         return this.§&r§;
      }
      
      public function set §7!U§(param1:Boolean) : void
      {
         this.§&r§ = param1;
      }
   }
}
