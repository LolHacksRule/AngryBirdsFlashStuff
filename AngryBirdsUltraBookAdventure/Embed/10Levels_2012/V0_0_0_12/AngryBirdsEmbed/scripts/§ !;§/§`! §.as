package § !;§
{
   public class §`! §
   {
       
      
      private var §^<§:Vector.<int>;
      
      public function §`! §(param1:int = 0)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
            if(!_loc2_)
            {
               this.§^<§ = new Vector.<int>(32);
               if(!(_loc2_ && this))
               {
                  this.assign(param1);
               }
            }
         }
      }
      
      public function assign(param1:int) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc2_:* = 1;
         var _loc3_:int = 0;
         do
         {
            if(_loc3_ >= this.§^<§.length)
            {
               if(!_loc7_)
               {
                  break;
               }
            }
            else
            {
               _loc4_ = int(Math.round((Math.random() * 2 - 1) * int.MAX_VALUE));
               §§push(param1);
               if(_loc6_)
               {
                  §§push(§§pop() & _loc2_);
                  §§push(§§pop() & _loc2_);
                  if(_loc6_ || this)
                  {
                     _loc5_ = §§pop();
                     if(§§pop())
                     {
                        if(!_loc7_)
                        {
                           §§push(_loc4_ | _loc2_);
                           if(!_loc7_)
                           {
                              _loc4_ = §§pop();
                              if(_loc6_ || param1)
                              {
                                 this.§^<§[_loc3_] = _loc4_;
                                 addr95:
                              }
                              §§push(_loc2_);
                              §§push(1);
                              if(!_loc6_)
                              {
                                 §§goto(addr134);
                              }
                              §§goto(addr115);
                           }
                        }
                     }
                     else
                     {
                        §§push(_loc4_);
                        if(_loc6_)
                        {
                           §§push(§§pop() & ~_loc2_);
                           if(_loc6_ || this)
                           {
                              addr92:
                              _loc4_ = §§pop();
                              if(!_loc6_)
                              {
                                 continue;
                              }
                              §§goto(addr95);
                           }
                           addr115:
                           _loc2_ = §§pop() << §§pop();
                           continue;
                        }
                     }
                     §§goto(addr134);
                     §§push(param1);
                  }
                  §§goto(addr134);
               }
               §§goto(addr92);
            }
            addr134:
            if(§§pop() != §§pop())
            {
            }
            return;
         }
         while(_loc3_++, _loc6_ || this);
         
         §§goto(addr133);
         §§push(this.getValue());
      }
      
      public function getValue() : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:* = 0;
         var _loc2_:* = 1;
         var _loc3_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc3_);
            if(_loc5_ || this)
            {
               while(§§pop() < this.§^<§.length)
               {
                  §§push(_loc1_);
                  if(!_loc4_)
                  {
                     §§push(this.§^<§[_loc3_] & _loc2_);
                     if(!_loc4_)
                     {
                        §§push(§§pop() | §§pop());
                        if(_loc5_)
                        {
                           _loc1_ = §§pop();
                           if(!(_loc4_ && _loc2_))
                           {
                              §§push(_loc2_);
                              if(!(_loc4_ && _loc3_))
                              {
                                 §§push(1);
                              }
                              break loop0;
                           }
                           continue loop0;
                        }
                        continue;
                     }
                     §§push(§§pop() << §§pop());
                     if(_loc5_)
                     {
                        _loc2_ = §§pop();
                        if(!(_loc4_ && this))
                        {
                           _loc3_++;
                           if(!(_loc5_ || _loc2_))
                           {
                              break;
                           }
                        }
                        continue loop0;
                     }
                  }
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
