package §^`§
{
   import §3w§.§1!!§;
   import §^B§.§1!b§;
   import §^B§.Item;
   
   public class ServerIdParser
   {
       
      
      public function ServerIdParser()
      {
         super();
      }
      
      public static function §@!-§(items:Array) : String
      {
         var item:Object = null;
         var string:String = "";
         var i:int = 0;
         for each(item in items)
         {
            if(i > 0)
            {
               string += "-";
            }
            string += §%5§(item.category) + item.sId;
            i++;
         }
         return string;
      }
      
      public static function §@E§(shortHand:String) : Array
      {
         var itemStr:String = null;
         var ob:Item = null;
         var arr:Array = shortHand.split("-");
         var returnArray:Array = [];
         for each(itemStr in arr)
         {
            ob = § 8§(itemStr);
            if(ob)
            {
               returnArray.push(ob);
            }
         }
         return returnArray;
      }
      
      public static function § 8§(shortHand:String) : Item
      {
         var category:Object = null;
         var item:Item = null;
         var categoryTag:String = shortHand.substr(0,1);
         var itemTag:String = shortHand.substr(1);
         var allItems:Array = §1!!§.§[!Y§().items;
         for each(category in allItems)
         {
            for each(item in category)
            {
               if(item.sId == itemTag)
               {
                  return item;
               }
            }
         }
         return null;
      }
      
      private static function §%5§(categoryId:String) : String
      {
         var category:§1!b§ = null;
         for each(category in §1!!§.§[!Y§().§,!#§)
         {
            if(category.name == categoryId)
            {
               return category.sid;
            }
         }
         return "";
      }
   }
}
