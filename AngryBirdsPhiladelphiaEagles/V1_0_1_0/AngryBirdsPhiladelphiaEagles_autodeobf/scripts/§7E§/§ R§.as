package §7E§
{
   import § !N§.§]!P§;
   import § !N§.§`v§;
   import §3H§.DisplayObject;
   
   public class § R§ extends §^A§
   {
       
      
      public function § R§(param1:§]!P§, param2:§`v§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17);
      }
      
      override protected function createVisuals() : void
      {
         var _loc1_:int = 0;
         var _loc2_:DisplayObject = null;
         if(§<!?§ == §1!B§ && §5_§ == §!2§)
         {
            §&;§ = 1;
            _loc1_ = Math.floor(Math.random() * (3 - 1 + 1)) + 1;
            createParticle("PARTICLE_PHILADELPHIA_EAGLE_" + _loc1_);
            _loc2_ = this.§'"§;
            if(_loc2_)
            {
               _loc2_.rotation = Math.random() * 360 / 180 * Math.PI;
            }
            return;
         }
         super.createVisuals();
      }
   }
}
