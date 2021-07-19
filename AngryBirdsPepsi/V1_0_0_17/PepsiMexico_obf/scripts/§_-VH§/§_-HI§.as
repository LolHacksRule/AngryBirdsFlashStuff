package §_-VH§
{
   import §_-xo§.§_-Ar§;
   import §_-xo§.§_-E-§;
   import §_-xo§.§_-Lk§;
   
   public class §_-HI§ extends §_-Ar§
   {
       
      
      private var §_-R2§:Number;
      
      private var §_-aM§:uint;
      
      public function §_-HI§(param1:§_-Lk§, param2:uint)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            super(param1,0);
            if(!_loc3_)
            {
               this.§_-R2§ = param1.duration;
               if(!_loc3_)
               {
                  addr40:
                  this.§_-aM§ = param2;
                  if(!(_loc3_ && this))
                  {
                     addr50:
                     §§push(§§findproperty(§_-7A§));
                     §§push(this.§_-R2§);
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(§§pop() * param2);
                     }
                     §§pop().§_-7A§ = §§pop();
                  }
               }
               return;
            }
            §§goto(addr40);
         }
         §§goto(addr50);
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(param1);
            if(!_loc3_)
            {
               if(§§pop() >= 0)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(param1);
                     if(_loc2_)
                     {
                        §§push(param1);
                        if(!_loc3_)
                        {
                           if(§§pop() < §_-7A§)
                           {
                              if(!(_loc3_ && _loc2_))
                              {
                                 addr55:
                                 §§push(this.§_-R2§);
                                 if(_loc2_)
                                 {
                                    §§goto(addr59);
                                 }
                              }
                              §§goto(addr83);
                           }
                           else
                           {
                              §§push(§_-7A§ - this.§_-R2§);
                           }
                           §§goto(addr74);
                        }
                        addr59:
                        §§push(§§pop() * int(param1 / this.§_-R2§) - (!_loc3_ ? §§pop() : §§pop()));
                        if(_loc2_ || param1)
                        {
                           addr83:
                           §§push(Number(§§pop()));
                        }
                        param1 = §§pop();
                        if(!(_loc3_ && _loc3_))
                        {
                           addr99:
                           §_-Zc§.update(param1);
                        }
                        §§goto(addr102);
                     }
                     §§goto(addr55);
                  }
                  addr102:
                  return;
               }
               §§goto(addr99);
            }
            §§goto(addr83);
         }
         §§goto(addr99);
      }
      
      public function get §_-mj§() : uint
      {
         return this.§_-aM§;
      }
      
      override protected function newInstance() : §_-E-§
      {
         return new §_-HI§(§_-Zc§.clone() as §_-Lk§,this.§_-mj§);
      }
   }
}
