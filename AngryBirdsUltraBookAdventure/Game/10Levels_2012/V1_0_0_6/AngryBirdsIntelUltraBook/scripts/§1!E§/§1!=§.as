package §1!E§
{
   import §>7§.§4+§;
   import flash.display.MovieClip;
   
   public class §1!=§ extends §4+§
   {
      
      private static const §=%§:Number = 1000 / 60;
       
      
      private var §3!k§:String;
      
      private var §!D§:String;
      
      private var §9X§:int = 0;
      
      private var §6^§:int = 0;
      
      private var §!!a§:Number = 0;
      
      private var §6l§:Boolean = false;
      
      public function §1!=§(param1:XML, param2:§#?§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §@!5§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§!!a§ += param1;
         this.§6^§ = this.§!!a§ / §=%§;
         while(this.§9X§ < this.§6^§)
         {
            ++this.§9X§;
            mClip.gotoAndStop(this.§9X§);
            this.§3!k§ = mClip.currentLabel;
            if(this.§3!k§ != this.§!D§)
            {
               _loc2_ = this.§3!k§;
               this.§6^§ = this.§9X§;
               this.§!!a§ = this.§6^§ * §=%§;
            }
         }
         this.§9X§ = this.§6^§;
         this.§!D§ = this.§3!k§;
         return _loc2_;
      }
      
      public function §!8§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §&!%§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §!!F§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §&!3§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§3!k§ = param1;
         this.§!D§ = param1;
         this.§6^§ = mClip.currentFrame;
         this.§9X§ = mClip.currentFrame;
         this.§!!a§ = mClip.currentFrame * §=%§;
      }
      
      public function §%U§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §2!^§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §;,§() : Boolean
      {
         return this.§6l§;
      }
      
      public function set §;,§(param1:Boolean) : void
      {
         this.§6l§ = param1;
      }
   }
}
