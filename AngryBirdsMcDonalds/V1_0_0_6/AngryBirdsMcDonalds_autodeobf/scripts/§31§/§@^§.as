package §31§
{
   import §6@§.§>n§;
   import flash.display.MovieClip;
   
   public class §@^§ extends §>n§
   {
      
      private static const §!5§:Number = 1000 / 60;
       
      
      private var §!w§:String;
      
      private var §??§:String;
      
      private var §3N§:int = 0;
      
      private var §[!!§:int = 0;
      
      private var §5n§:Number = 0;
      
      private var §]!'§:Boolean = false;
      
      public function §@^§(param1:XML, param2:§ !A§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §1J§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§5n§ += param1;
         this.§[!!§ = this.§5n§ / §!5§;
         while(this.§3N§ < this.§[!!§)
         {
            ++this.§3N§;
            mClip.gotoAndStop(this.§3N§);
            this.§!w§ = mClip.currentLabel;
            if(this.§!w§ != this.§??§)
            {
               _loc2_ = this.§!w§;
               this.§[!!§ = this.§3N§;
               this.§5n§ = this.§[!!§ * §!5§;
            }
         }
         this.§3N§ = this.§[!!§;
         this.§??§ = this.§!w§;
         return _loc2_;
      }
      
      public function §32§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §#4§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §1!<§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §%=§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§!w§ = param1;
         this.§??§ = param1;
         this.§[!!§ = mClip.currentFrame;
         this.§3N§ = mClip.currentFrame;
         this.§5n§ = mClip.currentFrame * §!5§;
      }
      
      public function §[!h§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §]r§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §9! §() : Boolean
      {
         return this.§]!'§;
      }
      
      public function set §9! §(param1:Boolean) : void
      {
         this.§]!'§ = param1;
      }
   }
}
