package §&G§
{
   import flash.utils.Dictionary;
   
   public class §1z§
   {
      
      private static var §,!2§:Dictionary;
       
      
      public function §1z§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function injectData(param1:Object) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Object = null;
         if(_loc6_)
         {
            §,!2§ = new Dictionary();
         }
         var _loc3_:int = 0;
         for each(_loc2_ in param1.items)
         {
            if(_loc6_)
            {
               §§push(_loc2_.i == false);
               if(_loc6_)
               {
                  if(!§§pop())
                  {
                     if(!_loc5_)
                     {
                        addr61:
                        §§pop();
                        if(!(_loc6_ || _loc3_))
                        {
                           continue;
                        }
                        §§push(_loc2_.i == null);
                     }
                  }
                  if(§§pop())
                  {
                     if(!(_loc5_ && _loc2_))
                     {
                        addr91:
                        §,!2§[_loc2_.u] = §@!5§.§!!t§(_loc2_);
                     }
                  }
                  continue;
               }
               §§goto(addr61);
            }
            §§goto(addr91);
         }
      }
      
      public static function §^"4§() : Dictionary
      {
         return §,!2§;
      }
      
      public static function §@Z§(param1:String) : §@!5§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(§,!2§[param1])
            {
               if(!_loc2_)
               {
                  §§goto(addr25);
               }
            }
            return null;
         }
         addr25:
         return §,!2§[param1];
      }
   }
}
