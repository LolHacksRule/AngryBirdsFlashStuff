package §_-IV§
{
   public class §_-dW§
   {
       
      
      private var §_-DU§:Vector.<int>;
      
      public function §_-dW§(param1:int = 0)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
            if(_loc2_ || this)
            {
               this.§_-DU§ = new Vector.<int>(32);
               if(_loc2_ || _loc3_)
               {
                  addr52:
                  this.§_-bB§(param1);
               }
               return;
            }
         }
         §§goto(addr52);
      }
      
      public function §_-bB§(param1:int) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc2_:* = 1;
         var _loc3_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc3_);
            while(true)
            {
               if(§§pop() < this.§_-DU§.length)
               {
                  _loc4_ = int(Math.round(Math.random() * 2 - 1 * int.MAX_VALUE));
                  §§push(param1);
                  if(!_loc6_)
                  {
                     §§push(_loc2_);
                     if(!_loc6_)
                     {
                        if(!(_loc5_ = §§pop() & §§pop()))
                        {
                           §§push(_loc5_);
                           if(!(_loc6_ && this))
                           {
                              addr70:
                              §§push(_loc5_ = §§pop() ^ _loc5_);
                              §§push(param1);
                              if(_loc7_)
                              {
                                 §§goto(addr77);
                                 §§push(§§pop() & §§pop());
                              }
                           }
                           break;
                        }
                        §§push(_loc5_ | param1);
                        if(!_loc6_)
                        {
                           _loc4_ = §§pop();
                        }
                        else
                        {
                           addr77:
                           _loc4_ = §§pop();
                           if(_loc6_)
                           {
                              §§goto(addr106);
                           }
                        }
                        this.§_-DU§[_loc3_] = _loc4_;
                        if(!_loc7_)
                        {
                           continue loop0;
                        }
                        §§push(_loc2_);
                        §§push(1);
                        §§push(§§pop() << §§pop());
                        if(!_loc6_)
                        {
                           break;
                        }
                        continue;
                     }
                     §§goto(addr70);
                  }
                  break;
               }
               addr106:
               return;
            }
            _loc2_ = §§pop();
         }
      }
      
      public function getValue() : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:* = 0;
         var _loc2_:* = 1;
         var _loc3_:int = 0;
         while(true)
         {
            §§push(_loc3_);
            if(_loc5_)
            {
               if(§§pop() < this.§_-DU§.length)
               {
                  §§push(_loc1_);
                  if(_loc5_)
                  {
                     §§push(this.§_-DU§[_loc3_] & _loc2_);
                     if(!_loc4_)
                     {
                        §§push(§§pop() | §§pop());
                        if(!_loc4_)
                        {
                           _loc1_ = §§pop();
                           if(_loc5_)
                           {
                              §§push(_loc2_);
                              if(_loc5_)
                              {
                                 addr50:
                                 §§push(§§pop() << 1);
                                 if(!_loc5_)
                                 {
                                 }
                                 break;
                              }
                              break;
                           }
                           addr73:
                           §§push(_loc1_);
                           break;
                        }
                        _loc2_ = §§pop();
                        if(!_loc4_)
                        {
                           continue;
                        }
                        §§goto(addr73);
                     }
                     §§goto(addr50);
                  }
                  break;
               }
               §§goto(addr73);
            }
            break;
         }
         return §§pop();
      }
   }
}
