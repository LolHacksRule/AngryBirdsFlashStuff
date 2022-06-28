package §&=§
{
   import §6z§.§`!<§;
   
   public class Items
   {
      
      private static var §0!3§:XML;
       
      
      private var §-L§:Vector.<§>!-§> = null;
      
      private var §2!$§:Vector.<String> = null;
      
      private var §0!i§:Array = null;
      
      public function Items()
      {
         super();
         this.§`!5§();
      }
      
      public function get §"!n§() : Vector.<String>
      {
         return this.§2!$§;
      }
      
      public function get §1K§() : Vector.<§>!-§>
      {
         return this.§-L§;
      }
      
      private function §`!5§() : void
      {
         var _loc1_:XML = null;
         var _loc2_:String = null;
         var _loc3_:XML = null;
         var _loc4_:Item = null;
         this.§-L§ = new Vector.<§>!-§>();
         this.§0!i§ = new Array();
         this.§2!$§ = new Vector.<String>();
         §0!3§ = §`!<§.§ !0§(§0!>§.§>z§);
         for each(_loc1_ in §0!3§.items.category)
         {
            _loc2_ = _loc1_.@id;
            this.§-L§.push(new §>!-§(_loc2_,_loc1_.@sid));
            this.§0!i§[_loc2_] = new Array();
            for each(_loc3_ in _loc1_.item)
            {
               (_loc4_ = new Item()).§49§ = _loc3_.@id;
               _loc4_.sId = _loc3_.@sid;
               _loc4_.mName = _loc3_.@name;
               _loc4_.§]!C§ = _loc3_.@anchor;
               _loc4_.§5H§ = _loc2_;
               if(this.§2!$§.indexOf(_loc4_.§]!C§) == -1)
               {
                  this.§2!$§.push(_loc4_.§]!C§);
               }
               this.§0!i§[_loc2_].push(_loc4_);
            }
         }
      }
      
      public function get items() : Array
      {
         return this.§0!i§;
      }
      
      public function §#$§(param1:String) : Array
      {
         return this.§0!i§[param1];
      }
      
      public function § !`§(param1:String) : Item
      {
         var _loc2_:§>!-§ = null;
         var _loc3_:String = null;
         var _loc4_:Item = null;
         for each(_loc2_ in this.§-L§)
         {
            _loc3_ = _loc2_.name;
            for each(_loc4_ in this.§0!i§[_loc3_])
            {
               if(_loc4_.§49§.toUpperCase() == param1.toUpperCase())
               {
                  return _loc4_;
               }
            }
         }
         return null;
      }
   }
}
