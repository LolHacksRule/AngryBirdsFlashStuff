package §=!g§
{
   import §>^§.§!6§;
   import flash.external.ExternalInterface;
   
   public class §20§
   {
       
      
      public var §9$§:String = "";
      
      private var §'h§:Array = null;
      
      public function §20§(param1:String)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
            loop0:
            while(true)
            {
               this.§9$§ = param1;
               while(true)
               {
                  if(!_loc2_)
                  {
                     if(!ExternalInterface.available)
                     {
                        break;
                     }
                     continue;
                  }
                  continue loop0;
               }
               §§goto(addr20);
            }
         }
         addr20:
      }
      
      public function §-!@§(... rest) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         if(!(_loc7_ && _loc2_))
         {
            §§push("call through externalInterface! " + this.§9$§);
            if(!(_loc7_ && _loc3_))
            {
               §§push(§§pop() + "(");
            }
            _loc2_ = §§pop();
            do
            {
               _loc3_ = 0;
            }
            while(!(_loc8_ || rest));
            
         }
         while(true)
         {
            §§push(_loc3_);
            if(_loc8_ || _loc3_)
            {
               if(_loc8_ || rest)
               {
                  if(§§pop() >= rest.length)
                  {
                     if(!(_loc7_ && this))
                     {
                        §§push(_loc2_);
                        if(_loc8_)
                        {
                           if(!(_loc7_ && _loc3_))
                           {
                              §§push(§§pop() + ")");
                              if(_loc8_ || rest)
                              {
                                 _loc2_ = §§pop();
                                 if(_loc8_ || _loc3_)
                                 {
                                    §!6§.log(_loc2_);
                                    if(_loc7_ && rest)
                                    {
                                       break;
                                    }
                                    if(_loc8_)
                                    {
                                       if(!_loc7_)
                                       {
                                          if(true)
                                          {
                                             if(this.§'h§ != null)
                                             {
                                                if(_loc8_)
                                                {
                                                   addr173:
                                                   var _loc5_:int = 0;
                                                   if(_loc8_)
                                                   {
                                                      for each(_loc4_ in this.§'h§)
                                                      {
                                                         _loc4_.apply(null,rest);
                                                      }
                                                   }
                                                   break;
                                                }
                                                break;
                                             }
                                          }
                                          continue;
                                          break;
                                       }
                                       §§push(_loc3_);
                                       if(!(_loc7_ && this))
                                       {
                                          addr125:
                                          _loc3_ = §§pop() + 1;
                                       }
                                       §§goto(addr125);
                                       addr139:
                                    }
                                    continue;
                                 }
                                 §§goto(addr173);
                              }
                              else
                              {
                                 addr138:
                                 _loc2_ = §§pop();
                                 addr137:
                              }
                              §§goto(addr139);
                           }
                           else
                           {
                              addr131:
                              §§push(§§pop() + (rest[_loc3_] + ","));
                           }
                           §§goto(addr137);
                        }
                        §§goto(addr138);
                     }
                     break;
                  }
                  §§push(_loc2_);
                  §§goto(addr131);
               }
            }
            §§goto(addr125);
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§'h§);
            while(true)
            {
               if(§§pop() != null)
               {
                  continue;
               }
               while(true)
               {
                  this.§'h§ = new Array();
               }
            }
         }
         while(true)
         {
            §§goto(addr23);
         }
      }
      
      public function §,2§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§'h§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(this.§'h§);
                           if(_loc3_ || this)
                           {
                              if(_loc2_)
                              {
                                 break;
                              }
                              §§push(§§pop().indexOf(param1) == -1);
                              if(!(_loc2_ && _loc3_))
                              {
                                 if(_loc2_)
                                 {
                                    continue loop1;
                                 }
                                 §§push(!§§pop());
                              }
                              if(_loc3_ || this)
                              {
                                 while(§§pop())
                                 {
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       if(_loc3_)
                                       {
                                          this.§'h§.splice(this.§'h§.indexOf(param1),1);
                                          addr96:
                                          break;
                                          addr80:
                                       }
                                       continue loop3;
                                    }
                                    §§goto(addr96);
                                 }
                                 return;
                                 addr67:
                              }
                              continue loop2;
                           }
                           §§goto(addr80);
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr67);
               }
            }
         }
         §§goto(addr96);
      }
   }
}
