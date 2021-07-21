package §]s§
{
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.utils.Dictionary;
   
   public class ClonableEventDispatcher extends EventDispatcher
   {
       
      
      private var §3!Z§:Dictionary;
      
      public function ClonableEventDispatcher(param1:IEventDispatcher = null)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§3!Z§ = new Dictionary();
            if(!_loc2_)
            {
               super(param1);
            }
         }
      }
      
      override public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!_loc8_)
         {
            super.addEventListener(param1,param2,param3,param4,param5);
         }
         var _loc6_:ListenerData;
         (_loc6_ = new ListenerData()).listener = param2;
         if(_loc9_ || this)
         {
            _loc6_.useCapture = param3;
            if(_loc9_)
            {
               _loc6_.priority = param4;
               if(!_loc8_)
               {
                  _loc6_.useWeakReference = param5;
                  if(_loc9_ || param2)
                  {
                     addr80:
                     §§push(this.§3!Z§[param1]);
                     if(!this.§3!Z§[param1])
                     {
                        §§pop();
                        if(!_loc8_)
                        {
                           addr101:
                           ((this.§3!Z§[param1] = new Vector.<ListenerData>()) as Vector.<ListenerData>).push(_loc6_);
                        }
                        return;
                     }
                  }
                  §§goto(addr101);
               }
            }
         }
         §§goto(addr80);
      }
      
      override public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:* = uint(0);
         var _loc6_:* = 0;
         var _loc7_:ListenerData = null;
         if(_loc9_ || param3)
         {
            super.removeEventListener(param1,param2,param3);
         }
         var _loc4_:Vector.<ListenerData>;
         if((_loc4_ = this.§3!Z§[param1] as Vector.<ListenerData>) != null)
         {
            if(!_loc8_)
            {
               _loc5_ = uint(_loc4_.length);
               if(_loc9_ || param2)
               {
                  _loc6_ = 0;
                  addr63:
               }
               while(_loc6_ < _loc5_)
               {
                  §§push((_loc7_ = _loc4_[_loc6_] as ListenerData).listener == param2);
                  if(_loc9_ || this)
                  {
                     §§push(§§pop());
                     if(!_loc8_)
                     {
                        if(§§pop())
                        {
                           if(_loc9_)
                           {
                              §§pop();
                              if(!(_loc8_ && param3))
                              {
                                 §§push(_loc7_.useCapture);
                                 if(_loc9_)
                                 {
                                    addr115:
                                    addr114:
                                    if(§§pop() == param3)
                                    {
                                       if(_loc8_)
                                       {
                                          continue;
                                       }
                                       _loc4_.splice(_loc6_,1);
                                       if(_loc8_)
                                       {
                                          continue;
                                       }
                                       addr134:
                                       §§push(_loc6_);
                                       if(_loc9_)
                                       {
                                          §§push(§§pop() - 1);
                                       }
                                       _loc6_ = §§pop();
                                       if(!_loc8_)
                                       {
                                          §§push(_loc5_);
                                          if(!(_loc8_ && this))
                                          {
                                             §§push(uint(§§pop() - 1));
                                          }
                                          _loc5_ = §§pop();
                                          if(!_loc9_)
                                          {
                                             continue;
                                          }
                                       }
                                    }
                                    _loc6_++;
                                    continue;
                                 }
                                 §§goto(addr115);
                              }
                              §§goto(addr134);
                           }
                        }
                        §§goto(addr115);
                     }
                     §§goto(addr114);
                  }
                  §§goto(addr115);
               }
               §§goto(addr158);
            }
            §§goto(addr63);
         }
         addr158:
      }
      
      public function copyFrom(param1:ClonableEventDispatcher) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc3_:* = null;
         var _loc4_:Vector.<ListenerData> = null;
         var _loc5_:* = uint(0);
         var _loc6_:* = uint(0);
         var _loc7_:ListenerData = null;
         var _loc2_:Dictionary = param1.§3!Z§;
         for(_loc3_ in _loc2_)
         {
            §§push(uint((_loc4_ = _loc2_[_loc3_] as Vector.<ListenerData>).length));
            if(_loc11_)
            {
               _loc5_ = §§pop();
               if(!(_loc10_ && _loc2_))
               {
                  §§push(uint(0));
                  if(!(_loc10_ && _loc3_))
                  {
                     addr89:
                     _loc6_ = §§pop();
                     if(!(_loc11_ || _loc3_))
                     {
                        continue;
                     }
                     addr97:
                     while(true)
                     {
                        §§push(_loc6_);
                     }
                     addr142:
                  }
                  for(; §§pop() < _loc5_; §§goto(addr142))
                  {
                     _loc7_ = _loc4_[_loc6_] as ListenerData;
                     if(_loc11_ || param1)
                     {
                        this.addEventListener(_loc3_,_loc7_.listener,_loc7_.useCapture,_loc7_.priority,_loc7_.useWeakReference);
                        if(_loc10_)
                        {
                           continue;
                        }
                     }
                     §§push(_loc6_);
                     if(_loc11_)
                     {
                        §§push(uint(§§pop() + 1));
                     }
                     _loc6_ = §§pop();
                  }
                  continue;
               }
               §§goto(addr97);
            }
            §§goto(addr89);
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
