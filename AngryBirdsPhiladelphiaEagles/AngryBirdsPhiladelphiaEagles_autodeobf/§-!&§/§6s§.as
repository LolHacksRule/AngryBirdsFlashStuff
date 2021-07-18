package §-!&§
{
   import § N§.Sprite;
   import §9T§.§1r§;
   import §9T§.§97§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §6s§ extends §1!"§
   {
       
      
      public function §6s§(param1:§20§, param2:Sprite, param3:b2World, param4:§1r§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§20§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         §[!5§(§97§.§]!4§);
         return true;
      }
   }
}
