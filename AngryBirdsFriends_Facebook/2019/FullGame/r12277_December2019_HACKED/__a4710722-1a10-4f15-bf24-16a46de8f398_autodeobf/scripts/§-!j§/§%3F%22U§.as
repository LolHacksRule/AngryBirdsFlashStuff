package §-!j§
{
   public class §?"U§ extends §1$2§
   {
       
      
      public function §?"U§()
      {
         super();
      }
      
      override public function getMaterial(param1:String) : §5!,§
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
