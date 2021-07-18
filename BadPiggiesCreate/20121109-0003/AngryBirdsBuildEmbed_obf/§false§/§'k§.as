package §false§
{
   import §!y§.§2U§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   
   public class §'k§
   {
      
      protected static var §<B§:§2U§;
      
      protected static var §!2§:StatePopupManager;
      
      public static var §@-§:Object;
      
      public static var §[4§:Popup;
      
      public static var §4!S§:Boolean;
      
      private static var §9!i§:Number;
      
      private static var §7i§:Number;
       
      
      public function §'k§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §7-§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§[4§ == null);
         if(!_loc1_)
         {
            §§push(!§§pop());
         }
         return §§pop();
      }
      
      public static function initialize(param1:Stage) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§<B§);
         if(!(_loc3_ && param1))
         {
            if(§§pop())
            {
               if(!_loc3_)
               {
                  return;
               }
            }
            else
            {
               §!2§ = new StatePopupManager();
               if(_loc2_ || _loc3_)
               {
                  §<B§ = new §2U§(§!2§);
                  if(!_loc3_)
                  {
                     addr66:
                     §§push(§<B§);
                     if(!(_loc3_ && _loc3_))
                     {
                        addr74:
                        §§pop().init(<xml></xml>,new MovieClip());
                        if(_loc2_)
                        {
                           §§goto(addr83);
                        }
                        §§goto(addr86);
                     }
                     addr83:
                     §<B§.§[T§();
                     §§goto(addr82);
                  }
                  addr82:
                  if(!_loc3_)
                  {
                     addr86:
                     param1.addChild(§<B§.container.mClip);
                  }
                  return;
               }
            }
            §§goto(addr66);
         }
         §§goto(addr74);
      }
      
      public static function setViewSize(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(§<B§);
            if(!(_loc3_ && param2))
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     §§push(§<B§);
                     if(!_loc3_)
                     {
                        §§push(param1);
                        if(!_loc3_)
                        {
                           §§pop().viewWidth = §§pop();
                           if(_loc4_ || _loc3_)
                           {
                              addr66:
                              §<B§.viewHeight = param2;
                              if(_loc4_ || _loc3_)
                              {
                                 addr74:
                                 §9!i§ = param1;
                                 if(_loc4_ || §'k§)
                                 {
                                 }
                              }
                              §§goto(addr87);
                           }
                           §7i§ = param2;
                           addr87:
                           return;
                        }
                     }
                     §§goto(addr66);
                  }
               }
               §§goto(addr74);
            }
            §§goto(addr66);
         }
         §§goto(addr74);
      }
      
      public static function § !Q§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §=l§(new §get §(§<B§,param1));
         }
      }
      
      public static function §14§() : void
      {
         try
         {
            §=l§(new §%!W§(§<B§,§!2§));
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §=l§(param1:Popup, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            §§push(§[4§);
            if(_loc4_ || param1)
            {
               §§push(§§pop() is §3K§);
               if(!(_loc3_ && param1))
               {
                  if(§§pop())
                  {
                     if(_loc4_ || param2)
                     {
                        return;
                     }
                  }
                  else
                  {
                     §§push(§[4§);
                     if(!_loc3_)
                     {
                        if(§§pop())
                        {
                           §§push(§[4§);
                           if(!(_loc3_ && param1))
                           {
                              §§push(§§pop() is §%!W§);
                              if(_loc4_ || param1)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc4_)
                                    {
                                       §§pop();
                                       if(_loc4_)
                                       {
                                          §§push(param1 is §3K§);
                                          if(!(_loc3_ && param1))
                                          {
                                             addr101:
                                             addr100:
                                             if(!§§pop())
                                             {
                                                if(!(_loc3_ && param1))
                                                {
                                                   return;
                                                }
                                             }
                                             §[4§.deActivate();
                                             if(_loc4_ || param1)
                                             {
                                                §§goto(addr131);
                                             }
                                          }
                                          §§goto(addr101);
                                       }
                                       §§goto(addr144);
                                    }
                                 }
                              }
                           }
                           §§goto(addr101);
                        }
                        addr131:
                        §[4§ = param1;
                        §§goto(addr134);
                     }
                     §§goto(addr101);
                  }
                  §§goto(addr144);
               }
               §§goto(addr100);
            }
            §§goto(addr101);
         }
         addr134:
         param1.open(param2);
         if(_loc4_ || param2)
         {
            addr144:
            param1.mClip.addEventListener(§=s§.§>`§,§8%§);
            setViewSize(§9!i§,§7i§);
         }
      }
      
      private static function §8%§(param1:§=s§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(param1.§ !%§ == §[4§)
            {
               if(!_loc2_)
               {
                  §[4§ = null;
               }
            }
         }
      }
   }
}
