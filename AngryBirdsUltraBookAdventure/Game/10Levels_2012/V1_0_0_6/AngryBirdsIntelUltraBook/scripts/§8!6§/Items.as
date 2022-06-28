package §8!6§
{
   import §"x§.§3!v§;
   
   public class Items
   {
      
      private static var §-p§:XML;
       
      
      private var §,+§:Vector.<§"!K§> = null;
      
      private var §?V§:Vector.<String> = null;
      
      private var §6!§:Array = null;
      
      public function Items()
      {
         super();
         this.§-#§();
      }
      
      public function get §;!`§() : Vector.<String>
      {
         return this.§?V§;
      }
      
      public function get §]!Q§() : Vector.<§"!K§>
      {
         return this.§,+§;
      }
      
      private function §-#§() : void
      {
         var _loc1_:XML = null;
         var _loc2_:String = null;
         var _loc3_:XML = null;
         var _loc4_:Item = null;
         this.§,+§ = new Vector.<§"!K§>();
         this.§6!§ = new Array();
         this.§?V§ = new Vector.<String>();
         §-p§ = §3!v§.§;!-§(§-!6§.§#c§);
         for each(_loc1_ in §-p§.items.category)
         {
            _loc2_ = _loc1_.@id;
            this.§,+§.push(new §"!K§(_loc2_,_loc1_.@sid));
            this.§6!§[_loc2_] = new Array();
            for each(_loc3_ in _loc1_.item)
            {
               (_loc4_ = new Item()).§@H§ = _loc3_.@id;
               _loc4_.sId = _loc3_.@sid;
               _loc4_.mName = _loc3_.@name;
               _loc4_.§^!,§ = _loc3_.@anchor;
               _loc4_.§0!R§ = _loc2_;
               if(this.§?V§.indexOf(_loc4_.§^!,§) == -1)
               {
                  this.§?V§.push(_loc4_.§^!,§);
               }
               this.§6!§[_loc2_].push(_loc4_);
            }
         }
      }
      
      public function get items() : Array
      {
         return this.§6!§;
      }
      
      public function §-!h§(param1:String) : Array
      {
         return this.§6!§[param1];
      }
      
      public function §4!^§(param1:String) : Item
      {
         var _loc2_:§"!K§ = null;
         var _loc3_:String = null;
         var _loc4_:Item = null;
         for each(_loc2_ in this.§,+§)
         {
            _loc3_ = _loc2_.name;
            for each(_loc4_ in this.§6!§[_loc3_])
            {
               if(_loc4_.§@H§.toUpperCase() == param1.toUpperCase())
               {
                  return _loc4_;
               }
            }
         }
         return null;
      }
   }
}
