package §68§
{
   import §&V§.§4o§;
   import flash.display.MovieClip;
   
   public class §4!;§ extends §4o§
   {
      
      private static const §-1§:Number = 1000 / 60;
       
      
      private var §8!d§:String;
      
      private var §>!b§:String;
      
      private var §%!d§:int = 0;
      
      private var §;%§:int = 0;
      
      private var §8]§:Number = 0;
      
      private var §"M§:Boolean = false;
      
      public function §4!;§(param1:XML, param2:§`?§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §&!A§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§8]§ += param1;
         this.§;%§ = this.§8]§ / §-1§;
         while(this.§%!d§ < this.§;%§)
         {
            ++this.§%!d§;
            mClip.gotoAndStop(this.§%!d§);
            this.§8!d§ = mClip.currentLabel;
            if(this.§8!d§ != this.§>!b§)
            {
               _loc2_ = this.§8!d§;
               this.§;%§ = this.§%!d§;
               this.§8]§ = this.§;%§ * §-1§;
            }
         }
         this.§%!d§ = this.§;%§;
         this.§>!b§ = this.§8!d§;
         return _loc2_;
      }
      
      public function §<! §(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §3P§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §0!d§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §<!!§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§8!d§ = param1;
         this.§>!b§ = param1;
         this.§;%§ = mClip.currentFrame;
         this.§%!d§ = mClip.currentFrame;
         this.§8]§ = mClip.currentFrame * §-1§;
      }
      
      public function §29§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §7![§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §?!]§() : Boolean
      {
         return this.§"M§;
      }
      
      public function set §?!]§(param1:Boolean) : void
      {
         this.§"M§ = param1;
      }
   }
}
