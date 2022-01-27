package §&!3§
{
   import §3R§.§1!R§;
   import §4",§.§3v§;
   import §4",§.§8"6§;
   
   public class §5!f§ extends §0!W§
   {
       
      
      public function §5!f§(param1:§1!R§, param2:§3v§, param3:Number = 1.0)
      {
         super(param1,param2,param3);
      }
      
      override protected function calculateCameraScale(param1:§8"6§) : Number
      {
         return super.calculateCameraScale(param1) * 4 / 3;
      }
      
      override public function isOutOfCamera(param1:Number, param2:Number) : Boolean
      {
         if(param1 < §`!#§ - §<"<§ / 2 || param1 > §`!#§ + §<"<§ / 2)
         {
            return true;
         }
         if(param2 < §'"%§ - §<"<§ / 2 * 3 / 4)
         {
            return true;
         }
         if(param2 > §'"%§ + §<"<§ / 2 * 3 / 4)
         {
            return true;
         }
         return false;
      }
   }
}
