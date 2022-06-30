package §@!]§
{
   import §1Q§.§4p§;
   import flash.display.MovieClip;
   
   public class §%k§ extends §4p§
   {
      
      private static const §[!1§:Number = 1000 / 60;
       
      
      private var §>o§:String;
      
      private var §'O§:String;
      
      private var §0C§:int = 0;
      
      private var §@C§:int = 0;
      
      private var §7E§:Number = 0;
      
      private var §>!R§:Boolean = false;
      
      public function §%k§(param1:XML, param2:§'!9§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §,G§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§7E§ += param1;
         this.§@C§ = this.§7E§ / §[!1§;
         while(this.§0C§ < this.§@C§)
         {
            ++this.§0C§;
            mClip.gotoAndStop(this.§0C§);
            this.§>o§ = mClip.currentLabel;
            if(this.§>o§ != this.§'O§)
            {
               _loc2_ = this.§>o§;
               this.§@C§ = this.§0C§;
               this.§7E§ = this.§@C§ * §[!1§;
            }
         }
         this.§0C§ = this.§@C§;
         this.§'O§ = this.§>o§;
         return _loc2_;
      }
      
      public function set(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §9![§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §-?§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §>V§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§>o§ = param1;
         this.§'O§ = param1;
         this.§@C§ = mClip.currentFrame;
         this.§0C§ = mClip.currentFrame;
         this.§7E§ = mClip.currentFrame * §[!1§;
      }
      
      public function §3g§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §&!^§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §0m§() : Boolean
      {
         return this.§>!R§;
      }
      
      public function set §0m§(param1:Boolean) : void
      {
         this.§>!R§ = param1;
      }
   }
}
