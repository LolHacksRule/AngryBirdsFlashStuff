package §2y§
{
   import §3!R§.§,=§;
   import flash.display.MovieClip;
   
   public class §4i§ extends §,=§
   {
      
      private static const §]!e§:Number = 1000 / 60;
       
      
      private var §use §:String;
      
      private var §]%§:String;
      
      private var §!!'§:int = 0;
      
      private var §!!,§:int = 0;
      
      private var §+O§:Number = 0;
      
      private var § Q§:Boolean = false;
      
      public function §4i§(param1:XML, param2:§]`§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §'f§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§+O§ += param1;
         this.§!!,§ = this.§+O§ / §]!e§;
         while(this.§!!'§ < this.§!!,§)
         {
            ++this.§!!'§;
            mClip.gotoAndStop(this.§!!'§);
            this.§use § = mClip.currentLabel;
            if(this.§use § != this.§]%§)
            {
               _loc2_ = this.§use §;
               this.§!!,§ = this.§!!'§;
               this.§+O§ = this.§!!,§ * §]!e§;
            }
         }
         this.§!!'§ = this.§!!,§;
         this.§]%§ = this.§use §;
         return _loc2_;
      }
      
      public function §=!1§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §^`§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §9!!§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §0!Z§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§use § = param1;
         this.§]%§ = param1;
         this.§!!,§ = mClip.currentFrame;
         this.§!!'§ = mClip.currentFrame;
         this.§+O§ = mClip.currentFrame * §]!e§;
      }
      
      public function §<!'§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §@s§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §8!N§() : Boolean
      {
         return this.§ Q§;
      }
      
      public function set §8!N§(param1:Boolean) : void
      {
         this.§ Q§ = param1;
      }
   }
}
