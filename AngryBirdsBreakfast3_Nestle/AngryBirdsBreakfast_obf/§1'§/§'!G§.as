package §1'§
{
   import §;g§.§]W§;
   import com.rovio.assets.§=!V§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §'!G§ extends Sprite
   {
      
      public static const §0P§:String = "star";
      
      public static const §"!P§:String = "smoke";
      
      public static const §[§:String = "coin";
      
      public static const § !P§:String = "all";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §0P§ = "star";
            loop0:
            while(true)
            {
               §"!P§ = "smoke";
               do
               {
                  §[§ = "coin";
                  continue loop0;
               }
               while(!(_loc2_ || _loc2_));
               
            }
         }
      }
      
      private var §"!H§:Sprite;
      
      private var §6!G§:Number;
      
      private var §8r§:Number;
      
      private var §%"1§:§]W§;
      
      public function §'!G§(param1:Number, param2:String = "all")
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:String = null;
         if(_loc6_ || param2)
         {
            super();
         }
         var _loc5_:* = param2;
         if(_loc6_ || _loc3_)
         {
            §§push(§0P§);
            if(_loc6_ || _loc3_)
            {
               §§push(_loc5_);
               if(_loc6_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc7_)
                     {
                        §§push(0);
                        if(_loc6_ || param2)
                        {
                           addr202:
                           if(!_loc7_)
                           {
                              switch(§§pop())
                              {
                                 case 0:
                                    addr115:
                                    _loc3_ = int(this.§,Y§(0,3));
                                    break;
                                    addr116:
                                    addr114:
                                 case 1:
                                    addr91:
                                    §§push(int(this.§,Y§(4,6)));
                                    if(_loc6_ || param1)
                                    {
                                       if(_loc6_)
                                       {
                                          _loc3_ = §§pop();
                                          if(_loc6_)
                                          {
                                             if(!_loc7_)
                                             {
                                                addr60:
                                                break;
                                             }
                                          }
                                          else
                                          {
                                             addr581:
                                             this.§"!H§ = this.§2!S§(_loc4_);
                                             loop0:
                                             while(true)
                                             {
                                                addChild(this.§"!H§);
                                                addr580:
                                                while(true)
                                                {
                                                   this.mouseEnabled = false;
                                                   while(!(_loc7_ && param1))
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         this.§"!H§.x = -this.§"!H§.width / 2;
                                                         while(_loc6_)
                                                         {
                                                            this.§"!H§.y = -this.§"!H§.height / 2;
                                                            if(_loc6_)
                                                            {
                                                               return;
                                                            }
                                                         }
                                                         continue;
                                                      }
                                                      continue loop0;
                                                   }
                                                }
                                             }
                                             addr520:
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr115);
                                       }
                                       §§goto(addr116);
                                    }
                                    _loc5_ = §§pop();
                                    if(!(_loc7_ && _loc3_))
                                    {
                                       §§push(0);
                                       if(_loc6_ || param2)
                                       {
                                          §§push(_loc5_);
                                          if(!(_loc7_ && this))
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc6_ || this)
                                                {
                                                   §§push(0);
                                                   if(_loc7_ && _loc3_)
                                                   {
                                                   }
                                                }
                                                else
                                                {
                                                   addr353:
                                                   §§push(2);
                                                   if(!(_loc6_ || param1))
                                                   {
                                                      addr467:
                                                      §§push(_loc5_);
                                                      if(!(_loc7_ && this))
                                                      {
                                                         addr475:
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               addr478:
                                                               §§push(7);
                                                               if(_loc6_ || param2)
                                                               {
                                                                  addr518:
                                                                  switch(§§pop())
                                                                  {
                                                                     case 0:
                                                                        _loc4_ = "P_STAR_4";
                                                                        if(!_loc7_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§goto(addr580);
                                                                     case 1:
                                                                        _loc4_ = "P_STAR_3";
                                                                        break;
                                                                     case 2:
                                                                        _loc4_ = "P_STAR_2";
                                                                        break;
                                                                     case 3:
                                                                        _loc4_ = "P_STAR_1";
                                                                        break;
                                                                     case 4:
                                                                        _loc4_ = "P_SMOKE_3";
                                                                        break;
                                                                     case 5:
                                                                        _loc4_ = "P_SMOKE_2";
                                                                        addr216:
                                                                        break;
                                                                     case 6:
                                                                        _loc4_ = "P_SMOKE_1";
                                                                        break;
                                                                     case 7:
                                                                     case 8:
                                                                     case 9:
                                                                        _loc4_ = "P_COIN_1";
                                                                        if(true)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§goto(addr216);
                                                                  }
                                                                  §§goto(addr581);
                                                                  addr518:
                                                                  addr486:
                                                               }
                                                               else
                                                               {
                                                                  addr513:
                                                                  §§goto(addr518);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr510:
                                                               §§push(9);
                                                               if(_loc6_)
                                                               {
                                                                  §§goto(addr513);
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(8);
                                                            if(!_loc7_)
                                                            {
                                                               addr490:
                                                               §§push(_loc5_);
                                                               if(!_loc7_)
                                                               {
                                                                  addr493:
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(!(_loc7_ && _loc3_))
                                                                     {
                                                                        addr501:
                                                                        §§push(8);
                                                                        if(_loc6_)
                                                                        {
                                                                           addr504:
                                                                        }
                                                                        §§goto(addr518);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr510);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(9);
                                                                     if(!_loc7_)
                                                                     {
                                                                        addr508:
                                                                        §§push(_loc5_);
                                                                     }
                                                                     §§goto(addr518);
                                                                  }
                                                                  §§goto(addr518);
                                                               }
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  §§goto(addr510);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr518);
                                                                  §§push(10);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr518);
                                                      }
                                                      §§goto(addr493);
                                                   }
                                                }
                                                §§goto(addr518);
                                             }
                                             else
                                             {
                                                §§push(1);
                                                if(!(_loc7_ && param1))
                                                {
                                                   addr329:
                                                   §§push(_loc5_);
                                                   if(!_loc7_)
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc6_ || param2)
                                                         {
                                                            addr340:
                                                            §§push(1);
                                                            if(!_loc6_)
                                                            {
                                                               addr458:
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr353);
                                                         }
                                                         §§goto(addr518);
                                                      }
                                                      else
                                                      {
                                                         §§push(2);
                                                         if(_loc6_)
                                                         {
                                                            §§push(_loc5_);
                                                            if(_loc6_)
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§goto(addr353);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr437:
                                                                     §§push(5);
                                                                     if(_loc7_)
                                                                     {
                                                                        §§goto(addr490);
                                                                     }
                                                                     §§goto(addr518);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(3);
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§push(_loc5_);
                                                                     if(_loc6_ || this)
                                                                     {
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(_loc6_ || param2)
                                                                           {
                                                                              §§push(3);
                                                                              if(_loc7_)
                                                                              {
                                                                                 addr393:
                                                                                 §§push(_loc5_);
                                                                                 if(_loc6_ || this)
                                                                                 {
                                                                                    if(§§pop() === §§pop())
                                                                                    {
                                                                                       if(_loc6_ || _loc3_)
                                                                                       {
                                                                                          §§push(4);
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             addr412:
                                                                                          }
                                                                                          §§goto(addr518);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr478);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(5);
                                                                                       if(_loc6_ || param1)
                                                                                       {
                                                                                          addr421:
                                                                                          §§push(_loc5_);
                                                                                          if(!(_loc7_ && _loc3_))
                                                                                          {
                                                                                             if(§§pop() === §§pop())
                                                                                             {
                                                                                                if(!(_loc7_ && param1))
                                                                                                {
                                                                                                   §§goto(addr437);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr478);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(6);
                                                                                                if(_loc6_ || _loc3_)
                                                                                                {
                                                                                                   §§push(_loc5_);
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      addr452:
                                                                                                      if(§§pop() === §§pop())
                                                                                                      {
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            addr455:
                                                                                                            §§push(6);
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               §§goto(addr458);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr490);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr501);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§push(7);
                                                                                                         if(!(_loc7_ && this))
                                                                                                         {
                                                                                                            §§goto(addr467);
                                                                                                         }
                                                                                                         §§goto(addr518);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr490);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr508);
                                                                                          }
                                                                                          §§goto(addr475);
                                                                                       }
                                                                                       §§goto(addr504);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr475);
                                                                              }
                                                                              §§goto(addr518);
                                                                           }
                                                                           §§goto(addr455);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(4);
                                                                           if(_loc6_ || param1)
                                                                           {
                                                                              §§goto(addr393);
                                                                           }
                                                                        }
                                                                        §§goto(addr412);
                                                                     }
                                                                  }
                                                                  §§goto(addr467);
                                                               }
                                                               §§goto(addr467);
                                                            }
                                                            §§goto(addr452);
                                                         }
                                                         §§goto(addr421);
                                                      }
                                                   }
                                                   §§goto(addr475);
                                                }
                                             }
                                             §§goto(addr467);
                                          }
                                          §§goto(addr475);
                                       }
                                       §§goto(addr329);
                                    }
                                    §§goto(addr340);
                                 case 2:
                                    addr67:
                                    §§push(int(this.§,Y§(7,9)));
                                    if(_loc6_ || _loc3_)
                                    {
                                       _loc3_ = §§pop();
                                       if(_loc6_ || param1)
                                       {
                                          break;
                                       }
                                       §§goto(addr520);
                                    }
                                    break;
                                 case 3:
                                    §§push(this.§,Y§(0,6));
                                    if(_loc6_)
                                    {
                                       if(_loc6_ || param1)
                                       {
                                          if(!_loc7_)
                                          {
                                             §§push(int(§§pop()));
                                             if(_loc6_)
                                             {
                                                _loc3_ = §§pop();
                                                if(_loc6_ || param1)
                                                {
                                                   if(true)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr60);
                                                }
                                                else
                                                {
                                                   §§goto(addr581);
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr114);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr91);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr67);
                                    }
                              }
                              §§push(_loc3_);
                              if(_loc6_ || param1)
                              {
                                 §§goto(addr91);
                              }
                           }
                           §§goto(addr518);
                        }
                     }
                     else
                     {
                        addr187:
                        §§push(2);
                        if(_loc7_)
                        {
                           addr197:
                        }
                     }
                     §§goto(addr202);
                  }
                  else
                  {
                     §§push(§"!P§);
                     if(!(_loc7_ && param1))
                     {
                        addr163:
                        §§push(_loc5_);
                        if(!_loc7_)
                        {
                           addr166:
                           if(§§pop() === §§pop())
                           {
                              if(!_loc7_)
                              {
                                 addr169:
                                 §§push(1);
                                 if(_loc6_)
                                 {
                                    §§goto(addr202);
                                 }
                                 else
                                 {
                                    §§goto(addr190);
                                 }
                              }
                              §§goto(addr202);
                           }
                           else
                           {
                              §§push(§[§);
                              if(_loc6_ || param1)
                              {
                                 addr181:
                                 §§push(_loc5_);
                                 if(_loc6_)
                                 {
                                    addr184:
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc6_)
                                       {
                                          §§goto(addr187);
                                       }
                                       else
                                       {
                                          addr194:
                                          §§push(3);
                                          if(!_loc7_)
                                          {
                                             §§goto(addr197);
                                          }
                                          §§goto(addr202);
                                       }
                                    }
                                    else
                                    {
                                       addr192:
                                       §§push(§ !P§);
                                       §§push(_loc5_);
                                    }
                                    §§goto(addr194);
                                 }
                                 if(§§pop() === §§pop())
                                 {
                                    §§goto(addr194);
                                 }
                                 else
                                 {
                                    §§goto(addr202);
                                    §§push(4);
                                 }
                                 §§goto(addr202);
                              }
                              §§goto(addr192);
                           }
                        }
                        §§goto(addr184);
                     }
                     §§goto(addr181);
                  }
               }
               §§goto(addr166);
            }
            §§goto(addr163);
         }
         §§goto(addr169);
      }
      
      private function §,Y§(param1:Number, param2:Number) : Number
      {
         return Math.floor(Math.random() * (param2 - param1 + 1)) + param1;
      }
      
      public function §,!#§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§%"1§);
            if(_loc1_ || _loc1_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§%"1§);
                     addr94:
                     while(true)
                     {
                        §§pop().stop();
                        loop5:
                        while(true)
                        {
                           this.§%"1§ = null;
                           addr69:
                           addr71:
                           while(_loc2_)
                           {
                              continue loop5;
                           }
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr92:
               }
               loop1:
               while(true)
               {
                  removeChild(this.§"!H§);
                  while(!(_loc2_ && _loc2_))
                  {
                     this.§"!H§ = null;
                     if(!(_loc1_ || this))
                     {
                        continue;
                     }
                     if(_loc1_)
                     {
                        break loop1;
                     }
                     §§goto(addr92);
                  }
                  §§goto(addr69);
                  §§goto(addr71);
               }
               return;
            }
            §§goto(addr94);
         }
         §§goto(addr71);
      }
      
      public function §2!S§(param1:String) : MovieClip
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §=!V§.§?!O§(param1);
         _loc2_ = new _loc3_();
         if(_loc4_)
         {
            _loc2_.x = _loc2_.width / 2;
         }
         do
         {
            _loc2_.y = _loc2_.height / 2;
         }
         while(!_loc4_);
         
         return _loc2_;
      }
      
      public function set §]!#§(param1:§]W§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§%"1§ = param1;
         }
      }
      
      public function get §]!#§() : §]W§
      {
         return this.§%"1§;
      }
      
      public function get §"$§() : Number
      {
         return this.§6!G§;
      }
      
      public function set §"$§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§6!G§ = param1;
         }
      }
      
      public function get §8!g§() : Number
      {
         return this.§8r§;
      }
      
      public function set §8!g§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§8r§ = param1;
         }
      }
   }
}
