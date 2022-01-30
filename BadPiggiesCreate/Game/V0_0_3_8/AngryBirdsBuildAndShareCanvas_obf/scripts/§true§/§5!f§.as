package §true§
{
   import §!t§.b2WeldJoint;
   import §%!&§.§'"-§;
   import §%!&§.§;!x§;
   import §&"+§.§7D§;
   import §&"+§.§<!1§;
   import §]!l§.§"E§;
   
   public class §5!f§
   {
       
      
      public function §5!f§()
      {
         super();
      }
      
      public static function §#!6§(param1:Vector.<§>"-§>, param2:§'"-§) : void
      {
         var _loc4_:§>"-§ = null;
         var _loc5_:§>"-§ = null;
         if(param1.length < 2)
         {
            return;
         }
         var _loc3_:Boolean = true;
         for each(_loc4_ in param1)
         {
            for each(_loc5_ in param1)
            {
               if(§!!F§(_loc4_,_loc5_,param2))
               {
                  if(param1.length == 2 || §"E§.§1G§(_loc4_.getObject().getBody(),_loc5_.getObject().getBody()).size.length > 0)
                  {
                     param2.§==§(§7D§.§4[§,_loc4_.getObject() as §;!x§,_loc5_.getObject() as §;!x§);
                     _loc3_ = false;
                  }
               }
            }
         }
         if(_loc3_)
         {
            §%!t§(param1,param2);
         }
      }
      
      private static function §!!F§(param1:§>"-§, param2:§>"-§, param3:§'"-§) : Boolean
      {
         if(param1 == param2)
         {
            return false;
         }
         if(!(param1.getObject() is §;!x§) || !(param2.getObject() is §;!x§))
         {
            return false;
         }
         return !param3.§4!o§(param1.getObject() as §;!x§,param2.getObject() as §;!x§);
      }
      
      public static function §%!t§(param1:Vector.<§>"-§>, param2:§'"-§) : void
      {
         var _loc3_:§>"-§ = null;
         for each(_loc3_ in param1)
         {
            param2.§"!-§(_loc3_.getObject() as §;!x§);
         }
      }
      
      public static function §>=§(param1:§;!x§, param2:§'"-§) : void
      {
         var _loc4_:§<!1§ = null;
         if(!param1)
         {
            return;
         }
         var _loc3_:Vector.<§<!1§> = param2.§-t§(param1);
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_.§ " § is b2WeldJoint)
            {
               param2.§?!@§(_loc4_);
            }
         }
      }
      
      public static function §^!B§(param1:§>"-§, param2:§>"-§, param3:§'"-§) : void
      {
         var _loc5_:§<!1§ = null;
         var _loc6_:§;!x§ = null;
         var _loc7_:§;!x§ = null;
         var _loc8_:§;!x§ = null;
         var _loc4_:Vector.<§<!1§> = param3.§-t§(param1.getObject() as §;!x§);
         for each(_loc5_ in _loc4_)
         {
            _loc6_ = param3.getObject(_loc5_.index1 + 1);
            _loc7_ = param3.getObject(_loc5_.index2 + 1);
            _loc8_ = _loc6_ == param1.getObject() ? _loc7_ : _loc6_;
            param3.§==§(§7D§.§4[§,param2.getObject() as §;!x§,_loc8_);
         }
      }
   }
}
