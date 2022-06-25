package §3!9§
{
   import §0!<§.§#y§;
   import flash.external.ExternalInterface;
   
   public class §6§
   {
       
      
      public var §%m§:String = "";
      
      private var §&B§:Array = null;
      
      public function §6§(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
            if(_loc2_ || _loc2_)
            {
               this.§%m§ = param1;
               if(!_loc3_)
               {
                  if(ExternalInterface.available)
                  {
                     if(!_loc2_)
                     {
                     }
                  }
                  §§goto(addr53);
               }
               ExternalInterface.addCallback(this.§%m§,this.§&!G§);
            }
         }
         addr53:
      }
      
      public function §&!G§(... rest) : void
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
               §§push(§§pop() + this.§%m§);
               if(!(_loc8_ && this))
               {
                  addr39:
                  §§push(§§pop() + "(");
               }
               _loc2_ = §§pop();
               if(_loc7_)
               {
                  _loc3_ = 0;
                  addr47:
                  loop0:
                  while(true)
                  {
                     §§push(_loc3_);
                     while(true)
                     {
                        if(§§pop() < rest.length)
                        {
                           §§push(_loc2_);
                           if(!_loc8_)
                           {
                              §§push(rest[_loc3_] + ",");
                              if(!_loc8_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc8_ && rest)
                                 {
                                    addr112:
                                    _loc2_ = §§pop();
                                    if(!(_loc8_ && this))
                                    {
                                       §#y§.log(_loc2_);
                                    }
                                    if(this.§&B§ != null)
                                    {
                                       §§goto(addr137);
                                    }
                                 }
                                 §§push(§§pop());
                                 if(_loc8_)
                                 {
                                    break;
                                 }
                                 _loc2_ = §§pop();
                                 §§push(_loc3_);
                                 if(!_loc7_)
                                 {
                                    continue loop0;
                                    return;
                                 }
                                 §§push(§§pop() + 1);
                                 if(!_loc8_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(!_loc8_)
                                    {
                                       continue loop0;
                                    }
                                 }
                                 continue;
                                 addr165:
                              }
                              addr111:
                              §§goto(addr112);
                              §§push(§§pop() + §§pop());
                           }
                           break;
                        }
                        addr137:
                        if(!(_loc8_ && _loc2_))
                        {
                           §§push(_loc2_);
                           break;
                        }
                        var _loc5_:int = 0;
                        if(!(_loc8_ && _loc2_))
                        {
                           for each(_loc4_ in this.§&B§)
                           {
                              _loc4_.apply(null,rest);
                           }
                        }
                        §§goto(addr112);
                     }
                     §§goto(addr111);
                  }
               }
               §§goto(addr47);
            }
            §§goto(addr39);
         }
         §§goto(addr47);
      }
      
      public function addCallback(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this.§&B§);
            if(!(_loc2_ && _loc3_))
            {
               if(§§pop() == null)
               {
                  if(_loc3_ || this)
                  {
                     §§goto(addr62);
                  }
               }
               §§goto(addr68);
            }
            §§goto(addr70);
         }
         addr62:
         this.§&B§ = new Array();
         if(!_loc2_)
         {
            addr70:
            this.§&B§.push(param1);
            addr68:
         }
      }
      
      public function §class§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§&B§);
            if(_loc2_)
            {
               §§push(Boolean(§§pop()));
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc2_ || param1)
                     {
                        §§pop();
                        if(!_loc3_)
                        {
                           addr62:
                           §§push(this.§&B§);
                           if(_loc2_)
                           {
                              §§push(§§pop().indexOf(param1) == -1);
                              if(_loc3_ && _loc3_)
                              {
                              }
                              §§goto(addr78);
                           }
                        }
                        §§goto(addr83);
                     }
                  }
               }
               addr78:
               if(!§§pop())
               {
                  if(!_loc3_)
                  {
                     addr83:
                     this.§&B§.splice(this.§&B§.indexOf(param1),1);
                  }
               }
               return;
            }
            §§goto(addr83);
         }
         §§goto(addr62);
      }
   }
}
