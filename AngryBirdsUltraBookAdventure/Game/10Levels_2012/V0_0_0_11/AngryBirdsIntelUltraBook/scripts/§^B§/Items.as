package §^B§
{
   import §6b§.§^9§;
   
   public class Items
   {
      
      private static var mItemDataTable:XML;
       
      
      private var §<h§:Vector.<§1!b§> = null;
      
      private var §@6§:Vector.<String> = null;
      
      private var §4!W§:Array = null;
      
      public function Items()
      {
         super();
         this.§&N§();
      }
      
      public function get §#!h§() : Vector.<String>
      {
         return this.§@6§;
      }
      
      public function get §,!#§() : Vector.<§1!b§>
      {
         return this.§<h§;
      }
      
      private function §&N§() : void
      {
         var category:XML = null;
         var categoryName:String = null;
         var item:XML = null;
         var itemObj:Item = null;
         this.§<h§ = new Vector.<§1!b§>();
         this.§4!W§ = new Array();
         this.§@6§ = new Vector.<String>();
         mItemDataTable = §^9§.§1<§(Characters.mCharacterDataTableBin);
         for each(category in mItemDataTable.items.category)
         {
            categoryName = category.@id;
            this.§<h§.push(new §1!b§(categoryName,category.@sid));
            this.§4!W§[categoryName] = new Array();
            for each(item in category.item)
            {
               itemObj = new Item();
               itemObj.§<!B§ = item.@id;
               itemObj.sId = item.@sid;
               itemObj.mName = item.@name;
               itemObj.§%!C§ = item.@anchor;
               itemObj.§-!@§ = categoryName;
               if(this.§@6§.indexOf(itemObj.§%!C§) == -1)
               {
                  this.§@6§.push(itemObj.§%!C§);
               }
               this.§4!W§[categoryName].push(itemObj);
            }
         }
      }
      
      public function get items() : Array
      {
         return this.§4!W§;
      }
      
      public function §-t§(category:String) : Array
      {
         return this.§4!W§[category];
      }
      
      public function §&!i§(itemId:String) : Item
      {
         var category:§1!b§ = null;
         var categoryId:String = null;
         var item:Item = null;
         for each(category in this.§<h§)
         {
            categoryId = category.name;
            for each(item in this.§4!W§[categoryId])
            {
               if(item.§<!B§.toUpperCase() == itemId.toUpperCase())
               {
                  return item;
               }
            }
         }
         return null;
      }
   }
}
