package §&9§
{
   import §6z§.§[g§;
   import flash.external.ExternalInterface;
   
   public class §]?§
   {
       
      
      public var §@!r§:String = "";
      
      private var §&T§:Array = null;
      
      public function §]?§(param1:String)
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
            this.§@!r§ = param1;
            do
            {
               if(_loc2_ || param1)
               {
                  if(!ExternalInterface.available)
                  {
                     break;
                  }
                  continue;
               }
               continue loop0;
            }
            while(if(_loc2_)
            {
               ExternalInterface.addCallback(this.§@!r§,this.§+!M§);
            }, _loc3_ && this);
            
            return;
         }
      }
      
      public function §+!M§(... rest) : void
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
               §§push(§§pop() + this.§@!r§);
               if(_loc7_ || _loc3_)
               {
                  §§push(§§pop() + "(");
               }
            }
            _loc2_ = §§pop();
         }
         do
         {
            _loc3_ = 0;
         }
         while(_loc8_ && _loc3_);
         
         while(true)
         {
            §§push(_loc3_);
            if(!_loc8_)
            {
               if(_loc7_)
               {
                  if(§§pop() >= rest.length)
                  {
                     if(!_loc8_)
                     {
                        §§push(_loc2_);
                        if(!_loc8_)
                        {
                           §§push(")");
                           if(!_loc8_)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc7_)
                              {
                                 _loc2_ = §§pop();
                                 if(_loc7_)
                                 {
                                    if(_loc7_ || rest)
                                    {
                                       if(!_loc8_)
                                       {
                                          §[g§.log(_loc2_);
                                          if(!(_loc8_ && this))
                                          {
                                             if(false)
                                             {
                                                continue;
                                             }
                                             if(this.§&T§ != null)
                                             {
                                                if(!_loc8_)
                                                {
                                                   break;
                                                }
                                             }
                                          }
                                          §§goto(addr184);
                                       }
                                       else
                                       {
                                          §§push(_loc3_);
                                          if(_loc7_ || this)
                                          {
                                             addr94:
                                             _loc3_ = §§pop() + 1;
                                             addr93:
                                          }
                                          §§goto(addr93);
                                          addr115:
                                       }
                                    }
                                    continue;
                                 }
                                 §§goto(addr184);
                              }
                              else
                              {
                                 addr114:
                                 _loc2_ = §§pop();
                                 addr113:
                              }
                              §§goto(addr115);
                           }
                           else
                           {
                              addr112:
                              §§push(§§pop() + §§pop());
                           }
                           §§goto(addr113);
                        }
                        §§goto(addr114);
                     }
                     break;
                  }
                  §§push(_loc2_);
                  if(_loc7_ || _loc3_)
                  {
                     §§goto(addr112);
                     §§push(rest[_loc3_] + ",");
                  }
                  §§goto(addr114);
               }
               §§goto(addr93);
            }
            §§goto(addr94);
         }
         var _loc5_:int = 0;
         if(!_loc8_)
         {
            for each(_loc4_ in this.§&T§)
            {
               _loc4_.apply(null,rest);
            }
         }
         addr184:
      }
      
      public function addCallback(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this.§&T§);
            while(true)
            {
               if(§§pop() != null)
               {
                  continue;
               }
               while(true)
               {
                  this.§&T§ = new Array();
               }
            }
         }
         while(true)
         {
            §§goto(addr39);
         }
      }
      
      public function §^!D§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§&T§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc2_ && this))
               {
                  if(§§pop())
                  {
                     loop5:
                     while(true)
                     {
                        §§pop();
                        loop4:
                        while(true)
                        {
                           §§push(this.§&T§);
                           if(_loc3_ || this)
                           {
                              if(!_loc3_)
                              {
                                 break;
                              }
                              addr36:
                              §§push(§§pop().indexOf(param1) == -1);
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§push(!§§pop());
                              }
                              if(_loc3_ || param1)
                              {
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc2_)
                                       {
                                          addr81:
                                          §§push(this.§&T§);
                                          while(true)
                                          {
                                             §§pop().splice(this.§&T§.indexOf(param1),1);
                                             continue loop4;
                                          }
                                          addr81:
                                       }
                                       while(_loc2_)
                                       {
                                          continue loop4;
                                          §§goto(addr81);
                                       }
                                       addr89:
                                       break;
                                    }
                                    break;
                                    §§goto(addr36);
                                 }
                                 return;
                                 addr75:
                              }
                              continue loop5;
                           }
                           §§goto(addr81);
                        }
                        continue loop0;
                     }
                     addr102:
                  }
                  §§goto(addr75);
               }
               §§goto(addr102);
            }
         }
         §§goto(addr89);
      }
   }
}
