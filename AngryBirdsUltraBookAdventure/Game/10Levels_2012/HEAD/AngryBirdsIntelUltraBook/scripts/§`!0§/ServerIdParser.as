package §`!0§
{
   import §;0§.§,!P§;
   import §;0§.Item;
   import §[c§.§5!?§;
   
   public class ServerIdParser
   {
       
      
      public function ServerIdParser()
      {
         super();
      }
      
      public static function §'! §(items:Array) : String
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
            string += §;D§(item.category) + item.sId;
            i++;
         }
         return string;
      }
      
      public static function §9!&§(shortHand:String) : Array
      {
         var itemStr:String = null;
         var ob:Item = null;
         var arr:Array = shortHand.split("-");
         var returnArray:Array = [];
         for each(itemStr in arr)
         {
            ob = §5^§(itemStr);
            if(ob)
            {
               returnArray.push(ob);
            }
         }
         return returnArray;
      }
      
      public static function §5^§(shortHand:String) : Item
      {
         var category:Object = null;
         var item:Item = null;
         var categoryTag:String = shortHand.substr(0,1);
         var itemTag:String = shortHand.substr(1);
         var allItems:Array = §5!?§.§'%§().items;
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
      
      private static function §;D§(categoryId:String) : String
      {
         var category:§,!P§ = null;
         for each(category in §5!?§.§'%§().§if§)
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
