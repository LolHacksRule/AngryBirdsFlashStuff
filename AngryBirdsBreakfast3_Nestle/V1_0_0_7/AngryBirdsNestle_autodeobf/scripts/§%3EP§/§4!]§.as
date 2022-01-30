package §>P§
{
   import §"V§.§]j§;
   import §<!0§.§3!W§;
   import flash.display.MovieClip;
   
   public class §4!]§ extends §3!W§
   {
      
      private static const §#7§:Number = 1000 / 60;
       
      
      private var §1!$§:String;
      
      private var §`!8§:String;
      
      private var §^"4§:int = 0;
      
      private var §=p§:int = 0;
      
      private var §1"&§:Number = 0;
      
      private var §%Q§:Boolean = false;
      
      public function §4!]§(param1:XML, param2:§]"4§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §]j§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function §>q§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§1"&§ += param1;
         this.§=p§ = this.§1"&§ / §#7§;
         while(this.§^"4§ < this.§=p§)
         {
            ++this.§^"4§;
            mClip.gotoAndStop(this.§^"4§);
            this.§1!$§ = mClip.currentLabel;
            if(this.§1!$§ != this.§`!8§)
            {
               _loc2_ = this.§1!$§;
               this.§=p§ = this.§^"4§;
               this.§1"&§ = this.§=p§ * §#7§;
            }
         }
         this.§^"4§ = this.§=p§;
         this.§`!8§ = this.§1!$§;
         return _loc2_;
      }
      
      public function §^,§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §'=§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §,"5§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §-q§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§1!$§ = param1;
         this.§`!8§ = param1;
         this.§=p§ = mClip.currentFrame;
         this.§^"4§ = mClip.currentFrame;
         this.§1"&§ = mClip.currentFrame * §#7§;
      }
      
      public function §2!&§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §1"!§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §>K§() : Boolean
      {
         return this.§%Q§;
      }
      
      public function set §>K§(param1:Boolean) : void
      {
         this.§%Q§ = param1;
      }
   }
}
