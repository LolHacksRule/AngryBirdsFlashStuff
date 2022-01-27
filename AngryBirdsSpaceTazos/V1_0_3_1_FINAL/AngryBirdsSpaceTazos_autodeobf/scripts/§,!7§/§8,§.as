package §,!7§
{
   import §+=§.§?!Q§;
   import §6B§.§5![§;
   import flash.display.MovieClip;
   
   public class §8,§ extends §5![§
   {
      
      private static const §#[§:Number = 1000 / 60;
       
      
      private var §2!"§:String;
      
      private var §+F§:String;
      
      private var §-!j§:int = 0;
      
      private var §2!y§:int = 0;
      
      private var §+"!§:Number = 0;
      
      private var §;m§:Boolean = false;
      
      public function §8,§(param1:XML, param2:§5!k§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §?!Q§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function §,""§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§+"!§ += param1;
         this.§2!y§ = this.§+"!§ / §#[§;
         while(this.§-!j§ < this.§2!y§)
         {
            ++this.§-!j§;
            mClip.gotoAndStop(this.§-!j§);
            this.§2!"§ = mClip.currentLabel;
            if(this.§2!"§ != this.§+F§)
            {
               _loc2_ = this.§2!"§;
               this.§2!y§ = this.§-!j§;
               this.§+"!§ = this.§2!y§ * §#[§;
            }
         }
         this.§-!j§ = this.§2!y§;
         this.§+F§ = this.§2!"§;
         return _loc2_;
      }
      
      public function §]"A§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §94§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §1!@§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §9R§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§2!"§ = param1;
         this.§+F§ = param1;
         this.§2!y§ = mClip.currentFrame;
         this.§-!j§ = mClip.currentFrame;
         this.§+"!§ = mClip.currentFrame * §#[§;
      }
      
      public function §@!!§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §<y§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §]X§() : Boolean
      {
         return this.§;m§;
      }
      
      public function set §]X§(param1:Boolean) : void
      {
         this.§;m§ = param1;
      }
   }
}
