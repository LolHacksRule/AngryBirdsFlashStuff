package § ^§
{
   import §#"&§.§#!4§;
   import §;!§.§7!3§;
   import §]0§.§5!p§;
   import §]0§.§>I§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §%!a§ implements §>I§
   {
       
      
      private var §'!M§:§#!4§ = null;
      
      private var §,v§:Boolean = false;
      
      private var § o§:§7!3§;
      
      public function §%!a§(param1:§7!3§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
         }
         do
         {
            this.§ o§ = param1;
         }
         while(_loc2_);
         
      }
      
      private function §%!g§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Object = null;
         §§push(this.§ o§.§@!R§.getNextLevelId());
         if(_loc5_ || this)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:Object = §`!2§.§+"#§(_loc1_);
         if(_loc5_)
         {
            if(!_loc2_)
            {
               _loc3_ = new Object();
               addr42:
               if(!_loc4_)
               {
                  _loc3_.score = 0;
                  loop0:
                  while(true)
                  {
                     _loc3_.stars = 0;
                     while(true)
                     {
                        _loc3_.levelId = _loc1_;
                        while(_loc5_)
                        {
                           if(_loc4_)
                           {
                              continue loop0;
                           }
                           loop5:
                           while(_loc5_ || _loc2_)
                           {
                              §`!2§.levelProfile.push(_loc3_);
                              if(!_loc4_)
                              {
                                 addr66:
                                 if(false)
                                 {
                                    while(true)
                                    {
                                       _loc3_.userId = §`!2§.§9!&§.id;
                                       continue loop5;
                                       §§goto(addr66);
                                    }
                                    addr68:
                                 }
                                 §§goto(addr110);
                              }
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  §§goto(addr68);
               }
            }
            addr110:
            return;
         }
         §§goto(addr42);
      }
      
      public function levelCompleted() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:int = 0;
         if(!_loc5_)
         {
            this.§,v§ = true;
            if(_loc6_ || this)
            {
               addr31:
               this.§%!g§();
            }
            §§push(this.§ o§.§@!R§.currentLevel);
            if(!_loc5_)
            {
               §§push(§§pop());
            }
            var _loc1_:* = §§pop();
            var _loc2_:Object = §`!2§.§+"#§(this.§ o§.§@!R§.currentLevel);
            §§push(this.§ o§.§4!n§.getScore(10));
            if(_loc6_ || this)
            {
               §§push(int(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(_loc6_ || this)
            {
               if(!_loc2_)
               {
                  if(!(_loc5_ && this))
                  {
                     addr79:
                     _loc2_ = new Object();
                     if(!(_loc5_ && this))
                     {
                        _loc2_.score = _loc3_;
                        loop13:
                        while(true)
                        {
                           if(_loc2_.bestScore == undefined)
                           {
                              while(true)
                              {
                                 _loc2_.bestScore = 0;
                                 addr177:
                                 while(true)
                                 {
                                 }
                                 addr120:
                                 if(!(_loc6_ || _loc1_))
                                 {
                                    continue;
                                 }
                                 §`!2§.levelProfile.push(_loc2_);
                                 if(!(_loc5_ && this))
                                 {
                                    addr103:
                                    if(_loc6_ || _loc3_)
                                    {
                                       while(false)
                                       {
                                          loop19:
                                          while(true)
                                          {
                                             _loc2_.userId = §`!2§.§9!&§.id;
                                             addr118:
                                             addr168:
                                             while(!_loc5_)
                                             {
                                                §§goto(addr120);
                                             }
                                             while(true)
                                             {
                                                _loc2_.levelId = _loc1_;
                                                break loop19;
                                             }
                                          }
                                       }
                                       addr315:
                                       §`!2§.§?>§();
                                       return;
                                       addr110:
                                    }
                                    while(!(_loc5_ && _loc2_))
                                    {
                                       continue loop13;
                                       §§goto(addr103);
                                    }
                                    §§goto(addr177);
                                 }
                                 §§goto(addr118);
                              }
                           }
                           while(true)
                           {
                              _loc2_.stars = (§6!!§.singleton as §4!=§).§?!b§.§9"+§(_loc1_,_loc3_);
                              §§goto(addr168);
                              §§goto(addr177);
                           }
                        }
                     }
                     §§goto(addr110);
                  }
                  else
                  {
                     loop0:
                     while(true)
                     {
                        if(_loc4_ < §`!2§.levelProfile.length)
                        {
                           §§push(§`!2§.levelProfile);
                           loop1:
                           while(true)
                           {
                              §§push(_loc4_);
                              loop2:
                              while(true)
                              {
                                 if(§§pop()[§§pop()].levelId == _loc1_)
                                 {
                                    loop3:
                                    while(true)
                                    {
                                       _loc2_.score = _loc3_;
                                       loop4:
                                       while(true)
                                       {
                                          _loc2_.stars = (§6!!§.singleton as §4!=§).§?!b§.§9"+§(_loc1_,_loc3_);
                                          loop5:
                                          for(; !(_loc5_ && _loc2_); if(_loc5_ && this)
                                          {
                                             continue;
                                          },if(true)
                                          {
                                             continue loop0;
                                          },§§goto(addr218))
                                          {
                                             _loc2_.levelId = _loc1_;
                                             while(true)
                                             {
                                                _loc2_.userId = §`!2§.§9!&§.id;
                                                loop7:
                                                while(_loc6_ || _loc2_)
                                                {
                                                   if(_loc2_.bestScore == undefined)
                                                   {
                                                      while(true)
                                                      {
                                                         _loc2_.bestScore = 0;
                                                         addr239:
                                                         while(_loc6_)
                                                         {
                                                            if(_loc5_ && this)
                                                            {
                                                               continue loop4;
                                                            }
                                                         }
                                                         continue loop7;
                                                         addr202:
                                                         if(!(_loc5_ && _loc3_))
                                                         {
                                                            continue loop5;
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§`!2§.levelProfile);
                                                      if(!_loc6_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(_loc4_);
                                                      if(!_loc6_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      §§pop()[§§pop()] = _loc2_;
                                                      loop11:
                                                      while(!_loc5_)
                                                      {
                                                         while(true)
                                                         {
                                                            _loc4_++;
                                                            if(!(_loc5_ && _loc3_))
                                                            {
                                                               if(_loc5_ && _loc3_)
                                                               {
                                                                  continue loop11;
                                                               }
                                                               §§goto(addr202);
                                                               continue loop11;
                                                            }
                                                            §§goto(addr315);
                                                         }
                                                         continue loop0;
                                                      }
                                                      §§goto(addr239);
                                                   }
                                                   continue loop1;
                                                }
                                             }
                                          }
                                          continue loop3;
                                       }
                                    }
                                 }
                                 §§goto(addr186);
                              }
                           }
                        }
                     }
                     addr185:
                  }
                  §§goto(addr315);
               }
               else
               {
                  _loc4_ = 0;
               }
               §§goto(addr185);
            }
            §§goto(addr79);
         }
         §§goto(addr31);
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || _loc3_)
         {
            this.§,v§ = true;
         }
         var _loc2_:Object = §5!p§.§0>§((param1.currentTarget as URLLoader).data);
         §§push(§#!4§.§^5§(_loc2_.levelProfile));
         if(!(_loc4_ && _loc2_))
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(!_loc4_)
         {
            if(_loc3_ == _loc2_.levelProfileSecurity)
            {
               loop0:
               while(true)
               {
                  §`!2§.levelProfileSecurity = _loc2_.levelProfileSecurity;
                  while(!_loc4_)
                  {
                     if(_loc5_)
                     {
                        if(_loc2_.levelProfile != undefined)
                        {
                           if(_loc5_ || _loc3_)
                           {
                              if(!(_loc5_ || param1))
                              {
                                 continue;
                              }
                              §`!2§.levelProfile = _loc2_.levelProfile;
                           }
                           while(_loc5_)
                           {
                              §`!2§.§?>§();
                              if(!(_loc4_ && this))
                              {
                                 if(_loc5_ || _loc2_)
                                 {
                                    §§goto(addr52);
                                 }
                                 if(!_loc5_)
                                 {
                                    (§6!!§.singleton as §4!=§).§?!b§ = new §-U§("",this.§ o§.§@!R§);
                                 }
                                 else
                                 {
                                    addr140:
                                 }
                                 continue loop0;
                                 break;
                              }
                           }
                           §`!2§.§9!&§ = new §[C§();
                           §`!2§.levelProfile = [];
                           break;
                           addr135:
                        }
                        addr52:
                        return;
                     }
                     §§goto(addr135);
                  }
                  return;
               }
            }
            §§goto(addr140);
         }
         §§goto(addr124);
      }
      
      public function §'!s§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §=o§(param1:IOErrorEvent) : void
      {
      }
      
      public function §8o§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§'!M§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr70:
                     this.§'!M§.dispose();
                  }
                  while(true)
                  {
                     §§goto(addr39);
                  }
               }
               addr39:
               while(true)
               {
                  this.§,v§ = true;
                  if(!(_loc1_ && _loc2_))
                  {
                     break;
                  }
                  continue loop0;
               }
               return;
            }
         }
         §§goto(addr70);
      }
      
      public function §]K§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§'!M§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(_loc1_ || _loc2_)
                  {
                     addr76:
                     this.§'!M§.dispose();
                  }
                  while(true)
                  {
                     this.§'!M§ = null;
                     addr49:
                     loop1:
                     while(!_loc2_)
                     {
                        while(true)
                        {
                           continue loop1;
                        }
                     }
                  }
               }
               while(true)
               {
                  this.§,v§ = false;
                  if(_loc1_)
                  {
                     break;
                  }
                  §§goto(addr49);
               }
               return;
            }
            §§goto(addr76);
         }
         §§goto(addr51);
      }
      
      public function get §]!O§() : §#!4§
      {
         return this.§'!M§;
      }
      
      public function get §+!h§() : Boolean
      {
         return this.§,v§;
      }
   }
}
