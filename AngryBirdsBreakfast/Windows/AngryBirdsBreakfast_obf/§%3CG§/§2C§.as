package §<G§
{
   import each.§!!'§;
   import flash.external.ExternalInterface;
   
   public class §2C§
   {
      
      public static var §1B§:Boolean = true;
      
      private static var §2K§:Object;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §2C§)
         {
            §1B§ = true;
         }
         do
         {
            §2K§ = {};
         }
         while(!_loc2_);
         
      }
      
      public function §2C§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         try
         {
            if(!§2K§[param1])
            {
               if(!(_loc5_ && §2C§))
               {
                  §2K§[param1] = new §3!4§(param1);
                  if(_loc4_)
                  {
                     addr45:
                     (§2K§[param1] as §3!4§).addCallback(param2);
                  }
               }
               §§goto(addr74);
            }
            §§goto(addr45);
         }
         catch(e:Error)
         {
         }
         addr74:
      }
      
      public static function §;!A§(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§3!4§ = §2K§[param1] as §3!4§;
         if(!_loc5_)
         {
            if(_loc3_)
            {
               loop0:
               while(true)
               {
                  _loc3_.§;!A§(param2);
                  loop1:
                  while(_loc3_.§3!W§ == 0)
                  {
                     loop2:
                     while(true)
                     {
                        _loc3_.dispose();
                        loop3:
                        while(_loc4_)
                        {
                           while(true)
                           {
                              delete §2K§[param1];
                              if(!(_loc5_ && _loc3_))
                              {
                                 if(!_loc5_)
                                 {
                                    if(_loc4_ || §2C§)
                                    {
                                       break loop1;
                                    }
                                    continue loop1;
                                 }
                                 continue loop2;
                              }
                              continue loop3;
                           }
                        }
                        continue loop0;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr81);
      }
      
      public static function §^!A§(param1:String, ... rest) : *
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[1] = param1;
            addr156:
            while(true)
            {
               §§push(§§newactivation());
               continue loop0;
            }
         }
      }
   }
}
