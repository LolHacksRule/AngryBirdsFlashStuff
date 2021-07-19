package §^V§
{
   import §+!4§.§&!"§;
   import §+!4§.§&"p§;
   import §,"G§.§,!&§;
   import §,"G§.§-A§;
   import §3"H§.§<K§;
   import §^!r§.§[#,§;
   import flash.utils.Dictionary;
   
   public class Logging
   {
      
      public static const §="9§:String = "Log";
      
      private static var §?!w§:§8F§;
      
      private static var §4"4§:§,!&§;
      
      private static var §1B§:int;
      
      private static var §!"o§:String = "Log";
      
      private static var §4"C§:int = 0;
      
      private static var §&k§:Dictionary;
      
      private static var §=!J§:Boolean = true;
      
      private static var §7!3§:Boolean = false;
      
      private static var §'!=§:int = 0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || Logging)
         {
            §="9§ = "Log";
            loop0:
            while(true)
            {
               §4"4§ = new §-A§();
               while(true)
               {
                  §1B§ = §&"p§.§"#&§;
                  while(!(_loc2_ && _loc1_))
                  {
                     §!"o§ = "Log";
                     loop3:
                     for(; _loc1_; while(!(_loc2_ && Logging))
                     {
                        §=!J§ = true;
                        continue loop0;
                     })
                     {
                        while(true)
                        {
                           §4"C§ = §&!"§.ALL;
                           continue loop3;
                        }
                     }
                  }
               }
               loop6:
               for(; _loc1_ || _loc1_; if(_loc1_ || _loc2_)
               {
                  return;
               })
               {
                  §7!3§ = false;
                  while(_loc1_)
                  {
                     §'!=§ = 0;
                     if(_loc1_)
                     {
                        continue loop6;
                     }
                  }
                  §§goto(addr76);
               }
            }
         }
         §§goto(addr90);
      }
      
      public function Logging()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function get root() : §8F§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(§?!w§);
            if(!_loc1_)
            {
               if(!§§pop())
               {
                  if(!_loc1_)
                  {
                     §?!w§ = new §[#,§(Logging);
                     addr50:
                     §§push(§?!w§);
                  }
               }
               §§goto(addr50);
            }
            return §§pop();
         }
         §§goto(addr50);
      }
      
      public static function get §<#$§() : §,!&§
      {
         return §4"4§;
      }
      
      public static function set §<#$§(param1:§,!&§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §4"4§ = param1;
         }
      }
      
      public static function get §>#A§() : Boolean
      {
         return §7!3§;
      }
      
      public static function set §>#A§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §7!3§ = param1;
         }
      }
      
      public static function §""W§(param1:Object, param2:String, param3:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(§4"4§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(§=!J§);
                     while(true)
                     {
                        if(!§§pop())
                        {
                           if(§&k§[param1] != null)
                           {
                              while(true)
                              {
                                 §§push(§4"4§);
                                 if(!_loc4_)
                                 {
                                    continue loop0;
                                 }
                                 while(true)
                                 {
                                    §§pop().§""W§(param1,param2,param3);
                                    while(true)
                                    {
                                       §§goto(addr24);
                                    }
                                 }
                              }
                              addr72:
                           }
                           §§goto(addr24);
                        }
                        §§goto(addr110);
                     }
                  }
               }
               addr24:
               loop6:
               while(true)
               {
                  §§push(§7!3§);
                  if(!(_loc4_ && param2))
                  {
                     if(§§pop())
                     {
                        if(!_loc4_)
                        {
                           if(_loc4_)
                           {
                              continue loop8;
                           }
                           trace(param1 + "\t[" + param2 + "]\t" + param3);
                        }
                        if(!_loc5_)
                        {
                           while(!(_loc4_ && Logging))
                           {
                              if(!_loc4_)
                              {
                                 continue loop6;
                              }
                              continue loop1;
                           }
                           continue loop5;
                           addr86:
                        }
                        if(!_loc4_)
                        {
                           break;
                        }
                        addr110:
                        while(true)
                        {
                           continue loop4;
                        }
                     }
                     break;
                  }
                  continue loop2;
               }
               return;
            }
         }
         §§goto(addr72);
      }
      
      public static function §@#<§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §1B§ = param1;
         }
      }
      
      public static function §3o§() : int
      {
         return §1B§;
      }
      
      public static function §0"O§() : String
      {
         return §!"o§;
      }
      
      public static function §,$§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §!"o§ = param1.split(" ").join("_");
         }
      }
      
      public static function §,S§(param1:*) : §8F§
      {
         return new §[#,§(param1);
      }
      
      public static function §>!C§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §4"C§ = param1;
         }
      }
      
      public static function §8N§() : int
      {
         return §4"C§;
      }
      
      public static function §"" §(... rest) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            §&k§ = new Dictionary();
         }
         var _loc2_:* = int(rest.length);
         while(true)
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               §§push(§§pop());
               if(!_loc4_)
               {
                  §§push(§§pop() - 1);
               }
               _loc2_ = §§pop();
            }
            if(!§§pop())
            {
               if(_loc3_)
               {
                  if(_loc3_)
                  {
                     if(!_loc4_)
                     {
                        §=!J§ = rest.length == 0;
                        addr68:
                        if(!_loc4_)
                        {
                           break;
                        }
                        continue;
                     }
                     addr108:
                     rest[_loc2_] = §<K§.§^m§(rest[_loc2_]);
                     addr106:
                  }
                  addr71:
                  §&k§[rest[_loc2_]] = true;
                  continue;
               }
               §§goto(addr68);
            }
            else
            {
               §§push(rest);
               if(!(_loc4_ && Logging))
               {
                  §§push(_loc2_);
                  if(!_loc4_)
                  {
                     if(§§pop()[§§pop()] is Class)
                     {
                        §§goto(addr106);
                     }
                     §§goto(addr71);
                  }
                  §§goto(addr108);
               }
            }
            §§goto(addr108);
         }
      }
      
      public static function §%"t§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§&k§[param1] == null);
         if(_loc2_ || param1)
         {
            return !§§pop();
         }
      }
   }
}
