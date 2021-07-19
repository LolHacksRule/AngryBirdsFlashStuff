package §?!'§
{
   import §&!<§.§>!V§;
   import §-"'§.§-!p§;
   import §-"'§.§8!5§;
   import §-"'§.§=!e§;
   import §;" §.§>"0§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   
   public class §]!]§
   {
      
      public static var §]!H§:§>!V§;
      
      private static var §4!i§:StatePopupManager;
      
      public static var §<"2§:Object;
      
      public static var §>!4§:Popup;
      
      public static var §9!4§:Boolean;
      
      private static var §"!]§:Number;
      
      private static var §'"&§:Number;
      
      private static var §9I§:MovieClip;
      
      private static var § !O§:Vector.<Popup>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            § !O§ = new Vector.<Popup>();
         }
      }
      
      public function §]!]§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §9!5§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§>!4§ == null);
         if(!_loc1_)
         {
            return !§§pop();
         }
      }
      
      public static function initialize(param1:Stage) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(§]!H§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     §4!i§ = new StatePopupManager();
                     loop2:
                     while(_loc3_)
                     {
                        §]!H§ = new §>!V§(§4!i§);
                        loop3:
                        while(true)
                        {
                           §§push(§]!H§);
                           while(!_loc2_)
                           {
                              §§pop().init(<xml></xml>,new MovieClip());
                              §§push(§]!H§);
                              continue loop3;
                              if(_loc3_)
                              {
                                 addr61:
                                 §§pop().§6!<§();
                                 do
                                 {
                                    param1.addChild(§]!H§.container.mClip);
                                 }
                                 while(!(_loc3_ || _loc2_));
                                 
                                 if(_loc3_)
                                 {
                                    if(_loc3_)
                                    {
                                       return;
                                    }
                                    continue loop2;
                                 }
                                 continue loop3;
                              }
                           }
                           continue loop0;
                        }
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
         if(!(_loc4_ && §]!]§))
         {
            §§push(§]!H§);
            while(true)
            {
               if(§§pop())
               {
                  if(!_loc4_)
                  {
                     §§push(§]!H§);
                     loop1:
                     while(true)
                     {
                        §§push(param1);
                        addr96:
                        while(true)
                        {
                           §§pop().viewWidth = §§pop();
                           continue loop1;
                        }
                     }
                     addr95:
                  }
                  while(true)
                  {
                     §§push(§]!H§);
                     if(!(_loc4_ && param2))
                     {
                        if(_loc4_)
                        {
                           break;
                        }
                        §§push(param2);
                        if(!(_loc4_ && _loc3_))
                        {
                           §§pop().viewHeight = §§pop();
                           while(true)
                           {
                              §§goto(addr52);
                           }
                        }
                     }
                     else
                     {
                        §§goto(addr95);
                     }
                     §§goto(addr96);
                  }
                  continue;
               }
               addr52:
               §§goto(addr51);
            }
         }
         addr51:
         while(true)
         {
            §"!]§ = param1;
            while(true)
            {
               if(_loc3_)
               {
                  continue;
               }
               continue loop3;
            }
            continue loop4;
         }
         addr51:
      }
      
      public static function §!!<§() : §1!k§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§1!k§ = new §1!k§(§]!H§,§4!i§);
         if(!_loc3_)
         {
            §&!N§(_loc1_);
         }
         return _loc1_;
      }
      
      public static function §-!T§() : §@3§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§@3§ = new §@3§(§]!H§,§4!i§);
         if(!_loc2_)
         {
            §&!N§(_loc1_);
         }
         return _loc1_;
      }
      
      public static function §&§() : §2!"§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§2!"§ = new §2!"§(§]!H§,§4!i§);
         if(_loc2_)
         {
            §&!N§(_loc1_);
         }
         return _loc1_;
      }
      
      public static function §-!H§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§-!p§ = new §-!p§(§]!H§,param1,§4!i§);
         if(!(_loc3_ && param1))
         {
            §&!N§(_loc2_,true,false);
         }
      }
      
      public static function §04§(param1:§>"0§) : §8!5§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§8!5§ = new §8!5§(§]!H§,§4!i§,param1);
         if(_loc3_ || param1)
         {
            §&!N§(_loc2_,false);
         }
         return _loc2_;
      }
      
      public static function §;"%§(param1:String) : §=!e§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§=!e§ = new §=!e§(§]!H§,§4!i§,param1);
         if(!(_loc4_ && _loc2_))
         {
            §&!N§(_loc2_,false);
         }
         return _loc2_;
      }
      
      private static function §&!N§(param1:Popup, param2:Boolean = true, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            §§push(§>!4§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc5_ && param1))
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        loop12:
                        while(true)
                        {
                           §§push(param3);
                           if(!(_loc5_ && param1))
                           {
                              if(!_loc4_)
                              {
                                 break;
                              }
                              addr144:
                              §§push(!§§pop());
                              while(true)
                              {
                                 §§goto(addr144);
                              }
                           }
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop7:
                                 while(true)
                                 {
                                    §>!4§ = param1;
                                    while(true)
                                    {
                                       param1.open(param2);
                                       loop9:
                                       while(_loc4_)
                                       {
                                          if(_loc4_ || §]!]§)
                                          {
                                             addr73:
                                             if(_loc4_ || §]!]§)
                                             {
                                                if(!(_loc5_ && param2))
                                                {
                                                   param1.mClip.addEventListener(§`![§.§;!U§,§0s§);
                                                   while(true)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         if(!(_loc5_ && param1))
                                                         {
                                                            continue;
                                                         }
                                                         continue loop12;
                                                      }
                                                      continue loop9;
                                                   }
                                                   continue loop12;
                                                }
                                                continue loop0;
                                             }
                                             addr130:
                                             addr147:
                                             while(!_loc5_)
                                             {
                                                continue loop7;
                                                §§goto(addr73);
                                             }
                                             while(true)
                                             {
                                                if(param1.§9=§ != Popup.§=u§)
                                                {
                                                   § !O§.push(param1);
                                                   break;
                                                }
                                             }
                                             return;
                                             addr119:
                                             while(true)
                                             {
                                                § !O§ = new Vector.<Popup>();
                                                continue loop0;
                                             }
                                          }
                                          §§goto(addr119);
                                       }
                                    }
                                 }
                                 return;
                              }
                              §§goto(addr147);
                           }
                        }
                     }
                     addr180:
                  }
                  §§goto(addr145);
               }
               §§goto(addr180);
            }
         }
         §§goto(addr130);
      }
      
      private static function §0s§(param1:§`![§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1.§@"-§ == §>!4§)
            {
               addr74:
               while(true)
               {
                  §>!4§ = null;
                  addr77:
                  while(true)
                  {
                  }
               }
               addr74:
            }
            while(§ !O§.length > 0)
            {
               if(!(_loc3_ && param1))
               {
                  if(_loc2_)
                  {
                     §&!N§(§ !O§.shift(),false);
                  }
                  else
                  {
                     §§goto(addr74);
                  }
               }
               if(!(_loc3_ && §]!]§))
               {
                  break;
               }
               §§goto(addr77);
            }
            return;
         }
         §§goto(addr74);
      }
   }
}
