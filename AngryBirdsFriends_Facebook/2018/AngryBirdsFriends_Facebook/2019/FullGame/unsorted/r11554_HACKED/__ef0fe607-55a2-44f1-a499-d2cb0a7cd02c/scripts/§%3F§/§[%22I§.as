package §?§#3
{
   public class §["I§ extends §9j§
   {
       
      
      public function §["I§()
      {
         super();
      }
      
      override public function getMaterial(param1:String) : §7!$§
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
