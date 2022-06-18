package §7"&§
{
   public class §##O§ extends §!$+§
   {
       
      
      public function §##O§()
      {
         super();
      }
      
      override public function getMaterial(param1:String) : §^"Q§
      {
         switch(param1)
         {
            case "wood":
               param1 = "Material_Block_Wood";
               break;
            case "stone":
            case "rock":
               param1 = "Material_Block_Stone";
               break;
            case "ice":
            case "light":
               param1 = "Material_Block_Ice";
               break;
            case "snow":
               param1 = "Material_Block_Snow";
         }
         return super.getMaterial(param1);
      }
   }
}
