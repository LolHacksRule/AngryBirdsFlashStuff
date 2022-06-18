package §%#!§
{
   import §<"p§.§8N§;
   
   public class Items
   {
      
      private static var §5#d§:XML;
       
      
      private var §8"h§:Vector.<§=$7§> = null;
      
      private var §3#E§:Vector.<String> = null;
      
      private var §+G§:Array = null;
      
      public function Items()
      {
         super();
         this.loadItems();
      }
      
      public function get §0"e§() : Vector.<String>
      {
         return this.§3#E§;
      }
      
      public function get §+2§() : Vector.<§=$7§>
      {
         return this.§8"h§;
      }
      
      private function loadItems() : void
      {
         var _loc1_:XML = null;
         var _loc2_:String = null;
         var _loc3_:XML = null;
         var _loc4_:Item = null;
         this.§8"h§ = new Vector.<§=$7§>();
         this.§+G§ = new Array();
         this.§3#E§ = new Vector.<String>();
         §5#d§ = §8N§.§1F§(§;V§.§!!0§);
         for each(_loc1_ in §5#d§.items.category)
         {
            _loc2_ = _loc1_.@id;
            this.§8"h§.push(new §=$7§(_loc2_,_loc1_.@sid));
            this.§+G§[_loc2_] = new Array();
            for each(_loc3_ in _loc1_.item)
            {
               (_loc4_ = new Item()).mId = _loc3_.@id;
               _loc4_.sId = _loc3_.@sid;
               _loc4_.§;!p§ = _loc3_.@name;
               _loc4_.§`$5§ = _loc3_.@anchor;
               _loc4_.§8!G§ = _loc2_;
               _loc4_.§9"-§ = _loc1_.@sid;
               if(this.§3#E§.indexOf(_loc4_.§`$5§) == -1)
               {
                  this.§3#E§.push(_loc4_.§`$5§);
               }
               this.§+G§[_loc2_].push(_loc4_);
            }
         }
      }
      
      public function get §,"'§() : Array
      {
         return this.§+G§;
      }
      
      public function §%#,§(param1:String) : Array
      {
         return this.§+G§[param1];
      }
      
      public function getItem(param1:String) : Item
      {
         var _loc2_:§=$7§ = null;
         var _loc3_:String = null;
         var _loc4_:Item = null;
         for each(_loc2_ in this.§8"h§)
         {
            _loc3_ = _loc2_.name;
            for each(_loc4_ in this.§+G§[_loc3_])
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
