package §!i§
{
   import §4!t§.§>r§;
   import §<!#§.§""§;
   import flash.display.MovieClip;
   
   public class §^!d§ extends §>r§
   {
      
      private static const § "8§:Number = 1000 / 60;
       
      
      private var §,"6§:String;
      
      private var §7"5§:String;
      
      private var §,!'§:int = 0;
      
      private var § [§:int = 0;
      
      private var §^!§:Number = 0;
      
      private var §9B§:Boolean = false;
      
      public function §^!d§(param1:XML, param2:§1s§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §""§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function §1x§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§^!§ += param1;
         this.§ [§ = this.§^!§ / § "8§;
         while(this.§,!'§ < this.§ [§)
         {
            ++this.§,!'§;
            mClip.gotoAndStop(this.§,!'§);
            this.§,"6§ = mClip.currentLabel;
            if(this.§,"6§ != this.§7"5§)
            {
               _loc2_ = this.§,"6§;
               this.§ [§ = this.§,!'§;
               this.§^!§ = this.§ [§ * § "8§;
            }
         }
         this.§,!'§ = this.§ [§;
         this.§7"5§ = this.§,"6§;
         return _loc2_;
      }
      
      public function §9Z§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §#!<§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §[q§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §6!L§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§,"6§ = param1;
         this.§7"5§ = param1;
         this.§ [§ = mClip.currentFrame;
         this.§,!'§ = mClip.currentFrame;
         this.§^!§ = mClip.currentFrame * § "8§;
      }
      
      public function §`!6§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §]E§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §`]§() : Boolean
      {
         return this.§9B§;
      }
      
      public function set §`]§(param1:Boolean) : void
      {
         this.§9B§ = param1;
      }
   }
}
