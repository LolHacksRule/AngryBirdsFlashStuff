package §4[§
{
   import §&!y§.§14§;
   import §'!3§.§!i§;
   import §0!m§.§@!S§;
   import §1![§.§#E§;
   import §1!c§.§7]§;
   import §<S§.HighscoreSidebar;
   import §@V§.§52§;
   import com.angrybirds.utils.§2!N§;
   import com.angrybirds.utils.§30§;
   import com.angrybirds.utils.§4",§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §=!v§ extends EventDispatcher implements §30§
   {
       
      
      private var §[!H§:§#E§ = null;
      
      private var §"!O§:Boolean = false;
      
      private var §]!R§:§7]§;
      
      public function §=!v§(param1:§7]§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            super();
            do
            {
               this.§]!R§ = param1;
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      public function levelCompleted() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc1_:String = null;
         var _loc2_:* = null;
         var _loc3_:Object = null;
         var _loc4_:* = 0;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         if(!_loc8_)
         {
            if(!this.§[!H§)
            {
               if(!_loc8_)
               {
                  if(§2P§.§[!$§)
                  {
                     loop0:
                     while(true)
                     {
                        this.§"!O§ = false;
                        if(!_loc8_)
                        {
                           break;
                        }
                        addr76:
                        while(true)
                        {
                           continue loop0;
                        }
                     }
                     if(_loc7_)
                     {
                        addr66:
                        do
                        {
                           _loc1_ = "updateLevelProfile";
                           do
                           {
                              §§push(this.§]!R§.§[!,§.currentLevel);
                              if(!(_loc8_ && this))
                              {
                                 §§push(§§pop());
                              }
                              _loc2_ = §§pop();
                           }
                           while(_loc8_);
                           
                        }
                        while(false);
                        
                        _loc3_ = §2P§.§<!i§(this.§]!R§.§[!,§.currentLevel);
                        if(_loc7_ || this)
                        {
                           §§push(this.§]!R§.§9c§.getScore(10));
                           if(_loc7_ || _loc2_)
                           {
                              §§push(int(§§pop()));
                           }
                           _loc4_ = §§pop();
                           loop4:
                           while(true)
                           {
                              _loc3_.score = _loc4_;
                              loop5:
                              while(true)
                              {
                                 _loc3_.stars = (§ !4§.§%"7§ as AngryBirdsCustom).§+Y§.§1]§(_loc2_,_loc4_);
                                 addr153:
                                 if(!(_loc7_ || _loc1_))
                                 {
                                    continue;
                                 }
                                 _loc3_.gamePlay = §@!S§.§2A§.§2C§().toString();
                                 while(true)
                                 {
                                    if(!(_loc8_ && this))
                                    {
                                       if(!_loc7_)
                                       {
                                          break;
                                       }
                                       if(_loc7_)
                                       {
                                          continue;
                                       }
                                       continue loop4;
                                    }
                                    loop8:
                                    while(true)
                                    {
                                       if(_loc7_)
                                       {
                                          §§goto(addr153);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             _loc3_.blocks = §52§.§3^§();
                                             continue loop8;
                                          }
                                          addr165:
                                       }
                                    }
                                    continue loop5;
                                 }
                                 while(true)
                                 {
                                    _loc3_.levelId = _loc2_;
                                    §§goto(addr165);
                                 }
                              }
                           }
                        }
                        §§goto(addr177);
                     }
                  }
                  return;
               }
               §§goto(addr76);
            }
            §§goto(addr250);
         }
         §§goto(addr66);
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:int = 0;
         if(_loc7_)
         {
            this.§"!O§ = true;
         }
         var _loc2_:Object = §2!N§.§6l§((param1.currentTarget as URLLoader).data);
         §§push(§#E§.§0"$§(_loc2_.levelProfile));
         if(_loc7_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(_loc7_)
         {
            if(_loc3_ == _loc2_.levelProfileSecurity)
            {
               loop0:
               while(true)
               {
                  §2P§.levelProfileSecurity = _loc2_.levelProfileSecurity;
                  loop1:
                  while(_loc7_ || this)
                  {
                     if(!_loc7_)
                     {
                        addr217:
                        §14§.§>c§ = true;
                        break;
                     }
                     if(_loc2_.levelProfile != undefined)
                     {
                        if(_loc7_ || param1)
                        {
                           §2P§.levelProfile = _loc2_.levelProfile;
                           if(_loc7_ || _loc2_)
                           {
                              addr123:
                              if(_loc7_)
                              {
                                 if(_loc7_ || _loc2_)
                                 {
                                    loop2:
                                    while(true)
                                    {
                                       §2P§.§-l§();
                                       loop3:
                                       while(_loc7_ || _loc2_)
                                       {
                                          if(!(_loc8_ && _loc3_))
                                          {
                                             while(true)
                                             {
                                                §§push(Boolean(_loc2_.chapters));
                                                if(_loc7_ || _loc2_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc8_ && param1))
                                                      {
                                                         §§pop();
                                                         if(!(_loc7_ || param1))
                                                         {
                                                            var _loc5_:int = 0;
                                                            var _loc6_:* = _loc2_.chapters;
                                                            addr250:
                                                         }
                                                         if(!_loc8_)
                                                         {
                                                            if(_loc7_ || param1)
                                                            {
                                                               if(true)
                                                               {
                                                                  §§push(_loc2_.chapters is Array);
                                                               }
                                                               continue loop2;
                                                               break;
                                                            }
                                                            if(_loc8_)
                                                            {
                                                               §2P§.§[!$§ = new §<!o§();
                                                               §2P§.levelProfile = [];
                                                               addr212:
                                                               addr193:
                                                               §§push(§ !4§.§%"7§);
                                                            }
                                                            else
                                                            {
                                                               addr193:
                                                               addr199:
                                                               addr177:
                                                            }
                                                            continue loop0;
                                                            if(_loc8_)
                                                            {
                                                               while(true)
                                                               {
                                                                  (§§pop() as AngryBirdsCustom).§+Y§ = new §3!<§("",this.§]!R§.§[!,§);
                                                                  §§goto(addr212);
                                                                  §§goto(addr193);
                                                               }
                                                               addr203:
                                                            }
                                                            (§§pop() as AngryBirdsCustom).§<=§.§08§.reset();
                                                            do
                                                            {
                                                               dispatchEvent(new §4",§(§4",§.§,l§));
                                                            }
                                                            while(_loc8_ && param1);
                                                            
                                                            return;
                                                         }
                                                         continue loop3;
                                                         for each(_loc4_ in _loc6_)
                                                         {
                                                            if(!(_loc8_ && this))
                                                            {
                                                               §2P§.§[!$§.§switch§(_loc4_);
                                                            }
                                                            §§goto(addr250);
                                                         }
                                                         if(_loc7_ || param1)
                                                         {
                                                            addr271:
                                                            this.§!!F§(_loc2_);
                                                         }
                                                         return;
                                                         addr226:
                                                      }
                                                      break;
                                                   }
                                                   break;
                                                }
                                                break;
                                             }
                                             if(§§pop())
                                             {
                                                §§goto(addr226);
                                             }
                                             §§goto(addr271);
                                             addr43:
                                          }
                                          §§goto(addr193);
                                       }
                                       continue loop1;
                                    }
                                 }
                                 §§goto(addr199);
                              }
                              §§goto(addr170);
                           }
                           §§goto(addr226);
                        }
                        §§goto(addr123);
                     }
                     §§goto(addr43);
                  }
                  §§goto(addr203);
               }
            }
            §§goto(addr217);
         }
         §§goto(addr177);
      }
      
      private function §!!F§(param1:Object) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:HighscoreSidebar = (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§08§;
         if(_loc3_ || _loc3_)
         {
            §§push(_loc2_.§[l§(this.§]!R§.§[!,§.currentLevel,true));
            while(true)
            {
               if(§§pop())
               {
                  if(_loc3_ || param1)
                  {
                     if(param1.isHighScore)
                     {
                        while(true)
                        {
                           §§push(_loc2_.§[l§(this.§]!R§.§[!,§.currentLevel,true));
                           addr179:
                           addr93:
                           while(true)
                           {
                              §§pop().§"c§();
                              addr180:
                              while(true)
                              {
                                 §§push(§ !4§.§%"7§);
                                 addr138:
                                 while(true)
                                 {
                                    §§push((§§pop() as AngryBirdsCustom).§<=§);
                                    addr141:
                                    while(true)
                                    {
                                       §§push(§§pop().§08§);
                                       addr142:
                                       while(true)
                                       {
                                          §§pop().§`"0§();
                                          addr143:
                                          while(true)
                                          {
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           if(_loc3_ || this)
                           {
                              §§goto(addr32);
                           }
                        }
                     }
                  }
                  §§goto(addr180);
               }
               while(true)
               {
                  §§push(_loc2_.§[l§(this.§]!R§.§[!,§.currentLevel,false));
                  if(!_loc4_)
                  {
                     if(!_loc3_)
                     {
                        break;
                     }
                     if(§§pop())
                     {
                        loop4:
                        for(; param1.isHighScore; if(!(_loc3_ || this))
                        {
                           continue;
                        },if(_loc3_ || param1)
                        {
                           §§goto(addr93);
                        },§§goto(addr180))
                        {
                           loop5:
                           while(_loc3_)
                           {
                              §§push(_loc2_.§[l§(this.§]!R§.§[!,§.currentLevel,false));
                              while(_loc3_ || _loc3_)
                              {
                                 §§pop().§"c§();
                                 while(true)
                                 {
                                    §§push(§ !4§.§%"7§);
                                    if(!(_loc3_ || param1))
                                    {
                                       break;
                                    }
                                    §§push((§§pop() as AngryBirdsCustom).§<=§);
                                    if(_loc3_ || param1)
                                    {
                                       §§push(§§pop().§08§);
                                       if(_loc3_)
                                       {
                                          §§pop().§`"0§();
                                          if(_loc3_)
                                          {
                                             if(_loc3_ || param1)
                                             {
                                                continue loop4;
                                             }
                                             continue loop5;
                                          }
                                          continue;
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr141);
                                    }
                                    §§goto(addr142);
                                 }
                                 §§goto(addr138);
                              }
                              §§goto(addr179);
                           }
                           §§goto(addr143);
                        }
                     }
                     addr32:
                     return;
                  }
                  §§goto(addr126);
               }
            }
         }
         §§goto(addr180);
      }
      
      public function §?!§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §'![§(param1:IOErrorEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(§ !4§.§%"7§);
            while(true)
            {
               (§§pop() as AngryBirdsCustom).§+!J§.closeAllPopups();
               while(true)
               {
                  §§push(§ !4§.§%"7§);
                  if(!(_loc3_ || _loc3_))
                  {
                     break;
                  }
                  (§§pop() as AngryBirdsCustom).§+!J§.openPopup(new §!i§());
                  while(!_loc2_)
                  {
                     dispatchEvent(new §4",§(§4",§.§#^§));
                     if(!(_loc2_ && param1))
                     {
                        return;
                        addr48:
                     }
                  }
               }
            }
         }
         §§goto(addr48);
      }
      
      public function §`+§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§[!H§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr65:
                     this.§[!H§.dispose();
                  }
                  while(true)
                  {
                     §§goto(addr34);
                  }
               }
               addr34:
               §§goto(addr45);
            }
            §§goto(addr65);
         }
         addr45:
         while(true)
         {
            this.§"!O§ = true;
            if(!(_loc1_ && this))
            {
               break;
            }
            continue loop0;
         }
      }
      
      public function §1h§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§[!H§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_ || _loc1_)
                  {
                     addr86:
                     this.§[!H§.dispose();
                  }
                  while(true)
                  {
                     this.§[!H§ = null;
                     loop1:
                     while(_loc1_ || _loc1_)
                     {
                        while(true)
                        {
                           this.§"!O§ = false;
                           if(!(_loc2_ && _loc2_))
                           {
                              break;
                           }
                           continue loop1;
                        }
                        return;
                     }
                  }
               }
               §§goto(addr28);
            }
            §§goto(addr86);
         }
         §§goto(addr49);
      }
      
      public function get §"h§() : §#E§
      {
         return this.§[!H§;
      }
      
      public function get §3""§() : Boolean
      {
         return this.§"!O§;
      }
   }
}
