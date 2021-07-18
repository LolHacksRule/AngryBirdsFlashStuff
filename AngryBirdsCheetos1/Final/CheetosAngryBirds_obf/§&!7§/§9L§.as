package §&!7§
{
   import § !G§.§ #§;
   import flash.external.ExternalInterface;
   
   public class §9L§
   {
       
      
      public var §=e§:String = "";
      
      private var §<#§:Array = null;
      
      public function §9L§(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super();
            while(true)
            {
               this.§=e§ = param1;
               while(_loc2_)
               {
                  if(_loc2_ || _loc2_)
                  {
                     ExternalInterface.addCallback(this.§=e§,this.§5§);
                  }
                  if(!_loc3_)
                  {
                     §§goto(addr19);
                  }
               }
            }
         }
         while(ExternalInterface.available)
         {
            §§goto(addr27);
         }
         addr19:
      }
      
      public function §5§(... rest) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         if(_loc8_ || rest)
         {
            §§push("call through externalInterface! " + this.§=e§);
            if(!(_loc7_ && rest))
            {
               §§push(§§pop() + "(");
            }
            _loc2_ = §§pop();
            do
            {
               _loc3_ = 0;
            }
            while(_loc7_);
            
         }
         while(true)
         {
            §§push(_loc3_);
            if(_loc8_)
            {
               if(!(_loc7_ && rest))
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
                                 § #§.log(_loc2_);
                                 if(_loc8_)
                                 {
                                    continue;
                                 }
                              }
                              addr77:
                           }
                           else
                           {
                              addr116:
                              _loc2_ = §§pop();
                              if(_loc8_)
                              {
                                 §§push(_loc3_);
                                 if(_loc8_)
                                 {
                                    addr94:
                                    _loc3_ = §§pop() + 1;
                                    if(_loc8_ || rest)
                                    {
                                       continue;
                                    }
                                 }
                                 §§goto(addr94);
                              }
                           }
                           return;
                        }
                        §§goto(addr116);
                     }
                     §§goto(addr77);
                  }
                  else
                  {
                     §§push(_loc2_);
                     if(!_loc7_)
                     {
                        §§goto(addr116);
                        §§push(§§pop() + (rest[_loc3_] + ","));
                     }
                  }
                  §§goto(addr116);
               }
            }
            §§goto(addr94);
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(this.§<#§);
            loop0:
            while(true)
            {
               if(§§pop() != null)
               {
                  continue;
               }
               while(true)
               {
                  this.§<#§ = new Array();
                  addr79:
                  while(true)
                  {
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr60);
      }
      
      public function §]Q§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(this.§<#§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               addr114:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr117:
                        addr94:
                        addr110:
                        while(true)
                        {
                           §§push(this.§<#§);
                           if(_loc3_ && _loc2_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        §§pop().splice(this.§<#§.indexOf(param1),1);
                     }
                     addr116:
                  }
                  else
                  {
                     while(true)
                     {
                        addr77:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc2_ || this)
                              {
                                 if(!(_loc3_ && param1))
                                 {
                                    addr92:
                                    §§push(this.§<#§);
                                 }
                                 else
                                 {
                                    §§goto(addr117);
                                 }
                                 §§goto(addr94);
                              }
                              §§goto(addr110);
                           }
                        }
                     }
                     addr76:
                  }
                  return;
               }
            }
         }
         §§goto(addr92);
      }
   }
}
