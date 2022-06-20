package § #s§
{
   import §9#K§.§#D§;
   
   public class Items
   {
      
      private static var § <§:XML;
       
      
      private var §"!r§:Vector.<§%#5§> = null;
      
      private var §'"U§:Vector.<String> = null;
      
      private var §,#i§:Array = null;
      
      public function Items()
      {
         super();
         this.loadItems();
      }
      
      public function get §-%§() : Vector.<String>
      {
         return this.§'"U§;
      }
      
      public function get §%#Z§() : Vector.<§%#5§>
      {
         return this.§"!r§;
      }
      
      private function loadItems() : void
      {
         var _loc1_:XML = null;
         var _loc2_:String = null;
         var _loc3_:XML = null;
         var _loc4_:Item = null;
         this.§"!r§ = new Vector.<§%#5§>();
         this.§,#i§ = new Array();
         this.§'"U§ = new Vector.<String>();
         § <§ = §#D§.§%"l§(§<"@§.§2!3§);
         for each(_loc1_ in § <§.items.category)
         {
            _loc2_ = _loc1_.@id;
            this.§"!r§.push(new §%#5§(_loc2_,_loc1_.@sid));
            this.§,#i§[_loc2_] = new Array();
            for each(_loc3_ in _loc1_.item)
            {
               (_loc4_ = new Item()).mId = _loc3_.@id;
               _loc4_.sId = _loc3_.@sid;
               _loc4_.§-!O§ = _loc3_.@name;
               _loc4_.§;$7§ = _loc3_.@anchor;
               _loc4_.§1! § = _loc2_;
               _loc4_.§+"8§ = _loc1_.@sid;
               if(this.§'"U§.indexOf(_loc4_.§;$7§) == -1)
               {
                  this.§'"U§.push(_loc4_.§;$7§);
               }
               this.§,#i§[_loc2_].push(_loc4_);
            }
         }
      }
      
      public function get §?4§() : Array
      {
         return this.§,#i§;
      }
      
      public function §%Z§(param1:String) : Array
      {
         return this.§,#i§[param1];
      }
      
      public function getItem(param1:String) : Item
      {
         var _loc2_:§%#5§ = null;
         var _loc3_:String = null;
         var _loc4_:Item = null;
         for each(_loc2_ in this.§"!r§)
         {
            _loc3_ = _loc2_.name;
            for each(_loc4_ in this.§,#i§[_loc3_])
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
