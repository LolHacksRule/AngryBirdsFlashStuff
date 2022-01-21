package §@!^§
{
   import §#!G§.§,!6§;
   import §&!!§.§<!'§;
   import §2![§.Sprite;
   import §]k§.§2!'§;
   
   public class §6!Z§ extends §,!6§
   {
       
      
      public var loop:Boolean = false;
      
      private var §"!§:Number = 0;
      
      public function §6!Z§(param1:§2!'§, param2:Sprite, param3:§<!'§, param4:Number)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = §#l§ * param1;
         if(this.loop)
         {
            if(-_loc3_ + this.§"!§ + §2T§ < 0)
            {
               this.§"!§ += §2T§;
            }
            else if(-_loc3_ + this.§"!§ - §2T§ > §2T§)
            {
               this.§"!§ -= §2T§;
            }
         }
         §%!l§.x = -_loc3_ + this.§"!§;
         §%!l§.y = -param2;
         §0d§();
      }
   }
}
