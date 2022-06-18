package §8!8§
{
   import §@R§.§<d§;
   import flash.display.MovieClip;
   
   public class §&Q§ extends §<d§
   {
      
      private static const §#m§:Number = 1000 / 60;
       
      
      private var §7+§:String;
      
      private var §-!O§:String;
      
      private var §#!E§:int = 0;
      
      private var §;d§:int = 0;
      
      private var §;2§:Number = 0;
      
      private var §4C§:Boolean = false;
      
      public function §&Q§(param1:XML, param2:§4!C§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §[!9§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§;2§ += param1;
         this.§;d§ = this.§;2§ / §#m§;
         while(this.§#!E§ < this.§;d§)
         {
            ++this.§#!E§;
            mClip.gotoAndStop(this.§#!E§);
            this.§7+§ = mClip.currentLabel;
            if(this.§7+§ != this.§-!O§)
            {
               _loc2_ = this.§7+§;
               this.§;d§ = this.§#!E§;
               this.§;2§ = this.§;d§ * §#m§;
            }
         }
         this.§#!E§ = this.§;d§;
         this.§-!O§ = this.§7+§;
         return _loc2_;
      }
      
      public function §6y§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §'#§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §4t§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §7!-§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§7+§ = param1;
         this.§-!O§ = param1;
         this.§;d§ = mClip.currentFrame;
         this.§#!E§ = mClip.currentFrame;
         this.§;2§ = mClip.currentFrame * §#m§;
      }
      
      public function §`w§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §"!N§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §9y§() : Boolean
      {
         return this.§4C§;
      }
      
      public function set §9y§(param1:Boolean) : void
      {
         this.§4C§ = param1;
      }
   }
}
