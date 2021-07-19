package com.furusystems.dconsole2.core.style
{
   import com.furusystems.dconsole2.core.style.fonts.§-"u§;
   import flash.text.TextFormat;
   
   public final class §6!x§
   {
      
      public static const §4"[§:Number = 16;
      
      public static const §<<§:Number = 16;
      
      public static const § "y§:Number = 0;
      
      public static const §1"j§:String;
      
      public static const §+!u§:String;
      
      public static const §9!_§:String;
      
      public static const §]#;§:Number = 16;
      
      public static const §8"D§:TextFormat;
      
      public static const §]!M§:TextFormat;
      
      public static const §!$§:TextFormat;
      
      public static const §9T§:TextFormat;
      
      public static const §9#J§:TextFormat;
      
      public static const §6$§:TextFormat;
      
      public static const §[!L§:TextFormat;
      
      public static const §,!O§:TextFormat;
      
      public static const §[q§:TextFormat;
      
      public static const §6!>§:TextFormat;
      
      public static const §0!V§:TextFormat;
      
      public static const §8W§:TextFormat;
      
      public static const §`!h§:TextFormat;
      
      public static const §;!+§:TextFormat;
      
      public static const §[#N§:TextFormat;
      
      public static const §,!G§:TextFormat;
      
      public static const §#;§:TextFormat;
      
      public static const §'#N§:TextFormat;
      
      public static const §"m§:TextFormat;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §4"[§ = 16;
            loop0:
            while(true)
            {
               §<<§ = 16;
               while(true)
               {
                  § "y§ = 0;
                  while(true)
                  {
                     §1"j§ = §-"u§.§<f§.fontName;
                     loop19:
                     while(_loc1_ || _loc1_)
                     {
                        §;!+§ = §7#D§(§1"j§,§4"[§,§<"I§.§2"T§);
                        loop20:
                        while(true)
                        {
                           if(_loc1_)
                           {
                              if(_loc2_)
                              {
                                 break;
                              }
                              §[#N§ = §7#D§(§1"j§,§4"[§,§<"I§.§&w§);
                              while(_loc1_)
                              {
                                 §,!G§ = §7#D§(§1"j§,§4"[§,§<"I§.§'!0§);
                                 continue loop20;
                              }
                              while(_loc1_)
                              {
                                 §6$§ = §7#D§(§1"j§,§4"[§,§`D§.§'E§);
                                 while(!_loc2_)
                                 {
                                    §[!L§ = §7#D§(§1"j§,§4"[§,§<"I§.§%"r§);
                                    loop13:
                                    while(true)
                                    {
                                       §,!O§ = §7#D§(§1"j§,§4"[§,§<"I§.§'!0§);
                                       loop14:
                                       while(true)
                                       {
                                          §[q§ = §7#D§(§1"j§,§4"[§,§<"I§.§+"'§);
                                          while(true)
                                          {
                                             §6!>§ = §7#D§(§1"j§,§4"[§,§<"I§.§%!U§);
                                             continue loop13;
                                             addr57:
                                             if(_loc1_ || _loc1_)
                                             {
                                                continue loop14;
                                             }
                                          }
                                       }
                                    }
                                    if(_loc1_ || §6!x§)
                                    {
                                       §`!h§ = §7#D§(§1"j§,§4"[§,§<"I§.§>x§);
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          return;
                                       }
                                       continue loop19;
                                       continue loop19;
                                    }
                                 }
                                 while(true)
                                 {
                                    §8"D§ = §7#D§(§9!_§,§]#;§,§<"I§.TEXT_INPUT);
                                    §§goto(addr330);
                                 }
                              }
                              addr138:
                              while(true)
                              {
                                 §!$§ = §7#D§(§1"j§,§4"[§,§<"I§.§9"w§);
                              }
                           }
                           while(true)
                           {
                              §9T§ = §7#D§(§1"j§,§4"[§,§<"I§.§4";§);
                              §§goto(addr298);
                           }
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr358);
      }
      
      public function §6!x§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §%!M§(param1:TextFormat) : TextFormat
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:TextFormat = new TextFormat(param1.font,param1.size,param1.color,param1.bold,param1.italic,param1.underline,param1.url,param1.target,param1.align,param1.leftMargin,param1.rightMargin,param1.indent,param1.leading);
         if(_loc3_ || §6!x§)
         {
            _loc2_.color = §`D§.§4X§ - uint(param1.color);
         }
         return _loc2_;
      }
      
      private static function §7#D§(param1:String, param2:int, param3:uint) : TextFormat
      {
         return new TextFormat(param1,param2,param3,null,null,null,null,null,null,0,0,0,0);
      }
      
      public static function refresh() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §8"D§.color = §<"I§.TEXT_INPUT;
            while(true)
            {
               §]!M§.color = §<"I§.§%"7§;
               addr59:
               if(_loc2_ && §6!x§)
               {
                  continue;
               }
               §'#N§.color = §`D§.§4X§;
               loop17:
               while(true)
               {
                  if(_loc1_)
                  {
                     if(!_loc1_)
                     {
                        break;
                     }
                     continue;
                  }
                  loop14:
                  while(true)
                  {
                     if(!(_loc2_ && §6!x§))
                     {
                        addr87:
                        if(!(_loc2_ && _loc2_))
                        {
                           addr94:
                           if(_loc1_ || _loc1_)
                           {
                              §;!+§.color = §<"I§.§2"T§;
                              while(!_loc2_)
                              {
                                 §[#N§.color = §<"I§.§&w§;
                                 while(_loc1_)
                                 {
                                    addr52:
                                    if(_loc1_ || _loc2_)
                                    {
                                       §§goto(addr59);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §9T§.color = §<"I§.§4";§;
                                          loop3:
                                          while(true)
                                          {
                                             §9#J§.color = §<"I§.§+"'§;
                                             while(true)
                                             {
                                                §6$§.color = §`D§.§'E§;
                                                addr192:
                                                addr117:
                                                while(true)
                                                {
                                                   §[!L§.color = §<"I§.§%"r§;
                                                   break loop17;
                                                }
                                                while(!(_loc2_ && §6!x§))
                                                {
                                                   continue loop3;
                                                }
                                             }
                                          }
                                          §§goto(addr52);
                                       }
                                       addr210:
                                    }
                                 }
                                 loop8:
                                 while(!_loc2_)
                                 {
                                    §6!>§.color = §<"I§.§%!U§;
                                    while(!_loc2_)
                                    {
                                       §,!G§.color = §<"I§.§'!0§;
                                       while(true)
                                       {
                                          §#;§.color = §<"I§.§4";§;
                                          break loop14;
                                          §§goto(addr94);
                                       }
                                    }
                                    while(true)
                                    {
                                       §[q§.color = §<"I§.§+"'§;
                                       continue loop8;
                                    }
                                 }
                                 §§goto(addr192);
                              }
                              while(true)
                              {
                                 if(!_loc2_)
                                 {
                                    addr139:
                                    if(!(_loc1_ || §6!x§))
                                    {
                                       break;
                                    }
                                    §8W§.color = §<"I§.§+"'§;
                                    §§goto(addr117);
                                 }
                                 §§goto(addr164);
                              }
                              while(true)
                              {
                                 §!$§.color = §<"I§.§9"w§;
                                 §§goto(addr210);
                                 §§goto(addr139);
                              }
                              addr137:
                              addr72:
                              addr226:
                           }
                           §§goto(addr158);
                        }
                        break;
                     }
                     §§goto(addr117);
                  }
                  while(true)
                  {
                     §0!V§.color = §<"I§.§4";§;
                     §§goto(addr137);
                     §§goto(addr87);
                  }
               }
               while(true)
               {
                  §,!O§.color = §<"I§.§'!0§;
                  §§goto(addr180);
               }
            }
         }
         §§goto(addr226);
      }
   }
}
