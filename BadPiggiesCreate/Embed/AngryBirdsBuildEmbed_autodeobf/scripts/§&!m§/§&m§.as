package §&!m§
{
   import §+]§.§"^§;
   import §>!'§.§'!Y§;
   import §>!'§.§<!3§;
   import §@_§.§1M§;
   import §@_§.§[F§;
   import §[h§.b2WeldJoint;
   
   public class §&m§
   {
       
      
      public function §&m§()
      {
         super();
      }
      
      public static function §9_§(param1:Vector.<§;5§>, param2:§'!Y§) : void
      {
         var _loc3_:§;5§ = null;
         var _loc4_:§;5§ = null;
         var _loc5_:§[F§ = null;
         if(param1.length < 2)
         {
            return;
         }
         for each(_loc3_ in param1)
         {
            for each(_loc4_ in param1)
            {
               if(_loc3_.getObject() is §<!3§ && _loc4_.getObject() is §<!3§ && _loc3_ != _loc4_ && !param2.§%Y§(_loc3_.getObject() as §<!3§,_loc4_.getObject() as §<!3§))
               {
                  if(param1.length == 2 || §"^§.§#h§(_loc3_.getObject().getBody(),_loc4_.getObject().getBody()).size.length > 0)
                  {
                     _loc5_ = param2.§3H§(§[F§.§"l§,_loc3_.getObject() as §<!3§,_loc4_.getObject() as §<!3§);
                  }
               }
            }
         }
      }
      
      public static function §3c§(param1:Vector.<§;5§>, param2:§'!Y§) : void
      {
         var _loc3_:§;5§ = null;
         for each(_loc3_ in param1)
         {
            param2.§[!;§(_loc3_.getObject() as §<!3§);
         }
      }
      
      public static function §3i§(param1:§<!3§, param2:§'!Y§) : void
      {
         var _loc4_:§1M§ = null;
         if(!param1)
         {
            return;
         }
         var _loc3_:Vector.<§1M§> = param2.§@!r§(param1);
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_.§0i§ is b2WeldJoint)
            {
               param2.§=r§(_loc4_);
            }
         }
      }
   }
}
