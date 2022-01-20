package §,!C§
{
   import §@-§.§ x§;
   import flash.display.MovieClip;
   
   public class §!!]§ extends § x§
   {
      
      private static const §1!E§:Number = 1000 / 60;
       
      
      private var §?5§:String;
      
      private var §%Q§:String;
      
      private var §null §:int = 0;
      
      private var §?!+§:int = 0;
      
      private var §^G§:Number = 0;
      
      private var §6!X§:Boolean = false;
      
      public function §!!]§(param1:XML, param2:§-6§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §1!N§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§^G§ += param1;
         this.§?!+§ = this.§^G§ / §1!E§;
         while(this.§null § < this.§?!+§)
         {
            ++this.§null §;
            mClip.gotoAndStop(this.§null §);
            this.§?5§ = mClip.currentLabel;
            if(this.§?5§ != this.§%Q§)
            {
               _loc2_ = this.§?5§;
               this.§?!+§ = this.§null §;
               this.§^G§ = this.§?!+§ * §1!E§;
            }
         }
         this.§null § = this.§?!+§;
         this.§%Q§ = this.§?5§;
         return _loc2_;
      }
      
      public function §+$§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §-r§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §3!G§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §+^§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§?5§ = param1;
         this.§%Q§ = param1;
         this.§?!+§ = mClip.currentFrame;
         this.§null § = mClip.currentFrame;
         this.§^G§ = mClip.currentFrame * §1!E§;
      }
      
      public function §@n§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §]§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §&!H§() : Boolean
      {
         return this.§6!X§;
      }
      
      public function set §&!H§(param1:Boolean) : void
      {
         this.§6!X§ = param1;
      }
   }
}
