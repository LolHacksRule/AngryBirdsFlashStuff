package §7r§
{
   import §^_§.§,>§;
   
   public class Items
   {
      
      private static var §+!0§:XML;
       
      
      private var §%O§:Vector.<§?V§> = null;
      
      private var §[F§:Vector.<String> = null;
      
      private var §>!!§:Array = null;
      
      public function Items()
      {
         super();
         this.§'!w§();
      }
      
      public function get §]n§() : Vector.<String>
      {
         return this.§[F§;
      }
      
      public function get §=!b§() : Vector.<§?V§>
      {
         return this.§%O§;
      }
      
      private function §'!w§() : void
      {
         var _loc1_:XML = null;
         var _loc2_:String = null;
         var _loc3_:XML = null;
         var _loc4_:Item = null;
         this.§%O§ = new Vector.<§?V§>();
         this.§>!!§ = new Array();
         this.§[F§ = new Vector.<String>();
         §+!0§ = §,>§.§%2§(§5e§.§'!f§);
         for each(_loc1_ in §+!0§.items.category)
         {
            _loc2_ = _loc1_.@id;
            this.§%O§.push(new §?V§(_loc2_,_loc1_.@sid));
            this.§>!!§[_loc2_] = new Array();
            for each(_loc3_ in _loc1_.item)
            {
               (_loc4_ = new Item()).§&!X§ = _loc3_.@id;
               _loc4_.sId = _loc3_.@sid;
               _loc4_.mName = _loc3_.@name;
               _loc4_.§-^§ = _loc3_.@anchor;
               _loc4_.§@§ = _loc2_;
               if(this.§[F§.indexOf(_loc4_.§-^§) == -1)
               {
                  this.§[F§.push(_loc4_.§-^§);
               }
               this.§>!!§[_loc2_].push(_loc4_);
            }
         }
      }
      
      public function get items() : Array
      {
         return this.§>!!§;
      }
      
      public function § L§(param1:String) : Array
      {
         return this.§>!!§[param1];
      }
      
      public function §1]§(param1:String) : Item
      {
         var _loc2_:§?V§ = null;
         var _loc3_:String = null;
         var _loc4_:Item = null;
         for each(_loc2_ in this.§%O§)
         {
            _loc3_ = _loc2_.name;
            for each(_loc4_ in this.§>!!§[_loc3_])
            {
               if(_loc4_.§&!X§.toUpperCase() == param1.toUpperCase())
               {
                  return _loc4_;
               }
            }
         }
         return null;
      }
   }
}
