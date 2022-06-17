package §@"J§
{
   import §0#I§.§+#P§;
   import §0#I§.§-!6§;
   import §?$#§.§<d§;
   
   public class §&!C§
   {
       
      
      private var §0$8§:Vector.<§7!+§>;
      
      public function §&!C§(param1:§<d§)
      {
         var _loc2_:§7!+§ = null;
         super();
         this.§0$8§ = §,$5§.§0#&§();
         for each(_loc2_ in this.§0$8§)
         {
            _loc2_.initialize(param1);
         }
      }
      
      public function §!"]§(param1:String, param2:String) : void
      {
         var _loc3_:§7!+§ = null;
         for each(_loc3_ in this.§0$8§)
         {
            if(_loc3_.§="a§(param2))
            {
               _loc3_.§!"]§(param1,param2);
            }
         }
      }
      
      public function §,S§() : Array
      {
         var _loc1_:Array = [];
         var _loc2_:int = 0;
         while(_loc2_ < this.§0$8§.length)
         {
            _loc1_.push(this.§0$8§[_loc2_]);
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function update(param1:int) : void
      {
         var _loc2_:§7!+§ = null;
         for each(_loc2_ in this.§0$8§)
         {
            _loc2_.update(param1);
         }
      }
      
      public function §+"X§(param1:String, param2:String, param3:§-!6§) : Boolean
      {
         var _loc4_:§7!+§ = null;
         for each(_loc4_ in this.§0$8§)
         {
            if(_loc4_.§="a§(param1))
            {
               param3.§^"7§(_loc4_ as §+#P§,param2);
               return true;
            }
         }
         return false;
      }
      
      public function clear() : void
      {
         var _loc1_:§7!+§ = null;
         for each(_loc1_ in this.§0$8§)
         {
            _loc1_.clear();
         }
      }
   }
}
