package §4C§
{
   import §`!0§.§[4§;
   import flash.display.MovieClip;
   
   public class §"m§ extends §[4§
   {
      
      private static const §;E§:Number = 1000 / 60;
       
      
      private var §&!1§:String;
      
      private var §!O§:String;
      
      private var §+]§:int = 0;
      
      private var §,!=§:int = 0;
      
      private var §%_§:Number = 0;
      
      private var §'S§:Boolean = false;
      
      public function §"m§(param1:XML, param2:§1!=§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §>P§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§%_§ += param1;
         this.§,!=§ = this.§%_§ / §;E§;
         while(this.§+]§ < this.§,!=§)
         {
            ++this.§+]§;
            mClip.gotoAndStop(this.§+]§);
            this.§&!1§ = mClip.currentLabel;
            if(this.§&!1§ != this.§!O§)
            {
               _loc2_ = this.§&!1§;
               this.§,!=§ = this.§+]§;
               this.§%_§ = this.§,!=§ * §;E§;
            }
         }
         this.§+]§ = this.§,!=§;
         this.§!O§ = this.§&!1§;
         return _loc2_;
      }
      
      public function §##§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §=,§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §#P§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §[!I§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§&!1§ = param1;
         this.§!O§ = param1;
         this.§,!=§ = mClip.currentFrame;
         this.§+]§ = mClip.currentFrame;
         this.§%_§ = mClip.currentFrame * §;E§;
      }
      
      public function §,u§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §[B§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §'I§() : Boolean
      {
         return this.§'S§;
      }
      
      public function set §'I§(param1:Boolean) : void
      {
         this.§'S§ = param1;
      }
   }
}
