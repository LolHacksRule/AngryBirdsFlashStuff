package §5§#7
{
   import §,"N§.§@>§;
   import §[!m§.§;a§;
   import §[!m§.§[!j§;
   import flash.display.MovieClip;
   
   public class §0#2§
   {
      
      protected static var §+!§:Class;
      
      protected static var §%o§:Class;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §+!§ = §6!"§;
         }
         do
         {
            §%o§ = §2#`§;
         }
         while(_loc1_ && _loc2_);
         
      }
      
      protected var §5M§:§;a§;
      
      protected var §4#J§:§@>§;
      
      protected var §8#&§:§6!X§;
      
      protected var §6"l§:§3"8§;
      
      protected var §1`§:int;
      
      protected var § !U§:§3!c§;
      
      public function §0#2§(param1:§;a§, param2:§@>§, param3:int, param4:§6!X§ = null, param5:§3"8§ = null, param6:§3!c§ = null)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            super();
            loop0:
            while(true)
            {
               this.§5M§ = param1;
               loop1:
               while(true)
               {
                  this.§4#J§ = param2;
                  while(true)
                  {
                     this.§1`§ = param3;
                     for(; !_loc8_; while(!(_loc8_ && param3))
                     {
                        continue loop1;
                     })
                     {
                        if(_loc8_)
                        {
                           continue loop0;
                        }
                        §§push(this);
                        if(_loc7_)
                        {
                           §§pop().§8#&§ = param4 || new §&"s§();
                           continue;
                        }
                        §§goto(addr84);
                     }
                  }
                  if(!(_loc7_ || this))
                  {
                     continue;
                  }
                  while(true)
                  {
                     §§push(this);
                     if(_loc7_ || param3)
                     {
                        §§pop().§6"l§ = param5 || new §-">§();
                        do
                        {
                           if(_loc7_)
                           {
                              §§push(this);
                              if(!(_loc8_ && param3))
                              {
                                 §§push(param6);
                              }
                              §§push(new §#!D§());
                              continue;
                           }
                           §§goto(addr88);
                        }
                        while(§§pop().§ !U§ = §§pop(), !_loc7_);
                        
                        return;
                     }
                     §§goto(addr68);
                  }
               }
            }
         }
         §§goto(addr102);
      }
      
      public function get § "?§() : §6!X§
      {
         return this.§8#&§;
      }
      
      public function set § "?§(param1:§6!X§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§8#&§ = param1;
         }
      }
      
      public function get §>?§() : §3"8§
      {
         return this.§6"l§;
      }
      
      public function set §>?§(param1:§3"8§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§6"l§ = param1;
         }
      }
      
      public function get §#"N§() : §3!c§
      {
         return this.§ !U§;
      }
      
      public function set §#"N§(param1:§3!c§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§ !U§ = param1;
         }
      }
      
      protected function getTutorialPopup(param1:MovieClip, param2:String, param3:Boolean, param4:int) : §[!j§
      {
         return new TutorialPopup(this.§1`§,param4,param1,param2,this.§#"N§,param3);
      }
      
      protected function openPopup(param1:MovieClip, param2:String, param3:Boolean, param4:int, param5:Boolean = true, param6:Boolean = true, param7:Boolean = true, param8:Boolean = false) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(_loc10_)
         {
            this.§4#J§.userProgress.saveTutorialSeen(param2);
            do
            {
               this.§5M§.openPopup(this.getTutorialPopup(param1,param2,param3,param4),param5,param6,param7,param8);
            }
            while(!_loc10_);
            
         }
      }
      
      public function §,!c§(param1:String, param2:int, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:Boolean = true, param7:§6!X§ = null, param8:Boolean = true) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!(_loc12_ && param1))
         {
            §§push(this.§4#J§.userProgress.hasTutorialBeenSeen(param1));
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  if(!_loc12_)
                  {
                     §§push(param5);
                  }
                  else
                  {
                     addr82:
                     while(true)
                     {
                        addr46:
                        while(true)
                        {
                           §§push(false);
                           if(!(_loc12_ && param1))
                           {
                              continue loop0;
                           }
                        }
                        continue loop0;
                     }
                     addr82:
                  }
                  while(§§pop())
                  {
                     §§goto(addr46);
                  }
                  §§goto(addr81);
               }
               loop5:
               while(param7 != null)
               {
                  addr30:
                  if(_loc11_ || param2)
                  {
                     this.§8#&§ = param7;
                  }
                  if(_loc11_)
                  {
                     if(!_loc12_)
                     {
                        if(true)
                        {
                           break;
                        }
                     }
                     §§goto(addr81);
                  }
                  else
                  {
                     while(_loc11_ || param3)
                     {
                        continue loop5;
                        §§goto(addr30);
                     }
                     §§goto(addr82);
                     addr63:
                  }
                  §§goto(addr46);
               }
               var _loc10_:MovieClip = this.§8#&§.solve(param1);
               if(_loc11_ || param2)
               {
                  addr217:
                  §§push(!param8);
                  if(!param8)
                  {
                     addr219:
                     §§pop();
                     addr220:
                     §§push(this.§5M§.isPopupOpenById(TutorialPopup.§%!h§));
                     if(!(_loc12_ && param2))
                     {
                        if(!(_loc12_ && param2))
                        {
                           §§push(Boolean(§§pop()));
                           if(!(_loc12_ && this))
                           {
                              addr162:
                              if(§§pop())
                              {
                                 if(!_loc12_)
                                 {
                                    §§push(true);
                                    if(!(_loc12_ && this))
                                    {
                                       if(_loc11_ || param1)
                                       {
                                          addr193:
                                          §§push(Boolean(§§pop()));
                                          if(_loc11_)
                                          {
                                             param8 = §§pop();
                                             addr197:
                                             if(_loc11_ || param1)
                                             {
                                                if(_loc10_)
                                                {
                                                   if(!(_loc12_ && param3))
                                                   {
                                                      if(!_loc11_)
                                                      {
                                                         §§goto(addr197);
                                                      }
                                                      this.openPopup(_loc10_,param1,_loc9_,param2,param3,param4,param6,param8);
                                                   }
                                                }
                                                return;
                                                addr214:
                                             }
                                             §§goto(addr220);
                                          }
                                          §§goto(addr219);
                                       }
                                       §§goto(addr217);
                                    }
                                    addr185:
                                    §§push(Boolean(§§pop()));
                                    if(_loc12_ && param1)
                                    {
                                    }
                                    §§goto(addr193);
                                 }
                                 §§goto(addr197);
                              }
                              §§push(param8);
                              if(!_loc12_)
                              {
                                 §§goto(addr185);
                              }
                           }
                           §§goto(addr193);
                        }
                        §§goto(addr217);
                     }
                     §§goto(addr185);
                  }
                  §§goto(addr162);
               }
               §§goto(addr214);
               §§goto(addr82);
            }
         }
         addr81:
      }
      
      public function openMultipleTutorialPopups(param1:Vector.<String>, param2:Boolean = true, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:§6!X§ = null, param7:Boolean = true, param8:Boolean = true) : void
      {
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = true;
         var _loc11_:MovieClip = null;
         var _loc12_:String = null;
         var _loc9_:Vector.<Boolean> = new Vector.<Boolean>(param1.length);
         var _loc10_:* = 0;
         loop0:
         while(true)
         {
            §§push(_loc10_);
            loop1:
            while(true)
            {
               if(§§pop() >= _loc9_.length)
               {
                  loop2:
                  while(_loc20_)
                  {
                     §§push(int(param1.length - 1));
                     loop3:
                     while(true)
                     {
                        _loc10_ = §§pop();
                        loop4:
                        while(true)
                        {
                           if(_loc20_ || param3)
                           {
                              loop5:
                              while(true)
                              {
                                 §§push(_loc10_);
                                 if(!(_loc19_ && param3))
                                 {
                                    if(§§pop() < 0)
                                    {
                                       loop6:
                                       for(; param1.length != 0; if(!(_loc20_ || param3))
                                       {
                                          continue;
                                       },if(!(_loc19_ && this))
                                       {
                                          if(_loc20_ || param3)
                                          {
                                             if(!_loc19_)
                                             {
                                                this.§8#&§ = param6;
                                                §§goto(addr68);
                                             }
                                             else
                                             {
                                                addr152:
                                                if(_loc19_ && this)
                                                {
                                                   continue loop4;
                                                }
                                                if(!_loc20_)
                                                {
                                                   continue loop2;
                                                }
                                                param1.splice(_loc10_,1);
                                                _loc9_.splice(_loc10_,1);
                                                addr165:
                                             }
                                             §§goto(addr132);
                                          }
                                          §§goto(addr165);
                                       }
                                       else
                                       {
                                          addr126:
                                       },§§goto(addr98))
                                       {
                                          while(param6 != null)
                                          {
                                             if(_loc20_)
                                             {
                                                if(_loc20_)
                                                {
                                                   continue loop6;
                                                }
                                                continue;
                                             }
                                             addr68:
                                             if(_loc19_ && param1)
                                             {
                                                break loop6;
                                             }
                                             if(!_loc19_)
                                             {
                                                if(true)
                                                {
                                                   break;
                                                }
                                             }
                                             else
                                             {
                                                addr98:
                                                §§push(_loc10_);
                                                if(_loc20_ || this)
                                                {
                                                   continue loop3;
                                                }
                                                addr117:
                                                addr118:
                                                addr117:
                                                _loc10_ = §§pop();
                                                addr132:
                                             }
                                             continue loop5;
                                          }
                                          §§push(param2);
                                          if(_loc20_)
                                          {
                                             break loop4;
                                          }
                                          var _loc13_:* = §§pop();
                                          var _loc14_:* = false;
                                          §§push(param4);
                                          if(_loc20_ || param3)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          var _loc15_:* = §§pop();
                                          var _loc16_:int = 0;
                                          var _loc17_:int = 0;
                                          var _loc18_:int = 0;
                                          if(_loc20_ || param3)
                                          {
                                             addr345:
                                             §§push(!param7);
                                             if(!param7)
                                             {
                                                addr347:
                                                §§pop();
                                                addr348:
                                                §§push(this.§5M§.isPopupOpenById(TutorialPopup.§%!h§));
                                                if(!_loc19_)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   if(_loc20_ || param2)
                                                   {
                                                      addr307:
                                                      if(§§pop())
                                                      {
                                                         addr309:
                                                         §§push(true);
                                                         if(_loc20_)
                                                         {
                                                            addr326:
                                                            §§push(Boolean(§§pop()));
                                                            if(_loc20_ || this)
                                                            {
                                                               if(!(_loc19_ && param2))
                                                               {
                                                                  param7 = §§pop();
                                                                  §§goto(addr263);
                                                               }
                                                               §§goto(addr345);
                                                            }
                                                            §§goto(addr347);
                                                            addr312:
                                                         }
                                                         addr316:
                                                         §§push(Boolean(§§pop()));
                                                         if(!_loc19_)
                                                         {
                                                            addr319:
                                                            if(_loc20_ || param3)
                                                            {
                                                               §§goto(addr326);
                                                            }
                                                            §§goto(addr345);
                                                         }
                                                         §§goto(addr326);
                                                      }
                                                      §§push(param7);
                                                      if(_loc20_)
                                                      {
                                                         §§goto(addr316);
                                                      }
                                                      §§goto(addr319);
                                                   }
                                                   §§goto(addr312);
                                                }
                                                §§goto(addr326);
                                             }
                                             §§goto(addr307);
                                          }
                                          addr263:
                                          addr342:
                                          §§push(int(param1.length - 1));
                                          if(_loc20_ || param3)
                                          {
                                             _loc10_ = §§pop();
                                             addr276:
                                             if(!(_loc19_ && param1))
                                             {
                                                if(!(_loc19_ && this))
                                                {
                                                   §§goto(addr503);
                                                }
                                                §§goto(addr348);
                                             }
                                             §§goto(addr309);
                                          }
                                          addr503:
                                          if(_loc10_ >= 0)
                                          {
                                             _loc12_ = param1[_loc10_];
                                             if(!(_loc19_ && param2))
                                             {
                                                if(!_loc19_)
                                                {
                                                   if(!(_loc19_ && param3))
                                                   {
                                                      if(false)
                                                      {
                                                         §§goto(addr263);
                                                      }
                                                      if(_loc11_ = this.§8#&§.solve(_loc12_))
                                                      {
                                                         if(!_loc19_)
                                                         {
                                                            §§push(_loc16_);
                                                            if(_loc20_ || param1)
                                                            {
                                                               if(§§pop() != 0)
                                                               {
                                                                  if(!_loc19_)
                                                                  {
                                                                     §§push(param8);
                                                                     if(_loc20_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc20_ || this)
                                                                           {
                                                                              §§push(false);
                                                                              if(_loc20_ || param2)
                                                                              {
                                                                                 addr390:
                                                                                 _loc13_ = §§pop();
                                                                                 if(_loc20_ || param2)
                                                                                 {
                                                                                    addr501:
                                                                                    _loc15_ = false;
                                                                                    §§push(_loc16_);
                                                                                    §§push(param1.length - 1);
                                                                                    if(!(_loc19_ && param1))
                                                                                    {
                                                                                       §§push(§§pop() - _loc17_);
                                                                                    }
                                                                                    addr502:
                                                                                    if(§§pop() == §§pop())
                                                                                    {
                                                                                       addr475:
                                                                                       §§push(param3);
                                                                                       if(_loc20_)
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                       }
                                                                                       if(!_loc19_)
                                                                                       {
                                                                                          _loc14_ = §§pop();
                                                                                          addr482:
                                                                                          if(_loc20_ || param1)
                                                                                          {
                                                                                          }
                                                                                          §§goto(addr502);
                                                                                       }
                                                                                       §§goto(addr501);
                                                                                    }
                                                                                    this.openPopup(_loc11_,_loc12_,_loc9_[_loc10_],_loc18_,_loc13_,_loc14_,_loc15_,param7);
                                                                                    _loc16_++;
                                                                                    addr459:
                                                                                    if(!(_loc19_ && param2))
                                                                                    {
                                                                                       addr432:
                                                                                       §§push(_loc10_);
                                                                                       if(!(_loc19_ && param1))
                                                                                       {
                                                                                          if(_loc20_)
                                                                                          {
                                                                                             addr411:
                                                                                             _loc10_ = §§pop() - 1;
                                                                                             if(!(_loc19_ && param2))
                                                                                             {
                                                                                                if(!_loc19_)
                                                                                                {
                                                                                                   if(!_loc19_)
                                                                                                   {
                                                                                                      if(_loc20_ || param2)
                                                                                                      {
                                                                                                         addr430:
                                                                                                         if(false)
                                                                                                         {
                                                                                                            §§goto(addr432);
                                                                                                         }
                                                                                                         §§goto(addr503);
                                                                                                      }
                                                                                                      §§goto(addr475);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr459);
                                                                                             }
                                                                                             §§goto(addr432);
                                                                                          }
                                                                                          §§goto(addr501);
                                                                                       }
                                                                                       §§goto(addr411);
                                                                                       addr445:
                                                                                    }
                                                                                    §§goto(addr482);
                                                                                    addr500:
                                                                                 }
                                                                                 §§goto(addr445);
                                                                              }
                                                                              §§goto(addr501);
                                                                           }
                                                                           §§goto(addr459);
                                                                        }
                                                                        §§goto(addr500);
                                                                     }
                                                                     §§goto(addr390);
                                                                  }
                                                                  §§goto(addr430);
                                                               }
                                                               §§goto(addr501);
                                                            }
                                                            §§goto(addr411);
                                                         }
                                                         §§goto(addr501);
                                                      }
                                                      _loc17_++;
                                                      §§goto(addr411);
                                                   }
                                                   §§goto(addr342);
                                                }
                                                §§goto(addr276);
                                             }
                                          }
                                          return;
                                       }
                                       if(!_loc19_)
                                       {
                                          return;
                                       }
                                       §§goto(addr118);
                                    }
                                    else
                                    {
                                       §§push(this.§4#J§.userProgress.hasTutorialBeenSeen(param1[_loc10_]));
                                       if(!_loc19_)
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc19_)
                                             {
                                                §§push(param5);
                                                if(_loc19_)
                                                {
                                                   break loop4;
                                                }
                                                addr151:
                                                if(!§§pop())
                                                {
                                                   §§goto(addr152);
                                                }
                                                else
                                                {
                                                   _loc9_[_loc10_] = false;
                                                   §§goto(addr126);
                                                }
                                             }
                                             §§goto(addr165);
                                          }
                                          §§goto(addr98);
                                       }
                                       §§goto(addr151);
                                    }
                                 }
                                 §§goto(addr117);
                              }
                              continue loop1;
                           }
                        }
                        §§goto(addr200);
                     }
                  }
                  continue loop0;
               }
               _loc9_[_loc10_] = true;
               _loc10_++;
               continue loop0;
            }
         }
      }
      
      public function §%#U§(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§5M§.closePopup(this.§1`§,param1,true,false);
         }
      }
   }
}
