package §;#Q§
{
   import §`!o§.§+"k§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class §[#2§
   {
       
      
      protected var §@#L§:String;
      
      protected var §>!x§:Vector.<URLLoader>;
      
      protected var § "n§:Dictionary;
      
      protected var §`o§:Dictionary;
      
      public function §[#2§(param1:String)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
            while(true)
            {
               this.§@#L§ = param1;
               addr61:
               if(_loc2_ && this)
               {
                  continue;
               }
               this.§`o§ = new Dictionary();
               addr68:
               if(_loc3_)
               {
                  addr31:
                  if(_loc2_ && this)
                  {
                     while(true)
                     {
                        this.§>!x§ = new Vector.<URLLoader>();
                        while(true)
                        {
                           this.§ "n§ = new Dictionary();
                           addr54:
                           while(_loc3_ || _loc3_)
                           {
                              §§goto(addr61);
                              §§goto(addr68);
                           }
                        }
                        §§goto(addr31);
                     }
                     addr91:
                  }
                  return;
               }
               §§goto(addr54);
            }
         }
         §§goto(addr91);
      }
      
      protected function §5#'§(param1:String, param2:Function, param3:§>#I§ = null, param4:Function = null, param5:URLRequest = null) : §6!Y§
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(_loc12_)
         {
            var _loc6_:URLRequest = param5 || new URLRequest(this.§@#L§ + param1);
            var _loc7_:§+"k§ = new §+"k§();
            var _loc8_:Function = new §!f§(param2,this.onComplete,param3).delegate;
            if(_loc12_ || param2)
            {
               var _loc9_:Function = param4 || this.§=!'§;
               if(!_loc13_)
               {
                  var _loc10_:Function = param4 || this.§9!k§;
                  if(!(_loc13_ && this))
                  {
                     _loc7_.addEventListener(Event.COMPLETE,_loc8_);
                     while(true)
                     {
                        _loc7_.addEventListener(IOErrorEvent.IO_ERROR,_loc9_);
                        loop1:
                        while(_loc12_ || param3)
                        {
                           _loc7_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,_loc10_);
                           loop2:
                           while(true)
                           {
                              loop3:
                              while(true)
                              {
                                 this.§>!x§.push(_loc7_);
                                 loop4:
                                 while(_loc12_)
                                 {
                                    while(true)
                                    {
                                       this.§`o§[_loc7_] = [_loc8_,_loc9_,_loc10_];
                                       if(!_loc13_)
                                       {
                                          if(!_loc13_)
                                          {
                                             if(true)
                                             {
                                                break;
                                             }
                                             continue loop3;
                                          }
                                          continue loop1;
                                       }
                                       continue loop4;
                                    }
                                    var _loc11_:§6!Y§ = new §6!Y§(param1);
                                    if(!(_loc13_ && this))
                                    {
                                       this.§ "n§[_loc11_] = _loc7_;
                                    }
                                    do
                                    {
                                       _loc7_.load(_loc6_);
                                    }
                                    while(!_loc12_);
                                    
                                    return _loc11_;
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr114);
               }
               §§goto(addr69);
            }
            §§goto(addr57);
         }
         §§goto(addr23);
      }
      
      protected function onComplete(param1:URLLoader) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:* = 0;
         for(_loc2_ in this.§ "n§)
         {
            if(_loc8_)
            {
               if(this.§ "n§[_loc2_] != param1)
               {
                  continue;
               }
               if(_loc8_ || param1)
               {
                  delete this.§ "n§[_loc2_];
               }
            }
            break;
         }
         if(_loc8_ || _loc2_)
         {
            §§push(int(this.§>!x§.indexOf(param1)));
            if(!_loc7_)
            {
               _loc3_ = §§pop();
               if(!_loc7_)
               {
                  addr78:
                  if(_loc3_ != -1)
                  {
                     if(!_loc7_)
                     {
                        this.§>!x§.splice(_loc3_,1);
                     }
                  }
               }
               var _loc4_:Array;
               §§push(Boolean(_loc4_ = this.§`o§[param1]));
               if(!_loc7_)
               {
                  if(§§pop())
                  {
                     if(!_loc7_)
                     {
                        §§pop();
                        if(!_loc7_)
                        {
                           §§push(_loc4_.length == 3);
                           loop4:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(!_loc7_)
                                 {
                                    param1.removeEventListener(Event.COMPLETE,_loc4_[0]);
                                    addr186:
                                    loop1:
                                    while(true)
                                    {
                                       param1.removeEventListener(IOErrorEvent.IO_ERROR,_loc4_[1]);
                                       while(true)
                                       {
                                          param1.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,_loc4_[2]);
                                          while(true)
                                          {
                                             if(!_loc7_)
                                             {
                                                §§push(delete this.§`o§[param1]);
                                                if(_loc8_)
                                                {
                                                   continue;
                                                }
                                                continue loop4;
                                             }
                                             continue loop1;
                                          }
                                          if(_loc8_ || this)
                                          {
                                             §§goto(addr115);
                                          }
                                       }
                                    }
                                    addr186:
                                 }
                                 §§goto(addr186);
                              }
                              addr115:
                              return;
                           }
                           addr166:
                        }
                        §§goto(addr186);
                     }
                  }
               }
               §§goto(addr166);
            }
         }
         §§goto(addr78);
      }
      
      protected function §9!k§(param1:SecurityErrorEvent) : void
      {
         throw param1;
      }
      
      protected function §=!'§(param1:IOErrorEvent) : void
      {
         throw param1;
      }
      
      public function §1!e§(param1:§6!Y§) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:URLLoader = this.§ "n§[param1];
         if(_loc4_ || param1)
         {
            if(_loc2_)
            {
               if(!(_loc3_ && _loc2_))
               {
                  addr83:
                  this.§ #O§(_loc2_);
               }
               return true;
            }
            else
            {
               §§push(false);
               if(!(_loc3_ && this))
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr83);
      }
      
      protected function § #O§(param1:URLLoader) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var loader:URLLoader = param1;
         try
         {
            loader.close();
            if(!(_loc4_ && _loc3_))
            {
               addr68:
               this.onComplete(loader);
            }
         }
         catch(e:Error)
         {
            §§goto(addr68);
         }
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:URLLoader = null;
         var _loc3_:* = this.§>!x§;
         for each(_loc1_ in _loc3_)
         {
            if(!_loc5_)
            {
               this.§ #O§(_loc1_);
            }
         }
         if(_loc4_ || _loc3_)
         {
            this.§>!x§.length = 0;
            do
            {
               this.§ "n§ = new Dictionary();
            }
            while(!(_loc4_ || this));
            
         }
      }
   }
}
