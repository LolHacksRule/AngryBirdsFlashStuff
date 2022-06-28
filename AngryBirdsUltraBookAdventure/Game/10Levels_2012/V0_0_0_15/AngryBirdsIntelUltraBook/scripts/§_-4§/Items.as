package §_-4§
{
   import §_-0BH§.§_-ZE§;
   
   public class Items
   {
      
      private static var §_-nY§:XML;
       
      
      private var §_-043§:Vector.<§_-044§> = null;
      
      private var §_-Or§:Vector.<String> = null;
      
      private var §_-057§:Array = null;
      
      public function Items()
      {
         super();
         this.§_-0-C§();
      }
      
      public function get §_-U4§() : Vector.<String>
      {
         return this.§_-Or§;
      }
      
      public function get §_-05v§() : Vector.<§_-044§>
      {
         return this.§_-043§;
      }
      
      private function §_-0-C§() : void
      {
         var _loc1_:XML = null;
         var _loc2_:String = null;
         var _loc3_:XML = null;
         var _loc4_:Item = null;
         this.§_-043§ = new Vector.<§_-044§>();
         this.§_-057§ = new Array();
         this.§_-Or§ = new Vector.<String>();
         §_-nY§ = §_-ZE§.§_-ve§(§_-4H§.§_-mf§);
         for each(_loc1_ in §_-nY§.items.category)
         {
            _loc2_ = _loc1_.@id;
            this.§_-043§.push(new §_-044§(_loc2_,_loc1_.@sid));
            this.§_-057§[_loc2_] = new Array();
            for each(_loc3_ in _loc1_.item)
            {
               (_loc4_ = new Item()).§_-1h§ = _loc3_.@id;
               _loc4_.sId = _loc3_.@sid;
               _loc4_.mName = _loc3_.@name;
               _loc4_.§_-In§ = _loc3_.@anchor;
               _loc4_.§_-4k§ = _loc2_;
               if(this.§_-Or§.indexOf(_loc4_.§_-In§) == -1)
               {
                  this.§_-Or§.push(_loc4_.§_-In§);
               }
               this.§_-057§[_loc2_].push(_loc4_);
            }
         }
      }
      
      public function get items() : Array
      {
         return this.§_-057§;
      }
      
      public function §_-ng§(param1:String) : Array
      {
         return this.§_-057§[param1];
      }
      
      public function §_-yf§(param1:String) : Item
      {
         var _loc2_:§_-044§ = null;
         var _loc3_:String = null;
         var _loc4_:Item = null;
         for each(_loc2_ in this.§_-043§)
         {
            _loc3_ = _loc2_.name;
            for each(_loc4_ in this.§_-057§[_loc3_])
            {
               if(_loc4_.§_-1h§.toUpperCase() == param1.toUpperCase())
               {
                  return _loc4_;
               }
            }
         }
         return null;
      }
   }
}
