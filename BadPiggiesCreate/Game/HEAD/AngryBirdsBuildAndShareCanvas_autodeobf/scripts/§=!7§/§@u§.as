package §=!7§
{
   import §@y§.§>!D§;
   import flash.display.MovieClip;
   
   public class §@u§ extends §>!D§
   {
      
      private static const §8-§:Number = 1000 / 60;
       
      
      private var §0!6§:String;
      
      private var §5",§:String;
      
      private var §=!@§:int = 0;
      
      private var §]#§:int = 0;
      
      private var §=<§:Number = 0;
      
      private var §>!j§:Boolean = false;
      
      public function §@u§(param1:XML, param2:§6W§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §"!v§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§=<§ += param1;
         this.§]#§ = this.§=<§ / §8-§;
         while(this.§=!@§ < this.§]#§)
         {
            ++this.§=!@§;
            mClip.gotoAndStop(this.§=!@§);
            this.§0!6§ = mClip.currentLabel;
            if(this.§0!6§ != this.§5",§)
            {
               _loc2_ = this.§0!6§;
               this.§]#§ = this.§=!@§;
               this.§=<§ = this.§]#§ * §8-§;
            }
         }
         this.§=!@§ = this.§]#§;
         this.§5",§ = this.§0!6§;
         return _loc2_;
      }
      
      public function §+!g§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §1!S§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §%!h§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §3"5§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§0!6§ = param1;
         this.§5",§ = param1;
         this.§]#§ = mClip.currentFrame;
         this.§=!@§ = mClip.currentFrame;
         this.§=<§ = mClip.currentFrame * §8-§;
      }
      
      public function §3"-§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §4B§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §4C§() : Boolean
      {
         return this.§>!j§;
      }
      
      public function set §4C§(param1:Boolean) : void
      {
         this.§>!j§ = param1;
      }
   }
}
