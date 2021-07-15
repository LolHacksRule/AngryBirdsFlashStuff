package §+!!§
{
   import §8!K§.§1!R§;
   import §8!K§.§5!0§;
   import §@L§.§?!'§;
   
   public class §>Y§ extends §5"+§
   {
       
      
      public function §>Y§(param1:§?!'§, param2:§5!0§, param3:Number = 1.0)
      {
         super(param1,param2,param3);
      }
      
      override protected function calculateCameraScale(param1:§1!R§) : Number
      {
         return super.calculateCameraScale(param1);
      }
      
      override public function isOutOfCamera(param1:Number, param2:Number) : Boolean
      {
         if(param1 < §^!>§ - § a§ / 2 || param1 > §^!>§ + § a§ / 2)
         {
            return true;
         }
         if(param2 < §#[§ - § a§ / 2 * 3 / 4)
         {
            return true;
         }
         if(param2 > §#[§ + § a§ / 2 * 3 / 4)
         {
            return true;
         }
         return false;
      }
   }
}
