package §-B§
{
   import §;n§.§^q§;
   import flash.display.MovieClip;
   
   public class §="0§ extends §^q§
   {
      
      private static const §+!]§:Number = 1000 / 60;
       
      
      private var §>!w§:String;
      
      private var §"-§:String;
      
      private var §4!R§:int = 0;
      
      private var §=!f§:int = 0;
      
      private var §4J§:Number = 0;
      
      private var §;!P§:Boolean = false;
      
      public function §="0§(param1:XML, param2:§?!j§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §'!$§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§4J§ += param1;
         this.§=!f§ = this.§4J§ / §+!]§;
         while(this.§4!R§ < this.§=!f§)
         {
            ++this.§4!R§;
            mClip.gotoAndStop(this.§4!R§);
            this.§>!w§ = mClip.currentLabel;
            if(this.§>!w§ != this.§"-§)
            {
               _loc2_ = this.§>!w§;
               this.§=!f§ = this.§4!R§;
               this.§4J§ = this.§=!f§ * §+!]§;
            }
         }
         this.§4!R§ = this.§=!f§;
         this.§"-§ = this.§>!w§;
         return _loc2_;
      }
      
      public function §2!Q§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §>"9§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §;x§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §!!s§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§>!w§ = param1;
         this.§"-§ = param1;
         this.§=!f§ = mClip.currentFrame;
         this.§4!R§ = mClip.currentFrame;
         this.§4J§ = mClip.currentFrame * §+!]§;
      }
      
      public function §!!T§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §`"'§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §%![§() : Boolean
      {
         return this.§;!P§;
      }
      
      public function set §%![§(param1:Boolean) : void
      {
         this.§;!P§ = param1;
      }
   }
}
