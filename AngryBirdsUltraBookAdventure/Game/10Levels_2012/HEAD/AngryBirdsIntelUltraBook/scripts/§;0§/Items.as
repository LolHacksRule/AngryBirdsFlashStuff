package §;0§
{
   import §'N§.§0d§;
   
   public class Items
   {
      
      private static var mItemDataTable:XML;
       
      
      private var §1§:Vector.<§,!P§> = null;
      
      private var §+l§:Vector.<String> = null;
      
      private var § !]§:Array = null;
      
      public function Items()
      {
         super();
         this.§&a§();
      }
      
      public function get §]K§() : Vector.<String>
      {
         return this.§+l§;
      }
      
      public function get §if§() : Vector.<§,!P§>
      {
         return this.§1§;
      }
      
      private function §&a§() : void
      {
         var category:XML = null;
         var categoryName:String = null;
         var item:XML = null;
         var itemObj:Item = null;
         this.§1§ = new Vector.<§,!P§>();
         this.§ !]§ = new Array();
         this.§+l§ = new Vector.<String>();
         mItemDataTable = §0d§.§@A§(Characters.mCharacterDataTableBin);
         for each(category in mItemDataTable.items.category)
         {
            categoryName = category.@id;
            this.§1§.push(new §,!P§(categoryName,category.@sid));
            this.§ !]§[categoryName] = new Array();
            for each(item in category.item)
            {
               itemObj = new Item();
               itemObj.§^!,§ = item.@id;
               itemObj.sId = item.@sid;
               itemObj.mName = item.@name;
               itemObj.§61§ = item.@anchor;
               itemObj.§`5§ = categoryName;
               if(this.§+l§.indexOf(itemObj.§61§) == -1)
               {
                  this.§+l§.push(itemObj.§61§);
               }
               this.§ !]§[categoryName].push(itemObj);
            }
         }
      }
      
      public function get items() : Array
      {
         return this.§ !]§;
      }
      
      public function §4a§(category:String) : Array
      {
         return this.§ !]§[category];
      }
      
      public function §><§(itemId:String) : Item
      {
         var category:§,!P§ = null;
         var categoryId:String = null;
         var item:Item = null;
         for each(category in this.§1§)
         {
            categoryId = category.name;
            for each(item in this.§ !]§[categoryId])
            {
               if(item.§^!,§.toUpperCase() == itemId.toUpperCase())
               {
                  return item;
               }
            }
         }
         return null;
      }
   }
}
