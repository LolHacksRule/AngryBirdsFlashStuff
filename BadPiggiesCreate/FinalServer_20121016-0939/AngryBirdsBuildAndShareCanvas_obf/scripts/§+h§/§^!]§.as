package §+h§
{
   import §1"2§.§'s§;
   import §2H§.§<T§;
   import §2H§.§<j§;
   import §2H§.§continue§;
   import §8" §.§2J§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   
   public class §^!]§
   {
      
      public static var §+!b§:§'s§;
      
      private static var §"i§:StatePopupManager;
      
      public static var §>"&§:Object;
      
      public static var §;?§:Popup;
      
      public static var §""'§:Boolean;
      
      private static var §6!u§:Number;
      
      private static var §6R§:Number;
      
      private static var §5! §:MovieClip;
      
      private static var §0D§:Vector.<Popup>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §0D§ = new Vector.<Popup>();
         }
      }
      
      public function §^!]§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
         }
      }
      
      public static function §]!@§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§;?§ == null);
         if(_loc2_ || §^!]§)
         {
            return !§§pop();
         }
      }
      
      public static function initialize(param1:Stage) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(§+!b§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §"i§ = new StatePopupManager();
                     loop2:
                     while(true)
                     {
                        §+!b§ = new §'s§(§"i§);
                        loop3:
                        while(!(_loc2_ && _loc2_))
                        {
                           §§push(§+!b§);
                           loop4:
                           for(; _loc3_; §§push(§+!b§),if(_loc3_ || _loc2_)
                           {
                              §§pop().§&o§();
                              while(!_loc2_)
                              {
                                 param1.addChild(§+!b§.container.mClip);
                                 if(!_loc3_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr32);
                              }
                              continue loop3;
                           })
                           {
                              §§pop().init(<xml></xml>,new MovieClip());
                              while(!_loc2_)
                              {
                                 continue loop4;
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    if(_loc3_ || param1)
                                    {
                                       break loop2;
                                    }
                                    continue loop2;
                                 }
                              }
                              while(true)
                              {
                                 continue loop1;
                              }
                           }
                           continue loop0;
                        }
                     }
                     return;
                  }
               }
               return;
            }
         }
         §§goto(addr116);
      }
      
      public static function setViewSize(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(§+!b§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     §6!u§ = param1;
                     while(!(_loc4_ && param2))
                     {
                        if(_loc3_)
                        {
                           §6R§ = param2;
                           if(!_loc4_)
                           {
                              return;
                           }
                           continue;
                        }
                     }
                     while(_loc4_)
                     {
                        loop4:
                        while(true)
                        {
                           §§push(§+!b§);
                           if(_loc3_ || param1)
                           {
                              continue loop0;
                           }
                           addr95:
                           while(true)
                           {
                              §§push(param1);
                              addr96:
                              while(true)
                              {
                                 §§pop().viewWidth = §§pop();
                                 continue loop4;
                              }
                           }
                        }
                        continue loop0;
                        §§pop().viewHeight = §§pop();
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr95);
         }
      }
      
      public static function §>!c§() : §="-§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§="-§ = new §="-§(§+!b§,§"i§);
         if(!(_loc2_ && §^!]§))
         {
            §!I§(_loc1_);
         }
         return _loc1_;
      }
      
      public static function § !]§() : §+"9§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§+"9§ = new §+"9§(§+!b§,§"i§);
         if(!(_loc2_ && _loc1_))
         {
            §!I§(_loc1_);
         }
         return _loc1_;
      }
      
      public static function §<!o§() : §`r§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§`r§ = new §`r§(§+!b§,§"i§);
         if(_loc3_)
         {
            §!I§(_loc1_);
         }
         return _loc1_;
      }
      
      public static function §7m§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§<T§ = new §<T§(§+!b§,param1,§"i§);
         if(_loc3_)
         {
            §!I§(_loc2_,true,false);
         }
      }
      
      public static function §&I§(param1:§2J§) : §<j§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§<j§ = new §<j§(§+!b§,§"i§,param1);
         if(_loc4_)
         {
            §!I§(_loc2_,false);
         }
         return _loc2_;
      }
      
      public static function §3"4§(param1:String) : §continue§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§continue§ = new §continue§(§+!b§,§"i§,param1);
         if(_loc3_)
         {
            §!I§(_loc2_,false);
         }
         return _loc2_;
      }
      
      private static function §!I§(param1:Popup, param2:Boolean = true, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && §^!]§))
         {
            §§push(§;?§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr177:
                        while(true)
                        {
                           §§push(param3);
                           if(_loc5_)
                           {
                              if(!_loc5_)
                              {
                                 break;
                              }
                              §§push(!§§pop());
                           }
                           if(!_loc5_)
                           {
                              continue loop2;
                           }
                        }
                        continue loop1;
                     }
                  }
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop6:
                        while(true)
                        {
                           §;?§ = param1;
                           loop7:
                           while(!(_loc4_ && §^!]§))
                           {
                              param1.open(param2);
                              while(!(_loc4_ && param1))
                              {
                                 param1.mClip.addEventListener(§+1§.§9!R§,§#5§);
                                 while(!(_loc4_ && param3))
                                 {
                                    if(!(_loc5_ || §^!]§))
                                    {
                                       return;
                                    }
                                    addr125:
                                    if(_loc5_ || param2)
                                    {
                                       setViewSize(§6!u§,§6R§);
                                       if(!(_loc5_ || param3))
                                       {
                                          continue;
                                       }
                                       if(!_loc5_)
                                       {
                                          continue loop7;
                                       }
                                       if(!_loc4_)
                                       {
                                          return;
                                       }
                                       addr155:
                                       while(true)
                                       {
                                          §0D§ = new Vector.<Popup>();
                                          continue loop0;
                                       }
                                       continue;
                                    }
                                    continue loop0;
                                 }
                              }
                              if(!(_loc5_ || param2))
                              {
                                 break loop6;
                              }
                              continue loop6;
                           }
                           addr131:
                           while(true)
                           {
                              if(!(_loc4_ && param1))
                              {
                                 continue loop6;
                              }
                           }
                        }
                        §§goto(addr177);
                     }
                     while(true)
                     {
                        if(param1.§0!x§ != Popup.§-8§)
                        {
                           §0D§.push(param1);
                           break;
                        }
                        §§goto(addr131);
                     }
                     §§goto(addr125);
                  }
               }
            }
         }
         §§goto(addr155);
      }
      
      private static function §#5§(param1:§+1§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(param1.§@!J§ == §;?§)
            {
               if(!(_loc3_ && _loc2_))
               {
                  §;?§ = null;
                  addr77:
                  while(true)
                  {
                  }
                  addr77:
               }
               §§goto(addr77);
            }
            while(§0D§.length > 0)
            {
               if(!_loc3_)
               {
                  §!I§(§0D§.shift(),false);
               }
               if(!_loc3_)
               {
                  break;
               }
               §§goto(addr77);
            }
            return;
         }
         §§goto(addr77);
      }
   }
}
