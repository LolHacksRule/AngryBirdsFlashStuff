package §3!M§
{
   import §!!S§.§>a§;
   import flash.display.MovieClip;
   
   public class §&V§ extends §>a§
   {
      
      private static const §`!Q§:Number = 1000 / 60;
       
      
      private var §!b§:String;
      
      private var §0!G§:String;
      
      private var §0a§:int = 0;
      
      private var §%i§:int = 0;
      
      private var §]o§:Number = 0;
      
      private var §%a§:Boolean = false;
      
      public function §&V§(param1:XML, param2:§7^§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
      }
      
      public function §[A§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§]o§ += param1;
         this.§%i§ = this.§]o§ / §`!Q§;
         while(this.§0a§ < this.§%i§)
         {
            ++this.§0a§;
            mClip.gotoAndStop(this.§0a§);
            this.§!b§ = mClip.currentLabel;
            if(this.§!b§ != this.§0!G§)
            {
               _loc2_ = this.§!b§;
               this.§%i§ = this.§0a§;
               this.§]o§ = this.§%i§ * §`!Q§;
            }
         }
         this.§0a§ = this.§%i§;
         this.§0!G§ = this.§!b§;
         return _loc2_;
      }
      
      public function §55§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §6S§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §0L§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §!<§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§!b§ = param1;
         this.§0!G§ = param1;
         this.§%i§ = mClip.currentFrame;
         this.§0a§ = mClip.currentFrame;
         this.§]o§ = mClip.currentFrame * §`!Q§;
      }
      
      public function §4e§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §#§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §6F§() : Boolean
      {
         return this.§%a§;
      }
      
      public function set §6F§(param1:Boolean) : void
      {
         this.§%a§ = param1;
      }
   }
}
