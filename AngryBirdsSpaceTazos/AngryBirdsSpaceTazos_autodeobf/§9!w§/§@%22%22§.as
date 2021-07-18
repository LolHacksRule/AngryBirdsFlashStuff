package §9!w§
{
   import §'4§.§^g§;
   import §`!j§.§#b§;
   import §`!j§.§1U§;
   
   public class §@""§ extends §9!,§
   {
       
      
      public function §@""§(param1:§^g§, param2:§#b§, param3:Number = 1.0)
      {
         super(param1,param2,param3);
      }
      
      override protected function calculateCameraScale(param1:§1U§) : Number
      {
         return super.calculateCameraScale(param1) * 4 / 3;
      }
      
      override public function isOutOfCamera(param1:Number, param2:Number) : Boolean
      {
         if(param1 < §2!`§ - §=!%§ / 2 || param1 > §2!`§ + §=!%§ / 2)
         {
            return true;
         }
         if(param2 < §0!F§ - §=!%§ / 2 * 3 / 4)
         {
            return true;
         }
         if(param2 > §0!F§ + §=!%§ / 2 * 3 / 4)
         {
            return true;
         }
         return false;
      }
   }
}
