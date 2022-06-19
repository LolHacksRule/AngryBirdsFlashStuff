package §#v§
{
   import §!!R§.Sprite;
   import §?!0§.b2World;
   import §?'§.§'L§;
   import §?'§.§9N§;
   
   public class §<!V§ extends §!!!§
   {
       
      
      public function §<!V§(param1:§-!7§, param2:Sprite, param3:b2World, param4:§9N§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,true,param10);
      }
      
      override public function activateSpecialPower(param1:§-!7§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         §5R§(§'L§.§^z§);
         return true;
      }
   }
}
