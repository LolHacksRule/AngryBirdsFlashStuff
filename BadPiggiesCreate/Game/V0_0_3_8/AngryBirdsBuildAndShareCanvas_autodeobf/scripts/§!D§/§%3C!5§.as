package §!D§
{
   import §9!7§.§6"0§;
   import flash.display.MovieClip;
   
   public class §<!5§ extends §6"0§
   {
      
      private static const §1!H§:Number = 1000 / 60;
       
      
      private var §>b§:String;
      
      private var §5"§:String;
      
      private var §'H§:int = 0;
      
      private var §;",§:int = 0;
      
      private var §5" §:Number = 0;
      
      private var §0"5§:Boolean = false;
      
      public function §<!5§(param1:XML, param2:§ use§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §8!Y§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§5" § += param1;
         this.§;",§ = this.§5" § / §1!H§;
         while(this.§'H§ < this.§;",§)
         {
            ++this.§'H§;
            mClip.gotoAndStop(this.§'H§);
            this.§>b§ = mClip.currentLabel;
            if(this.§>b§ != this.§5"§)
            {
               _loc2_ = this.§>b§;
               this.§;",§ = this.§'H§;
               this.§5" § = this.§;",§ * §1!H§;
            }
         }
         this.§'H§ = this.§;",§;
         this.§5"§ = this.§>b§;
         return _loc2_;
      }
      
      public function §^A§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §+!c§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §=!<§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §do§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§>b§ = param1;
         this.§5"§ = param1;
         this.§;",§ = mClip.currentFrame;
         this.§'H§ = mClip.currentFrame;
         this.§5" § = mClip.currentFrame * §1!H§;
      }
      
      public function §!U§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §],§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §^" §() : Boolean
      {
         return this.§0"5§;
      }
      
      public function set §^" §(param1:Boolean) : void
      {
         this.§0"5§ = param1;
      }
   }
}
