package §7"p§
{
   import §'G§.§3$§;
   import §'G§.§^"[§;
   
   public class §-"&§ extends §&"+§
   {
       
      
      private var §4n§:Number = 0;
      
      private var §8N§:Number = 0;
      
      private var §#!M§:Number = 0;
      
      public function §-"&§(param1:§^"[§, param2:§3$§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:Number = -1, param17:Boolean = false, param18:Number = 0)
      {
         var _loc19_:Number = Math.max(0,Math.min(param18,Math.random() * 2));
         var _loc20_:Number = Math.random() > 0.5 ? Number(1) : Number(-1);
         param6 += _loc19_ * _loc20_;
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17,"POWERUP_PARTICLE_BUBBLE");
      }
   }
}
