package §9";§
{
   import §=!M§.§9!P§;
   import flash.external.ExternalInterface;
   
   public class §5!l§
   {
       
      
      public var §&?§:String = "";
      
      private var §]"4§:Array = null;
      
      public function §5!l§(param1:String)
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
            this.§&?§ = param1;
            do
            {
               if(!(_loc3_ && this))
               {
                  if(!ExternalInterface.available)
                  {
                     break;
                  }
                  continue;
               }
               continue loop0;
            }
            while(if(!(_loc3_ && this))
            {
               ExternalInterface.addCallback(this.§&?§,this.§2!S§);
            }, !(_loc2_ || this));
            
            return;
         }
      }
      
      public function §2!S§(... rest) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:* = NaN;
         var _loc4_:Function = null;
         if(_loc8_)
         {
            §§push("call through externalInterface! " + this.§&?§);
            if(!(_loc7_ && _loc3_))
            {
               §§push(§§pop() + "(");
            }
            _loc2_ = §§pop();
         }
         do
         {
            _loc3_ = Number(0);
         }
         while(!(_loc8_ || _loc3_));
         
         loop1:
         while(true)
         {
            §§push(_loc3_);
            if(!_loc7_)
            {
               if(§§pop() >= rest.length)
               {
                  if(!_loc7_)
                  {
                     §§push(_loc2_);
                     if(!(_loc7_ && this))
                     {
                        §§push(§§pop() + ")");
                        if(_loc8_)
                        {
                           _loc2_ = §§pop();
                           while(true)
                           {
                              §9!P§.log(_loc2_);
                              if(!_loc8_)
                              {
                                 break;
                              }
                              if(_loc8_ || rest)
                              {
                                 if(true)
                                 {
                                    if(this.§]"4§ != null)
                                    {
                                       if(_loc8_)
                                       {
                                          break;
                                       }
                                    }
                                    addr191:
                                 }
                                 continue loop1;
                                 return;
                              }
                           }
                           var _loc5_:int = 0;
                           if(!(_loc7_ && _loc2_))
                           {
                              var _loc6_:* = this.§]"4§;
                              addr187:
                              for each(_loc4_ in _loc6_)
                              {
                                 _loc4_.apply(null,rest);
                                 §§goto(addr187);
                              }
                           }
                        }
                        else
                        {
                           addr118:
                           _loc2_ = §§pop();
                           loop3:
                           while(true)
                           {
                              §§push(_loc3_);
                              if(_loc8_)
                              {
                                 §§push(§§pop() + 1);
                                 if(_loc8_ || this)
                                 {
                                 }
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                    if(_loc8_ || rest)
                                    {
                                       continue loop3;
                                    }
                                    §§goto(addr191);
                                 }
                                 addr99:
                                 continue loop1;
                                 addr79:
                              }
                              §§goto(addr79);
                           }
                        }
                     }
                     §§goto(addr118);
                  }
                  §§goto(addr191);
               }
               else
               {
                  §§push(_loc2_);
                  if(_loc8_ || rest)
                  {
                     §§goto(addr118);
                     §§push(§§pop() + (rest[_loc3_] + ","));
                  }
               }
               §§goto(addr118);
            }
            §§goto(addr99);
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§]"4§);
            loop0:
            while(true)
            {
               if(§§pop() != null)
               {
                  continue;
               }
               while(true)
               {
                  this.§]"4§ = new Array();
                  addr68:
                  while(true)
                  {
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr49);
      }
      
      public function §^D§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§]"4§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc3_ || _loc2_)
               {
                  if(!§§pop())
                  {
                     loop1:
                     while(§§pop())
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           if(_loc3_)
                           {
                              while(true)
                              {
                                 §§push(this.§]"4§);
                              }
                              addr59:
                           }
                           else
                           {
                              loop2:
                              while(true)
                              {
                                 §§push(this.§]"4§);
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop().indexOf(param1) == -1);
                                 if(!_loc2_)
                                 {
                                    §§push(!§§pop());
                                 }
                                 if(_loc3_)
                                 {
                                    continue loop1;
                                 }
                                 addr92:
                                 while(true)
                                 {
                                    §§pop();
                                    continue loop2;
                                 }
                              }
                           }
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 continue loop0;
                              }
                              §§pop().splice(this.§]"4§.indexOf(param1),1);
                           }
                        }
                        break;
                     }
                     return;
                  }
               }
               §§goto(addr92);
            }
         }
         §§goto(addr59);
      }
   }
}
