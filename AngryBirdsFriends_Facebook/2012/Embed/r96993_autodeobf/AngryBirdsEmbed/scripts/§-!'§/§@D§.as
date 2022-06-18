package §-!'§
{
   import §!^§.§+!5§;
   import flash.display.MovieClip;
   
   public class §@D§ extends §+!5§
   {
      
      private static const §7!6§:Number = 1000 / 60;
       
      
      private var §^!7§:String;
      
      private var §[5§:String;
      
      private var § !=§:int = 0;
      
      private var §&0§:int = 0;
      
      private var §1!%§:Number = 0;
      
      private var §,i§:Boolean = false;
      
      public function §@D§(param1:XML, param2:§in §, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §^e§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§1!%§ += param1;
         this.§&0§ = this.§1!%§ / §7!6§;
         while(this.§ !=§ < this.§&0§)
         {
            ++this.§ !=§;
            mClip.gotoAndStop(this.§ !=§);
            this.§^!7§ = mClip.currentLabel;
            if(this.§^!7§ != this.§[5§)
            {
               _loc2_ = this.§^!7§;
               this.§&0§ = this.§ !=§;
               this.§1!%§ = this.§&0§ * §7!6§;
            }
         }
         this.§ !=§ = this.§&0§;
         this.§[5§ = this.§^!7§;
         return _loc2_;
      }
      
      public function §9<§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §!&§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §2f§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §=!;§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§^!7§ = param1;
         this.§[5§ = param1;
         this.§&0§ = mClip.currentFrame;
         this.§ !=§ = mClip.currentFrame;
         this.§1!%§ = mClip.currentFrame * §7!6§;
      }
      
      public function §3s§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §'%§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §[!F§() : Boolean
      {
         return this.§,i§;
      }
      
      public function set §[!F§(param1:Boolean) : void
      {
         this.§,i§ = param1;
      }
   }
}
