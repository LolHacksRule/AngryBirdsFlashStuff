package §1!i§
{
   public class §26§
   {
       
      
      public function §26§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §"2§(param1:Array) : Array
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || §26§)
         {
            §§push(param1);
            if(_loc3_ || _loc3_)
            {
               if(!§§pop())
               {
                  if(_loc3_)
                  {
                     return [];
                  }
                  addr57:
                  §§push(§8"j§(param1,param1.length));
               }
               §§goto(addr57);
            }
            return §§pop();
         }
         §§goto(addr57);
      }
      
      public static function §8"j§(param1:Array, param2:int) : Array
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            if(!param1)
            {
               if(_loc4_ || param2)
               {
                  §§push([]);
                  if(_loc4_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr31:
                  §§push([]);
               }
               var _loc3_:Array = §§pop();
               param1 = param1.concat();
               loop0:
               while(true)
               {
                  §§push(param1.length > 0);
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           §§pop();
                           addr86:
                           do
                           {
                              §§push(_loc3_.length < param2);
                              if(_loc5_)
                              {
                                 continue loop2;
                              }
                           }
                           while(_loc4_ || _loc3_);
                           
                           continue loop1;
                        }
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           _loc3_.push(param1.splice(Math.round(Math.random() * (param1.length - 1)),1)[0]);
                           break;
                        }
                        if(!_loc5_)
                        {
                           if(!(_loc5_ && §26§))
                           {
                              return _loc3_;
                           }
                           break;
                        }
                        §§goto(addr86);
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr31);
      }
   }
}
