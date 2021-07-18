package com.furusystems.dconsole2.core.style
{
   public class §<"I§
   {
      
      public static var §9"w§:uint = 8755456;
      
      public static var §%!U§:uint = 8755456;
      
      public static var §+"'§:uint = 8755456;
      
      public static var §'!0§:uint = 8755456;
      
      public static var §>x§:uint = 8755456;
      
      public static var §2"T§:uint = 8755456;
      
      public static var §&w§:uint = 8755456;
      
      public static var §4";§:uint = 8755456;
      
      public static var §%"7§:uint = 8755456;
      
      public static var TEXT_INPUT:uint = 8755456;
      
      public static var §%"r§:uint = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §<"I§))
         {
            §9"w§ = 8755456;
            while(true)
            {
               §%!U§ = 8755456;
               loop9:
               while(!(_loc1_ && _loc1_))
               {
                  §%"r§ = 0;
                  if(!(_loc2_ || _loc1_))
                  {
                     continue;
                  }
                  addr40:
                  if(_loc2_ || _loc2_)
                  {
                     if(_loc2_)
                     {
                        addr49:
                        if(!(_loc1_ && _loc2_))
                        {
                           return;
                        }
                        loop5:
                        for(; _loc2_ || §<"I§; §§goto(addr49))
                        {
                           §&w§ = 8755456;
                           loop6:
                           while(true)
                           {
                              §4";§ = 8755456;
                              addr95:
                              while(true)
                              {
                                 if(_loc1_ && _loc1_)
                                 {
                                    continue loop6;
                                 }
                                 if(_loc1_)
                                 {
                                    break;
                                 }
                                 §%"7§ = 8755456;
                                 while(_loc2_ || _loc2_)
                                 {
                                    TEXT_INPUT = 8755456;
                                    continue loop9;
                                    §§goto(addr40);
                                 }
                                 while(true)
                                 {
                                    §2"T§ = 8755456;
                                    continue loop5;
                                    §§goto(addr83);
                                 }
                                 addr83:
                              }
                              addr153:
                              while(true)
                              {
                                 §'!0§ = 8755456;
                                 break loop5;
                              }
                           }
                        }
                        while(_loc2_ || _loc2_)
                        {
                           §>x§ = 8755456;
                           §§goto(addr126);
                           §§goto(addr114);
                        }
                        addr114:
                        while(true)
                        {
                           §+"'§ = 8755456;
                           §§goto(addr153);
                           §§goto(addr131);
                        }
                        addr131:
                        addr158:
                     }
                     §§goto(addr95);
                  }
                  §§goto(addr83);
               }
            }
         }
         §§goto(addr158);
      }
      
      public function §<"I§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function update(param1:§7"h§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §9"w§ = param1.theme.data.output.text.user;
            loop0:
            while(true)
            {
               §%!U§ = param1.theme.data.output.text.system;
               while(true)
               {
                  §+"'§ = param1.theme.data.output.text.debug;
                  loop2:
                  for(; !(_loc2_ && _loc2_); if(_loc2_ && _loc2_)
                  {
                     continue;
                  },if(!_loc3_)
                  {
                     continue loop0;
                  },§%"7§ = param1.theme.data.assistant.fore,while(!_loc2_)
                  {
                     TEXT_INPUT = param1.theme.data.input.fore;
                     if(_loc2_)
                     {
                        continue;
                     }
                     if(!_loc2_)
                     {
                        §§goto(addr41);
                     }
                     §§goto(addr69);
                  },§§goto(addr127))
                  {
                     §'!0§ = param1.theme.data.output.text.info;
                     loop3:
                     while(true)
                     {
                        §>x§ = param1.theme.data.output.text.warning;
                        while(true)
                        {
                           §2"T§ = param1.theme.data.output.text.error;
                           continue loop3;
                           addr71:
                           if(_loc3_ || _loc2_)
                           {
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr154);
      }
   }
}
