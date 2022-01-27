package §!t§
{
   import §5F§.§3^§;
   import flash.display.MovieClip;
   
   public class §?g§ extends §3^§
   {
      
      private static const §[!8§:Number = 1000 / 60;
       
      
      private var §>8§:String;
      
      private var §-s§:String;
      
      private var §`8§:int = 0;
      
      private var §`&§:int = 0;
      
      private var §in §:Number = 0;
      
      private var §>b§:Boolean = false;
      
      public function §?g§(param1:XML, param2:§;1§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §6g§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§in § += param1;
         this.§`&§ = this.§in § / §[!8§;
         while(this.§`8§ < this.§`&§)
         {
            ++this.§`8§;
            mClip.gotoAndStop(this.§`8§);
            this.§>8§ = mClip.currentLabel;
            if(this.§>8§ != this.§-s§)
            {
               _loc2_ = this.§>8§;
               this.§`&§ = this.§`8§;
               this.§in § = this.§`&§ * §[!8§;
            }
         }
         this.§`8§ = this.§`&§;
         this.§-s§ = this.§>8§;
         return _loc2_;
      }
      
      public function §?1§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §9!,§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §5n§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §+!L§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§>8§ = param1;
         this.§-s§ = param1;
         this.§`&§ = mClip.currentFrame;
         this.§`8§ = mClip.currentFrame;
         this.§in § = mClip.currentFrame * §[!8§;
      }
      
      public function §-&§() : String
      {
         return mClip.currentLabel;
      }
      
      public function get() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §;7§() : Boolean
      {
         return this.§>b§;
      }
      
      public function set §;7§(param1:Boolean) : void
      {
         this.§>b§ = param1;
      }
   }
}
