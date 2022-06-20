package §8!-§
{
   import §0!?§.§1!%§;
   
   public class Items
   {
      
      private static var §>"§:XML;
       
      
      private var §28§:Vector.<§9!e§> = null;
      
      private var §5x§:Vector.<String> = null;
      
      private var §8%§:Array = null;
      
      public function Items()
      {
         super();
         this.§4w§();
      }
      
      public function get §8!P§() : Vector.<String>
      {
         return this.§5x§;
      }
      
      public function get §"!d§() : Vector.<§9!e§>
      {
         return this.§28§;
      }
      
      private function §4w§() : void
      {
         var _loc1_:XML = null;
         var _loc2_:String = null;
         var _loc3_:XML = null;
         var _loc4_:Item = null;
         this.§28§ = new Vector.<§9!e§>();
         this.§8%§ = new Array();
         this.§5x§ = new Vector.<String>();
         §>"§ = §1!%§.§8!?§(§`"$§.§5"5§);
         for each(_loc1_ in §>"§.items.category)
         {
            _loc2_ = _loc1_.@id;
            this.§28§.push(new §9!e§(_loc2_,_loc1_.@sid));
            this.§8%§[_loc2_] = new Array();
            for each(_loc3_ in _loc1_.item)
            {
               (_loc4_ = new Item()).§4W§ = _loc3_.@id;
               _loc4_.sId = _loc3_.@sid;
               _loc4_.mName = _loc3_.@name;
               _loc4_.§3c§ = _loc3_.@anchor;
               _loc4_.§;F§ = _loc2_;
               if(this.§5x§.indexOf(_loc4_.§3c§) == -1)
               {
                  this.§5x§.push(_loc4_.§3c§);
               }
               this.§8%§[_loc2_].push(_loc4_);
            }
         }
      }
      
      public function get §`>§() : Array
      {
         return this.§8%§;
      }
      
      public function §;_§(param1:String) : Array
      {
         return this.§8%§[param1];
      }
      
      public function §8!]§(param1:String) : Item
      {
         var _loc2_:§9!e§ = null;
         var _loc3_:String = null;
         var _loc4_:Item = null;
         for each(_loc2_ in this.§28§)
         {
            _loc3_ = _loc2_.name;
            for each(_loc4_ in this.§8%§[_loc3_])
            {
               if(_loc4_.§4W§.toUpperCase() == param1.toUpperCase())
               {
                  return _loc4_;
               }
            }
         }
         return null;
      }
   }
}
