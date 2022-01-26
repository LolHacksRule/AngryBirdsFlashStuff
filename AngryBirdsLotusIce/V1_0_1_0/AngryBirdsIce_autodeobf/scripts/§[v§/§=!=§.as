package §[v§
{
   import §`W§.§<r§;
   import flash.display.MovieClip;
   
   public class §=!=§ extends §<r§
   {
      
      private static const §9O§:Number = 1000 / 60;
       
      
      private var §="§:String;
      
      private var §>Z§:String;
      
      private var §>!&§:int = 0;
      
      private var §3c§:int = 0;
      
      private var §#P§:Number = 0;
      
      private var §=!4§:Boolean = false;
      
      public function §=!=§(param1:XML, param2:§&F§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §8W§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§#P§ += param1;
         this.§3c§ = this.§#P§ / §9O§;
         while(this.§>!&§ < this.§3c§)
         {
            ++this.§>!&§;
            mClip.gotoAndStop(this.§>!&§);
            this.§="§ = mClip.currentLabel;
            if(this.§="§ != this.§>Z§)
            {
               _loc2_ = this.§="§;
               this.§3c§ = this.§>!&§;
               this.§#P§ = this.§3c§ * §9O§;
            }
         }
         this.§>!&§ = this.§3c§;
         this.§>Z§ = this.§="§;
         return _loc2_;
      }
      
      public function §%&§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §%s§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §#k§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §'8§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§="§ = param1;
         this.§>Z§ = param1;
         this.§3c§ = mClip.currentFrame;
         this.§>!&§ = mClip.currentFrame;
         this.§#P§ = mClip.currentFrame * §9O§;
      }
      
      public function §^!"§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §"]§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §%!'§() : Boolean
      {
         return this.§=!4§;
      }
      
      public function set §%!'§(param1:Boolean) : void
      {
         this.§=!4§ = param1;
      }
   }
}
