package §`!?§
{
   import §[x§.§?-§;
   
   public class Items
   {
      
      private static var §3" §:XML;
       
      
      private var §@§:Vector.<§%"3§> = null;
      
      private var §`T§:Vector.<String> = null;
      
      private var §!!&§:Array = null;
      
      public function Items()
      {
         super();
         this.§2"K§();
      }
      
      public function get §'!h§() : Vector.<String>
      {
         return this.§`T§;
      }
      
      public function get §+!Z§() : Vector.<§%"3§>
      {
         return this.§@§;
      }
      
      private function §2"K§() : void
      {
         var _loc1_:XML = null;
         var _loc2_:String = null;
         var _loc3_:XML = null;
         var _loc4_:Item = null;
         this.§@§ = new Vector.<§%"3§>();
         this.§!!&§ = new Array();
         this.§`T§ = new Vector.<String>();
         §3" § = §?-§.§9E§(§9!P§.§9!<§);
         for each(_loc1_ in §3" §.items.category)
         {
            _loc2_ = _loc1_.@id;
            this.§@§.push(new §%"3§(_loc2_,_loc1_.@sid));
            this.§!!&§[_loc2_] = new Array();
            for each(_loc3_ in _loc1_.item)
            {
               (_loc4_ = new Item()).§3!9§ = _loc3_.@id;
               _loc4_.sId = _loc3_.@sid;
               _loc4_.mName = _loc3_.@name;
               _loc4_.§-"H§ = _loc3_.@anchor;
               _loc4_.§;!g§ = _loc2_;
               if(this.§`T§.indexOf(_loc4_.§-"H§) == -1)
               {
                  this.§`T§.push(_loc4_.§-"H§);
               }
               this.§!!&§[_loc2_].push(_loc4_);
            }
         }
      }
      
      public function get §`!P§() : Array
      {
         return this.§!!&§;
      }
      
      public function §"!%§(param1:String) : Array
      {
         return this.§!!&§[param1];
      }
      
      public function §0@§(param1:String) : Item
      {
         var _loc2_:§%"3§ = null;
         var _loc3_:String = null;
         var _loc4_:Item = null;
         for each(_loc2_ in this.§@§)
         {
            _loc3_ = _loc2_.name;
            for each(_loc4_ in this.§!!&§[_loc3_])
            {
               if(_loc4_.§3!9§.toUpperCase() == param1.toUpperCase())
               {
                  return _loc4_;
               }
            }
         }
         return null;
      }
   }
}
