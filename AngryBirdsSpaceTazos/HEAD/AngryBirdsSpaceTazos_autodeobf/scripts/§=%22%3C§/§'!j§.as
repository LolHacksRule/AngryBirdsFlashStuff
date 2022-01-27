package §="<§
{
   import §#R§.§%!S§;
   import §7!6§.§^l§;
   import flash.display.MovieClip;
   
   public class §'!j§ extends §^l§
   {
      
      private static const §""D§:Number = 1000 / 60;
       
      
      private var §]!i§:String;
      
      private var §=X§:String;
      
      private var §#!l§:int = 0;
      
      private var §;"#§:int = 0;
      
      private var §`!1§:Number = 0;
      
      private var §8"!§:Boolean = false;
      
      public function §'!j§(param1:XML, param2:§,"$§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §%!S§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function §;l§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§`!1§ += param1;
         this.§;"#§ = this.§`!1§ / §""D§;
         while(this.§#!l§ < this.§;"#§)
         {
            ++this.§#!l§;
            mClip.gotoAndStop(this.§#!l§);
            this.§]!i§ = mClip.currentLabel;
            if(this.§]!i§ != this.§=X§)
            {
               _loc2_ = this.§]!i§;
               this.§;"#§ = this.§#!l§;
               this.§`!1§ = this.§;"#§ * §""D§;
            }
         }
         this.§#!l§ = this.§;"#§;
         this.§=X§ = this.§]!i§;
         return _loc2_;
      }
      
      public function §;!-§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §1m§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §6!N§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §`!h§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§]!i§ = param1;
         this.§=X§ = param1;
         this.§;"#§ = mClip.currentFrame;
         this.§#!l§ = mClip.currentFrame;
         this.§`!1§ = mClip.currentFrame * §""D§;
      }
      
      public function §`!§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §=m§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §6!L§() : Boolean
      {
         return this.§8"!§;
      }
      
      public function set §6!L§(param1:Boolean) : void
      {
         this.§8"!§ = param1;
      }
   }
}
