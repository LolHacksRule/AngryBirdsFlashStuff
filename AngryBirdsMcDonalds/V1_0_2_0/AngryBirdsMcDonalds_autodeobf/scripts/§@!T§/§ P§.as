package §@!T§
{
   import §5!l§.§ !D§;
   import §5x§.Sprite;
   import §6!X§.§!'§;
   import §]6§.§<!P§;
   
   public class § P§ extends §!'§
   {
       
      
      public var loop:Boolean = false;
      
      private var §9!P§:Number = 0;
      
      public function § P§(param1:§<!P§, param2:Sprite, param3:§ !D§, param4:Number)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = §8!m§ * param1;
         if(this.loop)
         {
            if(-_loc3_ + this.§9!P§ + §`!]§ < 0)
            {
               this.§9!P§ += §`!]§;
            }
            else if(-_loc3_ + this.§9!P§ - §`!]§ > §`!]§)
            {
               this.§9!P§ -= §`!]§;
            }
         }
         §`n§.x = -_loc3_ + this.§9!P§;
         §`n§.y = -param2;
         §1!6§();
      }
   }
}
