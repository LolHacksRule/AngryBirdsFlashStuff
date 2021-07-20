package §_-wT§
{
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.utils.Dictionary;
   
   public class §_-K0§ extends EventDispatcher
   {
       
      
      private var §_-ZF§:Dictionary;
      
      public function §_-K0§(param1:IEventDispatcher = null)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§_-ZF§ = new Dictionary();
            if(!_loc2_)
            {
               super(param1);
            }
         }
      }
      
      override public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_ || this)
         {
            super.addEventListener(param1,param2,param3,param4,param5);
         }
         var _loc6_:ListenerData;
         (_loc6_ = new ListenerData()).listener = param2;
         if(_loc8_ || param1)
         {
            _loc6_.useCapture = param3;
            if(_loc8_ || this)
            {
               _loc6_.priority = param4;
               if(!_loc9_)
               {
                  addr63:
                  _loc6_.useWeakReference = param5;
                  if(_loc8_)
                  {
                     §§goto(addr68);
                  }
                  §§goto(addr82);
               }
               addr68:
               §§push(this.§_-ZF§[param1]);
               if(!this.§_-ZF§[param1])
               {
                  §§pop();
                  §§goto(addr107);
               }
               (§§pop() as Vector.<ListenerData>).push(_loc6_);
               §§goto(addr107);
            }
            addr107:
            if(_loc8_ || param2)
            {
               addr82:
               §§push(this.§_-ZF§[param1] = new Vector.<ListenerData>());
            }
            return;
         }
         §§goto(addr63);
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
         if((_loc4_ = this.§_-ZF§[param1] as Vector.<ListenerData>) != null)
         {
            if(!_loc8_)
            {
               _loc5_ = uint(_loc4_.length);
               if(_loc9_)
               {
                  addr55:
                  _loc6_ = 0;
               }
               while(_loc6_ < _loc5_)
               {
                  §§push((_loc7_ = _loc4_[_loc6_] as ListenerData).listener == param2);
                  if(_loc9_)
                  {
                     §§push(§§pop());
                     if(!(_loc8_ && param3))
                     {
                        if(§§pop())
                        {
                           if(!_loc8_)
                           {
                              addr90:
                              §§pop();
                              if(_loc8_)
                              {
                                 continue;
                              }
                              §§push(_loc7_.useCapture);
                              if(!_loc8_)
                              {
                                 addr98:
                                 §§push(§§pop() == param3);
                              }
                           }
                        }
                        if(§§pop())
                        {
                           if(_loc9_ || param3)
                           {
                              _loc4_.splice(_loc6_,1);
                              if(_loc8_)
                              {
                                 continue;
                              }
                              §§push(_loc6_);
                              if(!(_loc8_ && param2))
                              {
                                 §§push(§§pop() - 1);
                              }
                              _loc6_ = §§pop();
                              if(_loc8_)
                              {
                                 continue;
                              }
                              §§push(_loc5_);
                              if(_loc9_ || param1)
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
                     §§goto(addr98);
                  }
                  §§goto(addr90);
               }
               §§goto(addr149);
            }
            §§goto(addr55);
         }
         addr149:
      }
      
      public function copyFrom(param1:§_-K0§) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc3_:* = null;
         var _loc4_:Vector.<ListenerData> = null;
         var _loc5_:* = uint(0);
         var _loc6_:* = uint(0);
         var _loc7_:ListenerData = null;
         var _loc2_:Dictionary = param1.§_-ZF§;
         for(_loc3_ in _loc2_)
         {
            §§push(uint((_loc4_ = _loc2_[_loc3_] as Vector.<ListenerData>).length));
            if(_loc10_ || _loc2_)
            {
               _loc5_ = §§pop();
               if(!(_loc11_ && param1))
               {
                  §§push(uint(0));
                  if(_loc10_ || _loc2_)
                  {
                     addr87:
                     _loc6_ = §§pop();
                     if(_loc11_)
                     {
                        continue;
                     }
                     addr90:
                     while(true)
                     {
                        §§push(_loc6_);
                     }
                     addr132:
                  }
                  for(; §§pop() < _loc5_; §§goto(addr132))
                  {
                     _loc7_ = _loc4_[_loc6_] as ListenerData;
                     if(_loc10_ || this)
                     {
                        this.addEventListener(_loc3_,_loc7_.listener,_loc7_.useCapture,_loc7_.priority,_loc7_.useWeakReference);
                        if(!_loc10_)
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
               }
               §§goto(addr90);
            }
            §§goto(addr87);
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
