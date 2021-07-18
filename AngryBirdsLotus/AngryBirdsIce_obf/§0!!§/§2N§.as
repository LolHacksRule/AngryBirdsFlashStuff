package §0!!§
{
   public class §2N§
   {
       
      
      private var §@$§:Vector.<int>;
      
      public function §2N§(param1:int = 0)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            super();
         }
         do
         {
            this.§@$§ = new Vector.<int>(32);
            do
            {
               this.assign(param1);
            }
            while(_loc2_);
            
         }
         while(!(_loc3_ || this));
         
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
            if(_loc6_ || this)
            {
               if(§§pop() >= this.§@$§.length)
               {
                  break;
               }
               _loc4_ = int(Math.round(Math.random() * 2 - 1 * int.MAX_VALUE));
               §§push(param1);
               if(_loc6_ || this)
               {
                  §§push(§§pop() & _loc2_);
                  if(_loc6_)
                  {
                     §§push(_loc5_ = §§pop());
                  }
                  if(§§pop())
                  {
                     addr128:
                     §§push(_loc5_);
                     §§push(param1);
                     while(true)
                     {
                        §§push(§§pop() | §§pop());
                        loop2:
                        while(true)
                        {
                           _loc4_ = §§pop();
                           addr80:
                           loop3:
                           while(true)
                           {
                              this.§@$§[_loc3_] = _loc4_;
                              addr86:
                              addr100:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 if(!_loc7_)
                                 {
                                    §§push(§§pop() << 1);
                                 }
                                 if(_loc7_ && this)
                                 {
                                    break;
                                 }
                                 continue loop2;
                              }
                              addr100:
                              while(true)
                              {
                                 continue loop3;
                              }
                           }
                           continue loop0;
                        }
                     }
                     addr129:
                  }
                  else
                  {
                     §§push(_loc5_);
                  }
                  while(true)
                  {
                     §§push(_loc5_);
                     if(_loc6_)
                     {
                        §§push((_loc5_ = §§pop() ^ §§pop()) & param1);
                        while(true)
                        {
                           _loc4_ = §§pop();
                           §§goto(addr100);
                        }
                        addr99:
                     }
                     else
                     {
                        §§goto(addr129);
                     }
                     §§goto(addr80);
                     §§goto(addr86);
                  }
               }
               §§goto(addr128);
            }
            §§goto(addr99);
         }
      }
      
      public function getValue() : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:* = 0;
         var _loc2_:* = 1;
         var _loc3_:int = 0;
         while(true)
         {
            §§push(_loc3_);
            if(_loc4_ || _loc2_)
            {
               if(!_loc5_)
               {
                  if(§§pop() >= this.§@$§.length)
                  {
                     if(!(_loc5_ && _loc1_))
                     {
                        addr56:
                        §§push(_loc1_);
                        if(!(_loc5_ && _loc3_))
                        {
                           break;
                        }
                        loop5:
                        while(true)
                        {
                           _loc1_ = §§pop();
                           addr116:
                           addr94:
                           while(true)
                           {
                              §§push(_loc2_);
                              if(!_loc5_)
                              {
                                 §§push(1);
                                 if(!_loc5_)
                                 {
                                    §§push(§§pop() << §§pop());
                                    break;
                                 }
                                 addr114:
                                 while(true)
                                 {
                                    continue loop5;
                                 }
                              }
                              break;
                           }
                           loop6:
                           while(true)
                           {
                              _loc2_ = §§pop();
                              addr95:
                              addr102:
                              while(_loc5_ && _loc3_)
                              {
                                 §§goto(addr116);
                                 continue loop6;
                              }
                              _loc3_++;
                           }
                        }
                        addr115:
                     }
                     while(!(_loc4_ || this))
                     {
                        §§goto(addr95);
                        §§goto(addr102);
                     }
                     continue;
                  }
                  §§push(_loc1_);
                  if(_loc4_)
                  {
                     §§goto(addr114);
                     §§push(this.§@$§[_loc3_] & _loc2_);
                  }
                  §§goto(addr115);
               }
               §§goto(addr94);
            }
            §§goto(addr56);
         }
         return §§pop();
      }
   }
}
