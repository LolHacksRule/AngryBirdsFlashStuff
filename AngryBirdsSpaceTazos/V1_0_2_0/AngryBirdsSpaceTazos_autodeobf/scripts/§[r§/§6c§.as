package §[r§
{
   import §;!0§.§!!X§;
   import §;!0§.§2!4§;
   import §?!<§.§'!1§;
   
   public class §6c§ extends § use§
   {
       
      
      public function §6c§(param1:§'!1§, param2:§!!X§, param3:Number = 1.0)
      {
         super(param1,param2,param3);
      }
      
      override protected function calculateCameraScale(param1:§2!4§) : Number
      {
         return super.calculateCameraScale(param1) * 4 / 3;
      }
      
      override public function isOutOfCamera(param1:Number, param2:Number) : Boolean
      {
         if(param1 < §&g§ - § !7§ / 2 || param1 > §&g§ + § !7§ / 2)
         {
            return true;
         }
         if(param2 < §`!`§ - § !7§ / 2 * 3 / 4)
         {
            return true;
         }
         if(param2 > §`!`§ + § !7§ / 2 * 3 / 4)
         {
            return true;
         }
         return false;
      }
   }
}
