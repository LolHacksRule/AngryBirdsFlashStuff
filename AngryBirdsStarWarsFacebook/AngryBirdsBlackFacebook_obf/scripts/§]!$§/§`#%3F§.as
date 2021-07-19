package §]!$§
{
   public class §`#?§
   {
      
      public static const §;h§:String = "_";
      
      public static const §]w§:String = "start";
      
      public static const §1#$§:String = "end";
      
      public static const §;!&§:String = "exit";
      
      public static const §9!F§:String = "run";
      
      public static const §#X§:String = "transition_in";
      
      public static const §5#a§:String = "transition_out";
      
      public static const DEFAULT:String = "default";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §;h§ = "_";
            while(true)
            {
               §]w§ = "start";
               loop1:
               for(; !(_loc2_ && §`#?§); if(!(_loc1_ || _loc1_))
               {
                  continue;
               },§#X§ = "transition_in",addr41:,§§goto(addr31))
               {
                  §1#$§ = "end";
                  loop2:
                  while(true)
                  {
                     §;!&§ = "exit";
                     loop3:
                     while(true)
                     {
                        §9!F§ = "run";
                        loop4:
                        while(true)
                        {
                           if(_loc2_ && _loc2_)
                           {
                              continue loop3;
                              do
                              {
                                 if(!(_loc2_ && §`#?§))
                                 {
                                    continue;
                                 }
                                 continue loop4;
                              }
                              while(§5#a§ = "transition_out", do
                              {
                                 DEFAULT = "default";
                              }
                              while(!_loc1_);
                              , !_loc1_);
                              
                           }
                           continue loop2;
                           §§goto(addr41);
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         addr31:
      }
      
      public function §`#?§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §[! §() : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§]w§);
         if(_loc2_ || §`#?§)
         {
            return §§pop() + §;h§ + §9!F§;
         }
      }
      
      public static function §9!-§() : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§]w§);
         if(!_loc2_)
         {
            return §§pop() + §;h§ + §#X§ + §;h§ + DEFAULT;
         }
      }
      
      public static function §`J§() : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§]w§);
         if(!(_loc2_ && _loc2_))
         {
            return §§pop() + §;h§ + §5#a§ + §;h§ + DEFAULT;
         }
      }
      
      public static function §@!!§(param1:String = "") : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§]w§);
         if(!(_loc4_ && _loc2_))
         {
            §§push(§§pop() + §;h§ + §#X§);
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && _loc2_))
         {
            §§push(_loc2_);
            if(_loc3_ || _loc3_)
            {
               §§push(param1);
               if(!_loc4_)
               {
                  if(§§pop() != "")
                  {
                     if(!(_loc4_ && _loc2_))
                     {
                        addr75:
                        addr68:
                        §§push(§§pop() + (§;h§ + param1.toLowerCase()));
                        if(_loc4_ && _loc3_)
                        {
                        }
                        §§goto(addr96);
                     }
                     _loc2_ = §§pop();
                     addr95:
                     addr96:
                     return §§pop();
                     §§push(_loc2_);
                  }
                  else
                  {
                     §§push("");
                  }
                  §§goto(addr75);
               }
               §§goto(addr68);
            }
            §§goto(addr75);
         }
         §§goto(addr95);
      }
      
      public static function §8#@§(param1:String = "") : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§]w§);
         if(_loc4_)
         {
            §§push(§§pop() + §;h§ + §5#a§);
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               §§push(param1);
               if(_loc4_ || §`#?§)
               {
                  if(§§pop() != "")
                  {
                     if(!_loc3_)
                     {
                        addr71:
                        addr54:
                        §§push(§§pop() + (§;h§ + param1.toLowerCase()));
                        if(!_loc4_)
                        {
                        }
                        §§goto(addr77);
                     }
                     _loc2_ = §§pop();
                     addr76:
                     addr77:
                     return §§pop();
                     §§push(_loc2_);
                  }
                  else
                  {
                     §§push("");
                  }
                  §§goto(addr71);
               }
               §§goto(addr54);
            }
            §§goto(addr71);
         }
         §§goto(addr76);
      }
   }
}
