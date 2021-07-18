package §"?§
{
   import §2!!§.§7§;
   import §;#Q§.§6!Y§;
   import §;#Q§.§[§;
   
   public class §0#1§ extends §[#2§
   {
       
      
      public function §0#1§(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            super(param1);
         }
      }
      
      public function §7# §(param1:String, param2:String, param3:String, param4:String, param5:int, param6:String, param7:Function, param8:Function = null) : §6!Y§
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         §§push("/useitem/" + param1);
         if(!(_loc11_ && param3))
         {
            §§push("/");
            if(_loc10_)
            {
               §§push(§§pop() + §§pop());
               if(!_loc11_)
               {
                  §§push(param2);
                  if(!(_loc11_ && param1))
                  {
                     §§push(§§pop() + §§pop());
                     if(_loc10_)
                     {
                        addr43:
                        §§push("/");
                        if(!_loc11_)
                        {
                           §§push(§§pop() + §§pop());
                           if(!_loc11_)
                           {
                              §§push(param3);
                              if(_loc10_ || param2)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc11_ && param2))
                                 {
                                    §§push("/");
                                    if(_loc10_)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(_loc10_)
                                       {
                                          §§push(param4);
                                          if(_loc10_ || param2)
                                          {
                                             addr89:
                                             §§push(§§pop() + §§pop());
                                             if(_loc11_)
                                             {
                                             }
                                             var _loc9_:String = §§pop() + param5;
                                             return §5#'§(_loc9_,param7,new §7#7§(),param8);
                                             addr121:
                                          }
                                          addr109:
                                          §§push(§§pop() + §§pop());
                                          if(!(_loc11_ && param1))
                                          {
                                             addr118:
                                             §§push(§§pop() + "/");
                                             if(!_loc10_)
                                             {
                                             }
                                          }
                                          §§goto(addr121);
                                       }
                                       §§push("/");
                                       if(_loc10_ || this)
                                       {
                                          addr100:
                                          §§push(§§pop() + §§pop());
                                          if(!(_loc11_ && param1))
                                          {
                                             §§goto(addr109);
                                             §§push(param6);
                                          }
                                          §§goto(addr121);
                                       }
                                    }
                                    §§goto(addr118);
                                 }
                                 §§goto(addr121);
                              }
                              §§goto(addr109);
                           }
                           §§goto(addr121);
                        }
                        §§goto(addr100);
                     }
                     §§goto(addr121);
                  }
                  §§goto(addr89);
               }
               §§goto(addr43);
            }
            §§goto(addr100);
         }
         §§goto(addr118);
      }
   }
}
