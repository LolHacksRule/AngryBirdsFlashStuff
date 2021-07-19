package §1"b§
{
   import flash.display.Shape;
   import flash.events.Event;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   
   public final class §>l§
   {
      
      private static const §%#0§:Dictionary;
      
      private static const §;",§:Dictionary;
      
      private static var §4!B§:Vector.<§+;§>;
      
      private static const §4+§:Shape;
      
      private static var §+B§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §%#0§ = new Dictionary(true);
            while(true)
            {
               §;",§ = new Dictionary(true);
               loop1:
               for(; _loc1_; if(_loc1_ || _loc2_)
               {
                  addr53:
               },continue,return)
               {
                  §4!B§ = new Vector.<§+;§>();
                  loop2:
                  while(true)
                  {
                     §4+§ = new Shape();
                     addr59:
                     while(true)
                     {
                        §+B§ = false;
                        if(!(_loc2_ && _loc2_))
                        {
                           if(!_loc2_)
                           {
                              continue loop1;
                           }
                           continue loop2;
                        }
                     }
                     §§goto(addr53);
                  }
               }
            }
         }
         §§goto(addr59);
      }
      
      private const §%#0§:Dictionary;
      
      private const §;",§:Dictionary;
      
      private var §4!B§:Vector.<§+;§>;
      
      private const §4+§:Shape;
      
      private var §+B§:Boolean = false;
      
      public function §>l§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§%#0§ = new Dictionary(true);
            loop0:
            while(true)
            {
               this.§;",§ = new Dictionary(true);
               while(true)
               {
                  this.§4!B§ = new Vector.<§+;§>();
                  while(_loc1_ || _loc2_)
                  {
                     this.§4+§ = new Shape();
                     loop3:
                     while(_loc1_)
                     {
                        while(true)
                        {
                           super();
                           if(_loc1_ || _loc1_)
                           {
                              if(_loc1_)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr53);
      }
      
      public static function §#!"§(param1:§,A§, param2:* = null, param3:Object = null, param4:Number = -1) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§+;§;
         (_loc5_ = new §+;§()).message = param1;
         if(!(_loc7_ && param2))
         {
            _loc5_.§#!0§ = param3;
            loop0:
            while(true)
            {
               _loc5_.§%L§ = param4;
               loop1:
               while(true)
               {
                  _loc5_.data = param2;
                  loop2:
                  while(true)
                  {
                     §§push(param4 <= 0);
                     loop3:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              addr120:
                              while(true)
                              {
                                 §§push(§+B§);
                                 if(!_loc7_)
                                 {
                                    if(!_loc6_)
                                    {
                                       break;
                                    }
                                    §§push(!§§pop());
                                 }
                                 if(_loc7_)
                                 {
                                    continue loop4;
                                 }
                              }
                              continue loop3;
                           }
                        }
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop7:
                              while(true)
                              {
                                 _loc5_.§%L§ += getTimer();
                                 addr57:
                                 addr112:
                                 while(true)
                                 {
                                    if(!_loc7_)
                                    {
                                       continue loop2;
                                    }
                                    if(_loc7_ && param2)
                                    {
                                       break;
                                    }
                                    if(_loc7_)
                                    {
                                       break loop7;
                                    }
                                    continue loop7;
                                 }
                                 return;
                              }
                              continue loop0;
                              addr49:
                           }
                           if(!_loc7_)
                           {
                              break;
                           }
                           §§goto(addr120);
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr49);
         }
      }
      
      private static function §"!,§(param1:§+;§) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc6_:Dictionary = null;
         var _loc7_:§8"?§ = null;
         var _loc8_:Function = null;
         var _loc2_:§,A§ = param1.message;
         var _loc3_:Object = param1.§#!0§;
         var _loc4_:Object = param1.data;
         var _loc5_:§7",§;
         (_loc5_ = new §7",§()).message = _loc2_;
         if(_loc12_)
         {
            _loc5_.§@Z§ = param1.§#!0§;
            if(!_loc13_)
            {
               addr52:
               _loc5_.data = param1.data;
               if(!_loc13_)
               {
                  if(§%#0§[_loc2_] != null)
                  {
                     addr63:
                     _loc6_ = §%#0§[_loc2_];
                     for each(_loc7_ in _loc6_)
                     {
                        _loc7_.§4"U§(_loc5_);
                     }
                  }
                  if(§;",§[_loc2_] != null)
                  {
                     _loc6_ = §;",§[_loc2_];
                     if(!(_loc13_ && §>l§))
                     {
                        var _loc9_:int = 0;
                        if(!_loc13_)
                        {
                           for each(_loc8_ in _loc6_)
                           {
                              if(!_loc13_)
                              {
                                 var _loc11_:* = _loc8_.length;
                                 if(_loc12_)
                                 {
                                    §§push(1);
                                    if(_loc12_)
                                    {
                                       if(§§pop() === _loc11_)
                                       {
                                          if(_loc12_ || §>l§)
                                          {
                                             §§push(0);
                                             if(!(_loc12_ || _loc2_))
                                             {
                                                addr183:
                                                if(§§pop() === _loc11_)
                                                {
                                                   addr185:
                                                   §§push(1);
                                                   if(_loc12_ || param1)
                                                   {
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(2);
                                                }
                                             }
                                             else
                                             {
                                                addr179:
                                             }
                                          }
                                          §§goto(addr185);
                                       }
                                       else
                                       {
                                          §§push(0);
                                          if(_loc12_)
                                          {
                                             §§goto(addr183);
                                          }
                                       }
                                       switch(§§pop())
                                       {
                                          case 0:
                                             _loc8_(_loc5_);
                                             if(_loc12_ || param1)
                                             {
                                             }
                                             continue;
                                          case 1:
                                       }
                                       _loc8_();
                                       if(_loc12_)
                                       {
                                          addr153:
                                       }
                                       continue;
                                    }
                                    §§goto(addr179);
                                 }
                                 §§goto(addr185);
                              }
                              §§goto(addr153);
                           }
                        }
                     }
                  }
                  return;
               }
            }
            §§goto(addr63);
         }
         §§goto(addr52);
      }
      
      private static function §?"d§(param1:Event = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§+;§ = null;
         if(_loc5_ || _loc3_)
         {
            if(§4!B§.length == 0)
            {
               if(!(_loc6_ && §>l§))
               {
                  return;
               }
            }
         }
         var _loc2_:uint = getTimer();
         var _loc3_:* = int(§4!B§.length);
         while(true)
         {
            §§push(_loc3_);
            if(!_loc6_)
            {
               §§push(§§pop());
               if(!_loc6_)
               {
                  §§push(§§pop() - 1);
               }
               _loc3_ = §§pop();
            }
            if(!§§pop())
            {
               break;
            }
            if((_loc4_ = §4!B§[_loc3_]).§%L§ <= _loc2_)
            {
               if(_loc5_)
               {
                  §"!,§(_loc4_);
                  if(!(_loc5_ || _loc3_))
                  {
                     continue;
                  }
               }
               §4!B§.splice(_loc3_,1);
            }
         }
      }
      
      public static function §'!c§(param1:§8"?§, param2:§,A§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(§%#0§[param2] == null)
            {
               if(_loc4_ || §>l§)
               {
                  return;
               }
               addr67:
               while(true)
               {
               }
               addr67:
            }
            while(true)
            {
               delete §%#0§[param2][param1];
               if(_loc4_)
               {
                  break;
               }
               §§goto(addr67);
            }
            return;
         }
         §§goto(addr67);
      }
      
      public static function §^#0§(param1:§8"?§, param2:§,A§, ... rest) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param2)
         {
            §^!9§(param1,param2);
         }
         for each(param2 in rest)
         {
            if(_loc7_)
            {
               §^!9§(param1,param2);
            }
         }
      }
      
      private static function §^!9§(param1:§8"?§, param2:§,A§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Dictionary = null;
         if(!(_loc6_ && param2))
         {
            if(§%#0§[param2] != null)
            {
               §§goto(addr41);
            }
            else
            {
               var _loc4_:*;
               §%#0§[param2] = _loc4_ = new Dictionary(true);
               _loc3_ = _loc4_;
            }
            §§goto(addr76);
         }
         addr41:
         _loc3_ = §%#0§[param2];
         if(!(_loc6_ && param2))
         {
            addr76:
            _loc3_[param1] = param1;
         }
      }
      
      public static function addCallback(param1:§,A§, param2:Function, ... rest) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param1))
         {
            §0!z§(param2,param1);
         }
         for each(param1 in rest)
         {
            if(!(_loc7_ && param1))
            {
               §0!z§(param2,param1);
            }
         }
      }
      
      private static function §0!z§(param1:Function, param2:§,A§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Dictionary = null;
         if(!_loc6_)
         {
            if(§;",§[param2] != null)
            {
               _loc3_ = §;",§[param2];
               §§goto(addr26);
            }
            else
            {
               var _loc4_:*;
               §;",§[param2] = _loc4_ = new Dictionary(true);
               _loc3_ = _loc4_;
            }
            §§goto(addr71);
         }
         addr26:
         if(!(_loc6_ && param2))
         {
            addr71:
            _loc3_[param1] = param1;
         }
      }
      
      public static function §&z§(param1:§,A§, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(§;",§[param1] == null)
            {
               if(_loc4_)
               {
                  §§goto(addr66);
               }
               else
               {
                  while(true)
                  {
                     §§goto(addr34);
                  }
               }
            }
            addr34:
            while(true)
            {
               delete §;",§[param1][param2];
               if(_loc4_ || _loc3_)
               {
                  break;
               }
               continue loop0;
            }
            return;
         }
         addr66:
      }
      
      public static function get §7+§() : Boolean
      {
         return §+B§;
      }
      
      public static function set §7+§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §+B§ = param1;
            while(true)
            {
               if(§+B§)
               {
                  addr24:
                  break;
                  addr86:
               }
               §4+§.removeEventListener(Event.ENTER_FRAME,§?"d§);
               if(_loc3_ && param1)
               {
                  return;
               }
               if(_loc3_ && _loc3_)
               {
                  break;
               }
               if(_loc3_ && _loc2_)
               {
                  continue;
               }
               §§goto(addr24);
            }
         }
         §4+§.addEventListener(Event.ENTER_FRAME,§?"d§);
         §§goto(addr86);
      }
      
      public function §#!"§(param1:§,A§, param2:* = null, param3:Object = null, param4:Number = -1) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§+;§;
         (_loc5_ = new §+;§()).message = param1;
         if(!_loc6_)
         {
            _loc5_.§#!0§ = param3;
            while(true)
            {
               _loc5_.§%L§ = param4;
               while(!(_loc6_ && this))
               {
                  _loc5_.data = param2;
                  loop2:
                  while(!(_loc6_ && param2))
                  {
                     §§push(param4 <= 0);
                     loop3:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              addr114:
                              while(true)
                              {
                                 §§push(this.§+B§);
                                 if(_loc7_)
                                 {
                                    if(_loc6_)
                                    {
                                       break;
                                    }
                                    §§push(!§§pop());
                                 }
                                 if(!(_loc7_ || param2))
                                 {
                                    continue loop4;
                                 }
                              }
                              continue loop3;
                           }
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc7_ || param3)
                              {
                                 if(_loc7_)
                                 {
                                    addr103:
                                    this.§"!,§(_loc5_);
                                    break;
                                 }
                                 §§goto(addr114);
                              }
                              break;
                           }
                           addr44:
                           _loc5_.§%L§ += getTimer();
                           addr52:
                           if(_loc7_ || this)
                           {
                              if(_loc7_)
                              {
                                 this.§4!B§.push(_loc5_);
                                 if(!(_loc7_ || param3))
                                 {
                                    §§goto(addr52);
                                 }
                                 return;
                              }
                              break;
                           }
                           if(!_loc7_)
                           {
                              continue loop2;
                           }
                           §§goto(addr44);
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr103);
      }
      
      private function §"!,§(param1:§+;§) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc6_:Dictionary = null;
         var _loc7_:§8"?§ = null;
         var _loc8_:Function = null;
         var _loc2_:§,A§ = param1.message;
         var _loc3_:Object = param1.§#!0§;
         var _loc4_:Object = param1.data;
         var _loc5_:§7",§;
         (_loc5_ = new §7",§()).message = _loc2_;
         if(_loc12_ || _loc3_)
         {
            _loc5_.§@Z§ = param1.§#!0§;
            if(_loc12_)
            {
               _loc5_.data = param1.data;
               if(_loc12_ || _loc2_)
               {
                  if(this.§%#0§[_loc2_] != null)
                  {
                     addr74:
                     _loc6_ = this.§%#0§[_loc2_];
                     for each(_loc7_ in _loc6_)
                     {
                        _loc7_.§4"U§(_loc5_);
                     }
                  }
                  if(this.§;",§[_loc2_] != null)
                  {
                     _loc6_ = this.§;",§[_loc2_];
                     if(_loc12_ || param1)
                     {
                        var _loc9_:int = 0;
                        if(_loc12_)
                        {
                           for each(_loc8_ in _loc6_)
                           {
                              if(!(_loc13_ && this))
                              {
                                 var _loc11_:* = _loc8_.length;
                                 if(!(_loc13_ && param1))
                                 {
                                    §§push(1);
                                    if(_loc12_)
                                    {
                                       if(§§pop() === _loc11_)
                                       {
                                          if(_loc12_)
                                          {
                                             §§push(0);
                                             if(_loc12_)
                                             {
                                                addr193:
                                             }
                                          }
                                          else
                                          {
                                             addr199:
                                             §§push(1);
                                             if(_loc13_)
                                             {
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§push(0);
                                          if(!_loc13_)
                                          {
                                             if(§§pop() === _loc11_)
                                             {
                                                §§goto(addr199);
                                             }
                                             else
                                             {
                                                §§push(2);
                                             }
                                          }
                                       }
                                       switch(§§pop())
                                       {
                                          case 0:
                                             _loc8_(_loc5_);
                                             if(_loc13_ && this)
                                             {
                                                break;
                                             }
                                             addr163:
                                             continue;
                                          case 1:
                                          default:
                                             _loc8_();
                                             if(!_loc13_)
                                             {
                                                break;
                                             }
                                             continue;
                                       }
                                       continue;
                                    }
                                    §§goto(addr193);
                                 }
                                 §§goto(addr199);
                              }
                              §§goto(addr163);
                           }
                        }
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr74);
      }
      
      private function §?"d§(param1:Event = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§+;§ = null;
         if(!(_loc6_ && this))
         {
            if(this.§4!B§.length == 0)
            {
               if(!(_loc6_ && param1))
               {
                  §§goto(addr38);
               }
            }
            var _loc2_:uint = getTimer();
            var _loc3_:* = int(this.§4!B§.length);
            while(true)
            {
               §§push(_loc3_);
               if(!_loc6_)
               {
                  §§push(§§pop());
                  if(_loc5_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc3_ = §§pop();
               }
               if(!§§pop())
               {
                  break;
               }
               if((_loc4_ = this.§4!B§[_loc3_]).§%L§ <= _loc2_)
               {
                  if(!_loc6_)
                  {
                     this.§"!,§(_loc4_);
                     if(_loc6_ && _loc3_)
                     {
                        continue;
                     }
                  }
                  this.§4!B§.splice(_loc3_,1);
               }
            }
            return;
         }
         addr38:
      }
      
      public function §'!c§(param1:§8"?§, param2:§,A§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(this.§%#0§[param2] == null)
            {
               if(_loc4_ || param1)
               {
                  return;
               }
               while(true)
               {
                  §§goto(addr24);
               }
            }
            addr24:
            §§goto(addr44);
         }
         addr44:
         while(true)
         {
            delete this.§%#0§[param2][param1];
            if(!_loc3_)
            {
               break;
            }
            continue loop0;
         }
      }
      
      public function §^#0§(param1:§8"?§, param2:§,A§, ... rest) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param1)
         {
            this.§^!9§(param1,param2);
         }
         for each(param2 in rest)
         {
            if(!_loc6_)
            {
               this.§^!9§(param1,param2);
            }
         }
      }
      
      private function §^!9§(param1:§8"?§, param2:§,A§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Dictionary = null;
         if(!(_loc6_ && param2))
         {
            if(this.§%#0§[param2] != null)
            {
               §§goto(addr42);
            }
            else
            {
               var _loc4_:*;
               this.§%#0§[param2] = _loc4_ = new Dictionary(true);
               _loc3_ = _loc4_;
            }
            §§goto(addr74);
         }
         addr42:
         _loc3_ = this.§%#0§[param2];
         if(!_loc6_)
         {
            addr74:
            _loc3_[param1] = param1;
         }
      }
      
      public function addCallback(param1:§,A§, param2:Function, ... rest) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || this)
         {
            this.§0!z§(param2,param1);
         }
         for each(param1 in rest)
         {
            if(!(_loc7_ && param2))
            {
               this.§0!z§(param2,param1);
            }
         }
      }
      
      private function §0!z§(param1:Function, param2:§,A§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Dictionary = null;
         if(_loc6_ || this)
         {
            if(this.§;",§[param2] != null)
            {
               §§goto(addr43);
            }
            else
            {
               var _loc4_:*;
               this.§;",§[param2] = _loc4_ = new Dictionary(true);
               _loc3_ = _loc4_;
            }
            §§goto(addr75);
         }
         addr43:
         _loc3_ = this.§;",§[param2];
         if(!_loc5_)
         {
            addr75:
            _loc3_[param1] = param1;
         }
      }
      
      public function §&z§(param1:§,A§, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            if(this.§;",§[param1] == null)
            {
               if(!_loc3_)
               {
                  return;
               }
               while(true)
               {
               }
               addr69:
            }
            while(true)
            {
               delete this.§;",§[param1][param2];
               if(_loc4_)
               {
                  break;
               }
               §§goto(addr69);
            }
         }
      }
      
      public function get §7+§() : Boolean
      {
         return this.§+B§;
      }
      
      public function set §7+§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§+B§ = param1;
            do
            {
               if(!this.§+B§)
               {
                  this.§4+§.removeEventListener(Event.ENTER_FRAME,this.§?"d§);
                  if(_loc3_)
                  {
                     continue;
                  }
                  if(_loc2_ || this)
                  {
                     §§goto(addr19);
                  }
               }
               this.§4+§.addEventListener(Event.ENTER_FRAME,this.§?"d§);
            }
            while(_loc3_);
            
         }
         addr19:
      }
   }
}
