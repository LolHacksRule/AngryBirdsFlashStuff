package §!K§
{
   import §6o§.§5!C§;
   
   public class Items
   {
      
      private static var §!i§:XML;
       
      
      private var §]!z§:Vector.<§use §> = null;
      
      private var § !S§:Vector.<String> = null;
      
      private var §&!Z§:Array = null;
      
      public function Items()
      {
         super();
         this.§%!e§();
      }
      
      public function get §1!2§() : Vector.<String>
      {
         return this.§ !S§;
      }
      
      public function get §-S§() : Vector.<§use §>
      {
         return this.§]!z§;
      }
      
      private function §%!e§() : void
      {
         var _loc1_:XML = null;
         var _loc2_:String = null;
         var _loc3_:XML = null;
         var _loc4_:Item = null;
         this.§]!z§ = new Vector.<§use §>();
         this.§&!Z§ = new Array();
         this.§ !S§ = new Vector.<String>();
         §!i§ = §5!C§.§9G§(§<=§.§]!=§);
         for each(_loc1_ in §!i§.items.category)
         {
            _loc2_ = _loc1_.@id;
            this.§]!z§.push(new §use §(_loc2_,_loc1_.@sid));
            this.§&!Z§[_loc2_] = new Array();
            for each(_loc3_ in _loc1_.item)
            {
               (_loc4_ = new Item()).§;!Y§ = _loc3_.@id;
               _loc4_.sId = _loc3_.@sid;
               _loc4_.mName = _loc3_.@name;
               _loc4_.§=!q§ = _loc3_.@anchor;
               _loc4_.§[C§ = _loc2_;
               if(this.§ !S§.indexOf(_loc4_.§=!q§) == -1)
               {
                  this.§ !S§.push(_loc4_.§=!q§);
               }
               this.§&!Z§[_loc2_].push(_loc4_);
            }
         }
      }
      
      public function get §-">§() : Array
      {
         return this.§&!Z§;
      }
      
      public function §8!=§(param1:String) : Array
      {
         return this.§&!Z§[param1];
      }
      
      public function §1!P§(param1:String) : Item
      {
         var _loc2_:§use § = null;
         var _loc3_:String = null;
         var _loc4_:Item = null;
         for each(_loc2_ in this.§]!z§)
         {
            _loc3_ = _loc2_.name;
            for each(_loc4_ in this.§&!Z§[_loc3_])
            {
               if(_loc4_.§;!Y§.toUpperCase() == param1.toUpperCase())
               {
                  return _loc4_;
               }
            }
         }
         return null;
      }
   }
}
