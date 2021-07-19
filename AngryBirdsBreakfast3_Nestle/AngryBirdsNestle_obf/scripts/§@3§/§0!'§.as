package §@3§
{
   public class §0!'§
   {
      
      public static const §6!b§:String = "_";
      
      public static const §9!_§:String = "start";
      
      public static const §8J§:String = "end";
      
      public static const §1"0§:String = "exit";
      
      public static const §@!$§:String = "run";
      
      public static const §@C§:String = "transition_in";
      
      public static const §[!M§:String = "transition_out";
      
      public static const DEFAULT:String = "default";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §6!b§ = "_";
            loop0:
            while(true)
            {
               §9!_§ = "start";
               loop1:
               while(true)
               {
                  §8J§ = "end";
                  while(true)
                  {
                     §1"0§ = "exit";
                     loop3:
                     while(_loc2_ || §0!'§)
                     {
                        continue loop1;
                        addr64:
                        if(!(_loc2_ || _loc1_))
                        {
                           continue;
                        }
                        DEFAULT = "default";
                        addr71:
                        if(!(_loc1_ && _loc2_))
                        {
                           if(!_loc1_)
                           {
                              return;
                              addr81:
                           }
                           while(_loc2_)
                           {
                              §@C§ = "transition_in";
                              loop5:
                              while(true)
                              {
                                 §[!M§ = "transition_out";
                                 addr47:
                                 while(true)
                                 {
                                    if(!(_loc2_ || §0!'§))
                                    {
                                       continue loop5;
                                    }
                                    §§goto(addr64);
                                    §§goto(addr71);
                                 }
                                 continue loop3;
                              }
                           }
                           continue loop0;
                           addr42:
                        }
                        §§goto(addr47);
                     }
                  }
               }
            }
         }
         §§goto(addr42);
      }
      
      public function §0!'§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §=N§() : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§9!_§);
         if(_loc2_)
         {
            return §§pop() + §6!b§ + §@!$§;
         }
      }
      
      public static function §^I§() : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§9!_§);
         if(!_loc2_)
         {
            return §§pop() + §6!b§ + §@C§ + §6!b§ + DEFAULT;
         }
      }
      
      public static function §7!n§() : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§9!_§);
         if(_loc2_)
         {
            return §§pop() + §6!b§ + §[!M§ + §6!b§ + DEFAULT;
         }
      }
      
      public static function §-!h§(param1:String = "") : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§9!_§);
         if(_loc3_)
         {
            §§push(§§pop() + §6!b§ + §@C§);
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            §§push(_loc2_);
            if(!(_loc4_ && _loc3_))
            {
               §§push(param1);
               if(!_loc4_)
               {
                  if(§§pop() != "")
                  {
                     §§goto(addr86);
                  }
                  else
                  {
                     §§push("");
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc3_ || _loc3_)
                  {
                     _loc2_ = §§pop();
                     addr85:
                     addr86:
                     if(!(_loc4_ && §0!'§))
                     {
                        addr58:
                        §§push(§6!b§ + param1.toLowerCase());
                     }
                     return §§pop();
                     §§push(_loc2_);
                  }
                  §§goto(addr86);
               }
               §§goto(addr58);
            }
            §§goto(addr86);
         }
         §§goto(addr85);
      }
      
      public static function §4!>§(param1:String = "") : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§9!_§);
         if(!(_loc4_ && _loc2_))
         {
            §§push(§§pop() + §6!b§ + §[!M§);
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || _loc2_)
         {
            §§push(_loc2_);
            if(!(_loc4_ && §0!'§))
            {
               §§push(param1);
               if(!_loc4_)
               {
                  if(§§pop() != "")
                  {
                     §§goto(addr89);
                  }
                  else
                  {
                     §§push("");
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc4_)
                  {
                  }
                  §§goto(addr89);
               }
               §§goto(addr68);
            }
            §§goto(addr89);
         }
         addr89:
         if(_loc3_ || param1)
         {
            addr68:
            return §6!b§ + param1.toLowerCase();
         }
      }
   }
}
