package §;"+§
{
   import §<" §.§]!g§;
   import §>P§.§-U§;
   import flash.display.MovieClip;
   
   public class §0?§ extends §-U§
   {
      
      private static const §@E§:Number = 1000 / 60;
       
      
      private var §[!e§:String;
      
      private var §;!Q§:String;
      
      private var §<!`§:int = 0;
      
      private var §]!1§:int = 0;
      
      private var §#""§:Number = 0;
      
      private var §7!R§:Boolean = false;
      
      public function §0?§(param1:XML, param2:§^!i§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §]!g§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function §`R§(param1:Number) : String
      {
         var _loc2_:String = null;
         this.§#""§ += param1;
         this.§]!1§ = this.§#""§ / §@E§;
         while(this.§<!`§ < this.§]!1§)
         {
            ++this.§<!`§;
            mClip.gotoAndStop(this.§<!`§);
            this.§[!e§ = mClip.currentLabel;
            if(this.§[!e§ != this.§;!Q§)
            {
               _loc2_ = this.§[!e§;
               this.§]!1§ = this.§<!`§;
               this.§#""§ = this.§]!1§ * §@E§;
            }
         }
         this.§<!`§ = this.§]!1§;
         this.§;!Q§ = this.§[!e§;
         return _loc2_;
      }
      
      public function §6!r§(param1:int) : void
      {
         mClip.gotoAndStop(param1);
      }
      
      public function §&!b§(param1:int) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §2"6§(param1:String) : void
      {
         mClip.gotoAndPlay(param1);
      }
      
      public function §^w§(param1:String) : void
      {
         mClip.gotoAndStop(param1);
         this.§[!e§ = param1;
         this.§;!Q§ = param1;
         this.§]!1§ = mClip.currentFrame;
         this.§<!`§ = mClip.currentFrame;
         this.§#""§ = mClip.currentFrame * §@E§;
      }
      
      public function §!$§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §^!G§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §'_§() : Boolean
      {
         return this.§7!R§;
      }
      
      public function set §'_§(param1:Boolean) : void
      {
         this.§7!R§ = param1;
      }
   }
}
