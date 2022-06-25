package §06§
{
   import § !x§.§4F§;
   import com.rovio.assets.§9!N§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §8!S§ extends Sprite
   {
       
      
      private var §>P§:Sprite;
      
      private var §=z§:Number;
      
      private var §,J§:Number;
      
      private var §@]§:§4F§;
      
      public function §8!S§(param1:Number)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = null;
         if(_loc5_ || _loc3_)
         {
            super();
         }
         var _loc2_:int = Math.random() * 7;
         §§push(_loc2_);
         if(_loc5_)
         {
            var _loc4_:* = §§pop();
            if(!(_loc6_ && param1))
            {
               §§push(0);
               if(!_loc6_)
               {
                  §§push(_loc4_);
                  if(_loc5_ || _loc2_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc6_ && param1))
                        {
                           §§push(0);
                           if(!(_loc5_ || this))
                           {
                              addr202:
                           }
                        }
                        else
                        {
                           addr245:
                           §§push(3);
                           if(_loc6_)
                           {
                              addr294:
                           }
                        }
                     }
                     else
                     {
                        §§push(1);
                        if(_loc5_ || _loc3_)
                        {
                           §§push(_loc4_);
                           if(!_loc6_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc5_)
                                 {
                                    §§push(1);
                                    if(_loc5_)
                                    {
                                       §§goto(addr202);
                                    }
                                    else
                                    {
                                       addr303:
                                       if(§§pop() === _loc4_)
                                       {
                                          addr305:
                                          §§push(6);
                                          if(!(_loc6_ && param1))
                                          {
                                             addr318:
                                             loop6:
                                             switch(§§pop())
                                             {
                                                case 0:
                                                   addr131:
                                                   _loc3_ = "P_STAR_4";
                                                   addr383:
                                                   this.§>P§ = this.§>>§(_loc3_);
                                                   while(true)
                                                   {
                                                      addChild(this.§>P§);
                                                      loop1:
                                                      for(; !_loc6_; if(!(_loc6_ && param1))
                                                      {
                                                         break loop6;
                                                      })
                                                      {
                                                         while(true)
                                                         {
                                                            this.mouseEnabled = false;
                                                            addr374:
                                                            loop2:
                                                            while(true)
                                                            {
                                                               this.§>P§.x = -this.§>P§.width / 2;
                                                               while(true)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  continue loop2;
                                                               }
                                                               continue loop1;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   break;
                                                   addr132:
                                                   addr388:
                                                case 1:
                                                   addr119:
                                                   _loc3_ = "P_STAR_3";
                                                   if(_loc5_ || param1)
                                                   {
                                                      §§goto(addr383);
                                                   }
                                                   §§goto(addr374);
                                                case 2:
                                                   addr111:
                                                   _loc3_ = "P_STAR_2";
                                                   if(_loc5_)
                                                   {
                                                      §§goto(addr383);
                                                   }
                                                   break;
                                                case 3:
                                                   addr96:
                                                   §§push("P_STAR_1");
                                                   if(!(_loc6_ && _loc3_))
                                                   {
                                                      _loc3_ = §§pop();
                                                      if(!_loc6_)
                                                      {
                                                         §§goto(addr383);
                                                      }
                                                      §§goto(addr382);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr111);
                                                   }
                                                case 4:
                                                   addr74:
                                                   §§push("P_SMOKE_3");
                                                   if(_loc5_ || this)
                                                   {
                                                      _loc3_ = §§pop();
                                                      if(_loc5_)
                                                      {
                                                         if(!(_loc5_ || param1))
                                                         {
                                                            §§goto(addr132);
                                                         }
                                                         else
                                                         {
                                                            addr58:
                                                         }
                                                         §§goto(addr383);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr119);
                                                   }
                                                   §§goto(addr374);
                                                case 5:
                                                   addr62:
                                                   §§push("P_SMOKE_2");
                                                   if(!_loc6_)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         _loc3_ = §§pop();
                                                         if(_loc6_)
                                                         {
                                                         }
                                                         §§goto(addr374);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr96);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr74);
                                                   }
                                                   §§goto(addr374);
                                                case 6:
                                                   §§push("P_SMOKE_1");
                                                   if(_loc5_)
                                                   {
                                                      if(_loc5_ || _loc2_)
                                                      {
                                                         _loc3_ = §§pop();
                                                         if(_loc5_ || _loc2_)
                                                         {
                                                            if(false)
                                                            {
                                                               §§goto(addr58);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr383);
                                                            }
                                                         }
                                                         §§goto(addr388);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr131);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr62);
                                                   }
                                                   §§goto(addr374);
                                                default:
                                                   §§goto(addr131);
                                             }
                                             continue loop5;
                                             addr318:
                                          }
                                          §§goto(addr318);
                                       }
                                       else
                                       {
                                          §§goto(addr318);
                                          §§push(7);
                                       }
                                       §§goto(addr318);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr245);
                                 }
                                 §§goto(addr318);
                              }
                              else
                              {
                                 §§push(2);
                                 if(!(_loc6_ && this))
                                 {
                                    §§push(_loc4_);
                                    if(_loc5_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc5_)
                                          {
                                             §§push(2);
                                             if(_loc6_)
                                             {
                                             }
                                          }
                                          else
                                          {
                                             addr268:
                                             §§push(4);
                                             if(!(_loc6_ && _loc2_))
                                             {
                                                addr276:
                                                §§goto(addr318);
                                             }
                                             else
                                             {
                                                addr285:
                                                §§push(_loc4_);
                                                if(_loc5_)
                                                {
                                                   addr288:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         addr291:
                                                         §§push(5);
                                                         if(!_loc6_)
                                                         {
                                                            §§goto(addr294);
                                                         }
                                                         §§goto(addr318);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr305);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(6);
                                                      if(_loc5_ || _loc3_)
                                                      {
                                                         §§goto(addr303);
                                                      }
                                                      §§goto(addr318);
                                                   }
                                                   §§goto(addr318);
                                                }
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§push(3);
                                          if(_loc5_ || _loc2_)
                                          {
                                             §§push(_loc4_);
                                             if(_loc5_ || _loc2_)
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!(_loc6_ && _loc3_))
                                                   {
                                                      §§goto(addr245);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr268);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(4);
                                                   if(_loc5_ || _loc3_)
                                                   {
                                                      §§push(_loc4_);
                                                      if(!(_loc6_ && _loc2_))
                                                      {
                                                         addr265:
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               §§goto(addr268);
                                                            }
                                                            §§goto(addr291);
                                                         }
                                                         else
                                                         {
                                                            §§push(5);
                                                            if(_loc5_ || param1)
                                                            {
                                                               §§goto(addr285);
                                                            }
                                                            §§goto(addr303);
                                                         }
                                                      }
                                                      §§goto(addr288);
                                                   }
                                                   §§goto(addr318);
                                                }
                                                §§goto(addr318);
                                             }
                                             §§goto(addr265);
                                          }
                                       }
                                       §§goto(addr318);
                                    }
                                    §§goto(addr303);
                                 }
                                 §§goto(addr276);
                              }
                           }
                           §§goto(addr288);
                        }
                     }
                     §§goto(addr318);
                  }
                  §§goto(addr265);
               }
               §§goto(addr303);
            }
            §§goto(addr305);
         }
         §§goto(addr318);
      }
      
      public function clean() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§@]§);
            if(!(_loc1_ && _loc1_))
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§@]§);
                     addr95:
                     while(true)
                     {
                        §§pop().stop();
                        addr96:
                        addr82:
                        loop3:
                        while(true)
                        {
                           this.§@]§ = null;
                           addr75:
                           while(true)
                           {
                              if(!(_loc1_ && _loc1_))
                              {
                                 break loop3;
                              }
                              continue loop3;
                           }
                        }
                     }
                     addr53:
                     loop2:
                     while(true)
                     {
                        if(_loc2_ || _loc2_)
                        {
                           while(true)
                           {
                              this.§>P§ = null;
                              if(!_loc2_)
                              {
                                 continue loop2;
                              }
                              if(_loc2_ || _loc1_)
                              {
                                 break;
                              }
                              §§goto(addr75);
                           }
                           return;
                           addr70:
                        }
                        continue loop0;
                     }
                     §§goto(addr96);
                  }
               }
               while(true)
               {
                  removeChild(this.§>P§);
                  §§goto(addr53);
                  §§goto(addr82);
               }
            }
            §§goto(addr95);
         }
         §§goto(addr70);
      }
      
      public function §>>§(param1:String) : MovieClip
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §9!N§.§0!k§(param1);
         _loc2_ = new _loc3_();
         if(!_loc4_)
         {
            _loc2_.x = _loc2_.width / 2;
         }
         do
         {
            _loc2_.y = _loc2_.height / 2;
         }
         while(_loc4_ && _loc2_);
         
         return _loc2_;
      }
      
      public function set §var§(param1:§4F§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§@]§ = param1;
         }
      }
      
      public function get §var§() : §4F§
      {
         return this.§@]§;
      }
      
      public function get § c§() : Number
      {
         return this.§=z§;
      }
      
      public function set § c§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§=z§ = param1;
         }
      }
      
      public function get §`a§() : Number
      {
         return this.§,J§;
      }
      
      public function set §`a§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§,J§ = param1;
         }
      }
   }
}
