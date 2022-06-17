package § "L§
{
   import §^"3§.§ #&§;
   import §`§.§%#m§;
   import flash.display.MovieClip;
   
   public class §"!A§ extends § #&§
   {
      
      private static const §'!]§:Number = 1000 / 60;
       
      
      private var §7#d§:String;
      
      private var §;?§:String;
      
      private var §>F§:int = 0;
      
      private var §0"P§:int = 0;
      
      private var §6&§:Number = 0;
      
      private var §,!v§:Boolean = false;
      
      public function §"!A§(param1:XML, param2:§23§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §%#m§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function § $§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§6&§ += param1;
         this.§0"P§ = this.§6&§ / §'!]§;
         while(this.§>F§ < this.§0"P§)
         {
            ++this.§>F§;
            mClip.gotoAndStop(this.§>F§);
            this.§7#d§ = mClip.currentLabel;
            if(this.§7#d§ != this.§;?§)
            {
               _loc2_ = this.§7#d§;
               this.§0"P§ = this.§>F§;
               this.§6&§ = this.§0"P§ * §'!]§;
            }
         }
         this.§>F§ = this.§0"P§;
         this.§;?§ = this.§7#d§;
         return _loc2_;
      }
      
      public function §+" §(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §]#3§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §0!"§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §&";§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§7#d§ = param1;
         this.§;?§ = param1;
         this.§0"P§ = mClip.currentFrame;
         this.§>F§ = mClip.currentFrame;
         this.§6&§ = mClip.currentFrame * §'!]§;
      }
      
      public function §-"H§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §8#=§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get isPlaying() : Boolean
      {
         return this.§,!v§;
      }
      
      public function set isPlaying(param1:Boolean) : void
      {
         this.§,!v§ = param1;
      }
   }
}
