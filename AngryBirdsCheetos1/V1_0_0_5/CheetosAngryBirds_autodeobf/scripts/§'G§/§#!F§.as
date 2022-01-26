package §'G§
{
   import §-V§.§9d§;
   import flash.display.MovieClip;
   
   public class §#!F§ extends §9d§
   {
      
      private static const §"!N§:Number = 1000 / 60;
       
      
      private var §&Q§:String;
      
      private var §7+§:String;
      
      private var §-!O§:int = 0;
      
      private var §#!E§:int = 0;
      
      private var §;d§:Number = 0;
      
      private var §;2§:Boolean = false;
      
      public function §#!F§(param1:XML, param2:§%!%§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §4C§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§;d§ += param1;
         this.§#!E§ = this.§;d§ / §"!N§;
         while(this.§-!O§ < this.§#!E§)
         {
            ++this.§-!O§;
            mClip.gotoAndStop(this.§-!O§);
            this.§&Q§ = mClip.currentLabel;
            if(this.§&Q§ != this.§7+§)
            {
               _loc2_ = this.§&Q§;
               this.§#!E§ = this.§-!O§;
               this.§;d§ = this.§#!E§ * §"!N§;
            }
         }
         this.§-!O§ = this.§#!E§;
         this.§7+§ = this.§&Q§;
         return _loc2_;
      }
      
      public function §[!9§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §6y§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §'#§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §4t§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§&Q§ = param1;
         this.§7+§ = param1;
         this.§#!E§ = mClip.currentFrame;
         this.§-!O§ = mClip.currentFrame;
         this.§;d§ = mClip.currentFrame * §"!N§;
      }
      
      public function §7!-§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §`w§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §?!5§() : Boolean
      {
         return this.§;2§;
      }
      
      public function set §?!5§(param1:Boolean) : void
      {
         this.§;2§ = param1;
      }
   }
}
