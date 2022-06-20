package com.rovio.assets
{
   public class TextManager
   {
      
      public static const DEBUG_MODE:Boolean = false;
      
      private static var texts:Array;
       
      
      public function TextManager()
      {
         super();
      }
      
      public static function init(data:XMLList) : void
      {
         var id:String = null;
         var translatedText:String = null;
         texts = new Array();
         for(var i:Number = 0; i < data.length(); i++)
         {
            id = data[i].@id;
            translatedText = data[i][0];
            texts[id] = translatedText;
         }
      }
      
      public static function getText(id:String) : String
      {
         if(DEBUG_MODE && texts[id] == null)
         {
            return "Missing text: " + id;
         }
         return texts[id];
      }
   }
}
