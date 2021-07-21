package §;!,§
{
   import §4!7§.§%!m§;
   
   public class §#D§ extends AbstractTween implements §3?§
   {
       
      
      private var _lastTime:Number;
      
      public function §#D§(param1:§%!m§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            super(param1,0);
            if(!(_loc3_ && _loc2_))
            {
               §1J§ = 0.01;
               if(!(_loc3_ && _loc3_))
               {
                  addr54:
                  this._lastTime = -1;
               }
            }
            return;
         }
         §§goto(addr54);
      }
      
      protected function rollback() : void
      {
      }
      
      protected function action() : void
      {
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this._lastTime);
            if(!_loc3_)
            {
               §§push(0.01);
               if(_loc2_)
               {
                  §§push(§§pop() < §§pop());
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(§§pop());
                     if(_loc2_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc3_ && param1))
                           {
                              §§pop();
                              if(!_loc3_)
                              {
                                 §§push(param1);
                                 if(_loc2_ || _loc3_)
                                 {
                                    addr66:
                                    §§push(§§pop() >= 0.01);
                                    if(!_loc3_)
                                    {
                                       §§goto(addr69);
                                    }
                                    §§goto(addr107);
                                 }
                                 §§goto(addr77);
                              }
                              §§goto(addr72);
                           }
                           §§goto(addr107);
                        }
                        §§goto(addr69);
                     }
                     §§goto(addr89);
                  }
                  addr69:
                  if(§§pop())
                  {
                     this.action();
                     addr72:
                  }
                  else
                  {
                     §§push(this._lastTime);
                     if(_loc2_)
                     {
                        addr77:
                        §§push(0);
                        if(_loc2_ || param1)
                        {
                           §§push(§§pop() > §§pop());
                           if(_loc2_)
                           {
                              addr89:
                              if(§§pop())
                              {
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    addr107:
                                    §§pop();
                                    §§goto(addr128);
                                 }
                              }
                           }
                           if(§§pop())
                           {
                              addr119:
                              this.rollback();
                              if(_loc3_ && _loc3_)
                              {
                              }
                           }
                           §§goto(addr128);
                        }
                     }
                     §§goto(addr117);
                  }
                  addr128:
                  if(_loc2_ || param1)
                  {
                     addr117:
                     §§push(param1 <= 0);
                  }
                  this._lastTime = param1;
                  return;
               }
            }
            §§goto(addr66);
         }
         §§goto(addr119);
      }
   }
}
