package §30§
{
   import §+!c§.§;!=§;
   import flash.external.ExternalInterface;
   
   public class §8Z§
   {
       
      
      public var §66§:String = "";
      
      private var §&!T§:Array = null;
      
      public function §8Z§(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§66§ = param1;
            do
            {
               if(_loc2_)
               {
                  if(!ExternalInterface.available)
                  {
                     break;
                  }
                  continue;
               }
               continue loop0;
            }
            while(if(!_loc3_)
            {
               ExternalInterface.addCallback(this.§66§,this.§<"X§);
            }, !(_loc2_ || _loc2_));
            
            return;
         }
      }
      
      public function §<"X§(... rest) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:* = NaN;
         var _loc4_:Function = null;
         if(!_loc7_)
         {
            §§push("call through externalInterface! ");
            if(_loc8_)
            {
               §§push(§§pop() + this.§66§);
               if(_loc8_)
               {
                  §§push(§§pop() + "(");
               }
            }
            _loc2_ = §§pop();
         }
         do
         {
            _loc3_ = Number(0);
         }
         while(!_loc8_);
         
         loop1:
         while(true)
         {
            §§push(_loc3_);
            if(_loc8_)
            {
               if(_loc8_ || _loc3_)
               {
                  if(§§pop() >= rest.length)
                  {
                     if(!(_loc7_ && _loc3_))
                     {
                        §§push(_loc2_);
                        if(_loc8_ || _loc3_)
                        {
                           §§push(")");
                           if(!_loc7_)
                           {
                              §§push(§§pop() + §§pop());
                              if(!_loc7_)
                              {
                                 _loc2_ = §§pop();
                                 while(true)
                                 {
                                    §;!=§.log(_loc2_);
                                    if(_loc7_)
                                    {
                                       break;
                                    }
                                    if(_loc8_ || rest)
                                    {
                                       if(true)
                                       {
                                          if(this.§&!T§ != null)
                                          {
                                             if(!_loc7_)
                                             {
                                                addr157:
                                                var _loc5_:int = 0;
                                                if(!_loc7_)
                                                {
                                                   var _loc6_:* = this.§&!T§;
                                                   addr176:
                                                   for each(_loc4_ in _loc6_)
                                                   {
                                                      _loc4_.apply(null,rest);
                                                      §§goto(addr176);
                                                   }
                                                }
                                                break;
                                             }
                                             break;
                                          }
                                       }
                                       continue loop1;
                                       break;
                                    }
                                 }
                                 return;
                              }
                              §§goto(addr157);
                           }
                           else
                           {
                              addr118:
                              §§push(§§pop() + §§pop());
                           }
                           addr120:
                           _loc2_ = §§pop();
                           loop3:
                           while(true)
                           {
                              §§push(_loc3_);
                              if(_loc8_)
                              {
                                 addr95:
                                 §§push(§§pop() + 1);
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    addr96:
                                    while(true)
                                    {
                                       _loc3_ = §§pop();
                                       if(!_loc7_)
                                       {
                                          continue loop3;
                                       }
                                    }
                                    addr106:
                                    continue loop1;
                                 }
                                 addr95:
                              }
                              §§goto(addr95);
                           }
                        }
                        §§goto(addr120);
                     }
                     §§goto(addr157);
                  }
                  else
                  {
                     §§push(_loc2_);
                     if(_loc8_)
                     {
                        §§goto(addr118);
                        §§push(rest[_loc3_] + ",");
                     }
                  }
                  §§goto(addr120);
               }
               §§goto(addr95);
            }
            §§goto(addr96);
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§&!T§);
            loop0:
            while(true)
            {
               if(§§pop() != null)
               {
                  continue;
               }
               if(!_loc3_)
               {
                  this.§&!T§ = new Array();
               }
               while(true)
               {
                  continue loop0;
               }
            }
         }
      }
      
      public function §"!6§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this.§&!T§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               addr104:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(§§pop())
                     {
                        if(_loc2_ || _loc3_)
                        {
                           if(!_loc3_)
                           {
                              §§push(this.§&!T§);
                           }
                           else
                           {
                              §§goto(addr107);
                           }
                           §§goto(addr94);
                        }
                        break;
                     }
                     return;
                     addr81:
                  }
                  while(true)
                  {
                     §§pop();
                     addr107:
                     while(true)
                     {
                        §§push(this.§&!T§);
                        if(!_loc3_)
                        {
                           continue loop0;
                        }
                        addr94:
                        §§pop().splice(this.§&!T§.indexOf(param1),1);
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr100);
      }
   }
}
