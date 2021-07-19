package §6s§
{
   import §@R§.§4,§;
   import flash.external.ExternalInterface;
   
   public class §8!I§
   {
       
      
      public var §3!9§:String = "";
      
      private var §'c§:Array = null;
      
      public function §8!I§(param1:String)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            super();
            loop0:
            while(true)
            {
               this.§3!9§ = param1;
               do
               {
                  if(_loc3_ || this)
                  {
                     if(!ExternalInterface.available)
                     {
                        break;
                     }
                     continue;
                  }
                  continue loop0;
               }
               while(if(_loc3_ || _loc3_)
               {
                  ExternalInterface.addCallback(this.§3!9§,this.§@[§);
               }, _loc2_);
               
               return;
            }
         }
         §§goto(addr58);
      }
      
      public function §@[§(... rest) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         if(_loc8_ || _loc2_)
         {
            §§push("call through externalInterface! " + this.§3!9§);
            if(!_loc7_)
            {
               §§push(§§pop() + "(");
            }
            _loc2_ = §§pop();
         }
         do
         {
            _loc3_ = 0;
         }
         while(!(_loc8_ || _loc2_));
         
         while(true)
         {
            §§push(_loc3_);
            if(_loc8_)
            {
               if(_loc8_)
               {
                  if(§§pop() >= rest.length)
                  {
                     if(!_loc7_)
                     {
                        if(_loc8_)
                        {
                           §§push(_loc2_);
                           if(_loc8_ || rest)
                           {
                              if(!(_loc7_ && this))
                              {
                                 §§push(§§pop() + ")");
                                 if(!_loc7_)
                                 {
                                    _loc2_ = §§pop();
                                    if(!_loc7_)
                                    {
                                       §4,§.log(_loc2_);
                                       if(_loc8_ || rest)
                                       {
                                          if(false)
                                          {
                                             continue;
                                          }
                                          if(this.§'c§ != null)
                                          {
                                             if(!_loc7_)
                                             {
                                                break;
                                             }
                                          }
                                          §§goto(addr181);
                                       }
                                       break;
                                    }
                                    §§goto(addr181);
                                 }
                              }
                              else
                              {
                                 addr109:
                                 §§push(§§pop() + (rest[_loc3_] + ","));
                              }
                              §§push(§§pop());
                           }
                           _loc2_ = §§pop();
                           if(!_loc8_)
                           {
                              break;
                           }
                           §§push(_loc3_);
                           if(_loc8_ || _loc2_)
                           {
                              addr103:
                              _loc3_ = §§pop() + 1;
                              addr102:
                           }
                           §§goto(addr102);
                        }
                        continue;
                     }
                     §§goto(addr181);
                  }
                  else
                  {
                     §§push(_loc2_);
                  }
                  §§goto(addr109);
               }
               §§goto(addr102);
            }
            §§goto(addr103);
         }
         var _loc5_:int = 0;
         if(_loc8_)
         {
            for each(_loc4_ in this.§'c§)
            {
               _loc4_.apply(null,rest);
            }
         }
         addr181:
      }
      
      public function addCallback(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§'c§);
            while(true)
            {
               if(§§pop() != null)
               {
                  continue;
               }
               while(true)
               {
                  this.§'c§ = new Array();
               }
            }
         }
         while(true)
         {
            §§goto(addr24);
         }
      }
      
      public function §-=§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§'c§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc3_ && _loc3_))
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
                           §§push(this.§'c§);
                           if(!_loc2_)
                           {
                              break;
                           }
                           if(_loc2_)
                           {
                              §§push(§§pop().indexOf(param1) == -1);
                              if(_loc2_)
                              {
                                 if(!(_loc2_ || _loc3_))
                                 {
                                    continue loop5;
                                 }
                                 addr58:
                                 §§push(!§§pop());
                                 while(true)
                                 {
                                    §§goto(addr58);
                                 }
                              }
                              while(§§pop())
                              {
                                 if(!_loc3_)
                                 {
                                    while(true)
                                    {
                                       §§push(this.§'c§);
                                       break loop4;
                                    }
                                    addr63:
                                 }
                                 while(_loc3_ && param1)
                                 {
                                    continue loop4;
                                 }
                                 break;
                              }
                              return;
                           }
                           continue loop0;
                        }
                        while(true)
                        {
                           §§pop().splice(this.§'c§.indexOf(param1),1);
                           §§goto(addr71);
                        }
                     }
                     addr101:
                  }
                  §§goto(addr59);
               }
               §§goto(addr101);
            }
         }
         §§goto(addr63);
      }
   }
}
