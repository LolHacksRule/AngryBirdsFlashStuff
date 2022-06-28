package §`M§
{
   import §=R§.§5!a§;
   import flash.display.MovieClip;
   
   public class §&!G§ extends §5!a§
   {
      
      private static const § e§:Number = 1000 / 60;
       
      
      private var §6!N§:String;
      
      private var §7T§:String;
      
      private var §?o§:int = 0;
      
      private var §%!]§:int = 0;
      
      private var §"!T§:Number = 0;
      
      private var §=[§:Boolean = false;
      
      public function §&!G§(param1:XML, param2:§9!#§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §,!C§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§"!T§ += param1;
         this.§%!]§ = this.§"!T§ / § e§;
         while(this.§?o§ < this.§%!]§)
         {
            ++this.§?o§;
            mClip.gotoAndStop(this.§?o§);
            this.§6!N§ = mClip.currentLabel;
            if(this.§6!N§ != this.§7T§)
            {
               _loc2_ = this.§6!N§;
               this.§%!]§ = this.§?o§;
               this.§"!T§ = this.§%!]§ * § e§;
            }
         }
         this.§?o§ = this.§%!]§;
         this.§7T§ = this.§6!N§;
         return _loc2_;
      }
      
      public function §=!Z§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §1!V§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §[7§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §#!q§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§6!N§ = param1;
         this.§7T§ = param1;
         this.§%!]§ = mClip.currentFrame;
         this.§?o§ = mClip.currentFrame;
         this.§"!T§ = mClip.currentFrame * § e§;
      }
      
      public function §5v§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §[q§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §<!P§() : Boolean
      {
         return this.§=[§;
      }
      
      public function set §<!P§(param1:Boolean) : void
      {
         this.§=[§ = param1;
      }
   }
}
