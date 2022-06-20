package §%y§
{
   import §1#v§.§6"a§;
   
   public class Items
   {
      
      private static var §^#6§:XML;
       
      
      private var § !W§:Vector.<§+!l§> = null;
      
      private var §@Y§:Vector.<String> = null;
      
      private var §!$"§:Array = null;
      
      public function Items()
      {
         super();
         this.loadItems();
      }
      
      public function get §+?§() : Vector.<String>
      {
         return this.§@Y§;
      }
      
      public function get §?p§() : Vector.<§+!l§>
      {
         return this.§ !W§;
      }
      
      private function loadItems() : void
      {
         var _loc1_:XML = null;
         var _loc2_:String = null;
         var _loc3_:XML = null;
         var _loc4_:Item = null;
         this.§ !W§ = new Vector.<§+!l§>();
         this.§!$"§ = new Array();
         this.§@Y§ = new Vector.<String>();
         §^#6§ = §6"a§.§&!d§(§-#A§.§0"I§);
         for each(_loc1_ in §^#6§.items.category)
         {
            _loc2_ = _loc1_.@id;
            this.§ !W§.push(new §+!l§(_loc2_,_loc1_.@sid));
            this.§!$"§[_loc2_] = new Array();
            for each(_loc3_ in _loc1_.item)
            {
               (_loc4_ = new Item()).mId = _loc3_.@id;
               _loc4_.sId = _loc3_.@sid;
               _loc4_.§!I§ = _loc3_.@name;
               _loc4_.§%$A§ = _loc3_.@anchor;
               _loc4_.§>"r§ = _loc2_;
               _loc4_.§=!J§ = _loc1_.@sid;
               if(this.§@Y§.indexOf(_loc4_.§%$A§) == -1)
               {
                  this.§@Y§.push(_loc4_.§%$A§);
               }
               this.§!$"§[_loc2_].push(_loc4_);
            }
         }
      }
      
      public function get §`$=§() : Array
      {
         return this.§!$"§;
      }
      
      public function §,!U§(param1:String) : Array
      {
         return this.§!$"§[param1];
      }
      
      public function getItem(param1:String) : Item
      {
         var _loc2_:§+!l§ = null;
         var _loc3_:String = null;
         var _loc4_:Item = null;
         for each(_loc2_ in this.§ !W§)
         {
            _loc3_ = _loc2_.name;
            for each(_loc4_ in this.§!$"§[_loc3_])
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
