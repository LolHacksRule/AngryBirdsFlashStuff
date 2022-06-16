package §-!T§
{
   import §]!6§.§="p§;
   
   public class Items
   {
      
      private static var §4W§:XML;
       
      
      private var §<a§:Vector.<§[#D§> = null;
      
      private var § w§:Vector.<String> = null;
      
      private var §6$!§:Array = null;
      
      public function Items()
      {
         super();
         this.loadItems();
      }
      
      public function get §#t§() : Vector.<String>
      {
         return this.§ w§;
      }
      
      public function get §[!m§() : Vector.<§[#D§>
      {
         return this.§<a§;
      }
      
      private function loadItems() : void
      {
         var _loc1_:XML = null;
         var _loc2_:String = null;
         var _loc3_:XML = null;
         var _loc4_:Item = null;
         this.§<a§ = new Vector.<§[#D§>();
         this.§6$!§ = new Array();
         this.§ w§ = new Vector.<String>();
         §4W§ = §="p§.§+@§(§3!"§.§1!H§);
         for each(_loc1_ in §4W§.items.category)
         {
            _loc2_ = _loc1_.@id;
            this.§<a§.push(new §[#D§(_loc2_,_loc1_.@sid));
            this.§6$!§[_loc2_] = new Array();
            for each(_loc3_ in _loc1_.item)
            {
               (_loc4_ = new Item()).mId = _loc3_.@id;
               _loc4_.sId = _loc3_.@sid;
               _loc4_.§=q§ = _loc3_.@name;
               _loc4_.§ =§ = _loc3_.@anchor;
               _loc4_.§=#s§ = _loc2_;
               _loc4_.§?"A§ = _loc1_.@sid;
               if(this.§ w§.indexOf(_loc4_.§ =§) == -1)
               {
                  this.§ w§.push(_loc4_.§ =§);
               }
               this.§6$!§[_loc2_].push(_loc4_);
            }
         }
      }
      
      public function get §'!;§() : Array
      {
         return this.§6$!§;
      }
      
      public function §1#2§(param1:String) : Array
      {
         return this.§6$!§[param1];
      }
      
      public function getItem(param1:String) : Item
      {
         var _loc2_:§[#D§ = null;
         var _loc3_:String = null;
         var _loc4_:Item = null;
         for each(_loc2_ in this.§<a§)
         {
            _loc3_ = _loc2_.name;
            for each(_loc4_ in this.§6$!§[_loc3_])
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
