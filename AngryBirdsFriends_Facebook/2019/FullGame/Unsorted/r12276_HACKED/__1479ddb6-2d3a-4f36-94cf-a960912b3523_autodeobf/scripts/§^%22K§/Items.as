package §^"K§
{
   import §#"3§.§"$!§;
   
   public class Items
   {
      
      private static var §4"+§:XML;
       
      
      private var §75§:Vector.<§5!t§> = null;
      
      private var §@#§:Vector.<String> = null;
      
      private var §#z§:Array = null;
      
      public function Items()
      {
         super();
         this.loadItems();
      }
      
      public function get §#"j§() : Vector.<String>
      {
         return this.§@#§;
      }
      
      public function get §4+§() : Vector.<§5!t§>
      {
         return this.§75§;
      }
      
      private function loadItems() : void
      {
         var _loc1_:XML = null;
         var _loc2_:String = null;
         var _loc3_:XML = null;
         var _loc4_:Item = null;
         this.§75§ = new Vector.<§5!t§>();
         this.§#z§ = new Array();
         this.§@#§ = new Vector.<String>();
         §4"+§ = §"$!§.§0!T§(§'"V§.§@#,§);
         for each(_loc1_ in §4"+§.items.category)
         {
            _loc2_ = _loc1_.@id;
            this.§75§.push(new §5!t§(_loc2_,_loc1_.@sid));
            this.§#z§[_loc2_] = new Array();
            for each(_loc3_ in _loc1_.item)
            {
               (_loc4_ = new Item()).mId = _loc3_.@id;
               _loc4_.sId = _loc3_.@sid;
               _loc4_.§-#3§ = _loc3_.@name;
               _loc4_.§0!^§ = _loc3_.@anchor;
               _loc4_.§7#n§ = _loc2_;
               _loc4_.§0G§ = _loc1_.@sid;
               if(this.§@#§.indexOf(_loc4_.§0!^§) == -1)
               {
                  this.§@#§.push(_loc4_.§0!^§);
               }
               this.§#z§[_loc2_].push(_loc4_);
            }
         }
      }
      
      public function get §3##§() : Array
      {
         return this.§#z§;
      }
      
      public function §7#6§(param1:String) : Array
      {
         return this.§#z§[param1];
      }
      
      public function getItem(param1:String) : Item
      {
         var _loc2_:§5!t§ = null;
         var _loc3_:String = null;
         var _loc4_:Item = null;
         for each(_loc2_ in this.§75§)
         {
            _loc3_ = _loc2_.name;
            for each(_loc4_ in this.§#z§[_loc3_])
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
