package §throw§
{
   import §#N§.§=4§;
   import §&[§.§&!m§;
   import §2!g§.Sprite;
   import §5!!§.§77§;
   
   public class §-c§ extends §77§
   {
       
      
      public var loop:Boolean = false;
      
      private var §9D§:Number = 0;
      
      public function §-c§(param1:§=4§, param2:Sprite, param3:§&!m§, param4:Number)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = §%W§ * param1;
         if(this.loop)
         {
            if(-_loc3_ + this.§9D§ + §>8§ < 0)
            {
               this.§9D§ += §>8§;
            }
            else if(-_loc3_ + this.§9D§ - §>8§ > §>8§)
            {
               this.§9D§ -= §>8§;
            }
         }
         §[8§.x = -_loc3_ + this.§9D§;
         §[8§.y = -param2;
         §6!4§();
      }
   }
}
