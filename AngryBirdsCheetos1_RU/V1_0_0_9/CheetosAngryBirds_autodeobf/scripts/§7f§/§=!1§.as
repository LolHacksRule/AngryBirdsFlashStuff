package §7f§
{
   import §^r§.§%%§;
   import flash.display.MovieClip;
   
   public class §=!1§ extends §%%§
   {
      
      private static const §!&§:Number = 1000 / 60;
       
      
      private var §6!`§:String;
      
      private var §<! §:String;
      
      private var dynamic:int = 0;
      
      private var §64§:int = 0;
      
      private var §4!$§:Number = 0;
      
      private var §8f§:Boolean = false;
      
      public function §=!1§(param1:XML, param2:§?i§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §-L§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§4!$§ += param1;
         this.§64§ = this.§4!$§ / §!&§;
         while(this.dynamic < this.§64§)
         {
            ++this.dynamic;
            mClip.gotoAndStop(this.dynamic);
            this.§6!`§ = mClip.currentLabel;
            if(this.§6!`§ != this.§<! §)
            {
               _loc2_ = this.§6!`§;
               this.§64§ = this.dynamic;
               this.§4!$§ = this.§64§ * §!&§;
            }
         }
         this.dynamic = this.§64§;
         this.§<! § = this.§6!`§;
         return _loc2_;
      }
      
      public function §-!-§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §>!W§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §5P§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §&k§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§6!`§ = param1;
         this.§<! § = param1;
         this.§64§ = mClip.currentFrame;
         this.dynamic = mClip.currentFrame;
         this.§4!$§ = mClip.currentFrame * §!&§;
      }
      
      public function §%<§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §?;§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §]!_§() : Boolean
      {
         return this.§8f§;
      }
      
      public function set §]!_§(param1:Boolean) : void
      {
         this.§8f§ = param1;
      }
   }
}
