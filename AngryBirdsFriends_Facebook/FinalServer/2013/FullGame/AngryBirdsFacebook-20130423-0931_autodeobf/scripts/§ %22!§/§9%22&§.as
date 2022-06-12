package § "!§
{
   public class §9"&§ extends §8!x§
   {
      
      public static const §-"W§:String = "-1";
      
      public static const §#2§:String = "-2";
       
      
      public function §9"&§(param1:String)
      {
         var filenameMap:String = null;
         var filenameHashMap:Object = null;
         var timestampedFileName:String = null;
         var userId:String = param1;
         super();
         filenameMap = §%"S§.§!C§.stage.loaderInfo.parameters.assetsUrl;
         if(filenameMap != null && filenameMap != "")
         {
            try
            {
               filenameHashMap = JSON.parse(filenameMap);
            }
            catch(error:Error)
            {
               throw new Error("JSON parsing error:" + filenameMap);
            }
         }
         var folder:String = "/flash/images/";
         var image:String = "";
         switch(userId)
         {
            case §-"W§:
               image = "bot_red.png";
               break;
            case §#2§:
               image = "bot_yellow.png";
         }
         if(filenameHashMap && filenameHashMap[folder + image])
         {
            timestampedFileName = filenameHashMap[folder + image];
         }
         else
         {
            timestampedFileName = folder + image;
         }
         §"!a§ = §%"S§.§!C§.stage.loaderInfo.parameters.assetsRoot + timestampedFileName;
         load();
      }
   }
}
