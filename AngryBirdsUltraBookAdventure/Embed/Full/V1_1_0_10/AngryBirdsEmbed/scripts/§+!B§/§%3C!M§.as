package §+!B§
{
   public class §<!M§
   {
       
      
      private var § true§:Vector.<int>;
      
      public function §<!M§(param1:int = 0)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
            if(_loc3_ || param1)
            {
               this.§ true§ = new Vector.<int>(32);
               if(!_loc2_)
               {
                  addr47:
                  this.assign(param1);
               }
               return;
            }
         }
         §§goto(addr47);
      }
      
      public function assign(param1:int) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc2_:int = 1;
         var _loc3_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc3_);
            if(_loc6_)
            {
               while(true)
               {
                  if(§§pop() >= this.§ true§.length)
                  {
                     if(_loc6_ || this)
                     {
                        break;
                     }
                  }
                  else
                  {
                     _loc4_ = int(Math.round((Math.random() * 2 - 1) * int.MAX_VALUE));
                     if(_loc6_ || _loc3_)
                     {
                        §§push(param1);
                        if(!(_loc7_ && param1))
                        {
                           §§push(_loc2_);
                           if(_loc6_ || _loc2_)
                           {
                              §§push(§§pop() & §§pop());
                              §§push(§§pop() & §§pop());
                              if(!_loc7_)
                              {
                                 addr65:
                                 _loc5_ = §§pop();
                                 if(!(_loc7_ && _loc2_))
                                 {
                                    if(§§pop())
                                    {
                                       addr84:
                                       §§push(_loc4_);
                                       if(!_loc7_)
                                       {
                                          §§push(_loc2_);
                                          if(_loc7_ && _loc2_)
                                          {
                                             if(§§pop() != §§pop())
                                             {
                                             }
                                             §§goto(addr163);
                                          }
                                          §§push(§§pop() | §§pop());
                                          if(_loc7_)
                                          {
                                             break loop0;
                                          }
                                          _loc4_ = §§pop();
                                          addr109:
                                          this.§ true§[_loc3_] = _loc4_;
                                          if(_loc7_)
                                          {
                                             break;
                                          }
                                          §§push(_loc2_);
                                          if(_loc6_ || _loc2_)
                                          {
                                             §§push(§§pop() << 1);
                                             if(!(_loc7_ && _loc3_))
                                             {
                                                continue loop0;
                                             }
                                          }
                                          continue;
                                          addr162:
                                       }
                                       addr108:
                                       _loc4_ = §§pop();
                                       §§goto(addr109);
                                    }
                                    else
                                    {
                                       §§push(_loc4_);
                                       §§push(_loc2_);
                                       if(_loc6_)
                                       {
                                          addr105:
                                          §§push(§§pop() & ~§§pop());
                                          if(!_loc6_)
                                          {
                                             continue;
                                          }
                                       }
                                       §§goto(addr105);
                                    }
                                 }
                                 §§goto(addr108);
                              }
                              §§goto(addr105);
                           }
                           §§goto(addr65);
                        }
                        break loop0;
                     }
                     §§goto(addr84);
                  }
                  addr163:
                  return;
               }
               §§push(this.getValue());
               break;
            }
            break;
         }
         §§goto(addr162);
         §§push(param1);
      }
      
      public function getValue() : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:* = 0;
         var _loc2_:* = 1;
         var _loc3_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc3_);
            if(_loc4_)
            {
               while(§§pop() < this.§ true§.length)
               {
                  §§push(_loc1_);
                  if(!_loc5_)
                  {
                     §§push(this.§ true§[_loc3_] & _loc2_);
                     if(_loc4_ || _loc1_)
                     {
                        §§push(§§pop() | §§pop());
                        if(!_loc4_)
                        {
                           continue;
                        }
                        _loc1_ = §§pop();
                        if(_loc5_ && this)
                        {
                           continue loop0;
                        }
                        §§push(_loc2_);
                        if(!(_loc4_ || _loc2_))
                        {
                           continue;
                        }
                        §§push(1);
                     }
                     §§push(§§pop() << §§pop());
                     if(!_loc4_)
                     {
                     }
                     break loop0;
                  }
                  _loc2_ = §§pop();
                  if(!(_loc4_ || _loc2_))
                  {
                     break;
                  }
                  _loc3_++;
                  if(!_loc4_)
                  {
                     break;
                  }
                  continue loop0;
               }
               §§push(_loc1_);
               break;
            }
            break;
         }
         return §§pop();
      }
   }
}
