package §4!6§
{
   import §@,§.§4h§;
   import flash.external.ExternalInterface;
   
   public class §8`§
   {
       
      
      public var §4e§:String = "";
      
      private var §+[§:Array = null;
      
      public function §8`§(param1:String)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            super();
            loop0:
            while(true)
            {
               this.§4e§ = param1;
               while(ExternalInterface.available)
               {
                  if(_loc3_ || this)
                  {
                     if(_loc3_ || _loc2_)
                     {
                        ExternalInterface.addCallback(this.§4e§,this.§-M§);
                        continue loop0;
                     }
                     continue;
                     continue;
                  }
                  continue loop0;
               }
               §§goto(addr25);
            }
         }
         addr25:
      }
      
      public function §-M§(... rest) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:* = NaN;
         var _loc4_:Function = null;
         if(!(_loc7_ && _loc3_))
         {
            §§push("call through externalInterface! " + this.§4e§);
            if(!(_loc7_ && this))
            {
               §§push(§§pop() + "(");
            }
            _loc2_ = §§pop();
            do
            {
               _loc3_ = Number(0);
            }
            while(!_loc8_);
            
         }
         loop1:
         while(true)
         {
            §§push(_loc3_);
            if(_loc8_)
            {
               if(§§pop() >= rest.length)
               {
                  if(!_loc7_)
                  {
                     §§push(_loc2_);
                     if(_loc8_)
                     {
                        §§push(§§pop() + ")");
                        if(!(_loc7_ && _loc3_))
                        {
                           _loc2_ = §§pop();
                           while(true)
                           {
                              §4h§.log(_loc2_);
                              if(!_loc7_)
                              {
                                 if(!_loc8_)
                                 {
                                    continue;
                                 }
                                 if(false)
                                 {
                                    continue loop1;
                                 }
                                 if(this.§+[§ != null)
                                 {
                                    if(!(_loc7_ && rest))
                                    {
                                       var _loc5_:int = 0;
                                       if(_loc8_)
                                       {
                                          var _loc6_:* = this.§+[§;
                                          addr172:
                                          for each(_loc4_ in _loc6_)
                                          {
                                             _loc4_.apply(null,rest);
                                             §§goto(addr172);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           addr65:
                        }
                        else
                        {
                           addr108:
                           _loc2_ = §§pop();
                           loop3:
                           while(true)
                           {
                              §§push(_loc3_);
                              if(_loc8_ || rest)
                              {
                                 §§push(§§pop() + 1);
                                 if(_loc7_)
                                 {
                                 }
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                    if(!_loc8_)
                                    {
                                       return;
                                    }
                                    addr176:
                                    if(_loc8_)
                                    {
                                       break;
                                    }
                                    continue loop3;
                                 }
                                 addr89:
                                 continue loop1;
                                 addr89:
                              }
                              §§goto(addr89);
                           }
                        }
                        §§goto(addr176);
                     }
                     §§goto(addr108);
                  }
                  §§goto(addr65);
               }
               else
               {
                  §§push(_loc2_);
                  if(_loc8_)
                  {
                     §§goto(addr108);
                     §§push(§§pop() + (rest[_loc3_] + ","));
                  }
               }
               §§goto(addr108);
            }
            §§goto(addr89);
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§+[§);
            while(true)
            {
               if(§§pop() != null)
               {
                  continue;
               }
            }
         }
         §§goto(addr64);
      }
      
      public function §!9§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§+[§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr102:
                        loop6:
                        while(true)
                        {
                           §§push(this.§+[§);
                           if(!_loc3_)
                           {
                              if(!_loc3_)
                              {
                                 §§push(§§pop().indexOf(param1) == -1);
                                 if(!(_loc3_ && this))
                                 {
                                    if(!(_loc2_ || _loc3_))
                                    {
                                       continue;
                                    }
                                    §§push(!§§pop());
                                 }
                                 if(_loc2_ || this)
                                 {
                                    while(§§pop())
                                    {
                                       if(_loc2_ || _loc3_)
                                       {
                                          addr77:
                                          §§push(this.§+[§);
                                          while(true)
                                          {
                                             §§pop().splice(this.§+[§.indexOf(param1),1);
                                             continue loop6;
                                          }
                                          addr77:
                                       }
                                       while(_loc3_)
                                       {
                                          continue loop6;
                                          §§goto(addr77);
                                       }
                                       break;
                                    }
                                    return;
                                    addr66:
                                 }
                                 continue loop1;
                              }
                              continue loop0;
                           }
                           §§goto(addr77);
                        }
                     }
                  }
                  §§goto(addr66);
               }
            }
         }
         §§goto(addr102);
      }
   }
}
