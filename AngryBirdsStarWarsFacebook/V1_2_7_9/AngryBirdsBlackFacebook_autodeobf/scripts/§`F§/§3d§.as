package §`F§
{
   import § #,§.§!B§;
   import §@##§.§#^§;
   import §`"8§.§-!w§;
   import §`"8§.§[F§;
   
   public class §3d§ implements §#^§
   {
       
      
      public var items:Vector.<§!B§>;
      
      public function §3d§()
      {
         super();
      }
      
      public function init(param1:Object) : void
      {
         var _loc2_:§[F§ = §-!w§(§;"@§.singleton.dataModel).§!#%§;
         _loc2_.§]!t§ = param1.currency;
         this.items = new Vector.<§!B§>();
         if(param1.prices)
         {
            this.items = this.§`!,§(param1.id,param1.prices);
         }
      }
      
      protected function §`!,§(param1:String, param2:Array) : Vector.<§!B§>
      {
         var _loc3_:Vector.<§!B§> = new Vector.<§!B§>();
         var _loc4_:int = 0;
         while(_loc4_ < param2.length)
         {
            _loc3_.push(new §!B§(param1,param2[_loc4_].q,param2[_loc4_].p,param2[_loc4_].t));
            _loc4_++;
         }
         return _loc3_;
      }
   }
}
