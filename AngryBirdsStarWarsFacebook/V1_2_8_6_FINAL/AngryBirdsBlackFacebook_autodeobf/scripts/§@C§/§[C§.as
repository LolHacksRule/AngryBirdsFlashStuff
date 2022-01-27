package §@C§
{
   import §'!P§.§29§;
   import §1!G§.§9"b§;
   import §9"U§.§,N§;
   import §9"U§.§7"1§;
   
   public class §[C§ implements §29§
   {
       
      
      public var items:Vector.<§9"b§>;
      
      public function §[C§()
      {
         super();
      }
      
      public function init(param1:Object) : void
      {
         var _loc2_:§,N§ = §7"1§(§4"#§.singleton.dataModel).§=#1§;
         _loc2_.§^"o§ = param1.currency;
         this.items = new Vector.<§9"b§>();
         if(param1.prices)
         {
            this.items = this.§-U§(param1.id,param1.prices);
         }
      }
      
      protected function §-U§(param1:String, param2:Array) : Vector.<§9"b§>
      {
         var _loc3_:Vector.<§9"b§> = new Vector.<§9"b§>();
         var _loc4_:int = 0;
         while(_loc4_ < param2.length)
         {
            _loc3_.push(new §9"b§(param1,param2[_loc4_].q,param2[_loc4_].p,param2[_loc4_].t));
            _loc4_++;
         }
         return _loc3_;
      }
   }
}
