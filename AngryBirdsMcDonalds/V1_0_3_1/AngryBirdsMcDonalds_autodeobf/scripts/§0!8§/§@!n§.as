package §0!8§
{
   import § !%§.§7!>§;
   import § 6§.§=e§;
   import §&c§.Sprite;
   import §]o§.§=1§;
   
   public class §@!n§ extends §=1§
   {
       
      
      public var loop:Boolean = false;
      
      private var §[M§:Number = 0;
      
      public function §@!n§(param1:§=e§, param2:Sprite, param3:§7!>§, param4:Number)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = §<Q§ * param1;
         if(this.loop)
         {
            if(-_loc3_ + this.§[M§ + §-S§ < 0)
            {
               this.§[M§ += §-S§;
            }
            else if(-_loc3_ + this.§[M§ - §-S§ > §-S§)
            {
               this.§[M§ -= §-S§;
            }
         }
         §7U§.x = -_loc3_ + this.§[M§;
         §7U§.y = -param2;
         §6!V§();
      }
   }
}
