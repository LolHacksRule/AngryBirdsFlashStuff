package §4y§
{
   import §+!c§.§9"H§;
   
   public class Items
   {
      
      private static var §1!y§:XML;
       
      
      private var §@"4§:Vector.<§]"6§> = null;
      
      private var §break§:Vector.<String> = null;
      
      private var §+?§:Array = null;
      
      public function Items()
      {
         super();
         this.§`!I§();
      }
      
      public function get §"!o§() : Vector.<String>
      {
         return this.§break§;
      }
      
      public function get §`!s§() : Vector.<§]"6§>
      {
         return this.§@"4§;
      }
      
      private function §`!I§() : void
      {
         var _loc1_:XML = null;
         var _loc2_:String = null;
         var _loc3_:XML = null;
         var _loc4_:Item = null;
         this.§@"4§ = new Vector.<§]"6§>();
         this.§+?§ = new Array();
         this.§break§ = new Vector.<String>();
         §1!y§ = §9"H§.§5!h§(§"!`§.§4-§);
         for each(_loc1_ in §1!y§.items.category)
         {
            _loc2_ = _loc1_.@id;
            this.§@"4§.push(new §]"6§(_loc2_,_loc1_.@sid));
            this.§+?§[_loc2_] = new Array();
            for each(_loc3_ in _loc1_.item)
            {
               (_loc4_ = new Item()).§&N§ = _loc3_.@id;
               _loc4_.sId = _loc3_.@sid;
               _loc4_.mName = _loc3_.@name;
               _loc4_.§5!L§ = _loc3_.@anchor;
               _loc4_.§;"V§ = _loc2_;
               _loc4_.§6b§ = _loc1_.@sid;
               if(this.§break§.indexOf(_loc4_.§5!L§) == -1)
               {
                  this.§break§.push(_loc4_.§5!L§);
               }
               this.§+?§[_loc2_].push(_loc4_);
            }
         }
      }
      
      public function get §9"1§() : Array
      {
         return this.§+?§;
      }
      
      public function §&!w§(param1:String) : Array
      {
         return this.§+?§[param1];
      }
      
      public function §3"[§(param1:String) : Item
      {
         var _loc2_:§]"6§ = null;
         var _loc3_:String = null;
         var _loc4_:Item = null;
         for each(_loc2_ in this.§@"4§)
         {
            _loc3_ = _loc2_.name;
            for each(_loc4_ in this.§+?§[_loc3_])
            {
               if(_loc4_.§&N§.toUpperCase() == param1.toUpperCase())
               {
                  return _loc4_;
               }
            }
         }
         return null;
      }
   }
}
