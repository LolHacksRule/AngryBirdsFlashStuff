package §]_§
{
   import §<u§.§<y§;
   
   public class Items
   {
      
      private static var mItemDataTable:XML;
       
      
      private var §^! §:Vector.<§,v§> = null;
      
      private var §]9§:Vector.<String> = null;
      
      private var §]6§:Array = null;
      
      public function Items()
      {
         super();
         this.§ !i§();
      }
      
      public function get §4!3§() : Vector.<String>
      {
         return this.§]9§;
      }
      
      public function get §+@§() : Vector.<§,v§>
      {
         return this.§^! §;
      }
      
      private function § !i§() : void
      {
         var category:XML = null;
         var categoryName:String = null;
         var item:XML = null;
         var itemObj:Item = null;
         this.§^! § = new Vector.<§,v§>();
         this.§]6§ = new Array();
         this.§]9§ = new Vector.<String>();
         mItemDataTable = §<y§.§1P§(Characters.mCharacterDataTableBin);
         for each(category in mItemDataTable.items.category)
         {
            categoryName = category.@id;
            this.§^! §.push(new §,v§(categoryName,category.@sid));
            this.§]6§[categoryName] = new Array();
            for each(item in category.item)
            {
               itemObj = new Item();
               itemObj.§7!D§ = item.@id;
               itemObj.sId = item.@sid;
               itemObj.mName = item.@name;
               itemObj.§-o§ = item.@anchor;
               itemObj.§[L§ = categoryName;
               if(this.§]9§.indexOf(itemObj.§-o§) == -1)
               {
                  this.§]9§.push(itemObj.§-o§);
               }
               this.§]6§[categoryName].push(itemObj);
            }
         }
      }
      
      public function get items() : Array
      {
         return this.§]6§;
      }
      
      public function §#N§(category:String) : Array
      {
         return this.§]6§[category];
      }
      
      public function §-`§(itemId:String) : Item
      {
         var category:§,v§ = null;
         var categoryId:String = null;
         var item:Item = null;
         for each(category in this.§^! §)
         {
            categoryId = category.name;
            for each(item in this.§]6§[categoryId])
            {
               if(item.§7!D§.toUpperCase() == itemId.toUpperCase())
               {
                  return item;
               }
            }
         }
         return null;
      }
   }
}
