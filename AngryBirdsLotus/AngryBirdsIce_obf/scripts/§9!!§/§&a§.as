package §9!!§
{
   import §2]§.§#H§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   
   public class §&a§
   {
      
      protected static var §%"§:§#H§;
      
      protected static var §&8§:StatePopupManager;
      
      public static var §<e§:Object;
      
      public static var §;h§:Popup;
      
      public static var §#V§:Boolean;
      
      private static var §7M§:Number;
      
      private static var §1M§:Number;
       
      
      public function §&a§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §][§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§;h§ == null);
         if(!(_loc2_ && _loc2_))
         {
            return !§§pop();
         }
      }
      
      public static function initialize(param1:Stage) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§%"§);
         loop0:
         while(!§§pop())
         {
            §&8§ = new StatePopupManager();
            loop1:
            while(true)
            {
               §%"§ = new §#H§(§&8§);
               loop2:
               while(true)
               {
                  §§push(§%"§);
                  while(true)
                  {
                     §§pop().init(<xml></xml>,new MovieClip());
                     §§push(§%"§);
                     addr105:
                     continue loop2;
                     if(!(_loc2_ && _loc3_))
                     {
                        if(!_loc2_)
                        {
                           §§pop().§>T§();
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
            §§push(§%"§);
            if(_loc3_ || param1)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(§%"§);
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
                              §§push(§%"§);
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
                  §7M§ = param1;
                  while(!_loc4_)
                  {
                     §1M§ = param2;
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
      
      public static function §3B§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §!!!§(new §"<§(§%"§,param1));
         }
      }
      
      public static function §1b§() : void
      {
         try
         {
            §!!!§(new §^!-§(§%"§,§&8§));
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §!!!§(param1:Popup, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(§;h§);
            loop0:
            while(true)
            {
               §§push(§§pop() is §,!&§);
               addr142:
               loop1:
               while(!§§pop())
               {
                  §§push(§;h§);
                  while(§§pop())
                  {
                     §§push(§;h§);
                     continue loop0;
                  }
                  loop9:
                  while(true)
                  {
                     §;h§ = param1;
                     loop7:
                     while(true)
                     {
                        if(!_loc3_)
                        {
                           break loop1;
                        }
                        param1.open(param2);
                        loop8:
                        for(; _loc3_; while(_loc3_ || _loc3_)
                        {
                           continue loop7;
                           setViewSize(§7M§,§1M§);
                           if(_loc3_)
                           {
                              return;
                           }
                        })
                        {
                           while(true)
                           {
                              param1.mClip.addEventListener(§9!"§.§`y§,§#!B§);
                              continue loop8;
                           }
                        }
                        while(true)
                        {
                           continue loop9;
                        }
                        if(!(_loc3_ || §&a§))
                        {
                           continue;
                        }
                        §§goto(addr52);
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr69);
      }
      
      private static function §#!B§(param1:§9!"§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(param1.§-y§ == §;h§)
            {
               if(_loc2_)
               {
                  addr29:
                  §;h§ = null;
               }
            }
            return;
         }
         §§goto(addr29);
      }
   }
}
