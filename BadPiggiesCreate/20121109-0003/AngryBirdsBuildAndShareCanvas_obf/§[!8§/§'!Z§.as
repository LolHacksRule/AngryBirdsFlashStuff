package §[!8§
{
   import §6]§.§,"0§;
   import flash.external.ExternalInterface;
   
   public class §'!Z§
   {
       
      
      public var §="$§:String = "";
      
      private var §2C§:Array = null;
      
      public function §'!Z§(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            super();
            loop0:
            while(true)
            {
               this.§="$§ = param1;
               while(ExternalInterface.available)
               {
                  if(_loc2_ || _loc3_)
                  {
                     if(_loc2_ || param1)
                     {
                        ExternalInterface.addCallback(this.§="$§,this.§&"§);
                        continue loop0;
                     }
                     continue;
                     continue;
                  }
                  continue loop0;
               }
               §§goto(addr24);
            }
         }
         addr24:
      }
      
      public function §&"§(... rest) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:* = NaN;
         var _loc4_:Function = null;
         if(_loc8_ || _loc2_)
         {
            §§push("call through externalInterface! " + this.§="$§);
            if(_loc8_ || this)
            {
               §§push(§§pop() + "(");
            }
            _loc2_ = §§pop();
         }
         do
         {
            _loc3_ = Number(0);
         }
         while(!_loc8_);
         
         while(true)
         {
            §§push(_loc3_);
            if(_loc8_ || rest)
            {
               if(§§pop() >= rest.length)
               {
                  if(!_loc7_)
                  {
                     §§push(_loc2_);
                     if(_loc8_ || _loc2_)
                     {
                        if(_loc8_ || rest)
                        {
                           §§push(§§pop() + ")");
                           if(_loc8_ || rest)
                           {
                              _loc2_ = §§pop();
                              if(_loc7_ && _loc2_)
                              {
                                 var _loc5_:int = 0;
                                 if(_loc8_ || this)
                                 {
                                    for each(_loc4_ in this.§2C§)
                                    {
                                       _loc4_.apply(null,rest);
                                    }
                                 }
                              }
                              if(!_loc7_)
                              {
                                 §,"0§.log(_loc2_);
                                 if(_loc8_)
                                 {
                                    if(true)
                                    {
                                       if(this.§2C§ != null)
                                       {
                                          if(!_loc8_)
                                          {
                                          }
                                          break;
                                       }
                                    }
                                    continue;
                                    break;
                                 }
                                 break;
                              }
                              addr109:
                              continue;
                              break;
                           }
                           addr121:
                           _loc2_ = §§pop();
                           addr120:
                           if(_loc7_)
                           {
                              break;
                           }
                           §§push(_loc3_);
                           if(!_loc7_)
                           {
                              §§push(§§pop() + 1);
                              if(!_loc8_)
                              {
                              }
                              addr108:
                              _loc3_ = §§pop();
                              §§goto(addr109);
                           }
                           §§goto(addr108);
                           §§push(Number(§§pop()));
                           §§goto(addr109);
                        }
                        else
                        {
                           addr114:
                           §§push(§§pop() + (rest[_loc3_] + ","));
                        }
                        §§goto(addr120);
                     }
                     §§goto(addr121);
                  }
                  break;
               }
               §§push(_loc2_);
               §§goto(addr114);
            }
            §§goto(addr108);
         }
      }
      
      public function addCallback(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this.§2C§);
            while(true)
            {
               if(§§pop() != null)
               {
                  continue;
               }
               while(true)
               {
                  this.§2C§ = new Array();
               }
            }
         }
         while(true)
         {
            §§goto(addr39);
         }
      }
      
      public function §#"%§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this.§2C§);
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
                           §§push(this.§2C§);
                           if(_loc3_ || _loc3_)
                           {
                              if(_loc2_)
                              {
                                 break;
                              }
                              §§push(§§pop().indexOf(param1) == -1);
                              if(_loc3_ || this)
                              {
                                 if(!_loc3_)
                                 {
                                    continue loop1;
                                 }
                                 §§push(!§§pop());
                              }
                              if(_loc3_)
                              {
                                 loop4:
                                 while(§§pop())
                                 {
                                    if(_loc3_ || this)
                                    {
                                       §§push(this.§2C§);
                                       while(true)
                                       {
                                          §§pop().splice(this.§2C§.indexOf(param1),1);
                                       }
                                       addr78:
                                    }
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          addr96:
                                          break loop4;
                                       }
                                       continue loop3;
                                    }
                                 }
                                 return;
                                 addr67:
                              }
                              continue loop2;
                           }
                           §§goto(addr78);
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
