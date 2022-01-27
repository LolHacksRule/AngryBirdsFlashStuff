package §2y§
{
   import §@!&§.§-0§;
   import flash.display.MovieClip;
   
   public class §7!p§ extends §-0§
   {
      
      private static const §8!'§:Number = 1000 / 60;
       
      
      private var §5w§:String;
      
      private var §#v§:String;
      
      private var §=t§:int = 0;
      
      private var §7§:int = 0;
      
      private var §=a§:Number = 0;
      
      private var §]C§:Boolean = false;
      
      public function §7!p§(param1:XML, param2:§^! §, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §@$§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§=a§ += param1;
         this.§7§ = this.§=a§ / §8!'§;
         while(this.§=t§ < this.§7§)
         {
            ++this.§=t§;
            mClip.gotoAndStop(this.§=t§);
            this.§5w§ = mClip.currentLabel;
            if(this.§5w§ != this.§#v§)
            {
               _loc2_ = this.§5w§;
               this.§7§ = this.§=t§;
               this.§=a§ = this.§7§ * §8!'§;
            }
         }
         this.§=t§ = this.§7§;
         this.§#v§ = this.§5w§;
         return _loc2_;
      }
      
      public function §=0§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §&3§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §=!C§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §>Z§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§5w§ = param1;
         this.§#v§ = param1;
         this.§7§ = mClip.currentFrame;
         this.§=t§ = mClip.currentFrame;
         this.§=a§ = mClip.currentFrame * §8!'§;
      }
      
      public function §-E§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §?u§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §!!#§() : Boolean
      {
         return this.§]C§;
      }
      
      public function set §!!#§(param1:Boolean) : void
      {
         this.§]C§ = param1;
      }
   }
}
