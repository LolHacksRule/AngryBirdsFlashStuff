package §@i§
{
   import §^_§.§!>§;
   import flash.external.ExternalInterface;
   
   public class §5!D§
   {
       
      
      public var §<J§:String = "";
      
      private var §[!_§:Array = null;
      
      public function §5!D§(param1:String)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            super();
            loop0:
            while(true)
            {
               this.§<J§ = param1;
               loop1:
               while(true)
               {
                  if(!(_loc3_ || this))
                  {
                     continue loop0;
                  }
                  if(!ExternalInterface.available)
                  {
                     break;
                  }
                  if(!_loc3_)
                  {
                     continue;
                  }
                  while(true)
                  {
                     ExternalInterface.addCallback(this.§<J§,this.§#<§);
                     continue loop1;
                  }
               }
               return;
            }
         }
         §§goto(addr55);
      }
      
      public function §#<§(... rest) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         if(!_loc8_)
         {
            §§push("call through externalInterface! ");
            if(!_loc8_)
            {
               §§push(§§pop() + this.§<J§);
               if(!(_loc8_ && this))
               {
                  §§push(§§pop() + "(");
               }
            }
            _loc2_ = §§pop();
            do
            {
               _loc3_ = 0;
            }
            while(!_loc7_);
            
         }
         while(true)
         {
            §§push(_loc3_);
            if(!_loc8_)
            {
               if(_loc7_)
               {
                  if(!(_loc8_ && this))
                  {
                     if(§§pop() >= rest.length)
                     {
                        if(_loc7_ || _loc2_)
                        {
                           if(!(_loc8_ && rest))
                           {
                              if(_loc7_)
                              {
                                 §§push(_loc2_);
                                 if(_loc7_)
                                 {
                                    if(!_loc8_)
                                    {
                                       §§push(")");
                                       if(!_loc8_)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(_loc7_ || rest)
                                          {
                                             _loc2_ = §§pop();
                                             if(!_loc8_)
                                             {
                                                §!>§.log(_loc2_);
                                                if(!(_loc8_ && this))
                                                {
                                                   if(false)
                                                   {
                                                      continue;
                                                   }
                                                   if(this.§[!_§ != null)
                                                   {
                                                      if(_loc7_ || rest)
                                                      {
                                                         break;
                                                      }
                                                   }
                                                }
                                                break;
                                             }
                                             §§goto(addr194);
                                          }
                                       }
                                       else
                                       {
                                          addr117:
                                          §§push(§§pop() + §§pop());
                                       }
                                       addr119:
                                       _loc2_ = §§pop();
                                       addr106:
                                       _loc3_++;
                                       continue;
                                       addr120:
                                       addr104:
                                       addr105:
                                    }
                                    else
                                    {
                                       addr112:
                                       §§push(rest[_loc3_] + ",");
                                    }
                                    §§goto(addr117);
                                 }
                                 §§goto(addr119);
                              }
                              §§goto(addr120);
                           }
                           §§goto(addr119);
                        }
                        break;
                     }
                     §§push(_loc2_);
                     §§goto(addr112);
                  }
                  §§goto(addr104);
               }
               §§goto(addr105);
            }
            §§goto(addr106);
         }
         var _loc5_:int = 0;
         if(!(_loc8_ && _loc2_))
         {
            for each(_loc4_ in this.§[!_§)
            {
               _loc4_.apply(null,rest);
            }
         }
         addr194:
      }
      
      public function addCallback(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§[!_§);
            while(true)
            {
               if(§§pop() != null)
               {
                  continue;
               }
               if(!(_loc2_ && _loc3_))
               {
                  this.§[!_§ = new Array();
               }
            }
         }
         while(true)
         {
            §§goto(addr34);
         }
      }
      
      public function §<a§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§[!_§);
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
                           §§push(this.§[!_§);
                           if(!(_loc3_ && this))
                           {
                              §§push(§§pop().indexOf(param1) == -1);
                              if(!_loc3_)
                              {
                                 if(!(_loc2_ || _loc3_))
                                 {
                                    continue loop2;
                                 }
                                 if(_loc3_ && this)
                                 {
                                    continue loop1;
                                 }
                                 §§push(!§§pop());
                                 while(true)
                                 {
                                 }
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       if(!_loc3_)
                                       {
                                          §§push(this.§[!_§);
                                          break loop3;
                                       }
                                       continue loop3;
                                    }
                                    addr100:
                                 }
                                 return;
                              }
                           }
                           break;
                        }
                        if(_loc3_)
                        {
                           continue loop0;
                        }
                        §§pop().splice(this.§[!_§.indexOf(param1),1);
                        §§goto(addr100);
                     }
                  }
                  §§goto(addr79);
               }
            }
         }
         §§goto(addr100);
      }
   }
}
