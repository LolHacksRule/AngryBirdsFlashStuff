package §=!4§
{
   import §1;§.§!!1§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   
   public class §>y§
   {
      
      protected static var §18§:§!!1§;
      
      protected static var §3m§:StatePopupManager;
      
      public static var §^!G§:Object;
      
      public static var §#^§:Popup;
      
      public static var §;G§:Boolean;
      
      private static var §92§:Number;
      
      private static var §%`§:Number;
       
      
      public function §>y§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
         }
      }
      
      public static function §7e§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§#^§ == null);
         if(_loc1_ || §>y§)
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
            §§push(§18§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  return;
               }
               §3m§ = new StatePopupManager();
               if(!(_loc2_ && param1))
               {
                  §18§ = new §!!1§(§3m§);
                  §§push(§18§);
                  if(!_loc2_)
                  {
                     §§pop().init(<xml></xml>,new MovieClip());
                  }
                  §§goto(addr72);
               }
               §§push(§18§);
            }
            §§goto(addr72);
         }
         addr72:
         §§pop().§+,§();
         param1.addChild(§18§.container.mClip);
      }
      
      public static function setViewSize(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && §>y§))
         {
            §§push(§18§);
            if(_loc4_ || param1)
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     addr45:
                     §§push(§18§);
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
                  §§push(§18§);
                  §§push(param2);
               }
               §92§ = param1;
               if(_loc4_)
               {
                  addr84:
                  §%`§ = param2;
               }
               return;
            }
            §§goto(addr75);
         }
         §§goto(addr45);
      }
      
      public static function §]>§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §@m§(new §24§(§18§,param1));
         }
      }
      
      public static function §2K§() : void
      {
         try
         {
            §@m§(new §+x§(§18§,§3m§));
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §@m§(param1:Popup, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§#^§);
         if(!(_loc4_ && param2))
         {
            §§push(§§pop() is §^^§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  return;
               }
               §§push(§#^§);
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc3_ || param1)
                     {
                        §§push(§#^§);
                        if(_loc3_ || param1)
                        {
                           addr49:
                           §§push(§§pop() is §+x§);
                           if(_loc3_ || param2)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    §§pop();
                                    if(_loc3_)
                                    {
                                       §§push(param1 is §^^§);
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
                                    §#^§.deActivate();
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
                  §#^§ = param1;
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr119);
                  }
                  addr119:
                  param1.open(param2);
                  if(!_loc4_)
                  {
                     addr124:
                     param1.mClip.addEventListener(§;=§.§"!G§,§0B§);
                     if(_loc3_ || §>y§)
                     {
                        setViewSize(§92§,§%`§);
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
      
      private static function §0B§(param1:§;=§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(param1.§=!5§ == §#^§)
            {
               if(!_loc3_)
               {
                  addr24:
                  §#^§ = null;
               }
            }
            return;
         }
         §§goto(addr24);
      }
   }
}
