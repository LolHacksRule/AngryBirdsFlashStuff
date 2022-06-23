package §2?§
{
   import §0w§.§0#§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   
   public class §3!#§
   {
      
      protected static var §0y§:§0#§;
      
      protected static var §%§:StatePopupManager;
      
      public static var §#!$§:Object;
      
      public static var §4e§:Popup;
      
      public static var §!K§:Boolean;
      
      private static var §9Z§:Number;
      
      private static var §4!!§:Number;
       
      
      public function §3!#§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
         }
      }
      
      public static function §?T§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§4e§ == null);
         if(_loc1_ || §3!#§)
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
            §§push(§0y§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  return;
               }
               §%§ = new StatePopupManager();
               if(!(_loc2_ && param1))
               {
                  §0y§ = new §0#§(§%§);
                  §§push(§0y§);
                  if(!_loc2_)
                  {
                     §§pop().init(<xml></xml>,new MovieClip());
                  }
                  §§goto(addr72);
               }
               §§push(§0y§);
            }
            §§goto(addr72);
         }
         addr72:
         §§pop().§@`§();
         param1.addChild(§0y§.container.mClip);
      }
      
      public static function setViewSize(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && §3!#§))
         {
            §§push(§0y§);
            if(_loc4_ || param1)
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     addr45:
                     §§push(§0y§);
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
                  §§push(§0y§);
                  §§push(param2);
               }
               §9Z§ = param1;
               if(_loc4_)
               {
                  addr84:
                  §4!!§ = param2;
               }
               return;
            }
            §§goto(addr75);
         }
         §§goto(addr45);
      }
      
      public static function §?!!§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §`4§(new §<5§(§0y§,param1));
         }
      }
      
      public static function §+§() : void
      {
         try
         {
            §`4§(new §^!-§(§0y§,§%§));
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §`4§(param1:Popup, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§4e§);
         if(!(_loc4_ && param2))
         {
            §§push(§§pop() is §?4§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  return;
               }
               §§push(§4e§);
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc3_ || param1)
                     {
                        §§push(§4e§);
                        if(_loc3_ || param1)
                        {
                           addr49:
                           §§push(§§pop() is §^!-§);
                           if(_loc3_ || param2)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    §§pop();
                                    if(_loc3_)
                                    {
                                       §§push(param1 is §?4§);
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
                                    §4e§.deActivate();
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
                  §4e§ = param1;
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr119);
                  }
                  addr119:
                  param1.open(param2);
                  if(!_loc4_)
                  {
                     addr124:
                     param1.mClip.addEventListener(§;!#§.§'A§,§9n§);
                     if(_loc3_ || §3!#§)
                     {
                        setViewSize(§9Z§,§4!!§);
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
      
      private static function §9n§(param1:§;!#§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(param1.§case§ == §4e§)
            {
               if(!_loc3_)
               {
                  addr24:
                  §4e§ = null;
               }
            }
            return;
         }
         §§goto(addr24);
      }
   }
}
