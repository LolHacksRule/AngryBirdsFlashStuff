package §<!X§
{
   public class §]d§
   {
      
      public static const §6!f§:String = "_";
      
      public static const §6s§:String = "start";
      
      public static const §1q§:String = "end";
      
      public static const §"!3§:String = "exit";
      
      public static const §&!n§:String = "run";
      
      public static const §-Q§:String = "transition_in";
      
      public static const §<"+§:String = "transition_out";
      
      public static const § K§:String = "default";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §6!f§ = "_";
            loop0:
            while(true)
            {
               §6s§ = "start";
               loop1:
               while(true)
               {
                  §1q§ = "end";
                  while(true)
                  {
                     §"!3§ = "exit";
                     continue loop0;
                     addr66:
                     if(!(_loc1_ && _loc2_))
                     {
                        loop7:
                        while(true)
                        {
                           § K§ = "default";
                           if(!(_loc1_ && _loc2_))
                           {
                              if(_loc2_)
                              {
                                 break;
                              }
                              continue loop1;
                           }
                           addr90:
                           while(_loc2_ || _loc2_)
                           {
                              if(!(_loc2_ || §]d§))
                              {
                                 continue loop0;
                              }
                              §§goto(addr66);
                              continue loop7;
                           }
                           while(_loc2_ || §]d§)
                           {
                              §<"+§ = "transition_out";
                              §§goto(addr42);
                           }
                           addr42:
                           while(true)
                           {
                              §-Q§ = "transition_in";
                              §§goto(addr78);
                           }
                           addr78:
                        }
                        return;
                        addr73:
                     }
                  }
               }
            }
         }
         §§goto(addr73);
      }
      
      public function §]d§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
         }
      }
      
      public static function §>"=§() : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§6s§);
         if(!_loc2_)
         {
            return §§pop() + §6!f§ + §&!n§;
         }
      }
      
      public static function §%"<§() : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§6s§);
         if(_loc2_ || §]d§)
         {
            return §§pop() + §6!f§ + §-Q§ + §6!f§ + § K§;
         }
      }
      
      public static function §>!u§() : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§6s§);
         if(!(_loc3_ && _loc3_))
         {
            return §§pop() + §6!f§ + §<"+§ + §6!f§ + § K§;
         }
      }
      
      public static function §7L§(param1:String = "") : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§6s§);
         if(!_loc4_)
         {
            §§push(§§pop() + §6!f§ + §-Q§);
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               §§push(param1);
               if(!(_loc4_ && _loc2_))
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
                  if(_loc3_ || param1)
                  {
                     _loc2_ = §§pop();
                     addr85:
                     addr86:
                     if(!(_loc4_ && param1))
                     {
                        addr58:
                        §§push(§6!f§ + param1.toLowerCase());
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
      
      public static function § P§(param1:String = "") : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§6s§);
         if(_loc4_ || _loc2_)
         {
            §§push(§§pop() + §6!f§ + §<"+§);
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || _loc2_)
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               §§push(param1);
               if(_loc4_)
               {
                  if(§§pop() != "")
                  {
                     §§goto(addr85);
                  }
                  else
                  {
                     §§push("");
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc3_ && _loc2_)
                  {
                  }
                  §§goto(addr85);
               }
               §§goto(addr59);
            }
            §§goto(addr85);
         }
         addr85:
         if(_loc4_)
         {
            addr59:
            return §6!f§ + param1.toLowerCase();
         }
      }
   }
}
