package com.angrybirds.data
{
   public class OpenGraphData
   {
      
      private static var sData:Object;
      
      public static const BRAG:String = "OGBrag";
      
      public static const INVITE:String = "OGInvite";
      
      public static const MYSTERY_GIFT:String = "OGMysteryGift";
      
      public static const CHALLENGE_TO_TOURNAMENT:String = "OGChallenge";
       
      
      public function OpenGraphData()
      {
         super();
      }
      
      public static function injectData(data:Object) : void
      {
         sData = data;
      }
      
      public static function getObjectId(url:String) : String
      {
         var key:Object = null;
         if(sData)
         {
            for each(key in sData)
            {
               if(key.name == url)
               {
                  return key.id;
               }
            }
         }
         return null;
      }
   }
}
