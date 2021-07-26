package §5!Y§
{
   import § 7§.§ else§;
   import §&r§.§'"L§;
   import §-!?§.§<!g§;
   import §4y§.Item;
   import §5!&§.§+"@§;
   import §59§.§<"9§;
   import §6!N§.§%! §;
   import §9@§.§4d§;
   import §9@§.§@q§;
   import §<"F§.§"i§;
   import §<"F§.§0"W§;
   import §@!"§.§?l§;
   import §["6§.§ var§;
   import §["6§.§5"L§;
   import §^!o§.§'s§;
   import §^!o§.§1! §;
   import §^!o§.§^"$§;
   import §^"F§.§8!§;
   import §`!6§.§+"O§;
   import §`"%§.§`_§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   
   public class §9"6§
   {
      
      public static var §!6§:§`_§;
      
      private static var §1!,§:StatePopupManager;
      
      public static var §@"$§:Popup;
      
      public static var §=!I§:Boolean;
      
      private static var §'"$§:Number;
      
      private static var §&g§:Number;
      
      private static var § 1§:MovieClip;
      
      private static var §3"V§:Vector.<Popup>;
      
      private static var §]"I§:Vector.<Popup>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §3"V§ = new Vector.<Popup>();
            do
            {
               §]"I§ = new Vector.<Popup>();
            }
            while(!(_loc1_ || _loc2_));
            
         }
      }
      
      public function §9"6§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
         }
      }
      
      public static function §,2§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§@"$§ == null);
         if(_loc2_)
         {
            return !§§pop();
         }
      }
      
      public static function initialize(param1:Stage) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(§!6§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     break;
                  }
                  while(true)
                  {
                     addr108:
                     loop3:
                     for(; _loc3_ || _loc3_; if(_loc3_)
                     {
                        addr56:
                        while(true)
                        {
                           §§push(§!6§);
                           if(!(_loc2_ && _loc2_))
                           {
                              if(_loc3_)
                              {
                                 §§pop().activateView();
                                 do
                                 {
                                    param1.addChild(§!6§.container.mClip);
                                 }
                                 while(_loc2_ && _loc2_);
                                 
                                 if(!(_loc2_ && §9"6§))
                                 {
                                    continue loop3;
                                 }
                                 continue loop4;
                              }
                              continue loop0;
                           }
                           continue loop5;
                        }
                     },continue,return)
                     {
                        §!6§ = new §+"O§(§1!,§);
                        loop4:
                        while(true)
                        {
                           §§push(§!6§);
                           while(true)
                           {
                              §§pop().init(<xml></xml>,new MovieClip());
                              continue loop4;
                              addr95:
                              §§goto(addr56);
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  §1!,§ = new StatePopupManager();
                  §§goto(addr108);
               }
            }
            return;
         }
         §§goto(addr95);
      }
      
      public static function setViewSize(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            §§push(§!6§);
            if(!(_loc4_ && param1))
            {
               if(§§pop())
               {
                  if(!(_loc4_ && §9"6§))
                  {
                     §§push(§!6§);
                     loop3:
                     while(true)
                     {
                        §§push(param1);
                        addr96:
                        while(true)
                        {
                           §§pop().viewWidth = §§pop();
                           continue loop3;
                        }
                     }
                     addr95:
                  }
                  §§goto(addr97);
               }
               while(true)
               {
                  §'"$§ = param1;
                  do
                  {
                     §&g§ = param2;
                  }
                  while(!_loc3_);
                  
                  if(!_loc4_)
                  {
                     break;
                  }
                  §§goto(addr70);
                  §§goto(addr70);
               }
               return;
            }
            §§goto(addr95);
         }
         §§goto(addr97);
      }
      
      public static function §;!w§(param1:String = "") : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §="4§(new §<"9§(§!6§,§1!,§,param1));
         }
      }
      
      public static function §3b§(param1:Item) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §="4§(new §-E§(§!6§,§1!,§,param1));
         }
      }
      
      public static function §<h§(param1:String = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && §9"6§))
         {
            §="4§(new §+"@§(§!6§,§1!,§,param1,true));
         }
      }
      
      public static function §'!b§(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §="4§(new §1H§(§!6§,§1!,§,param1));
         }
      }
      
      public static function §2!U§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §="4§(new §"i§(§!6§,§1!,§,param1));
         }
      }
      
      public static function §?B§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §="4§(new §0"W§(§!6§,§1!,§),true,true);
         }
      }
      
      public static function §^!J§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §="4§(new §5!-§(§!6§,§1!,§,param1));
         }
      }
      
      public static function §'0§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §="4§(new §6y§(§!6§,§1!,§));
         }
      }
      
      public static function §7"@§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §="4§(new §[!9§(§!6§,§1!,§),true,true);
         }
      }
      
      public static function §7![§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §="4§(new §4"O§(§!6§,§1!,§),false,true);
         }
      }
      
      public static function §;!J§(param1:String = "") : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §="4§(new §^"$§(§!6§,§1!,§,param1,null),false,true);
         }
      }
      
      public static function §?"F§(param1:String = "Get your free coins!") : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && §9"6§))
         {
            §="4§(new §1! §(§!6§,§1!,§,param1),false,true);
         }
      }
      
      public static function §[?§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §="4§(new §'s§(§!6§,§1!,§));
         }
      }
      
      public static function §?"J§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §="4§(new §!E§(§!6§,§1!,§));
         }
      }
      
      public static function §#z§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §="4§(new §+L§(§!6§,§1!,§));
         }
      }
      
      public static function §8+§(param1:Boolean = false, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            §="4§(new § else§(§!6§,§1!,§,param1),param2);
         }
      }
      
      public static function §1!q§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §="4§(new §'"L§(§!6§,§1!,§));
         }
      }
      
      public static function §'?§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §="4§(new §<!g§(§!6§,§1!,§));
         }
      }
      
      public static function §["#§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §="4§(new § var§(§!6§,§1!,§,param1));
         }
      }
      
      public static function §7V§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §="4§(new §5"L§(§!6§,§1!,§));
         }
      }
      
      public static function §"F§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §="4§(new §,A§(§!6§,§1!,§,param1));
         }
      }
      
      public static function §7!B§(param1:Class, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || §9"6§)
         {
            §@q§.§ !P§(param2);
         }
         do
         {
            if(param1 is §4d§)
            {
               while(true)
               {
                  §@q§.trackPageView(param1 as §4d§);
                  addr80:
                  while(true)
                  {
                  }
               }
               addr75:
            }
            while(true)
            {
               §<"T§(param1);
               if(!(_loc4_ || _loc3_))
               {
                  continue;
               }
               if(_loc4_)
               {
                  break;
               }
               §§goto(addr75);
            }
         }
         while(_loc3_ && §9"6§);
         
      }
      
      public static function §<"T§(param1:Class) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Popup = new param1(§!6§,§1!,§);
         if(!(_loc3_ && param1))
         {
            §="4§(_loc2_);
         }
      }
      
      public static function §!<§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §="4§(new §%! §(§!6§,§1!,§));
         }
      }
      
      public static function §[i§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§2E§ = new §2E§(§!6§,§1!,§,param1);
         if(!_loc3_)
         {
            §="4§(_loc2_,true,true);
         }
      }
      
      public static function §'!o§() : §3"H§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§3"H§ = new §3"H§(§!6§,§1!,§);
         if(_loc3_)
         {
            §="4§(_loc1_);
         }
         return _loc1_;
      }
      
      public static function §>_§(param1:String = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         try
         {
            §§push(§§findproperty(§="4§));
            §§push(§§findproperty(§]!I§));
            §§push(§!6§);
            §§push(§1!,§);
            if(!_loc4_)
            {
               §§push(param1);
               if(!(_loc4_ && _loc2_))
               {
                  §§push(§§pop());
                  if(!(_loc4_ && §9"6§))
                  {
                     if(!§§pop())
                     {
                        if(!(_loc4_ && param1))
                        {
                           §§pop();
                           addr58:
                           §§push(§]!I§.§ !d§);
                           if(!_loc3_)
                           {
                           }
                           §§pop().§="4§(new §§pop().§]!I§(§§pop(),§§pop(),§§pop()),false,true);
                           §§goto(addr63);
                        }
                     }
                     §§goto(addr63);
                  }
                  §§push(§§pop());
               }
               addr63:
               if(!(_loc4_ && _loc2_))
               {
                  if(param1 == §]!I§.§`'§)
                  {
                     if(_loc3_)
                     {
                        §@q§.§]-§();
                     }
                  }
               }
               return;
            }
            §§goto(addr58);
         }
         catch(e:Error)
         {
         }
         §§goto(addr58);
      }
      
      public static function §4"4§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §="4§(new §^7§(§!6§,§1!,§));
         }
      }
      
      public static function §'m§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §="4§(new §5"7§(§!6§,§1!,§));
         }
      }
      
      public static function §6T§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §="4§(new § i§(§!6§,§1!,§));
         }
      }
      
      public static function §&",§() : void
      {
         try
         {
            §="4§(new §;!3§(§!6§,§1!,§));
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §#!o§() : void
      {
         try
         {
            §="4§(new §`! §(§!6§,§1!,§),false,true);
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §!!F§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §="4§(new §!Z§(§!6§,§1!,§));
         }
      }
      
      public static function §-L§(param1:String, param2:String, param3:int, param4:String) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            §="4§(new §0!h§(§!6§,§1!,§,param1,param2,param3,param4));
         }
      }
      
      public static function §6"C§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §9"6§)
         {
            §="4§(new §>"'§(§!6§));
         }
      }
      
      public static function §7"!§(param1:§8!§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §="4§(new §<r§(§!6§,§1!,§,param1));
         }
      }
      
      private static function §="4§(param1:Popup, param2:Boolean = true, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §§push(§@"$§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc4_)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        loop9:
                        while(true)
                        {
                           §§push(param3);
                           if(_loc4_ || §9"6§)
                           {
                              §§push(!§§pop());
                           }
                           if(!_loc4_)
                           {
                              break;
                           }
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop3:
                                 while(true)
                                 {
                                    §3"V§.push(param1);
                                    loop4:
                                    while(_loc4_)
                                    {
                                       §@"$§ = param1;
                                       loop5:
                                       while(true)
                                       {
                                          if(_loc5_)
                                          {
                                             continue loop4;
                                          }
                                          if(_loc5_)
                                          {
                                             break;
                                          }
                                          if(!_loc5_)
                                          {
                                             if(_loc5_ && §9"6§)
                                             {
                                                continue loop9;
                                             }
                                             param1.open(param2);
                                             loop6:
                                             while(true)
                                             {
                                                param1.mClip.addEventListener(§>"E§.§6"-§,§]p§);
                                                while(true)
                                                {
                                                   if(_loc4_ || §9"6§)
                                                   {
                                                      continue loop5;
                                                   }
                                                   continue loop6;
                                                   addr66:
                                                   setViewSize(§'"$§,§&g§);
                                                   if(!_loc4_)
                                                   {
                                                      continue;
                                                   }
                                                   if(_loc4_ || param3)
                                                   {
                                                      return;
                                                   }
                                                   addr154:
                                                   addr154:
                                                   while(true)
                                                   {
                                                      §]"I§ = new Vector.<Popup>();
                                                      break loop5;
                                                   }
                                                }
                                                continue loop5;
                                             }
                                          }
                                       }
                                       continue loop0;
                                    }
                                    addr124:
                                    while(true)
                                    {
                                       continue loop3;
                                    }
                                 }
                              }
                              while(true)
                              {
                                 if(param1.§""W§ != Popup.§>!L§)
                                 {
                                    §]"I§.push(param1);
                                    break;
                                 }
                                 §§goto(addr154);
                              }
                              §§goto(addr118);
                              continue loop9;
                           }
                        }
                     }
                     addr167:
                  }
                  §§goto(addr147);
               }
               §§goto(addr167);
            }
         }
         §§goto(addr154);
      }
      
      private static function §]p§(param1:§>"E§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(param1.§]!X§ == §@"$§)
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr30:
                  §@"$§ = null;
               }
            }
            var _loc2_:Popup = §3"V§.pop();
            if(_loc4_ || param1)
            {
               if(§]"I§.length <= 0)
               {
                  if(§3"V§.length == 0)
                  {
                     if(!(_loc3_ && param1))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           §?l§.resume();
                        }
                        addr55:
                        return;
                        addr109:
                     }
                     if(!(_loc4_ || _loc2_))
                     {
                        addr104:
                        §="4§(§]"I§.shift(),false);
                        §§goto(addr109);
                     }
                  }
                  §§goto(addr55);
               }
               §§goto(addr104);
            }
            §§goto(addr55);
         }
         §§goto(addr30);
      }
   }
}
