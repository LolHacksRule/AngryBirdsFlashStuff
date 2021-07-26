package §6#s§
{
   import §!x§.§?!Q§;
   
   public class Items
   {
      
      private static var §5$+§:XML;
       
      
      private var §#M§:Vector.<§1"G§> = null;
      
      private var §^#,§:Vector.<String> = null;
      
      private var §5&§:Array = null;
      
      public function Items()
      {
         super();
         this.loadItems();
      }
      
      public function get §"I§() : Vector.<String>
      {
         return this.§^#,§;
      }
      
      public function get §!&§() : Vector.<§1"G§>
      {
         return this.§#M§;
      }
      
      private function loadItems() : void
      {
         var _loc1_:XML = null;
         var _loc2_:String = null;
         var _loc3_:XML = null;
         var _loc4_:Item = null;
         this.§#M§ = new Vector.<§1"G§>();
         this.§5&§ = new Array();
         this.§^#,§ = new Vector.<String>();
         §5$+§ = §?!Q§.§<1§(§1#o§.§ !U§);
         for each(_loc1_ in §5$+§.items.category)
         {
            _loc2_ = _loc1_.@id;
            this.§#M§.push(new §1"G§(_loc2_,_loc1_.@sid));
            this.§5&§[_loc2_] = new Array();
            for each(_loc3_ in _loc1_.item)
            {
               (_loc4_ = new Item()).mId = _loc3_.@id;
               _loc4_.sId = _loc3_.@sid;
               _loc4_.§2!4§ = _loc3_.@name;
               _loc4_.§@I§ = _loc3_.@anchor;
               _loc4_.§3$1§ = _loc2_;
               _loc4_.§;#I§ = _loc1_.@sid;
               if(this.§^#,§.indexOf(_loc4_.§@I§) == -1)
               {
                  this.§^#,§.push(_loc4_.§@I§);
               }
               this.§5&§[_loc2_].push(_loc4_);
            }
         }
      }
      
      public function get §!"p§() : Array
      {
         return this.§5&§;
      }
      
      public function §9$!§(param1:String) : Array
      {
         return this.§5&§[param1];
      }
      
      public function getItem(param1:String) : Item
      {
         var _loc2_:§1"G§ = null;
         var _loc3_:String = null;
         var _loc4_:Item = null;
         for each(_loc2_ in this.§#M§)
         {
            _loc3_ = _loc2_.name;
            for each(_loc4_ in this.§5&§[_loc3_])
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
