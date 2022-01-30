package §@#§
{
   import §?!4§.§^!S§;
   import §[!b§.§]"-§;
   import flash.display.MovieClip;
   
   public class §5!"§ extends §]"-§
   {
      
      private static const §9!S§:Number = 1000 / 60;
       
      
      private var §9S§:String;
      
      private var §93§:String;
      
      private var §5t§:int = 0;
      
      private var §<!v§:int = 0;
      
      private var §6Q§:Number = 0;
      
      private var §25§:Boolean = false;
      
      public function §5!"§(param1:XML, param2:§9!'§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §^!S§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function §=!x§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§6Q§ += param1;
         this.§<!v§ = this.§6Q§ / §9!S§;
         while(this.§5t§ < this.§<!v§)
         {
            ++this.§5t§;
            mClip.gotoAndStop(this.§5t§);
            this.§9S§ = mClip.currentLabel;
            if(this.§9S§ != this.§93§)
            {
               _loc2_ = this.§9S§;
               this.§<!v§ = this.§5t§;
               this.§6Q§ = this.§<!v§ * §9!S§;
            }
         }
         this.§5t§ = this.§<!v§;
         this.§93§ = this.§9S§;
         return _loc2_;
      }
      
      public function §2T§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §4"+§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §]!#§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §;!z§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§9S§ = param1;
         this.§93§ = param1;
         this.§<!v§ = mClip.currentFrame;
         this.§5t§ = mClip.currentFrame;
         this.§6Q§ = mClip.currentFrame * §9!S§;
      }
      
      public function §&!S§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §#!q§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §="§() : Boolean
      {
         return this.§25§;
      }
      
      public function set §="§(param1:Boolean) : void
      {
         this.§25§ = param1;
      }
   }
}
