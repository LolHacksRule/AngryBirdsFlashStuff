package §@`§
{
   import §6"p§.§1$"§;
   
   public class Items
   {
      
      private static var §,$9§:XML;
       
      
      private var §5#O§:Vector.<§7a§> = null;
      
      private var §#"u§:Vector.<String> = null;
      
      private var §2p§:Array = null;
      
      public function Items()
      {
         super();
         this.loadItems();
      }
      
      public function get §-#s§() : Vector.<String>
      {
         return this.§#"u§;
      }
      
      public function get §]"<§() : Vector.<§7a§>
      {
         return this.§5#O§;
      }
      
      private function loadItems() : void
      {
         var _loc1_:XML = null;
         var _loc2_:String = null;
         var _loc3_:XML = null;
         var _loc4_:Item = null;
         this.§5#O§ = new Vector.<§7a§>();
         this.§2p§ = new Array();
         this.§#"u§ = new Vector.<String>();
         §,$9§ = §1$"§.§%Z§(§=!1§.§0H§);
         for each(_loc1_ in §,$9§.items.category)
         {
            _loc2_ = _loc1_.@id;
            this.§5#O§.push(new §7a§(_loc2_,_loc1_.@sid));
            this.§2p§[_loc2_] = new Array();
            for each(_loc3_ in _loc1_.item)
            {
               (_loc4_ = new Item()).mId = _loc3_.@id;
               _loc4_.sId = _loc3_.@sid;
               _loc4_.§&$"§ = _loc3_.@name;
               _loc4_.§^F§ = _loc3_.@anchor;
               _loc4_.§'!P§ = _loc2_;
               _loc4_.§@!P§ = _loc1_.@sid;
               if(this.§#"u§.indexOf(_loc4_.§^F§) == -1)
               {
                  this.§#"u§.push(_loc4_.§^F§);
               }
               this.§2p§[_loc2_].push(_loc4_);
            }
         }
      }
      
      public function get §8K§() : Array
      {
         return this.§2p§;
      }
      
      public function §'$C§(param1:String) : Array
      {
         return this.§2p§[param1];
      }
      
      public function getItem(param1:String) : Item
      {
         var _loc2_:§7a§ = null;
         var _loc3_:String = null;
         var _loc4_:Item = null;
         for each(_loc2_ in this.§5#O§)
         {
            _loc3_ = _loc2_.name;
            for each(_loc4_ in this.§2p§[_loc3_])
            {
               if(_loc4_.mId.toUpperCase() == param1.toUpperCase())
               {
                  return _loc4_;
               }
            }
         }
         return null;
      }
   }
}
