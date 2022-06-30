package §=!c§
{
   import §93§.§?t§;
   import flash.display.MovieClip;
   
   public class §^"§ extends §?t§
   {
      
      private static const §^!=§:Number = 1000 / 60;
       
      
      private var §+!#§:String;
      
      private var §73§:String;
      
      private var §,r§:int = 0;
      
      private var §5h§:int = 0;
      
      private var §"!2§:Number = 0;
      
      private var §3J§:Boolean = false;
      
      public function §^"§(param1:XML, param2:§=>§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §2_§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§"!2§ += param1;
         this.§5h§ = this.§"!2§ / §^!=§;
         while(this.§,r§ < this.§5h§)
         {
            ++this.§,r§;
            mClip.gotoAndStop(this.§,r§);
            this.§+!#§ = mClip.currentLabel;
            if(this.§+!#§ != this.§73§)
            {
               _loc2_ = this.§+!#§;
               this.§5h§ = this.§,r§;
               this.§"!2§ = this.§5h§ * §^!=§;
            }
         }
         this.§,r§ = this.§5h§;
         this.§73§ = this.§+!#§;
         return _loc2_;
      }
      
      public function §3V§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §"k§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §!?§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §]S§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§+!#§ = param1;
         this.§73§ = param1;
         this.§5h§ = mClip.currentFrame;
         this.§,r§ = mClip.currentFrame;
         this.§"!2§ = mClip.currentFrame * §^!=§;
      }
      
      public function §9!H§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §8!V§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §;!V§() : Boolean
      {
         return this.§3J§;
      }
      
      public function set §;!V§(param1:Boolean) : void
      {
         this.§3J§ = param1;
      }
   }
}
