package §[%§
{
   import §<s§.§&4§;
   import flash.display.MovieClip;
   
   public class §=!M§ extends §&4§
   {
      
      private static const §-m§:Number = 1000 / 60;
       
      
      private var §?!%§:String;
      
      private var §9!T§:String;
      
      private var §,h§:int = 0;
      
      private var §[y§:int = 0;
      
      private var §^1§:Number = 0;
      
      private var §1e§:Boolean = false;
      
      public function §=!M§(param1:XML, param2:§&a§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §<'§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§^1§ += param1;
         this.§[y§ = this.§^1§ / §-m§;
         while(this.§,h§ < this.§[y§)
         {
            ++this.§,h§;
            mClip.gotoAndStop(this.§,h§);
            this.§?!%§ = mClip.currentLabel;
            if(this.§?!%§ != this.§9!T§)
            {
               _loc2_ = this.§?!%§;
               this.§[y§ = this.§,h§;
               this.§^1§ = this.§[y§ * §-m§;
            }
         }
         this.§,h§ = this.§[y§;
         this.§9!T§ = this.§?!%§;
         return _loc2_;
      }
      
      public function §!!N§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §6!B§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §&m§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §&!'§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§?!%§ = param1;
         this.§9!T§ = param1;
         this.§[y§ = mClip.currentFrame;
         this.§,h§ = mClip.currentFrame;
         this.§^1§ = mClip.currentFrame * §-m§;
      }
      
      public function §3d§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §&!Z§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §6!3§() : Boolean
      {
         return this.§1e§;
      }
      
      public function set §6!3§(param1:Boolean) : void
      {
         this.§1e§ = param1;
      }
   }
}
