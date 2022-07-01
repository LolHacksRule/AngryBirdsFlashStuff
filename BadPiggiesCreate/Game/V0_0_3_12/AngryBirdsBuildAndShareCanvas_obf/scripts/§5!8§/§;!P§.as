package §5!8§
{
   import §^x§.§;_§;
   import flash.display.MovieClip;
   
   public class §;!P§ extends §;_§
   {
      
      private static const §9"!§:Number = 1000 / 60;
       
      
      private var §%!G§:String;
      
      private var §%"4§:String;
      
      private var §47§:int = 0;
      
      private var §=!Y§:int = 0;
      
      private var §8A§:Number = 0;
      
      private var §&n§:Boolean = false;
      
      public function §;!P§(param1:XML, param2:§+!?§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §,!v§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§8A§ += param1;
         this.§=!Y§ = this.§8A§ / §9"!§;
         while(this.§47§ < this.§=!Y§)
         {
            ++this.§47§;
            mClip.gotoAndStop(this.§47§);
            this.§%!G§ = mClip.currentLabel;
            if(this.§%!G§ != this.§%"4§)
            {
               _loc2_ = this.§%!G§;
               this.§=!Y§ = this.§47§;
               this.§8A§ = this.§=!Y§ * §9"!§;
            }
         }
         this.§47§ = this.§=!Y§;
         this.§%"4§ = this.§%!G§;
         return _loc2_;
      }
      
      public function §'!b§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §;i§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §8!,§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §@!"§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§%!G§ = param1;
         this.§%"4§ = param1;
         this.§=!Y§ = mClip.currentFrame;
         this.§47§ = mClip.currentFrame;
         this.§8A§ = mClip.currentFrame * §9"!§;
      }
      
      public function §`";§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §7!;§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §2"'§() : Boolean
      {
         return this.§&n§;
      }
      
      public function set §2"'§(param1:Boolean) : void
      {
         this.§&n§ = param1;
      }
   }
}
