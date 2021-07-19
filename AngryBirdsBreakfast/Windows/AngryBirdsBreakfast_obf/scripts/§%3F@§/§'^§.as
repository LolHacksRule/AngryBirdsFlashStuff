package §?@§
{
   import §8!O§.*;
   
   public class §'^§
   {
      
      public static const §&!O§:Function;
      
      public static const §'!I§:Function;
      
      public static const §-9§:Function;
      
      public static const §=!q§:Function;
      
      public static const §>!$§:Function;
      
      public static const §-!T§:Function;
      
      public static const §+!A§:Function;
      
      public static const §"P§:Function;
      
      public static const §8H§:Function;
      
      private static var §-!D§:§'^§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §&!O§ = §+!T§.easeIn;
            while(true)
            {
               §'!I§ = §^P§.easeIn;
               loop1:
               while(true)
               {
                  §-9§ = §^P§.easeOut;
                  addr110:
                  while(true)
                  {
                     §=!q§ = §]!n§.easeOut;
                     continue loop1;
                  }
               }
               if(_loc2_ && _loc1_)
               {
                  continue;
               }
               §"P§ = §`§.easeOut;
               loop7:
               for(; _loc1_; while(true)
               {
                  §8H§ = §`§.easeIn;
                  if(!_loc1_)
                  {
                     continue loop7;
                  }
                  §§goto(addr30);
               },§§goto(addr39))
               {
                  if(!_loc2_)
                  {
                     continue;
                  }
                  §§goto(addr85);
               }
               §§goto(addr55);
            }
         }
         §§goto(addr49);
      }
      
      protected var §9!5§:Vector.<§9!k§>;
      
      protected var §=2§:Boolean;
      
      protected var §5l§:Boolean = true;
      
      public function §'^§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§9!5§ = new Vector.<§9!k§>();
            do
            {
               super();
            }
            while(_loc1_);
            
         }
      }
      
      public static function get §2Z§() : §'^§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(§-!D§);
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     §-!D§ = new §'^§();
                     addr59:
                     §§push(§-!D§);
                  }
               }
               §§goto(addr59);
            }
            return §§pop();
         }
         §§goto(addr59);
      }
      
      public function set §<d§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§5l§ = param1;
         }
      }
      
      public function §2!$§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§9!k§ = null;
         var _loc1_:* = int(this.§9!5§.length - 1);
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§9!5§[_loc1_];
            if(_loc3_)
            {
               if(_loc2_.§`F§)
               {
                  loop5:
                  while(true)
                  {
                     this.§9!5§.splice(_loc1_,1);
                     addr92:
                     loop3:
                     while(true)
                     {
                        addr63:
                        while(true)
                        {
                           _loc2_.dispose();
                           addr66:
                           addr73:
                           while(_loc4_ && _loc2_)
                           {
                              continue loop5;
                           }
                           continue loop3;
                        }
                     }
                  }
                  addr77:
               }
               while(true)
               {
                  §§push(_loc1_);
                  if(_loc3_ || _loc2_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc1_ = §§pop();
                  if(!_loc4_)
                  {
                     if(!_loc4_)
                     {
                        if(true)
                        {
                           break;
                        }
                        §§goto(addr63);
                     }
                     §§goto(addr92);
                  }
                  §§goto(addr66);
                  §§goto(addr73);
               }
               continue;
            }
            §§goto(addr77);
         }
      }
      
      public function §!!f§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Function = null) : §9!k§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            param5 = param5 || §+!T§.easeIn;
            var _loc6_:§<c§;
            (_loc6_ = new §<c§(param1,param2,param3,param4,param5)).§<d§ = this.§5l§;
            if(!(_loc7_ && param2))
            {
               this.§9!5§.push(_loc6_);
            }
            return _loc6_;
         }
         §§goto(addr24);
      }
      
      public function §7!%§(... rest) : §9!k§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:§9!k§ = null;
         var _loc3_:§if§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            if(!_loc8_)
            {
               _loc4_ = this.§9!5§.indexOf(_loc2_);
               if(_loc8_ && _loc2_)
               {
                  continue;
               }
            }
            this.§9!5§.splice(_loc4_,1);
         }
         _loc3_ = new §if§(rest,true);
         if(_loc7_ || rest)
         {
            _loc3_.§<d§ = this.§5l§;
         }
         do
         {
            this.§9!5§.push(_loc3_);
         }
         while(!(_loc7_ || rest));
         
         return _loc3_;
      }
      
      public function §5;§(... rest) : §9!k§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:§9!k§ = null;
         var _loc3_:§if§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            if(_loc8_ || this)
            {
               _loc4_ = this.§9!5§.indexOf(_loc2_);
               if(_loc7_ && this)
               {
                  continue;
               }
            }
            this.§9!5§.splice(_loc4_,1);
         }
         _loc3_ = new §if§(rest,false);
         if(!(_loc7_ && _loc3_))
         {
            _loc3_.§<d§ = this.§5l§;
         }
         do
         {
            this.§9!5§.push(_loc3_);
         }
         while(_loc7_);
         
         return _loc3_;
      }
      
      public function pause() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§=2§ = true;
         }
      }
      
      public function resume() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§=2§ = false;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            if(this.§=2§)
            {
               if(!_loc7_)
               {
                  return;
               }
            }
            if(this.§9!5§.length == 0)
            {
               if(!(_loc7_ && _loc3_))
               {
                  §§goto(addr43);
               }
            }
            var _loc2_:Vector.<§9!k§> = this.§9!5§.concat();
            var _loc3_:§9!k§ = null;
            var _loc4_:int = 0;
            while(true)
            {
               §§push(_loc4_);
               if(_loc7_ && _loc3_)
               {
                  break;
               }
               if(§§pop() >= _loc2_.length)
               {
                  §§push(int(this.§9!5§.length - 1));
                  break;
               }
               _loc3_ = _loc2_[_loc4_];
               if(_loc6_ || this)
               {
                  _loc3_.update(param1);
                  if(!(_loc7_ && this))
                  {
                     _loc4_++;
                  }
               }
            }
            var _loc5_:* = §§pop();
            if(_loc6_)
            {
               while(_loc5_ >= 0)
               {
                  _loc3_ = this.§9!5§[_loc5_];
                  if(_loc6_ || this)
                  {
                     if(_loc3_.isCompleted)
                     {
                        loop2:
                        while(true)
                        {
                           this.§9!5§.splice(_loc5_,1);
                           addr175:
                           loop6:
                           while(true)
                           {
                              addr144:
                              while(true)
                              {
                                 _loc3_.dispose();
                                 addr147:
                                 addr156:
                                 while(true)
                                 {
                                    if(!(_loc7_ && this))
                                    {
                                       if(!_loc7_)
                                       {
                                          break;
                                       }
                                       continue loop2;
                                    }
                                    continue loop6;
                                 }
                                 continue loop6;
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        §§push(_loc5_);
                        if(!(_loc7_ && _loc2_))
                        {
                           §§push(§§pop() - 1);
                        }
                        _loc5_ = §§pop();
                        if(_loc6_ || _loc3_)
                        {
                           if(true)
                           {
                              break;
                           }
                           §§goto(addr144);
                        }
                        §§goto(addr147);
                        §§goto(addr156);
                     }
                     continue;
                  }
                  §§goto(addr175);
               }
            }
            return;
         }
         addr43:
      }
   }
}
