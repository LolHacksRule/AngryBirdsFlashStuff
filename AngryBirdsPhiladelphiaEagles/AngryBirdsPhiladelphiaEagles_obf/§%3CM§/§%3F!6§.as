package §<M§
{
   import §]!-§.§`o§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   
   public class §?!6§
   {
      
      protected static var §2%§:§`o§;
      
      protected static var §#!6§:StatePopupManager;
      
      public static var §;u§:Object;
      
      public static var §7§:Popup;
      
      public static var §'N§:Boolean;
      
      private static var §>$§:Number;
      
      private static var §'F§:Number;
       
      
      public function §?!6§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §%!7§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§7§ == null);
         if(!(_loc2_ && _loc2_))
         {
            return !§§pop();
         }
      }
      
      public static function initialize(param1:Stage) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§2%§);
         loop0:
         while(!§§pop())
         {
            §#!6§ = new StatePopupManager();
            loop1:
            while(true)
            {
               §2%§ = new §`o§(§#!6§);
               loop2:
               while(true)
               {
                  §§push(§2%§);
                  while(true)
                  {
                     §§pop().init(<xml></xml>,new MovieClip());
                     §§push(§2%§);
                     addr105:
                     continue loop2;
                     if(!(_loc2_ && _loc3_))
                     {
                        if(!_loc2_)
                        {
                           §§pop().§[C§();
                           continue loop1;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
      }
      
      public static function setViewSize(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            §§push(§2%§);
            if(_loc3_ || param1)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(§2%§);
                     addr105:
                     loop5:
                     while(true)
                     {
                        §§push(param1);
                        loop6:
                        while(true)
                        {
                           §§pop().viewWidth = §§pop();
                           addr107:
                           addr69:
                           addr80:
                           while(true)
                           {
                              §§push(§2%§);
                              if(!(_loc4_ && param2))
                              {
                                 §§push(param2);
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 continue loop6;
                              }
                              continue loop5;
                           }
                           §§pop().viewHeight = §§pop();
                           addr94:
                           while(true)
                           {
                              if(!(_loc4_ && _loc3_))
                              {
                                 continue loop0;
                              }
                              §§goto(addr107);
                              §§goto(addr69);
                           }
                           addr94:
                        }
                     }
                  }
               }
               while(true)
               {
                  §>$§ = param1;
                  while(!_loc4_)
                  {
                     §'F§ = param2;
                     if(!(_loc4_ && param2))
                     {
                        return;
                        addr49:
                     }
                  }
                  §§goto(addr80);
                  §§goto(addr94);
               }
            }
            §§goto(addr105);
         }
         §§goto(addr49);
      }
      
      public static function §4,§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §6'§(new §5?§(§2%§,param1));
         }
      }
      
      public static function §<!>§() : void
      {
         try
         {
            §6'§(new §]!=§(§2%§,§#!6§));
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §1%§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(!(§7§ is §>!"§))
            {
               if(!(_loc2_ && _loc1_))
               {
                  §?!6§.§6'§(new §>!"§(§2%§,§#!6§));
               }
            }
         }
      }
      
      public static function §6'§(param1:Popup, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§7§);
         loop0:
         while(true)
         {
            §§push(§§pop() is §]!N§);
            loop1:
            while(!§§pop())
            {
               §§push(§7§);
               loop2:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop9:
                     while(true)
                     {
                        §7§ = param1;
                        param1.open(param2);
                        for(; _loc3_; setViewSize(§>$§,§'F§),if(_loc3_)
                        {
                           if(_loc3_)
                           {
                              break loop9;
                           }
                           continue loop9;
                        })
                        {
                           param1.mClip.addEventListener(§%,§.§=a§,§>r§);
                           if(!(_loc3_ || _loc3_))
                           {
                              while(true)
                              {
                                 §§push(§7§);
                                 if(_loc3_ || param1)
                                 {
                                    if(_loc3_)
                                    {
                                       continue loop0;
                                    }
                                    continue loop2;
                                 }
                                 §§goto(addr129);
                              }
                              continue loop0;
                              addr75:
                           }
                           if(_loc3_ || §?!6§)
                           {
                              continue;
                           }
                           §§goto(addr123);
                        }
                        §§goto(addr141);
                        addr94:
                        while(true)
                        {
                           continue loop9;
                        }
                     }
                     return;
                  }
                  §§push(§7§);
                  loop3:
                  while(true)
                  {
                     §§push(§§pop() is §]!=§);
                     if(!(_loc4_ && _loc3_))
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr141:
                              while(true)
                              {
                                 §§push(param1 is §]!N§);
                                 if(_loc3_ || param1)
                                 {
                                    if(!_loc3_)
                                    {
                                       break;
                                    }
                                    §§push(!§§pop());
                                 }
                                 if(_loc4_)
                                 {
                                    continue;
                                 }
                              }
                              continue loop1;
                           }
                           addr140:
                        }
                        while(!§§pop())
                        {
                           continue loop3;
                        }
                        addr123:
                        return;
                     }
                     §§goto(addr140);
                  }
                  addr129:
                  §§goto(addr75);
               }
            }
            return;
         }
      }
      
      private static function §>r§(param1:§%,§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || §?!6§)
         {
            if(param1.§^5§ == §7§)
            {
               if(_loc2_)
               {
                  addr29:
                  §7§ = null;
               }
            }
            return;
         }
         §§goto(addr29);
      }
   }
}
