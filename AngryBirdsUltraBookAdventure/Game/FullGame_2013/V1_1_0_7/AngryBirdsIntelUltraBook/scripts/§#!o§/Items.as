package §#!o§
{
   import §1!B§.§>!s§;
   
   public class Items
   {
      
      private static var §set §:XML;
       
      
      private var §#!B§:Vector.<§>!,§> = null;
      
      private var §7!4§:Vector.<String> = null;
      
      private var §&O§:Array = null;
      
      public function Items()
      {
         super();
         this.§=$§();
      }
      
      public function get §9!B§() : Vector.<String>
      {
         return this.§7!4§;
      }
      
      public function get §>!J§() : Vector.<§>!,§>
      {
         return this.§#!B§;
      }
      
      private function §=$§() : void
      {
         var _loc1_:XML = null;
         var _loc2_:String = null;
         var _loc3_:XML = null;
         var _loc4_:Item = null;
         this.§#!B§ = new Vector.<§>!,§>();
         this.§&O§ = new Array();
         this.§7!4§ = new Vector.<String>();
         §set § = §>!s§.§;§(§>!M§.§6!J§);
         for each(_loc1_ in §set §.items.category)
         {
            _loc2_ = _loc1_.@id;
            this.§#!B§.push(new §>!,§(_loc2_,_loc1_.@sid));
            this.§&O§[_loc2_] = new Array();
            for each(_loc3_ in _loc1_.item)
            {
               (_loc4_ = new Item()).§9!^§ = _loc3_.@id;
               _loc4_.sId = _loc3_.@sid;
               _loc4_.mName = _loc3_.@name;
               _loc4_.§>!i§ = _loc3_.@anchor;
               _loc4_.§^w§ = _loc2_;
               if(this.§7!4§.indexOf(_loc4_.§>!i§) == -1)
               {
                  this.§7!4§.push(_loc4_.§>!i§);
               }
               this.§&O§[_loc2_].push(_loc4_);
            }
         }
      }
      
      public function get items() : Array
      {
         return this.§&O§;
      }
      
      public function §7!§(param1:String) : Array
      {
         return this.§&O§[param1];
      }
      
      public function §`!H§(param1:String) : Item
      {
         var _loc2_:§>!,§ = null;
         var _loc3_:String = null;
         var _loc4_:Item = null;
         for each(_loc2_ in this.§#!B§)
         {
            _loc3_ = _loc2_.name;
            for each(_loc4_ in this.§&O§[_loc3_])
            {
               if(_loc4_.§9!^§.toUpperCase() == param1.toUpperCase())
               {
                  return _loc4_;
               }
            }
         }
         return null;
      }
   }
}
