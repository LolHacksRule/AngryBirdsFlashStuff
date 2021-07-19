package §_-O7§
{
   import §_-e3§.§_-54§;
   import flash.external.ExternalInterface;
   
   public class §_-HB§
   {
       
      
      public var §_-wA§:String = "";
      
      private var §_-Pa§:Array = null;
      
      public function §_-HB§(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            super();
            if(_loc2_)
            {
               this.§_-wA§ = param1;
               if(_loc2_)
               {
                  ExternalInterface.addCallback(this.§_-wA§,this.§_-cq§);
               }
            }
         }
      }
      
      public function §_-cq§(... rest) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:Number = NaN;
         var _loc4_:Function = null;
         if(!_loc7_)
         {
            §§push("call through externalInterface! " + this.§_-wA§);
            if(!(_loc7_ && rest))
            {
               §§push(§§pop() + "(");
            }
            _loc2_ = §§pop();
            if(_loc8_)
            {
               addr40:
               _loc3_ = 0;
            }
            loop0:
            while(true)
            {
               §§push(_loc3_);
               while(true)
               {
                  if(§§pop() < rest.length)
                  {
                     §§push(_loc2_);
                     if(_loc8_ || rest)
                     {
                        §§push(§§pop() + (rest[_loc3_] + ","));
                        if(_loc8_ || _loc2_)
                        {
                           §§push(§§pop());
                           if(_loc8_)
                           {
                              _loc2_ = §§pop();
                              if(_loc7_ && this)
                              {
                                 §§goto(addr158);
                              }
                              else
                              {
                                 addr158:
                              }
                              §§push(_loc3_);
                              if(_loc8_ || _loc2_)
                              {
                                 §§push(§§pop() + 1);
                                 if(!_loc8_)
                                 {
                                    continue loop0;
                                 }
                                 §§push(Number(§§pop()));
                              }
                              continue;
                              if(_loc7_)
                              {
                                 continue;
                              }
                              continue loop0;
                           }
                           break;
                        }
                        addr115:
                        _loc2_ = §§pop();
                        if(!_loc7_)
                        {
                           §_-54§.log(_loc2_);
                           if(!_loc7_)
                           {
                              if(this.§_-Pa§ != null)
                              {
                                 §§goto(addr127);
                              }
                              addr158:
                              return;
                           }
                        }
                        §§goto(addr158);
                     }
                     break;
                  }
                  addr127:
                  if(!_loc7_)
                  {
                     §§push(_loc2_);
                     break;
                  }
                  var _loc5_:int = 0;
                  if(_loc8_)
                  {
                     for each(_loc4_ in this.§_-Pa§)
                     {
                        _loc4_(rest);
                     }
                  }
                  §§goto(addr158);
               }
               §§goto(addr115);
            }
         }
         §§goto(addr40);
      }
      
      public function addCallback(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(this.§_-Pa§);
            if(!(_loc2_ && this))
            {
               if(§§pop() == null)
               {
                  if(_loc3_)
                  {
                     this.§_-Pa§ = new Array();
                     if(_loc3_)
                     {
                        addr56:
                        this.§_-Pa§.push(param1);
                        addr54:
                     }
                     return;
                  }
               }
               §§goto(addr54);
            }
         }
         §§goto(addr56);
      }
   }
}
