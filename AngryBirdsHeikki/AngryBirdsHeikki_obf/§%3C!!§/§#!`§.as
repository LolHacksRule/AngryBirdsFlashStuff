package §<!!§
{
   import §!!7§.§"c§;
   import §-!5§.§1!_§;
   import §3Y§.§4!_§;
   import §9I§.§>!=§;
   import §^V§.§4S§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §#!`§
   {
      
      public static const §`!1§:String = "serializationJSON";
      
      public static const §,!`§:String = "serializationURLParameters";
      
      public static const §5!Z§:String = "k8Lc1LQwgJncfdXwONoZUYd6vQM6gE8W";
      
      private static const §0`§:int = 500;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §`!1§ = "serializationJSON";
            while(true)
            {
               §,!`§ = "serializationURLParameters";
               while(_loc2_ || _loc2_)
               {
                  §5!Z§ = "k8Lc1LQwgJncfdXwONoZUYd6vQM6gE8W";
                  while(!(_loc1_ && _loc2_))
                  {
                     §0`§ = 500;
                     if(_loc1_)
                     {
                        continue;
                     }
                     return;
                     addr40:
                  }
               }
            }
         }
         §§goto(addr40);
      }
      
      private var §%U§:URLLoader;
      
      private var §`k§:§>!=§;
      
      private var §>!K§:Boolean = false;
      
      public function §#!`§(param1:Object, param2:String, param3:§>!=§, param4:String)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || this)
         {
            super();
         }
         loop0:
         while(true)
         {
            addr38:
            addr54:
            addr68:
            while(true)
            {
               this.§%U§ = new §4S§();
               continue loop0;
            }
            var _loc5_:URLRequest;
            (_loc5_ = new URLRequest()).method = URLRequestMethod.POST;
            if(_loc8_ || param3)
            {
               this.§%U§.dataFormat = URLLoaderDataFormat.TEXT;
            }
            var _loc6_:* = param4;
            if(_loc8_ || param1)
            {
               §§push(§`!1§);
               if(_loc8_ || param2)
               {
                  §§push(_loc6_);
                  if(!_loc7_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc8_ || param3)
                        {
                           addr157:
                           §§push(0);
                           if(_loc7_)
                           {
                           }
                        }
                        else
                        {
                           addr164:
                           §§push(1);
                           if(_loc7_ && param1)
                           {
                           }
                        }
                        addr177:
                        loop8:
                        switch(§§pop())
                        {
                           case 0:
                              _loc5_.contentType = "application/json";
                              if(!_loc7_)
                              {
                                 addr87:
                                 _loc5_.data = §"c§.encode(param1);
                                 if(_loc8_ || param1)
                                 {
                                    addr255:
                                    this.§%U§.addEventListener(Event.COMPLETE,this.onComplete);
                                    loop3:
                                    while(true)
                                    {
                                       this.§%U§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§3!X§);
                                       addr254:
                                       while(true)
                                       {
                                          this.§%U§.addEventListener(IOErrorEvent.IO_ERROR,this.§'z§);
                                          break loop8;
                                          addr207:
                                          if(_loc8_ || param1)
                                          {
                                             continue loop3;
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr226);
                              }
                              break;
                           case 1:
                              _loc5_.data = this.§9o§(param1);
                              if(_loc8_ || param3)
                              {
                                 if(false)
                                 {
                                    §§goto(addr87);
                                 }
                                 §§goto(addr255);
                              }
                              §§goto(addr254);
                           default:
                              §§goto(addr255);
                        }
                        continue loop7;
                     }
                     addr163:
                     if(§,!`§ === _loc6_)
                     {
                        §§goto(addr164);
                     }
                     else
                     {
                        §§push(2);
                     }
                     §§goto(addr177);
                     §§goto(addr164);
                  }
               }
               §§goto(addr163);
            }
            §§goto(addr157);
         }
      }
      
      public static function §,!;§(param1:Object) : String
      {
         return §1!_§.§,!G§([param1.levelId,param1.score,§4!_§.§2!4§.id,§5!Z§,param1.blocks,param1.gamePlay].join("|"));
      }
      
      public static function §,!1§(param1:Array) : String
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Object = null;
         var _loc2_:* = "";
         for each(_loc3_ in param1)
         {
            if(_loc6_ || param1)
            {
               §§push(_loc2_);
               if(_loc6_ || §#!`§)
               {
                  §§push(§§pop() + (_loc3_.levelId + "|"));
               }
               _loc2_ = §§pop();
            }
         }
         if(_loc6_ || _loc2_)
         {
            §§push(_loc2_);
            if(_loc6_)
            {
               §§push(§§pop() + §5!Z§);
               if(_loc6_ || _loc3_)
               {
                  _loc2_ = §§pop();
                  addr100:
                  return §1!_§.§,!G§(_loc2_);
               }
            }
         }
         §§goto(addr100);
      }
      
      public static function §9M§(param1:Object) : String
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc5_:Object = null;
         var _loc6_:* = null;
         var _loc7_:Array = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = 0;
         var _loc2_:Array = [];
         if(!(_loc13_ && _loc2_))
         {
            _loc2_.push(param1.levelId);
            loop0:
            while(true)
            {
               addr58:
               while(true)
               {
                  _loc2_.push(param1.score + "");
                  while(true)
                  {
                     if(!_loc13_)
                     {
                        _loc2_.push(§5!Z§);
                        if(!(_loc13_ && _loc3_))
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr58);
         }
         var _loc3_:String = param1.gamePlay;
         var _loc4_:Array = _loc3_.split(":");
         for each(_loc5_ in _loc4_)
         {
            if(_loc14_)
            {
               _loc2_.push(_loc5_);
            }
         }
         if(!(_loc13_ && §#!`§))
         {
            _loc2_.push(param1.userId);
         }
         §§push(param1.blocks);
         if(_loc14_ || param1)
         {
            §§push(_loc6_ = §§pop());
         }
         _loc7_ = §§pop().split(",");
         if(_loc14_)
         {
            §§push(0);
            if(!_loc13_)
            {
               var _loc11_:* = §§pop();
               if(!_loc13_)
               {
                  for each(_loc5_ in _loc7_)
                  {
                     if(!(_loc13_ && param1))
                     {
                        _loc2_.push(_loc5_);
                     }
                  }
               }
               if(_loc14_)
               {
                  §§push("");
                  loop19:
                  while(true)
                  {
                     _loc8_ = §§pop();
                     addr361:
                     while(true)
                     {
                        §§push("");
                        if(_loc14_ || §#!`§)
                        {
                           break;
                        }
                        continue loop19;
                     }
                     addr341:
                     _loc9_ = §§pop();
                     while(_loc13_ && §#!`§)
                     {
                        §§goto(addr361);
                     }
                     §§push(0);
                     loop16:
                     while(true)
                     {
                        _loc10_ = §§pop();
                        loop17:
                        while(true)
                        {
                           loop15:
                           while(true)
                           {
                              §§push(_loc10_);
                              if(!(_loc13_ && param1))
                              {
                                 if(!(_loc13_ && _loc2_))
                                 {
                                    if(_loc13_ && param1)
                                    {
                                       continue loop16;
                                    }
                                    if(§§pop() >= _loc2_.length)
                                    {
                                       if(_loc14_)
                                       {
                                          if(_loc14_ || param1)
                                          {
                                             if(_loc14_ || §#!`§)
                                             {
                                                if(_loc14_)
                                                {
                                                   §§push(§0`§);
                                                   break;
                                                }
                                                continue loop17;
                                             }
                                             loop8:
                                             while(true)
                                             {
                                                §§push(_loc10_);
                                                addr292:
                                                while(true)
                                                {
                                                   if(§§pop() < §0`§)
                                                   {
                                                      addr294:
                                                      while(true)
                                                      {
                                                         §§push(§1!_§.§,!G§(_loc8_ + _loc9_));
                                                         if(!(_loc13_ && §#!`§))
                                                         {
                                                            if(_loc14_ || §#!`§)
                                                            {
                                                               §§push(§§pop());
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  _loc8_ = §§pop();
                                                                  continue loop8;
                                                                  addr320:
                                                               }
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            _loc9_ = §§pop();
                                                            addr315:
                                                            while(true)
                                                            {
                                                            }
                                                            addr268:
                                                            if(!(_loc14_ || _loc3_))
                                                            {
                                                               continue;
                                                            }
                                                            if(!(_loc13_ && _loc2_))
                                                            {
                                                               addr283:
                                                               _loc9_ = §§pop();
                                                               §§push(_loc9_);
                                                               if(_loc14_ || param1)
                                                               {
                                                                  if(!(_loc14_ || param1))
                                                                  {
                                                                     §§goto(addr268);
                                                                  }
                                                                  return §§pop();
                                                               }
                                                               §§goto(addr283);
                                                               addr284:
                                                            }
                                                            §§goto(addr320);
                                                         }
                                                      }
                                                      addr294:
                                                   }
                                                   while(true)
                                                   {
                                                      _loc10_++;
                                                   }
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             if(!_loc13_)
                                             {
                                                continue loop15;
                                             }
                                             §§goto(addr341);
                                          }
                                       }
                                       §§goto(addr284);
                                    }
                                    else
                                    {
                                       §§push(_loc8_);
                                    }
                                    §§goto(addr320);
                                 }
                                 §§goto(addr292);
                              }
                              break;
                           }
                           if(§§pop() < _loc2_.length)
                           {
                              if(!(_loc13_ && _loc3_))
                              {
                                 if(_loc14_ || param1)
                                 {
                                    if(!(_loc13_ && §#!`§))
                                    {
                                       §§goto(addr268);
                                       §§push(§1!_§.§,!G§(_loc8_ + _loc9_));
                                    }
                                    §§goto(addr294);
                                 }
                                 §§goto(addr315);
                              }
                           }
                           §§goto(addr283);
                        }
                     }
                  }
                  addr164:
               }
               §§goto(addr294);
            }
            §§goto(addr292);
         }
         §§goto(addr164);
      }
      
      private static function getText(param1:Array) : String
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:int = 0;
         var _loc2_:* = "";
         for each(_loc3_ in param1)
         {
            if(_loc6_)
            {
               §§push(_loc2_);
               if(!(_loc7_ && _loc3_))
               {
                  §§push(§§pop() + String.fromCharCode(_loc3_));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      public function get §^!^§() : Boolean
      {
         return this.§>!K§;
      }
      
      private function §1!P§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.dispose();
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§`k§.onComplete(param1);
         }
         do
         {
            this.§>!K§ = true;
            do
            {
               this.removeEventListeners();
            }
            while(_loc2_ && _loc3_);
            
         }
         while(_loc2_ && param1);
         
      }
      
      private function §3!X§(param1:HTTPStatusEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§`k§.§3!X§(param1);
         }
      }
      
      private function §'z§(param1:IOErrorEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§`k§.§'z§(param1);
         }
         do
         {
            this.removeEventListeners();
         }
         while(!(_loc3_ || _loc2_));
         
      }
      
      public function get §%!6§() : URLLoader
      {
         return this.§%U§;
      }
      
      private function removeEventListeners() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§%U§)
            {
               if(_loc2_)
               {
                  this.§%U§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§3!X§);
               }
               loop0:
               while(true)
               {
                  this.§%U§.removeEventListener(Event.COMPLETE,this.onComplete);
                  do
                  {
                     if(_loc2_ || _loc2_)
                     {
                        continue;
                     }
                     continue loop0;
                  }
                  while(this.§%U§.removeEventListener(IOErrorEvent.IO_ERROR,this.§'z§), !_loc2_);
                  
                  §§goto(addr20);
               }
            }
            §§goto(addr20);
         }
         addr20:
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.removeEventListeners();
         }
         loop0:
         while(true)
         {
            if(this.§%U§)
            {
               if(!_loc2_)
               {
                  this.§%U§.close();
               }
               while(true)
               {
                  this.§%U§ = null;
                  while(!_loc2_)
                  {
                     if(_loc1_)
                     {
                        this.§`k§ = null;
                     }
                     if(!(_loc2_ && _loc1_))
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(this.§`k§)
            {
               §§goto(addr27);
            }
            addr19:
            return;
         }
      }
      
      private function §9o§(param1:Object) : URLVariables
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            if(_loc6_)
            {
               _loc2_[_loc3_] = param1[_loc3_];
            }
         }
         return _loc2_;
      }
   }
}
