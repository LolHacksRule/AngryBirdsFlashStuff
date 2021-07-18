package §0!!§
{
   import §"!"§.§&z§;
   
   public class §+!%§
   {
       
      
      public function §+!%§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
      
      public static function §>7§(param1:String) : Object
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1);
            if(_loc3_)
            {
               §§push(§§pop().replace(/^\}$/mg,"},"));
            }
            loop0:
            while(true)
            {
               param1 = §§pop();
               addr126:
               while(true)
               {
                  §§push(param1);
                  if(_loc3_ || §+!%§)
                  {
                     §§push(§§pop().replace(/,[ \t\n\r]+\}/gm,"}"));
                  }
                  loop2:
                  while(true)
                  {
                     param1 = §§pop();
                     addr114:
                     while(true)
                     {
                        §§push(param1);
                        if(!(_loc2_ && §+!%§))
                        {
                           continue loop0;
                        }
                        continue loop2;
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            §§push("{");
            if(!_loc2_)
            {
               §§push(§§pop() + param1);
               if(!_loc2_)
               {
                  addr35:
                  §§push(§§pop() + "}");
               }
               param1 = §§pop();
               if(_loc3_)
               {
                  if(_loc3_)
                  {
                     break;
                  }
                  §§goto(addr126);
               }
               §§goto(addr84);
            }
            §§goto(addr35);
         }
         return §&z§.decode(param1);
      }
   }
}
