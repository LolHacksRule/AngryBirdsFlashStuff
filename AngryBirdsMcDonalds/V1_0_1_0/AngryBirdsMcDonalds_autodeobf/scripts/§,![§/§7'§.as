package §,![§
{
   import §-1§.§>!6§;
   import flash.display.MovieClip;
   
   public class §7'§ extends §>!6§
   {
      
      private static const §+f§:Number = 1000 / 60;
       
      
      private var §]"§:String;
      
      private var §"'§:String;
      
      private var §^!P§:int = 0;
      
      private var §[!+§:int = 0;
      
      private var §;!i§:Number = 0;
      
      private var §=o§:Boolean = false;
      
      public function §7'§(param1:XML, param2:§[!S§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §?!Z§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§;!i§ += param1;
         this.§[!+§ = this.§;!i§ / §+f§;
         while(this.§^!P§ < this.§[!+§)
         {
            ++this.§^!P§;
            mClip.gotoAndStop(this.§^!P§);
            this.§]"§ = mClip.currentLabel;
            if(this.§]"§ != this.§"'§)
            {
               _loc2_ = this.§]"§;
               this.§[!+§ = this.§^!P§;
               this.§;!i§ = this.§[!+§ * §+f§;
            }
         }
         this.§^!P§ = this.§[!+§;
         this.§"'§ = this.§]"§;
         return _loc2_;
      }
      
      public function §]z§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §%!&§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §;!0§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §9B§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§]"§ = param1;
         this.§"'§ = param1;
         this.§[!+§ = mClip.currentFrame;
         this.§^!P§ = mClip.currentFrame;
         this.§;!i§ = mClip.currentFrame * §+f§;
      }
      
      public function §@!#§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §+!%§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §=!n§() : Boolean
      {
         return this.§=o§;
      }
      
      public function set §=!n§(param1:Boolean) : void
      {
         this.§=o§ = param1;
      }
   }
}
