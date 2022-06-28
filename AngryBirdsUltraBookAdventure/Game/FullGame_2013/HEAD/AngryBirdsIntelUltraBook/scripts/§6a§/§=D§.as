package §6a§
{
   import §0!Q§.UIComponentInteractiveRovio;
   import flash.display.MovieClip;
   
   public class §=D§ extends UIComponentInteractiveRovio
   {
      
      private static const §,!F§:Number = 1000 / 60;
       
      
      private var §-!j§:String;
      
      private var §6T§:String;
      
      private var §&!c§:int = 0;
      
      private var §21§:int = 0;
      
      private var §23§:Number = 0;
      
      private var §3z§:Boolean = false;
      
      public function §=D§(param1:XML, param2:UIContainerRovio, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §+h§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§23§ += param1;
         this.§21§ = this.§23§ / §,!F§;
         while(this.§&!c§ < this.§21§)
         {
            ++this.§&!c§;
            mClip.gotoAndStop(this.§&!c§);
            this.§-!j§ = mClip.currentLabel;
            if(this.§-!j§ != this.§6T§)
            {
               _loc2_ = this.§-!j§;
               this.§21§ = this.§&!c§;
               this.§23§ = this.§21§ * §,!F§;
            }
         }
         this.§&!c§ = this.§21§;
         this.§6T§ = this.§-!j§;
         return _loc2_;
      }
      
      public function §=L§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §,!e§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §1!S§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §`c§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§-!j§ = param1;
         this.§6T§ = param1;
         this.§21§ = mClip.currentFrame;
         this.§&!c§ = mClip.currentFrame;
         this.§23§ = mClip.currentFrame * §,!F§;
      }
      
      public function §+J§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §2!G§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §?§() : Boolean
      {
         return this.§3z§;
      }
      
      public function set §?§(param1:Boolean) : void
      {
         this.§3z§ = param1;
      }
   }
}
