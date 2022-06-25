package §;!B§
{
   import §<!G§.§^3§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   
   public class §5U§
   {
      
      protected static var §5q§:§^3§;
      
      protected static var §8!H§:StatePopupManager;
      
      public static var §@H§:Object;
      
      public static var §!%§:Popup;
      
      public static var §,P§:Boolean;
      
      private static var §]!1§:Number;
      
      private static var §5t§:Number;
       
      
      public function §5U§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
         }
      }
      
      public static function §7;§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§!%§ == null);
         if(_loc1_ || §5U§)
         {
            §§push(!§§pop());
         }
         return §§pop();
      }
      
      public static function initialize(param1:Stage) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(§5q§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  return;
               }
               §8!H§ = new StatePopupManager();
               if(!(_loc2_ && param1))
               {
                  §5q§ = new §^3§(§8!H§);
                  §§push(§5q§);
                  if(!_loc2_)
                  {
                     §§pop().init(<xml></xml>,new MovieClip());
                  }
                  §§goto(addr72);
               }
               §§push(§5q§);
            }
            §§goto(addr72);
         }
         addr72:
         §§pop().§<!&§();
         param1.addChild(§5q§.container.mClip);
      }
      
      public static function setViewSize(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && §5U§))
         {
            §§push(§5q§);
            if(_loc4_ || param1)
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     addr45:
                     §§push(§5q§);
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(param1);
                        if(!_loc3_)
                        {
                           §§pop().viewWidth = §§pop();
                           §§goto(addr79);
                        }
                        §§pop().viewHeight = §§pop();
                        if(!_loc4_)
                        {
                        }
                        §§goto(addr79);
                     }
                     §§goto(addr75);
                  }
                  §§goto(addr84);
               }
               addr79:
               if(_loc4_ || _loc3_)
               {
                  addr75:
                  §§push(§5q§);
                  §§push(param2);
               }
               §]!1§ = param1;
               if(_loc4_)
               {
                  addr84:
                  §5t§ = param2;
               }
               return;
            }
            §§goto(addr75);
         }
         §§goto(addr45);
      }
      
      public static function §+w§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §49§(new §9%§(§5q§,param1));
         }
      }
      
      public static function §?7§() : void
      {
         try
         {
            §49§(new §[!E§(§5q§,§8!H§));
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §49§(param1:Popup, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§!%§);
         if(!(_loc4_ && param2))
         {
            §§push(§§pop() is §`C§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  return;
               }
               §§push(§!%§);
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc3_ || param1)
                     {
                        §§push(§!%§);
                        if(_loc3_ || param1)
                        {
                           addr49:
                           §§push(§§pop() is §[!E§);
                           if(_loc3_ || param2)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    §§pop();
                                    if(_loc3_)
                                    {
                                       §§push(param1 is §`C§);
                                       if(!_loc4_)
                                       {
                                          addr86:
                                          if(!§§pop())
                                          {
                                             if(_loc3_ || param2)
                                             {
                                                return;
                                             }
                                             §§goto(addr119);
                                          }
                                          §§goto(addr124);
                                       }
                                       §§goto(addr86);
                                    }
                                    addr96:
                                    §!%§.deActivate();
                                    if(!_loc4_)
                                    {
                                       §§goto(addr99);
                                    }
                                    §§goto(addr124);
                                 }
                              }
                           }
                           §§goto(addr86);
                        }
                        §§goto(addr96);
                     }
                     §§goto(addr124);
                  }
                  addr99:
                  §!%§ = param1;
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr119);
                  }
                  addr119:
                  param1.open(param2);
                  if(!_loc4_)
                  {
                     addr124:
                     param1.mClip.addEventListener(§7$§.§^O§,§0!$§);
                     if(_loc3_ || §5U§)
                     {
                        setViewSize(§]!1§,§5t§);
                     }
                  }
                  return;
               }
               §§goto(addr49);
            }
            §§goto(addr86);
         }
         §§goto(addr96);
      }
      
      private static function §0!$§(param1:§7$§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(param1.§ set§ == §!%§)
            {
               if(!_loc3_)
               {
                  addr24:
                  §!%§ = null;
               }
            }
            return;
         }
         §§goto(addr24);
      }
   }
}
