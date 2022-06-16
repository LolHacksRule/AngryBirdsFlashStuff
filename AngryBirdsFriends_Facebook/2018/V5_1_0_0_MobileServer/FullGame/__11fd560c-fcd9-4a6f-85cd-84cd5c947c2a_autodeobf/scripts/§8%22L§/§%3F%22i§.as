package §8"L§
{
   public class §?"i§ extends §9"3§
   {
       
      
      public function §?"i§()
      {
         super();
      }
      
      override public function getMaterial(param1:String) : §?"b§
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
