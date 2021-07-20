package §class§
{
   import §-!F§.§`!&§;
   import flash.display.MovieClip;
   
   public class §`!6§ extends §`!&§
   {
      
      private static const § !-§:Number = 1000 / 60;
       
      
      private var §9;§:String;
      
      private var §`!C§:String;
      
      private var §8N§:int = 0;
      
      private var § 9§:int = 0;
      
      private var §?z§:Number = 0;
      
      private var §=l§:Boolean = false;
      
      public function §`!6§(param1:XML, param2:§3C§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §'2§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§?z§ += param1;
         this.§ 9§ = this.§?z§ / § !-§;
         while(this.§8N§ < this.§ 9§)
         {
            ++this.§8N§;
            mClip.gotoAndStop(this.§8N§);
            this.§9;§ = mClip.currentLabel;
            if(this.§9;§ != this.§`!C§)
            {
               _loc2_ = this.§9;§;
               this.§ 9§ = this.§8N§;
               this.§?z§ = this.§ 9§ * § !-§;
            }
         }
         this.§8N§ = this.§ 9§;
         this.§`!C§ = this.§9;§;
         return _loc2_;
      }
      
      public function §=f§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §>z§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §^!3§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §]?§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§9;§ = param1;
         this.§`!C§ = param1;
         this.§ 9§ = mClip.currentFrame;
         this.§8N§ = mClip.currentFrame;
         this.§?z§ = mClip.currentFrame * § !-§;
      }
      
      public function § b§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §!U§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §^[§() : Boolean
      {
         return this.§=l§;
      }
      
      public function set §^[§(param1:Boolean) : void
      {
         this.§=l§ = param1;
      }
   }
}
