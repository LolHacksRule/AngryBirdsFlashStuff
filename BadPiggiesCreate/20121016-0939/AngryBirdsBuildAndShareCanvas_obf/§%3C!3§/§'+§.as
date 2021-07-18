package §<!3§
{
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.utils.Dictionary;
   
   public class §'+§ extends EventDispatcher
   {
       
      
      private var §"^§:Dictionary;
      
      public function §'+§(param1:IEventDispatcher = null)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§"^§ = new Dictionary();
            do
            {
               super(param1);
            }
            while(_loc2_);
            
         }
      }
      
      override public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_)
         {
            super.addEventListener(param1,param2,param3,param4,param5);
         }
         var _loc6_:ListenerData;
         (_loc6_ = new ListenerData()).listener = param2;
         if(!(_loc9_ && param1))
         {
            _loc6_.useCapture = param3;
            if(_loc8_)
            {
               _loc6_.priority = param4;
               while(true)
               {
                  loop1:
                  while(true)
                  {
                     _loc6_.useWeakReference = param5;
                     while(true)
                     {
                        §§push(this.§"^§[param1]);
                        if(!this.§"^§[param1])
                        {
                           §§pop();
                           if(_loc8_)
                           {
                              if(_loc9_ && param3)
                              {
                                 continue;
                              }
                              if(_loc9_)
                              {
                                 break loop1;
                              }
                              while(true)
                              {
                                 if(true)
                                 {
                                    var _loc7_:*;
                                    this.§"^§[param1] = _loc7_ = new Vector.<ListenerData>();
                                    §§push(_loc7_);
                                 }
                                 continue loop1;
                              }
                           }
                           §§goto(addr115);
                        }
                        break;
                     }
                     (§§pop() as Vector.<ListenerData>).push(_loc6_);
                  }
               }
            }
            addr115:
            return;
         }
         §§goto(addr69);
      }
      
      override public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:* = uint(0);
         var _loc6_:* = 0;
         var _loc7_:ListenerData = null;
         if(!(_loc8_ && param1))
         {
            super.removeEventListener(param1,param2,param3);
         }
         var _loc4_:Vector.<ListenerData>;
         if((_loc4_ = this.§"^§[param1] as Vector.<ListenerData>) != null)
         {
            if(_loc9_ || param1)
            {
               _loc5_ = uint(_loc4_.length);
               if(_loc9_)
               {
                  addr63:
                  _loc6_ = 0;
               }
               loop0:
               while(_loc6_ < _loc5_)
               {
                  §§push((_loc7_ = _loc4_[_loc6_] as ListenerData).listener == param2);
                  if(_loc9_ || param3)
                  {
                     §§push(§§pop());
                     if(_loc9_ || param2)
                     {
                        if(§§pop())
                        {
                           if(!_loc8_)
                           {
                              §§pop();
                              if(_loc9_ || this)
                              {
                                 §§push(_loc7_.useCapture);
                                 if(_loc9_)
                                 {
                                    addr168:
                                    if(§§pop() == param3)
                                    {
                                       loop1:
                                       while(true)
                                       {
                                          _loc4_.splice(_loc6_,1);
                                          while(true)
                                          {
                                             §§push(_loc6_);
                                             if(!_loc8_)
                                             {
                                                §§push(§§pop() - 1);
                                             }
                                             _loc6_ = §§pop();
                                             loop3:
                                             while(_loc9_ || param3)
                                             {
                                                do
                                                {
                                                   §§push(_loc5_);
                                                   if(!(_loc8_ && param1))
                                                   {
                                                      §§push(uint(§§pop() - 1));
                                                   }
                                                   _loc5_ = §§pop();
                                                   loop5:
                                                   while(true)
                                                   {
                                                      addr115:
                                                      while(true)
                                                      {
                                                         _loc6_++;
                                                         if(_loc9_ || param2)
                                                         {
                                                            break loop5;
                                                         }
                                                         continue loop5;
                                                      }
                                                   }
                                                   if(_loc8_ && param3)
                                                   {
                                                      continue loop3;
                                                   }
                                                   if(_loc8_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   §§goto(addr133);
                                                   continue loop3;
                                                }
                                                while(false);
                                                
                                                continue loop0;
                                             }
                                          }
                                       }
                                       addr179:
                                    }
                                    §§goto(addr115);
                                 }
                                 §§goto(addr168);
                              }
                              §§goto(addr179);
                           }
                        }
                     }
                  }
                  §§goto(addr168);
               }
               §§goto(addr187);
            }
            §§goto(addr63);
         }
         addr187:
      }
      
      public function copyFrom(param1:§'+§) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc3_:* = null;
         var _loc4_:Vector.<ListenerData> = null;
         var _loc5_:* = uint(0);
         var _loc6_:* = uint(0);
         var _loc7_:ListenerData = null;
         var _loc2_:Dictionary = param1.§"^§;
         for(_loc3_ in _loc2_)
         {
            §§push(uint((_loc4_ = _loc2_[_loc3_] as Vector.<ListenerData>).length));
            if(_loc10_)
            {
               _loc5_ = §§pop();
               if(_loc10_ || this)
               {
                  §§push(uint(0));
                  if(!(_loc11_ && _loc2_))
                  {
                     _loc6_ = §§pop();
                     if(!(_loc10_ || _loc3_))
                     {
                        continue;
                     }
                  }
                  loop2:
                  for(; §§pop() < _loc5_; while(true)
                  {
                     continue loop2;
                  })
                  {
                     _loc7_ = _loc4_[_loc6_] as ListenerData;
                     if(!(_loc11_ && _loc3_))
                     {
                        this.addEventListener(_loc3_,_loc7_.listener,_loc7_.useCapture,_loc7_.priority,_loc7_.useWeakReference);
                        if(_loc11_ && _loc3_)
                        {
                           continue;
                        }
                     }
                     §§push(_loc6_);
                     if(_loc10_)
                     {
                        §§push(uint(§§pop() + 1));
                     }
                     _loc6_ = §§pop();
                  }
                  continue;
                  addr147:
               }
               §§goto(addr146);
            }
            §§goto(addr147);
         }
      }
   }
}

class ListenerData
{
    
   
   public var priority:int;
   
   public var useCapture:Boolean;
   
   public var listener:Function;
   
   public var useWeakReference:Boolean;
   
   function ListenerData()
   {
      super();
   }
}
