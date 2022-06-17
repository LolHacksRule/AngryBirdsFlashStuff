package §2$;§
{
   import §<8§.§;"k§;
   import §=X§.§3§;
   import flash.display.MovieClip;
   
   public class §=!Z§ extends §;"k§
   {
      
      private static const § "y§:Number = 1000 / 60;
       
      
      private var §"!o§:String;
      
      private var §[z§:String;
      
      private var §"_§:int = 0;
      
      private var §;]§:int = 0;
      
      private var §2#q§:Number = 0;
      
      private var §^!j§:Boolean = false;
      
      public function §=!Z§(param1:XML, param2:§!"e§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §3#6§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function §0"g§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§2#q§ += param1;
         this.§;]§ = this.§2#q§ / § "y§;
         while(this.§"_§ < this.§;]§)
         {
            ++this.§"_§;
            mClip.gotoAndStop(this.§"_§);
            this.§"!o§ = mClip.currentLabel;
            if(this.§"!o§ != this.§[z§)
            {
               _loc2_ = this.§"!o§;
               this.§;]§ = this.§"_§;
               this.§2#q§ = this.§;]§ * § "y§;
            }
         }
         this.§"_§ = this.§;]§;
         this.§[z§ = this.§"!o§;
         return _loc2_;
      }
      
      public function §="M§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §[!+§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §^§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §#"-§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§"!o§ = param1;
         this.§[z§ = param1;
         this.§;]§ = mClip.currentFrame;
         this.§"_§ = mClip.currentFrame;
         this.§2#q§ = mClip.currentFrame * § "y§;
      }
      
      public function §3!]§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §+!B§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get isPlaying() : Boolean
      {
         return this.§^!j§;
      }
      
      public function set isPlaying(param1:Boolean) : void
      {
         this.§^!j§ = param1;
      }
   }
}
