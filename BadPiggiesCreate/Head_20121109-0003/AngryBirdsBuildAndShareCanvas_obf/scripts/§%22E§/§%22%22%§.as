package §"E§
{
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.utils.Dictionary;
   
   public class §""%§ extends EventDispatcher
   {
       
      
      private var §0!?§:Dictionary;
      
      public function §""%§(param1:IEventDispatcher = null)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§0!?§ = new Dictionary();
            do
            {
               super(param1);
            }
            while(_loc2_ && this);
            
         }
      }
      
      override public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_ || param1)
         {
            super.addEventListener(param1,param2,param3,param4,param5);
         }
         var _loc6_:ListenerData;
         (_loc6_ = new ListenerData()).listener = param2;
         if(_loc9_)
         {
            _loc6_.useCapture = param3;
            loop0:
            while(true)
            {
               _loc6_.priority = param4;
               if(!(_loc8_ && param2))
               {
                  while(true)
                  {
                     _loc6_.useWeakReference = param5;
                     if(!(_loc9_ || this))
                     {
                        break;
                     }
                     if(_loc9_)
                     {
                        §§push(this.§0!?§[param1]);
                        if(this.§0!?§[param1])
                        {
                           (§§pop() as Vector.<ListenerData>).push(_loc6_);
                        }
                        else
                        {
                           addr115:
                        }
                        §§pop();
                        if(_loc8_)
                        {
                           break;
                        }
                        continue;
                        break;
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      override public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:* = uint(0);
         var _loc6_:* = 0;
         var _loc7_:ListenerData = null;
         if(_loc9_)
         {
            super.removeEventListener(param1,param2,param3);
         }
         var _loc4_:Vector.<ListenerData>;
         if((_loc4_ = this.§0!?§[param1] as Vector.<ListenerData>) != null)
         {
            if(_loc9_)
            {
               _loc5_ = uint(_loc4_.length);
               if(_loc9_)
               {
                  _loc6_ = 0;
               }
            }
            loop0:
            while(_loc6_ < _loc5_)
            {
               §§push((_loc7_ = _loc4_[_loc6_] as ListenerData).listener == param2);
               if(!(_loc8_ && param2))
               {
                  §§push(§§pop());
                  if(!_loc8_)
                  {
                     if(§§pop())
                     {
                        if(_loc9_)
                        {
                           §§pop();
                           if(_loc9_)
                           {
                              §§push(_loc7_.useCapture);
                              if(_loc9_)
                              {
                                 addr148:
                                 if(§§pop() == param3)
                                 {
                                    loop4:
                                    while(true)
                                    {
                                       _loc4_.splice(_loc6_,1);
                                       loop5:
                                       while(true)
                                       {
                                          §§push(_loc6_);
                                          if(!(_loc8_ && param1))
                                          {
                                             §§push(§§pop() - 1);
                                          }
                                          _loc6_ = §§pop();
                                          loop6:
                                          while(true)
                                          {
                                             addr122:
                                             addr120:
                                             while(true)
                                             {
                                                §§push(_loc5_);
                                                if(!_loc8_)
                                                {
                                                   §§push(uint(§§pop() - 1));
                                                }
                                                _loc5_ = §§pop();
                                                loop3:
                                                while(true)
                                                {
                                                   addr95:
                                                   while(true)
                                                   {
                                                      _loc6_++;
                                                      if(!(_loc8_ && param1))
                                                      {
                                                         break loop3;
                                                      }
                                                      continue loop3;
                                                   }
                                                }
                                                if(!(_loc8_ && param2))
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      addr113:
                                                      if(_loc9_ || this)
                                                      {
                                                         break;
                                                      }
                                                      continue loop4;
                                                   }
                                                   continue loop5;
                                                }
                                                continue loop6;
                                             }
                                             while(false)
                                             {
                                                §§goto(addr122);
                                                §§goto(addr113);
                                             }
                                             continue loop0;
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr95);
                              }
                              §§goto(addr148);
                           }
                           §§goto(addr120);
                        }
                     }
                  }
               }
               §§goto(addr148);
            }
         }
      }
      
      public function copyFrom(param1:§""%§) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc3_:* = null;
         var _loc4_:Vector.<ListenerData> = null;
         var _loc5_:* = uint(0);
         var _loc6_:* = uint(0);
         var _loc7_:ListenerData = null;
         var _loc2_:Dictionary = param1.§0!?§;
         for(_loc3_ in _loc2_)
         {
            §§push(uint((_loc4_ = _loc2_[_loc3_] as Vector.<ListenerData>).length));
            if(!_loc11_)
            {
               _loc5_ = §§pop();
               if(_loc10_ || _loc2_)
               {
                  §§push(uint(0));
                  if(!_loc11_)
                  {
                     addr83:
                     _loc6_ = §§pop();
                     if(!_loc10_)
                     {
                        continue;
                     }
                     while(true)
                     {
                        §§push(_loc6_);
                     }
                     addr131:
                  }
                  for(; §§pop() < _loc5_; §§goto(addr131))
                  {
                     _loc7_ = _loc4_[_loc6_] as ListenerData;
                     if(!_loc11_)
                     {
                        this.addEventListener(_loc3_,_loc7_.listener,_loc7_.useCapture,_loc7_.priority,_loc7_.useWeakReference);
                        if(!(_loc10_ || _loc3_))
                        {
                           continue;
                        }
                     }
                     §§push(_loc6_);
                     if(!_loc11_)
                     {
                        §§push(uint(§§pop() + 1));
                     }
                     _loc6_ = §§pop();
                  }
               }
               continue;
            }
            §§goto(addr83);
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
