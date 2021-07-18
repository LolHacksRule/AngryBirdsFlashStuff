package §@!"§
{
   import §"a§.§!"J§;
   import §%"J§.§3!O§;
   import §+!c§.§>!D§;
   import §,"R§.§>!E§;
   import §-f§.§8!<§;
   import §-p§.§7"4§;
   import §4!<§.§'!S§;
   import §9!n§.§0"T§;
   import flash.geom.Rectangle;
   
   public class §?l§
   {
      
      public static var §7!H§:int = 0;
      
      public static var §<"P§:int = 0;
      
      public static var §'h§:§'!S§;
      
      public static var §#"$§:§>!D§;
      
      public static var §#V§:Boolean = false;
      
      public static var §6";§:§?l§ = null;
      
      public static var § "G§:§3!O§;
      
      public static var §^q§:Boolean = true;
      
      public static var §,"Z§:Number = 1;
      
      public static var §+!9§:Number = 1.0;
      
      public static var §0!S§:Number = 1.0;
      
      private static var §1c§:§7"4§ = null;
      
      private static var §,L§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §7!H§ = 0;
            while(true)
            {
               §<"P§ = 0;
               addr136:
               while(true)
               {
                  §#V§ = false;
               }
               addr97:
               if(!_loc2_)
               {
                  continue;
               }
               §0!S§ = 1;
               do
               {
                  §1c§ = null;
                  do
                  {
                     §,L§ = false;
                  }
                  while(_loc1_);
                  
               }
               while(_loc1_ && §?l§);
               
               addr109:
               if(!(_loc1_ && §?l§))
               {
                  addr49:
                  if(_loc1_)
                  {
                     loop4:
                     while(true)
                     {
                        §,"Z§ = 1;
                        loop5:
                        while(true)
                        {
                           §+!9§ = 1;
                           addr76:
                           addr131:
                           while(true)
                           {
                              if(_loc1_ && _loc2_)
                              {
                                 continue loop5;
                              }
                              addr83:
                              if(!(_loc1_ && §?l§))
                              {
                                 addr90:
                                 if(!(_loc2_ || §?l§))
                                 {
                                    break;
                                 }
                                 §§goto(addr97);
                              }
                              while(!_loc1_)
                              {
                                 §^q§ = true;
                                 continue loop4;
                                 §§goto(addr83);
                              }
                              §§goto(addr136);
                              §§goto(addr109);
                           }
                           while(true)
                           {
                              §6";§ = null;
                              §§goto(addr124);
                              §§goto(addr90);
                           }
                        }
                     }
                  }
                  return;
               }
               §§goto(addr76);
            }
         }
         §§goto(addr131);
      }
      
      public function §?l§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      public static function §""E§() : Number
      {
         return §7!H§ * §+!9§;
      }
      
      public static function §5&§() : Number
      {
         return §<"P§ * §0!S§;
      }
      
      public static function pause() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            if(!§,L§)
            {
               loop0:
               while(true)
               {
                  §,L§ = true;
                  while(true)
                  {
                     §§push(§!"J§.§<!C§);
                     if(_loc1_ || _loc2_)
                     {
                        if(§§pop())
                        {
                           while(!(_loc2_ && _loc2_))
                           {
                              §§push(§!"J§.§<!C§);
                              while(true)
                              {
                                 §§pop().isPaused = true;
                                 addr104:
                                 while(true)
                                 {
                                 }
                              }
                              if(!(_loc2_ && §?l§))
                              {
                                 §§goto(addr24);
                              }
                           }
                           continue;
                        }
                        loop3:
                        while(true)
                        {
                           §§push(§!"J§.§1&§);
                           if(_loc1_ || _loc2_)
                           {
                              if(§§pop())
                              {
                                 if(_loc1_)
                                 {
                                    continue loop0;
                                 }
                              }
                              break;
                           }
                           addr55:
                           while(true)
                           {
                              §§pop().§>"1§(false);
                           }
                           while(true)
                           {
                              if(_loc2_ && _loc1_)
                              {
                                 continue loop3;
                              }
                              §§goto(addr64);
                           }
                        }
                        §§goto(addr24);
                     }
                     §§goto(addr102);
                  }
               }
            }
            addr24:
            return;
         }
         §§goto(addr53);
      }
      
      public static function resume() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(§,L§)
            {
               loop0:
               while(true)
               {
                  §,L§ = false;
                  loop1:
                  while(true)
                  {
                     §§push(§!"J§.§<!C§);
                     if(!_loc2_)
                     {
                        if(!§§pop())
                        {
                           while(true)
                           {
                              §§push(§!"J§.§1&§);
                              if(!_loc2_)
                              {
                                 if(!§§pop())
                                 {
                                    return;
                                 }
                                 if(_loc1_)
                                 {
                                    addr31:
                                    if(_loc2_ && _loc1_)
                                    {
                                       while(!(_loc2_ && _loc2_))
                                       {
                                          §§push(§!"J§.§<!C§);
                                          while(true)
                                          {
                                             §§pop().isPaused = false;
                                             continue loop0;
                                          }
                                          §§goto(addr31);
                                       }
                                       continue loop1;
                                       addr76:
                                    }
                                    addr50:
                                    §!"J§.§1&§.§>"1§(true);
                                 }
                                 if(_loc1_ || _loc2_)
                                 {
                                    break;
                                 }
                                 continue loop0;
                                 addr19:
                              }
                              §§goto(addr50);
                              addr94:
                           }
                           addr59:
                           §§goto(addr19);
                        }
                        §§goto(addr76);
                     }
                     §§goto(addr85);
                  }
               }
            }
            §§goto(addr19);
         }
         §§goto(addr59);
      }
      
      public static function get isPaused() : Boolean
      {
         return §,L§;
      }
      
      public static function init(param1:§3!O§, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            § "G§ = param1;
            while(true)
            {
               §7!H§ = param2;
               loop1:
               for(; _loc5_ || param1; while(!(_loc4_ && §?l§))
               {
                  §#"$§ = new §>!D§(true,param1.canvas);
                  if(!_loc4_)
                  {
                     return;
                  }
               })
               {
                  while(true)
                  {
                     §<"P§ = param3;
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr83);
      }
      
      public static function §`!I§(param1:XML, param2:XML) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || §?l§)
         {
            §8!<§.§`!I§(param1,param2);
         }
      }
      
      public static function §&!_§(param1:§>!E§, param2:Array, param3:Function = null) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            §'h§.§&!_§(param1,param2,param3);
         }
      }
      
      public static function §,!m§(param1:§0"T§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §'h§.init(param1);
         }
      }
      
      public static function setController(param1:§7"4§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §1c§ = param1;
            do
            {
               §'h§.setController(param1);
            }
            while(!_loc3_);
            
         }
      }
      
      public static function get §5-§() : §7"4§
      {
         return §1c§;
      }
      
      public static function §%"7§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §^q§ = param1;
            do
            {
               §'h§.background.§%"7§(param1);
            }
            while(!_loc3_);
            
         }
      }
      
      public static function §'!R§() : Boolean
      {
         return §^q§;
      }
      
      public static function §4!c§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param2))
         {
            §§push(param4);
            loop0:
            while(true)
            {
               §§push(32);
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     while(true)
                     {
                        §§push(32);
                        addr185:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           addr186:
                           while(true)
                           {
                              param4 = §§pop();
                              addr187:
                              while(true)
                              {
                              }
                           }
                        }
                     }
                     addr184:
                  }
                  while(true)
                  {
                     §§push(param3);
                     if(!(_loc6_ || param2))
                     {
                        continue loop0;
                     }
                     if(_loc6_ || param1)
                     {
                        §§push(32);
                        if(!_loc6_)
                        {
                           break;
                        }
                        if(§§pop() >= §§pop())
                        {
                           loop8:
                           while(true)
                           {
                              §,"Z§ = Math.min(param3 / §7!H§,param4 / §<"P§);
                              while(true)
                              {
                                 §§push(§§findproperty(§+!9§));
                                 §§push(param3);
                                 if(!_loc5_)
                                 {
                                    §§push(§§pop() / §7!H§);
                                 }
                                 §§pop().§+!9§ = §§pop();
                                 loop10:
                                 for(; !_loc5_; do
                                 {
                                    if(!(_loc5_ && param2))
                                    {
                                       continue;
                                    }
                                    continue loop10;
                                 }
                                 while(§'h§.§=r§(param3,param4), !(_loc6_ || param2));
                                 ,§§goto(addr41))
                                 {
                                    while(true)
                                    {
                                       §§push(§§findproperty(§0!S§));
                                       §§push(param4);
                                       if(!_loc5_)
                                       {
                                          §§push(§§pop() / §<"P§);
                                       }
                                       §§pop().§0!S§ = §§pop();
                                       addr93:
                                       for(; _loc6_ || param2; if(_loc6_ || param1)
                                       {
                                          return;
                                       })
                                       {
                                          if(!(_loc5_ && param3))
                                          {
                                             §!"J§.§8N§ = new Rectangle(param1,param2,param3,param4);
                                             do
                                             {
                                                if(_loc6_)
                                                {
                                                   §!"J§.§8!'§ = true;
                                                   continue loop10;
                                                }
                                                addr178:
                                                while(_loc6_)
                                                {
                                                   continue loop8;
                                                }
                                             }
                                             while(!_loc6_);
                                             
                                             continue;
                                          }
                                          §§goto(addr184);
                                          §§goto(addr187);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§push(32);
                           if(_loc5_ && param1)
                           {
                              break;
                           }
                           §§push(Number(§§pop()));
                           continue loop0;
                           §§goto(addr93);
                        }
                        §§goto(addr185);
                     }
                     §§goto(addr186);
                  }
               }
            }
         }
         §§goto(addr118);
      }
   }
}
