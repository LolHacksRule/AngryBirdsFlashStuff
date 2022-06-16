package com.angrybirds.avatarcreator.utils
{
   import com.angrybirds.avatarcreator.AvatarCreatorModel;
   import com.angrybirds.avatarcreator.data.Category;
   import com.angrybirds.avatarcreator.data.Item;
   
   public class ServerIdParser
   {
       
      
      public function ServerIdParser()
      {
         super();
      }
      
      public static function parseToServerIdFormat(items:Array) : String
      {
         var item:Object = null;
         var string:* = "";
         var i:int = 0;
         for each(item in items)
         {
            if(i > 0)
            {
               string += "-";
            }
            string += parseCategoryId(item.category) + item.sId;
            i++;
         }
         return string;
      }
      
      public static function parseShortHandAvatarToArray(shortHand:String) : Array
      {
         var itemStr:String = null;
         var ob:Item = null;
         var arr:Array = shortHand.split("-");
         var returnArray:Array = [];
         for each(itemStr in arr)
         {
            ob = parseToItem(itemStr);
            if(ob)
            {
               returnArray.push(ob);
            }
         }
         return returnArray;
      }
      
      public static function parseToItem(shortHand:String) : Item
      {
         var category:Object = null;
         var item:Item = null;
         var categoryTag:String = shortHand.substr(0,1);
         if(!isNaN(Number(categoryTag)))
         {
            categoryTag = "";
         }
         var itemTag:String = shortHand.substr(categoryTag.length);
         var allItems:Array = AvatarCreatorModel.instance.items.allItems;
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
      
      private static function parseCategoryId(categoryId:String) : String
      {
         var category:Category = null;
         for each(category in AvatarCreatorModel.instance.items.categories)
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
