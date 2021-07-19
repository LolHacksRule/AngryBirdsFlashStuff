package §4!6§
{
   import §@,§.§4h§;
   import flash.external.ExternalInterface;
   
   public class §,Y§
   {
      
      public static var §^!$§:Boolean = true;
      
      private static var §]l§:Object;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §,Y§))
         {
            §^!$§ = true;
         }
         do
         {
            §]l§ = {};
         }
         while(_loc2_ && _loc2_);
         
      }
      
      public function §,Y§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         try
         {
            if(!§]l§[param1])
            {
               if(!(_loc4_ && param1))
               {
                  §]l§[param1] = new §8`§(param1);
                  if(!(_loc4_ && §,Y§))
                  {
                     addr51:
                     (§]l§[param1] as §8`§).addCallback(param2);
                  }
                  §§goto(addr80);
               }
            }
            §§goto(addr51);
         }
         catch(e:Error)
         {
         }
         addr80:
      }
      
      public static function §!9§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            if(§]l§[param1])
            {
               if(_loc4_)
               {
                  (§]l§[param1] as §8`§).§!9§(param2);
               }
            }
         }
      }
      
      public static function §[[§(param1:String, ... rest) : *
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[4] = null;
            addr78:
            while(true)
            {
               §§push(§§newactivation());
               loop2:
               while(true)
               {
                  §§push(param1);
                  addr72:
                  while(true)
                  {
                     §§pop().§§slot[1] = §§pop();
                     addr73:
                     while(true)
                     {
                        addr48:
                        while(true)
                        {
                           §§push(§§newactivation());
                           addr50:
                           while(!_loc7_)
                           {
                              continue loop0;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
      }
   }
}
