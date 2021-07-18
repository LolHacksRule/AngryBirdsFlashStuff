package §-!0§
{
   public class §=J§ extends §2! §
   {
       
      
      private var §>'§:§0!k§ = null;
      
      private var §<e§:int = 0;
      
      public function §=J§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
      
      public static function §%!G§(param1:String) : §=J§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Object = JSON.parse(param1);
         var _loc3_:§=J§ = new §=J§();
         if(!(_loc4_ && _loc2_))
         {
            _loc3_.§,!0§(_loc2_.data as String);
            if(!(_loc4_ && param1))
            {
               addr66:
               if(_loc2_.rating)
               {
                  if(_loc5_ || param1)
                  {
                     _loc3_.§<e§ = _loc2_.rating;
                     if(_loc4_ && §=J§)
                     {
                     }
                  }
                  §§goto(addr92);
               }
               _loc3_.§>'§ = §0!k§.§7!`§(_loc2_);
            }
            addr92:
            return _loc3_;
         }
         §§goto(addr66);
      }
      
      public function get info() : §0!k§
      {
         return this.§>'§;
      }
      
      public function get §'!t§() : int
      {
         return this.§<e§;
      }
      
      public function set §'!t§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§<e§ = param1;
         }
      }
   }
}
