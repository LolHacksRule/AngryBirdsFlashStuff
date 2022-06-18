package §?>§
{
   import §7'§.§'q§;
   import flash.display.MovieClip;
   
   public class §+&§ extends §'q§
   {
      
      private static const §6p§:Number = 1000 / 60;
       
      
      private var §@!<§:String;
      
      private var §2+§:String;
      
      private var §!w§:int = 0;
      
      private var §"F§:int = 0;
      
      private var §+!2§:Number = 0;
      
      private var §]!=§:Boolean = false;
      
      public function §+&§(param1:XML, param2:§ !V§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §5L§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§+!2§ += param1;
         this.§"F§ = this.§+!2§ / §6p§;
         while(this.§!w§ < this.§"F§)
         {
            ++this.§!w§;
            mClip.gotoAndStop(this.§!w§);
            this.§@!<§ = mClip.currentLabel;
            if(this.§@!<§ != this.§2+§)
            {
               _loc2_ = this.§@!<§;
               this.§"F§ = this.§!w§;
               this.§+!2§ = this.§"F§ * §6p§;
            }
         }
         this.§!w§ = this.§"F§;
         this.§2+§ = this.§@!<§;
         return _loc2_;
      }
      
      public function §3+§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §-1§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §^d§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §[!`§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§@!<§ = param1;
         this.§2+§ = param1;
         this.§"F§ = mClip.currentFrame;
         this.§!w§ = mClip.currentFrame;
         this.§+!2§ = mClip.currentFrame * §6p§;
      }
      
      public function §4!E§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §!+§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §7`§() : Boolean
      {
         return this.§]!=§;
      }
      
      public function set §7`§(param1:Boolean) : void
      {
         this.§]!=§ = param1;
      }
   }
}
