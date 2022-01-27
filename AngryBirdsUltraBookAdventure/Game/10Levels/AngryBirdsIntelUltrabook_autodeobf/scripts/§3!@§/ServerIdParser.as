package §3!@§
{
   import §<_§.§5!2§;
   import §]_§.§,v§;
   import §]_§.Item;
   
   public class ServerIdParser
   {
       
      
      public function ServerIdParser()
      {
         super();
      }
      
      public static function §?T§(items:Array) : String
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
            string += §+Y§(item.category) + item.sId;
            i++;
         }
         return string;
      }
      
      public static function §,1§(shortHand:String) : Array
      {
         var itemStr:String = null;
         var ob:Item = null;
         var arr:Array = shortHand.split("-");
         var returnArray:Array = [];
         for each(itemStr in arr)
         {
            ob = §9_§(itemStr);
            if(ob)
            {
               returnArray.push(ob);
            }
         }
         return returnArray;
      }
      
      public static function §9_§(shortHand:String) : Item
      {
         var category:Object = null;
         var item:Item = null;
         var categoryTag:String = shortHand.substr(0,1);
         var itemTag:String = shortHand.substr(1);
         var allItems:Array = §5!2§.§]W§().items;
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
      
      private static function §+Y§(categoryId:String) : String
      {
         var category:§,v§ = null;
         for each(category in §5!2§.§]W§().§+@§)
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
