package §=!L§
{
   import §#"&§.§4!W§;
   import §48§.§1k§;
   import §7g§.PopupClosedEvent;
   import §[!i§.§,!X§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §6&§ extends §4k§
   {
       
      
      private var §=<§:Vector.<§,!X§>;
      
      public function §6&§(param1:§1k§, param2:§4!W§, param3:int, param4:§!!u§ = null, param5:§1!T§ = null)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && this))
         {
            super(param1,param2,param3,param4,param5);
         }
         do
         {
            this.§=<§ = new Vector.<§,!X§>();
         }
         while(_loc6_ && param1);
         
      }
      
      protected function §""#§(param1:MovieClip, param2:String, param3:Boolean, param4:int, param5:Boolean, param6:Boolean) : §,!X§
      {
         return new §,!X§(§7!`§,param4,param1,param2,param3,param5,param6);
      }
      
      override protected function openPopup(param1:MovieClip, param2:String, param3:Boolean, param4:int, param5:Boolean = true, param6:Boolean = true, param7:Boolean = true, param8:Boolean = false) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         if(!(_loc12_ && this))
         {
            §^!8§.userProgress.saveTutorialSeen(param2);
         }
         §§push(param5);
         if(!_loc12_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc9_:* = §§pop();
         var _loc10_:§,!X§ = this.§""#§(param1,param2,param3,param4,_loc9_,param6);
         if(!_loc12_)
         {
            this.§=<§.push(_loc10_);
            while(true)
            {
               _loc10_.addEventListener(PopupClosedEvent.§,!=§,this.§"2§);
               while(_loc11_)
               {
                  §-G§.openPopup(_loc10_,param5,param6,param7,param8);
                  if(!(_loc12_ && param3))
                  {
                     return;
                     addr74:
                  }
               }
            }
         }
         §§goto(addr74);
      }
      
      override public function openTutorialPopup(param1:String, param2:int, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:Boolean = true, param7:§!!u§ = null, param8:Boolean = true) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc10_:* = false;
         if(!(_loc11_ && param3))
         {
            if(!param5)
            {
               if(_loc12_ || param3)
               {
                  addr35:
                  if(§^!8§.userProgress.hasTutorialBeenSeen(param1))
                  {
                     if(!(_loc11_ && param2))
                     {
                        return;
                     }
                  }
               }
            }
            if(param7 != null)
            {
               if(!(_loc11_ && param1))
               {
                  §!B§ = param7;
               }
            }
            var _loc9_:MovieClip = §!B§.solve(param1);
            if(!_loc11_)
            {
               §§push(param8);
               loop0:
               while(true)
               {
                  §§push(!§§pop());
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr203:
                           loop11:
                           while(true)
                           {
                              §§push(Boolean(§-G§.isPopupOpenById(TutorialPopup.ID)));
                              if(_loc12_)
                              {
                                 if(!_loc12_)
                                 {
                                    continue;
                                 }
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       §§push(param8);
                                       if(!(_loc11_ && param1))
                                       {
                                          while(_loc12_ || param2)
                                          {
                                             §§push(Boolean(§§pop()));
                                             if(!_loc11_)
                                             {
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   addr166:
                                                }
                                                addr195:
                                             }
                                             continue loop11;
                                          }
                                          continue loop1;
                                          addr175:
                                       }
                                       loop6:
                                       while(true)
                                       {
                                          param8 = §§pop();
                                          while(_loc9_)
                                          {
                                             if(!(_loc11_ && param1))
                                             {
                                                if(!(_loc12_ || param2))
                                                {
                                                   continue;
                                                }
                                                §§push(!§^!8§.userProgress.hasTutorialBeenSeen(param1));
                                                if(!_loc12_)
                                                {
                                                   continue loop6;
                                                }
                                                if(!(_loc12_ || this))
                                                {
                                                   continue loop0;
                                                }
                                                _loc10_ = §§pop();
                                             }
                                             while(true)
                                             {
                                                if(_loc12_ || param2)
                                                {
                                                   if(_loc12_)
                                                   {
                                                      continue;
                                                   }
                                                   continue loop11;
                                                }
                                                addr158:
                                                while(true)
                                                {
                                                   §§push(true);
                                                   continue loop0;
                                                }
                                             }
                                             §§goto(addr195);
                                          }
                                          return;
                                       }
                                       continue loop0;
                                    }
                                    §§goto(addr158);
                                 }
                              }
                              §§goto(addr175);
                           }
                        }
                     }
                     §§goto(addr156);
                  }
               }
            }
            §§goto(addr203);
         }
         §§goto(addr35);
      }
      
      private function §"2§(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:int = -1;
         var _loc3_:int = 0;
         while(true)
         {
            §§push(_loc3_);
            if(_loc5_ || this)
            {
               if(!(_loc4_ && _loc3_))
               {
                  if(§§pop() >= this.§=<§.length)
                  {
                     if(!(_loc4_ && _loc2_))
                     {
                        if(_loc5_ || _loc3_)
                        {
                           addr71:
                           if(_loc2_ >= 0)
                           {
                              if(_loc5_ || param1)
                              {
                                 addr80:
                                 if(!_loc5_)
                                 {
                                    continue;
                                 }
                                 if(_loc5_)
                                 {
                                    this.§=<§.splice(_loc2_,1);
                                 }
                                 else
                                 {
                                    addr90:
                                    _loc3_++;
                                    continue;
                                    addr117:
                                 }
                              }
                              break;
                           }
                           break;
                        }
                        addr112:
                        §§push(_loc3_);
                        if(!_loc4_)
                        {
                           addr116:
                           _loc2_ = §§pop();
                        }
                        §§goto(addr116);
                        §§goto(addr117);
                     }
                     §§goto(addr80);
                  }
                  else if(this.§=<§[_loc3_] == param1.target)
                  {
                     §§goto(addr112);
                  }
                  §§goto(addr90);
               }
               §§goto(addr116);
            }
            §§goto(addr71);
         }
      }
   }
}
