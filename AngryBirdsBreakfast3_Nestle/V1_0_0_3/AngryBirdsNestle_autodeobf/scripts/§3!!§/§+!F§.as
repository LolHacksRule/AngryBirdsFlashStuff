package §3!!§
{
   import §>!L§.§?!d§;
   import §@f§.§4d§;
   import flash.display.MovieClip;
   
   public class §+!F§ extends §4d§
   {
      
      private static const §4!W§:Number = 1000 / 60;
       
      
      private var §,!!§:String;
      
      private var §>!O§:String;
      
      private var §]! §:int = 0;
      
      private var §<w§:int = 0;
      
      private var §=!i§:Number = 0;
      
      private var §'§:Boolean = false;
      
      public function §+!F§(param1:XML, param2:§5" §, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §?!d§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function §2"3§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§=!i§ += param1;
         this.§<w§ = this.§=!i§ / §4!W§;
         while(this.§]! § < this.§<w§)
         {
            ++this.§]! §;
            mClip.gotoAndStop(this.§]! §);
            this.§,!!§ = mClip.currentLabel;
            if(this.§,!!§ != this.§>!O§)
            {
               _loc2_ = this.§,!!§;
               this.§<w§ = this.§]! §;
               this.§=!i§ = this.§<w§ * §4!W§;
            }
         }
         this.§]! § = this.§<w§;
         this.§>!O§ = this.§,!!§;
         return _loc2_;
      }
      
      public function §;5§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §9#§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §4!<§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §`!x§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§,!!§ = param1;
         this.§>!O§ = param1;
         this.§<w§ = mClip.currentFrame;
         this.§]! § = mClip.currentFrame;
         this.§=!i§ = mClip.currentFrame * §4!W§;
      }
      
      public function §9!d§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §3"$§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §?G§() : Boolean
      {
         return this.§'§;
      }
      
      public function set §?G§(param1:Boolean) : void
      {
         this.§'§ = param1;
      }
   }
}
