package §3h§
{
   import §1z§.§2#§;
   import §1z§.§5!R§;
   import §3"#§.§`"8§;
   
   public class §`!f§ extends §'`§
   {
       
      
      public function §`!f§(param1:§`"8§, param2:§2#§, param3:Number = 1.0)
      {
         super(param1,param2,param3);
      }
      
      override protected function calculateCameraScale(param1:§5!R§) : Number
      {
         return super.calculateCameraScale(param1) * 4 / 3;
      }
      
      override public function isOutOfCamera(param1:Number, param2:Number) : Boolean
      {
         if(param1 < §!6§ - §<9§ / 2 || param1 > §!6§ + §<9§ / 2)
         {
            return true;
         }
         if(param2 < §'! § - §<9§ / 2 * 3 / 4)
         {
            return true;
         }
         if(param2 > §'! § + §<9§ / 2 * 3 / 4)
         {
            return true;
         }
         return false;
      }
   }
}
