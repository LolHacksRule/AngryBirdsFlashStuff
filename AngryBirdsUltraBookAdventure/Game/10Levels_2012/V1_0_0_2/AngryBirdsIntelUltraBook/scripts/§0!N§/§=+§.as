package §0!N§
{
   import § use§.§'!]§;
   import § use§.§+N§;
   import § use§.§0!D§;
   import §,!5§.§^g§;
   import §2!R§.§#C§;
   import §<!1§.§9B§;
   import §<!1§.§<F§;
   import §?!G§.*;
   import flash.geom.Point;
   
   public class §=+§
   {
      
      public static const §'!M§:String = "BACKGROUND_BLUE_GRASS";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §'!M§ = "BACKGROUND_BLUE_GRASS";
         }
      }
      
      public var §6y§:Number = 0;
      
      public var §8!r§:Number = -8;
      
      private var §>!!§:Vector.<§0!D§> = null;
      
      private var §?$§:Vector.<§'!]§> = null;
      
      private var §4a§:Vector.<§+N§> = null;
      
      private var §3t§:Vector.<§4!=§> = null;
      
      public var §&!O§:Number = 0;
      
      public var §?s§:Boolean = false;
      
      public var §8!l§:int = 0;
      
      public var §>!o§:int = 0;
      
      private var §2!y§:int = 0;
      
      private var §+!m§:String = null;
      
      public var mName:String = null;
      
      public function §=+§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            while(true)
            {
               this.§3t§ = new Vector.<§4!=§>();
               loop1:
               while(true)
               {
                  this.§>!!§ = new Vector.<§0!D§>();
                  while(true)
                  {
                     this.§?$§ = new Vector.<§'!]§>();
                     loop3:
                     while(!(_loc2_ && this))
                     {
                        while(true)
                        {
                           this.§4a§ = new Vector.<§+N§>();
                           while(!_loc2_)
                           {
                              continue loop1;
                              this.§+!m§ = §'!M§;
                              if(_loc1_ || _loc1_)
                              {
                                 return;
                              }
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr88);
      }
      
      public static function §@^§(param1:String) : §=+§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§=+§ = new §=+§();
         if(!(_loc4_ && _loc3_))
         {
            _loc2_.§0!Z§(param1);
         }
         return _loc2_;
      }
      
      public static function §,!R§(param1:§9B§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1.§6K§);
            loop0:
            while(true)
            {
               §§push(§9B§.§#!s§);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              loop5:
                              while(true)
                              {
                                 §§push(param1.§6K§);
                                 loop6:
                                 while(true)
                                 {
                                    if(_loc3_)
                                    {
                                       break;
                                       addr97:
                                    }
                                    §§push(§9B§.§=!%§);
                                    while(!(_loc3_ && §=+§))
                                    {
                                       §§push(§§pop() == §§pop());
                                    }
                                    continue loop1;
                                    addr128:
                                    loop13:
                                    while(true)
                                    {
                                       §§push(param1.§6K§);
                                       if(_loc3_)
                                       {
                                          continue loop6;
                                       }
                                       §§push(§9B§.§4x§);
                                       if(!_loc3_)
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(_loc2_ || _loc3_)
                                          {
                                             addr50:
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                if(!_loc2_)
                                                {
                                                   continue loop4;
                                                }
                                                while(§§pop())
                                                {
                                                   if(!(_loc2_ || _loc3_))
                                                   {
                                                      break;
                                                   }
                                                   if(_loc2_)
                                                   {
                                                      §§push(true);
                                                      while(!(_loc2_ || §=+§))
                                                      {
                                                         continue loop2;
                                                      }
                                                      return §§pop();
                                                      addr81:
                                                   }
                                                   else
                                                   {
                                                      addr126:
                                                   }
                                                   while(!_loc3_)
                                                   {
                                                      continue loop13;
                                                   }
                                                   continue loop5;
                                                }
                                                addr69:
                                                §§push(false);
                                                if(!(_loc3_ && param1))
                                                {
                                                   if(_loc3_)
                                                   {
                                                      addr116:
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         if(!(_loc2_ || _loc3_))
                                                         {
                                                            continue loop3;
                                                         }
                                                         if(!§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               §§goto(addr50);
                                                            }
                                                            addr125:
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr69);
                                                         }
                                                         §§goto(addr126);
                                                         §§goto(addr69);
                                                      }
                                                      §§goto(addr81);
                                                      addr116:
                                                   }
                                                   return §§pop();
                                                }
                                                §§goto(addr81);
                                             }
                                             §§goto(addr125);
                                          }
                                          §§goto(addr81);
                                       }
                                       else
                                       {
                                          §§goto(addr97);
                                       }
                                    }
                                 }
                                 continue loop0;
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr116);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr128);
      }
      
      public static function §"M§(param1:String) : §=+§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§=+§ = §@^§(param1);
         if(!(_loc5_ && _loc3_))
         {
            _loc2_.§6y§ = _loc2_.§?$§[0].x;
            if(!_loc5_)
            {
               _loc2_.§8!r§ = _loc2_.§?$§[0].y - 8.5;
            }
         }
         var _loc3_:* = Number(0);
         while(true)
         {
            §§push(_loc3_);
            if(_loc4_ || param1)
            {
               if(§§pop() >= _loc2_.§>!!§.length)
               {
                  if(_loc4_)
                  {
                     break;
                  }
                  loop1:
                  while(!(_loc4_ || param1))
                  {
                     while(true)
                     {
                        _loc3_ = §§pop();
                        continue loop1;
                     }
                  }
                  continue;
               }
               _loc2_.§>!!§[_loc3_].angle = 360 - _loc2_.§>!!§[_loc3_].angle;
               while(true)
               {
                  §§push(_loc3_);
                  if(_loc4_)
                  {
                     §§push(§§pop() + 1);
                     if(!_loc4_)
                     {
                     }
                     §§goto(addr97);
                  }
               }
            }
            §§goto(addr97);
         }
         return _loc2_;
      }
      
      protected static function §4m§(param1:int, param2:Object) : Vector.<§+N§>
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§+N§ = null;
         var _loc3_:Vector.<§+N§> = new Vector.<§+N§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               if(_loc10_)
               {
                  continue;
               }
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(_loc9_)
               {
                  §§push(_loc5_.type == §+N§.§!p§);
                  if(!(_loc10_ && param1))
                  {
                     if(!§§pop())
                     {
                        if(_loc9_)
                        {
                           §§pop();
                           if(_loc9_ || param2)
                           {
                              addr100:
                              if(_loc5_.type == §+N§.§0!'§)
                              {
                                 addr111:
                                 _loc8_ = new §+N§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                                 if(!(_loc10_ && §=+§))
                                 {
                                    if(_loc5_.type == §+N§.§0!'§)
                                    {
                                       if(_loc9_ || _loc3_)
                                       {
                                          _loc8_.axisX = _loc5_.axisX;
                                          if(!(_loc10_ && §=+§))
                                          {
                                             addr169:
                                             _loc8_.axisY = _loc5_.axisY;
                                             if(!_loc10_)
                                             {
                                                addr190:
                                                if(_loc5_.type == §+N§.§3!!§)
                                                {
                                                   if(_loc10_ && param2)
                                                   {
                                                   }
                                                   addr226:
                                                   _loc4_++;
                                                   continue;
                                                }
                                                addr223:
                                                _loc3_.push(_loc8_);
                                                §§goto(addr226);
                                                addr175:
                                             }
                                          }
                                          _loc8_.§5l§ = _loc5_.destroyTimer;
                                          if(_loc10_ && param1)
                                          {
                                          }
                                          §§goto(addr226);
                                       }
                                       §§goto(addr223);
                                    }
                                    §§goto(addr175);
                                 }
                                 §§goto(addr169);
                              }
                              else
                              {
                                 _loc8_ = new §+N§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
                              }
                              §§goto(addr190);
                           }
                           §§goto(addr111);
                        }
                     }
                  }
               }
               §§goto(addr100);
            }
            §§goto(addr226);
         }
         return _loc3_;
      }
      
      public function get § %§() : int
      {
         return this.§>!!§.length;
      }
      
      public function get §^!"§() : int
      {
         return this.§4a§.length;
      }
      
      public function get §]U§() : int
      {
         return this.§?$§.length;
      }
      
      public function get §-!"§() : int
      {
         return this.§3t§.length;
      }
      
      public function get theme() : String
      {
         return this.§+!m§;
      }
      
      public function set theme(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§+!m§ = param1;
         }
      }
      
      public function getEagleScore() : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§^!v§());
         if(!_loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(_loc3_)
         {
            §§push(_loc1_);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  §§push(§§pop() > §§pop());
                  if(!_loc2_)
                  {
                     if(!§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              while(true)
                              {
                                 §§push(this.§2!y§);
                                 if(!_loc2_)
                                 {
                                    §§push(0);
                                    if(!_loc3_)
                                    {
                                       continue loop2;
                                    }
                                    if(_loc2_ && _loc2_)
                                    {
                                       continue loop1;
                                    }
                                    if(§§pop() == §§pop())
                                    {
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          if(!(_loc2_ && _loc3_))
                                          {
                                             §§push(_loc1_);
                                             break;
                                          }
                                          addr124:
                                          return _loc1_;
                                       }
                                       else if(_loc3_)
                                       {
                                          addr26:
                                          §§push(this.§2!y§);
                                          if(_loc2_ && _loc2_)
                                          {
                                             break;
                                          }
                                          if(_loc3_)
                                          {
                                             return §§pop();
                                          }
                                       }
                                       else
                                       {
                                          if(!_loc2_)
                                          {
                                             continue;
                                          }
                                          addr137:
                                          while(true)
                                          {
                                             §§push(_loc1_);
                                             continue loop0;
                                          }
                                       }
                                       return §§pop();
                                    }
                                    §§goto(addr26);
                                 }
                                 break;
                              }
                              if(!(_loc2_ && this))
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           §§goto(addr124);
                        }
                        return §§pop();
                     }
                  }
                  while(true)
                  {
                     §§pop();
                  }
               }
            }
         }
         §§goto(addr137);
      }
      
      public function § !M§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§^!v§());
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(0);
               addr91:
               while(true)
               {
                  §§push(§§pop() > §§pop());
                  if(!(_loc4_ && this))
                  {
                     if(!§§pop())
                     {
                        while(!§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              this.§2!y§ = param1;
                              if(!(_loc4_ && _loc3_))
                              {
                                 break;
                              }
                              addr88:
                              while(true)
                              {
                                 continue loop3;
                              }
                           }
                           if(!(_loc3_ || this))
                           {
                              break;
                           }
                           if(!(_loc4_ && param1))
                           {
                              return;
                           }
                           continue loop0;
                        }
                        return;
                        addr85:
                     }
                  }
                  addr101:
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr88);
      }
      
      public function §0!Z§(param1:String) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc4_:§4!=§ = null;
         var _loc5_:Object = null;
         var _loc6_:§'!]§ = null;
         var _loc7_:String = null;
         var _loc8_:Object = null;
         var _loc9_:§0!D§ = null;
         var _loc2_:Object = JSON.parse(param1);
         if(!(_loc10_ && this))
         {
            this.§&!O§ = _loc2_.LevelExtension;
            loop0:
            while(true)
            {
               this.§?s§ = false;
               loop1:
               while(true)
               {
                  this.§8!l§ = _loc2_.scoreSilver;
                  loop2:
                  while(true)
                  {
                     this.§>!o§ = _loc2_.scoreGold;
                     loop3:
                     while(true)
                     {
                        this.§2!y§ = _loc2_.scoreEagle;
                        loop4:
                        while(true)
                        {
                           this.§+!m§ = _loc2_.theme;
                           while(true)
                           {
                              this.mName = _loc2_.id;
                              loop6:
                              while(_loc11_)
                              {
                                 if(_loc10_)
                                 {
                                    continue loop0;
                                 }
                                 if(!_loc2_.counts.joints)
                                 {
                                    loop7:
                                    while(true)
                                    {
                                       this.§3t§ = new Vector.<§4!=§>();
                                       loop8:
                                       while(true)
                                       {
                                          loop9:
                                          while(true)
                                          {
                                             this.§?$§ = new Vector.<§'!]§>();
                                             while(true)
                                             {
                                                if(_loc10_)
                                                {
                                                   continue loop8;
                                                }
                                                if(_loc10_)
                                                {
                                                   break loop8;
                                                }
                                                if(!_loc11_)
                                                {
                                                   continue loop6;
                                                }
                                                this.§>!!§ = new Vector.<§0!D§>();
                                                if(_loc10_)
                                                {
                                                   continue;
                                                }
                                                if(!_loc11_)
                                                {
                                                   break;
                                                }
                                                if(_loc10_)
                                                {
                                                   break loop9;
                                                }
                                                if(false)
                                                {
                                                   continue loop9;
                                                }
                                                var _loc3_:* = Number(0);
                                                addr283:
                                                §§push(_loc3_);
                                                if(_loc11_ || param1)
                                                {
                                                   if(§§pop() < _loc2_.camera.length)
                                                   {
                                                      (_loc4_ = new §4!=§()).x = _loc2_.camera[_loc3_].x;
                                                      if(!(_loc10_ && param1))
                                                      {
                                                         _loc4_.y = _loc2_.camera[_loc3_].y;
                                                         _loc4_.left = _loc2_.camera[_loc3_].left;
                                                         _loc4_.right = _loc2_.camera[_loc3_].right;
                                                         _loc4_.top = _loc2_.camera[_loc3_].top;
                                                         addr252:
                                                         addr274:
                                                         addr282:
                                                         if(_loc11_)
                                                         {
                                                            if(!_loc10_)
                                                            {
                                                               _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
                                                               addr236:
                                                               if(!(_loc10_ && this))
                                                               {
                                                                  _loc4_.id = _loc2_.camera[_loc3_].id;
                                                                  addr225:
                                                                  if(!_loc10_)
                                                                  {
                                                                     addr209:
                                                                     this.§3t§.push(_loc4_);
                                                                     if(!_loc10_)
                                                                     {
                                                                        §§push(_loc3_);
                                                                        if(!(_loc10_ && _loc2_))
                                                                        {
                                                                           §§push(§§pop() + 1);
                                                                           if(_loc11_ || param1)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                        }
                                                                        _loc3_ = §§pop();
                                                                        if(!(_loc10_ && this))
                                                                        {
                                                                           if(_loc11_)
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 §§goto(addr209);
                                                                              }
                                                                              §§goto(addr283);
                                                                           }
                                                                           §§goto(addr252);
                                                                        }
                                                                        §§goto(addr209);
                                                                        addr216:
                                                                     }
                                                                     §§goto(addr225);
                                                                  }
                                                                  §§goto(addr236);
                                                               }
                                                               §§goto(addr274);
                                                            }
                                                            §§goto(addr282);
                                                         }
                                                         addr265:
                                                         §§goto(addr265);
                                                      }
                                                      §§goto(addr216);
                                                   }
                                                   if(_loc11_)
                                                   {
                                                      §§push(1);
                                                      if(!(_loc10_ && param1))
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(_loc11_)
                                                         {
                                                            _loc3_ = §§pop();
                                                            if(_loc11_ || _loc2_)
                                                            {
                                                               addr386:
                                                               §§push(_loc3_);
                                                               if(_loc11_)
                                                               {
                                                                  if(§§pop() <= _loc2_.counts.birds)
                                                                  {
                                                                     _loc5_ = _loc2_.world["bird_" + _loc3_];
                                                                     (_loc6_ = new §'!]§()).x = _loc5_.x;
                                                                     if(_loc11_)
                                                                     {
                                                                        _loc6_.y = _loc5_.y;
                                                                        _loc6_.id = _loc5_.id;
                                                                        addr385:
                                                                     }
                                                                     addr367:
                                                                     this.§?$§.push(_loc6_);
                                                                     addr380:
                                                                     if(_loc11_)
                                                                     {
                                                                        §§push(_loc3_);
                                                                        if(!_loc10_)
                                                                        {
                                                                           §§push(§§pop() + 1);
                                                                           if(_loc11_)
                                                                           {
                                                                              addr354:
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           _loc3_ = §§pop();
                                                                           if(!_loc10_)
                                                                           {
                                                                              if(_loc11_ || _loc2_)
                                                                              {
                                                                                 if(false)
                                                                                 {
                                                                                    §§goto(addr367);
                                                                                 }
                                                                                 §§goto(addr386);
                                                                              }
                                                                              §§goto(addr380);
                                                                           }
                                                                           §§goto(addr367);
                                                                        }
                                                                        §§goto(addr354);
                                                                     }
                                                                     §§goto(addr385);
                                                                  }
                                                                  if(_loc11_ || this)
                                                                  {
                                                                     addr401:
                                                                     §§push(Number(1));
                                                                     if(!_loc10_)
                                                                     {
                                                                        addr404:
                                                                        _loc3_ = §§pop();
                                                                        §§goto(addr593);
                                                                     }
                                                                     if(§§pop() <= _loc2_.counts.blocks)
                                                                     {
                                                                        §§push("block_");
                                                                        if(_loc11_ || _loc3_)
                                                                        {
                                                                           §§push(§§pop() + _loc3_);
                                                                        }
                                                                        _loc7_ = §§pop();
                                                                        if(!_loc10_)
                                                                        {
                                                                           _loc8_ = _loc2_.world[_loc7_];
                                                                           (_loc9_ = new §0!D§()).x = _loc8_.x;
                                                                           if(!_loc10_)
                                                                           {
                                                                              _loc9_.y = _loc8_.y;
                                                                              _loc9_.id = _loc8_.id;
                                                                              addr569:
                                                                              addr554:
                                                                              §§push(Boolean(_loc8_.uniqueID));
                                                                              if(_loc11_)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    addr547:
                                                                                    §§pop();
                                                                                    §§push(_loc8_.uniqueID.length > 0);
                                                                                    if(_loc10_ && this)
                                                                                    {
                                                                                    }
                                                                                    §§goto(addr547);
                                                                                    addr548:
                                                                                 }
                                                                                 if(§§pop())
                                                                                 {
                                                                                    addr534:
                                                                                    _loc9_.uniqueID = _loc8_.uniqueID;
                                                                                    addr538:
                                                                                    if(_loc8_.front)
                                                                                    {
                                                                                       addr503:
                                                                                       _loc9_.front = _loc8_.front;
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          addr491:
                                                                                          _loc9_.angle = _loc8_.angle;
                                                                                          addr496:
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             addr472:
                                                                                             this.§>!!§.push(_loc9_);
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   if(_loc11_ || _loc3_)
                                                                                                   {
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         §§push(_loc3_);
                                                                                                         if(!(_loc10_ && param1))
                                                                                                         {
                                                                                                            §§push(§§pop() + 1);
                                                                                                            if(!_loc10_)
                                                                                                            {
                                                                                                               addr452:
                                                                                                               §§push(Number(§§pop()));
                                                                                                            }
                                                                                                            _loc3_ = §§pop();
                                                                                                            if(_loc11_)
                                                                                                            {
                                                                                                               if(_loc11_ || _loc2_)
                                                                                                               {
                                                                                                                  if(!(_loc10_ && _loc2_))
                                                                                                                  {
                                                                                                                     if(false)
                                                                                                                     {
                                                                                                                        §§goto(addr472);
                                                                                                                     }
                                                                                                                     §§goto(addr570);
                                                                                                                  }
                                                                                                                  §§goto(addr503);
                                                                                                               }
                                                                                                               §§goto(addr496);
                                                                                                            }
                                                                                                            §§goto(addr472);
                                                                                                         }
                                                                                                         §§goto(addr452);
                                                                                                      }
                                                                                                      §§goto(addr569);
                                                                                                   }
                                                                                                   §§goto(addr548);
                                                                                                }
                                                                                                §§goto(addr534);
                                                                                             }
                                                                                             §§goto(addr503);
                                                                                          }
                                                                                          §§goto(addr538);
                                                                                       }
                                                                                       addr516:
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          §§goto(addr534);
                                                                                       }
                                                                                       §§goto(addr554);
                                                                                    }
                                                                                    §§goto(addr491);
                                                                                 }
                                                                                 _loc9_.uniqueID = _loc7_;
                                                                                 §§goto(addr516);
                                                                              }
                                                                              §§goto(addr547);
                                                                           }
                                                                           §§goto(addr503);
                                                                        }
                                                                        §§goto(addr593);
                                                                     }
                                                                     if(_loc11_ || _loc2_)
                                                                     {
                                                                        this.§6y§ = _loc2_.slingshotX;
                                                                        if(!(_loc10_ && _loc3_))
                                                                        {
                                                                           §§goto(addr593);
                                                                        }
                                                                     }
                                                                  }
                                                                  addr593:
                                                                  if(_loc11_)
                                                                  {
                                                                     addr570:
                                                                     §§push(_loc3_);
                                                                     addr407:
                                                                  }
                                                                  this.§8!r§ = _loc2_.slingshotY;
                                                                  return;
                                                               }
                                                               §§goto(addr404);
                                                            }
                                                            §§goto(addr407);
                                                         }
                                                         §§goto(addr404);
                                                      }
                                                      §§goto(addr401);
                                                   }
                                                }
                                                §§goto(addr404);
                                             }
                                             addr99:
                                             while(true)
                                             {
                                                if(!_loc11_)
                                                {
                                                   break loop7;
                                                }
                                                if(!_loc10_)
                                                {
                                                   continue loop1;
                                                }
                                                continue loop2;
                                             }
                                          }
                                          continue loop4;
                                       }
                                       addr110:
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§4a§ = §4m§(_loc2_.counts.joints,_loc2_.world);
            §§goto(addr99);
         }
      }
      
      public function §&!6§() : Object
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Object = new Object();
         if(_loc4_ || _loc1_)
         {
            _loc1_.LevelExtension = this.§&!O§;
            while(true)
            {
               _loc1_.scoreSilver = this.§8!l§;
               loop1:
               while(_loc4_ || _loc3_)
               {
                  while(true)
                  {
                     _loc1_.scoreGold = this.§>!o§;
                     loop3:
                     while(true)
                     {
                        _loc1_.scoreEagle = this.§2!y§;
                        while(!_loc3_)
                        {
                           _loc1_.theme = this.§+!m§;
                           continue loop3;
                           loop7:
                           while(!(_loc3_ && _loc1_))
                           {
                              _loc1_.camera = this.§3t§;
                              if(!(_loc4_ || _loc2_))
                              {
                                 continue;
                              }
                              addr41:
                              if(!_loc4_)
                              {
                                 continue loop3;
                              }
                              if(false)
                              {
                                 while(true)
                                 {
                                    _loc1_.name = this.mName;
                                    continue loop7;
                                    §§goto(addr41);
                                 }
                                 continue loop3;
                                 addr45:
                              }
                              var _loc2_:* = Number(0);
                              if(!_loc3_)
                              {
                                 _loc1_.world = new Object();
                              }
                              _loc2_ = Number(0);
                              addr418:
                              if(!_loc4_)
                              {
                                 §§goto(addr418);
                              }
                              addr358:
                              §§push(_loc2_);
                              if(!(_loc3_ && _loc1_))
                              {
                                 if(§§pop() >= this.§?$§.length)
                                 {
                                    addr373:
                                    _loc2_ = Number(0);
                                    addr374:
                                    addr371:
                                    addr372:
                                    if(_loc2_ >= this.§>!!§.length)
                                    {
                                       addr303:
                                       §§push(0);
                                       if(_loc4_ || _loc3_)
                                       {
                                          addr312:
                                          §§push(Number(§§pop()));
                                          if(_loc4_)
                                          {
                                             _loc2_ = §§pop();
                                             addr315:
                                             §§push(_loc2_);
                                             if(_loc4_ || _loc2_)
                                             {
                                                if(§§pop() >= this.§4a§.length)
                                                {
                                                   addr214:
                                                   if(_loc4_)
                                                   {
                                                      if(_loc4_ || this)
                                                      {
                                                         _loc1_.counts = new Object();
                                                         _loc1_.counts.blocks = this.§>!!§.length;
                                                         _loc1_.counts.birds = this.§?$§.length;
                                                         addr180:
                                                         addr227:
                                                         if(!_loc3_)
                                                         {
                                                            _loc1_.counts.joints = this.§4a§.length;
                                                            addr156:
                                                            if(!(_loc3_ && this))
                                                            {
                                                               if(_loc4_ || _loc2_)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     _loc1_.slingshotX = this.§6y§;
                                                                     addr139:
                                                                     if(_loc4_)
                                                                     {
                                                                        if(!(_loc3_ && this))
                                                                        {
                                                                           _loc1_.slingshotY = this.§8!r§;
                                                                           if(_loc4_ || _loc2_)
                                                                           {
                                                                              if(_loc3_ && _loc2_)
                                                                              {
                                                                                 §§goto(addr180);
                                                                              }
                                                                              return _loc1_;
                                                                           }
                                                                           §§goto(addr139);
                                                                        }
                                                                        §§goto(addr374);
                                                                     }
                                                                     §§goto(addr156);
                                                                  }
                                                                  addr390:
                                                                  §§goto(addr358);
                                                               }
                                                               §§goto(addr214);
                                                            }
                                                            §§goto(addr227);
                                                         }
                                                         addr190:
                                                         §§goto(addr190);
                                                      }
                                                      §§goto(addr315);
                                                   }
                                                   addr267:
                                                   if(_loc4_)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         if(_loc4_ || _loc1_)
                                                         {
                                                            §§goto(addr315);
                                                         }
                                                         addr337:
                                                         if(!_loc3_)
                                                         {
                                                            §§goto(addr374);
                                                         }
                                                         _loc2_++;
                                                         §§goto(addr390);
                                                         addr406:
                                                      }
                                                      §§goto(addr303);
                                                   }
                                                   if(_loc4_)
                                                   {
                                                      §§push(_loc2_);
                                                      if(!(_loc3_ && _loc2_))
                                                      {
                                                         if(_loc4_ || _loc2_)
                                                         {
                                                            §§push(§§pop() + 1);
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               addr252:
                                                               if(!(_loc3_ && _loc2_))
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        addr264:
                                                                        §§push(Number(§§pop()));
                                                                        if(_loc4_)
                                                                        {
                                                                           _loc2_ = §§pop();
                                                                           §§goto(addr267);
                                                                        }
                                                                        §§goto(addr358);
                                                                     }
                                                                     addr319:
                                                                     if(_loc4_ || this)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           addr329:
                                                                           §§push(Number(§§pop()));
                                                                           if(!(_loc3_ && _loc1_))
                                                                           {
                                                                              _loc2_ = §§pop();
                                                                           }
                                                                        }
                                                                        §§goto(addr337);
                                                                     }
                                                                     §§goto(addr373);
                                                                  }
                                                                  §§goto(addr329);
                                                               }
                                                               §§goto(addr312);
                                                            }
                                                            §§goto(addr264);
                                                         }
                                                         §§goto(addr373);
                                                      }
                                                      §§goto(addr252);
                                                   }
                                                   addr355:
                                                   if(_loc4_)
                                                   {
                                                      addr318:
                                                      §§goto(addr319);
                                                      §§push(_loc2_ + 1);
                                                   }
                                                   §§goto(addr371);
                                                }
                                                _loc1_.world["joint_" + (_loc2_ + 1)] = this.§4a§[_loc2_];
                                                §§goto(addr267);
                                             }
                                             §§goto(addr264);
                                          }
                                          §§goto(addr318);
                                       }
                                       §§goto(addr372);
                                    }
                                    _loc1_.world["block_" + (_loc2_ + 1)] = this.§>!!§[_loc2_];
                                    §§goto(addr355);
                                 }
                                 _loc1_.world["bird_" + (_loc2_ + 1)] = this.§?$§[_loc2_];
                                 §§goto(addr406);
                              }
                              §§goto(addr337);
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr97);
      }
      
      public function §>>§() : String
      {
         return JSON.stringify(this.§&!6§());
      }
      
      public function §^!v§() : int
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:§0!D§ = null;
         var _loc3_:* = null;
         var _loc4_:§9B§ = null;
         var _loc1_:* = 0;
         for each(_loc2_ in this.§>!!§)
         {
            if(_loc7_)
            {
               §§push(_loc2_.id);
               if(!(_loc8_ && _loc2_))
               {
                  §§push(§§pop());
               }
               _loc3_ = §§pop();
            }
            §§push((_loc4_ = §<F§.§1]§(_loc3_)) == null);
            if(!_loc8_)
            {
               if(§§pop())
               {
                  if(_loc7_ || this)
                  {
                     §§pop();
                     if(!_loc8_)
                     {
                        §§push(_loc3_);
                        if(_loc7_ || this)
                        {
                           §§push(§§pop().indexOf("MISC_") == 0);
                           if(!_loc8_)
                           {
                              addr99:
                              if(§§pop())
                              {
                                 if(!(_loc8_ && _loc2_))
                                 {
                                    addr115:
                                    §§push("MISC_FOOD_");
                                    if(_loc7_)
                                    {
                                       §§push(§§pop() + _loc3_.substring(5));
                                    }
                                    _loc3_ = §§pop();
                                    if(!(_loc8_ && this))
                                    {
                                       _loc4_ = §<F§.§1]§(_loc3_);
                                       addr128:
                                       if(!_loc4_)
                                       {
                                          continue;
                                       }
                                       if(_loc7_ || this)
                                       {
                                          addr137:
                                          §§push(_loc1_);
                                          if(!_loc8_)
                                          {
                                             §§push(§§pop() + _loc4_.score);
                                             if(!(_loc8_ && _loc1_))
                                             {
                                                §§push(int(§§pop()));
                                                if(_loc7_)
                                                {
                                                   addr153:
                                                   _loc1_ = §§pop();
                                                   if(!_loc8_)
                                                   {
                                                      addr159:
                                                      if(§,!R§(_loc4_))
                                                      {
                                                         if(_loc7_ || this)
                                                         {
                                                            addr167:
                                                            §§push(_loc1_);
                                                            if(!(_loc8_ && _loc2_))
                                                            {
                                                               addr185:
                                                               §§push(_loc4_.§-!!§);
                                                               if(_loc7_ || this)
                                                               {
                                                                  §§push(§§pop() * §^g§.§>p§.getValue());
                                                               }
                                                               §§push(int(§§pop() + §§pop()));
                                                            }
                                                            _loc1_ = §§pop();
                                                         }
                                                      }
                                                      continue;
                                                   }
                                                   §§goto(addr167);
                                                }
                                             }
                                             §§goto(addr185);
                                          }
                                          §§goto(addr153);
                                       }
                                    }
                                    §§goto(addr167);
                                 }
                                 §§goto(addr137);
                              }
                              §§goto(addr128);
                           }
                           §§goto(addr159);
                        }
                     }
                     §§goto(addr115);
                  }
                  §§goto(addr159);
               }
            }
            §§goto(addr99);
         }
         return _loc1_;
      }
      
      public function §`F§() : XML
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§4!=§ = null;
         var _loc3_:* = 0;
         var _loc1_:* = "";
         if(!_loc7_)
         {
            §§push(_loc1_);
            loop0:
            while(true)
            {
               §§push("<Level background=\"ThemeHills\"");
               loop1:
               while(true)
               {
                  §§push(§§pop() + §§pop());
                  loop2:
                  while(true)
                  {
                     _loc1_ = §§pop();
                     loop3:
                     while(true)
                     {
                        §§push(_loc1_);
                        while(_loc6_)
                        {
                           §§push(" LevelExtension=\"");
                           while(true)
                           {
                              §§push(§§pop() + this.§&!O§);
                              addr281:
                              while(true)
                              {
                                 §§push("\"");
                                 addr282:
                                 while(true)
                                 {
                                    §§push(§§pop() + §§pop());
                                    addr283:
                                    while(true)
                                    {
                                       §§push(§§pop() + §§pop());
                                       addr284:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          addr285:
                                          while(true)
                                          {
                                             _loc1_ = §§pop();
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           loop33:
                           while(!(_loc7_ && _loc3_))
                           {
                              _loc1_ = §§pop();
                              loop34:
                              while(!_loc7_)
                              {
                                 loop35:
                                 while(true)
                                 {
                                    §§push(_loc1_);
                                    loop36:
                                    while(true)
                                    {
                                       if(!_loc6_)
                                       {
                                          continue loop33;
                                       }
                                       if(!_loc7_)
                                       {
                                          addr108:
                                          if(!(_loc7_ && _loc3_))
                                          {
                                             addr115:
                                             if(!(_loc7_ && _loc3_))
                                             {
                                                §§push(">");
                                                loop37:
                                                for(; !(_loc7_ && _loc2_); §§push("<Cameras>"),if(!(_loc6_ || _loc3_))
                                                {
                                                   continue;
                                                },if(!_loc7_)
                                                {
                                                   addr47:
                                                   if(_loc6_ || _loc3_)
                                                   {
                                                      if(_loc6_ || this)
                                                      {
                                                         §§goto(addr61);
                                                      }
                                                      §§goto(addr251);
                                                   }
                                                   loop29:
                                                   while(true)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         §§push(this.§>!o§);
                                                         if(_loc6_ || _loc3_)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            break loop37;
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            break loop29;
                                                         }
                                                         addr204:
                                                      }
                                                      break;
                                                      §§goto(addr47);
                                                   }
                                                   while(_loc6_)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         if(_loc6_ || _loc1_)
                                                         {
                                                            §§push("\"");
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               addr218:
                                                               addr154:
                                                               while(true)
                                                               {
                                                                  §§goto(addr219);
                                                               }
                                                               §§push("\"");
                                                               if(_loc7_ && _loc1_)
                                                               {
                                                                  continue;
                                                               }
                                                               if(_loc6_)
                                                               {
                                                                  if(_loc6_ || this)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     while(_loc6_ || _loc2_)
                                                                     {
                                                                        if(!(_loc7_ && _loc2_))
                                                                        {
                                                                           §§goto(addr187);
                                                                           §§push(§§pop() + §§pop());
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr281);
                                                                        }
                                                                     }
                                                                     §§goto(addr218);
                                                                     addr172:
                                                                  }
                                                                  §§goto(addr282);
                                                               }
                                                               §§goto(addr254);
                                                            }
                                                         }
                                                         §§goto(addr283);
                                                      }
                                                      §§goto(addr248);
                                                   }
                                                   §§goto(addr255);
                                                   addr140:
                                                },§§goto(addr172))
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   while(true)
                                                   {
                                                      _loc1_ = §§pop();
                                                      addr132:
                                                      loop39:
                                                      while(true)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            §§push(_loc1_);
                                                            if(_loc6_ || _loc2_)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  break;
                                                               }
                                                               continue loop37;
                                                            }
                                                            continue loop36;
                                                         }
                                                         addr265:
                                                         addr286:
                                                         while(!(_loc7_ && _loc2_))
                                                         {
                                                            §§push(_loc1_);
                                                            break loop36;
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(_loc1_);
                                                            if(_loc6_ || _loc2_)
                                                            {
                                                               §§push(" AutoCamera=\"");
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() + this.§?s§);
                                                                  addr251:
                                                                  while(!_loc7_)
                                                                  {
                                                                     §§push("\"");
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        addr255:
                                                                        while(!(_loc7_ && this))
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           loop16:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              break loop39;
                                                                              addr219:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc7_ && _loc3_))
                                                                                 {
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       if(!(_loc6_ || this))
                                                                                       {
                                                                                          continue loop2;
                                                                                       }
                                                                                       §§push(§§pop());
                                                                                       while(true)
                                                                                       {
                                                                                          _loc1_ = §§pop();
                                                                                          break loop34;
                                                                                          §§goto(addr108);
                                                                                       }
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 continue loop16;
                                                                              }
                                                                              §§goto(addr284);
                                                                           }
                                                                        }
                                                                        continue loop1;
                                                                     }
                                                                  }
                                                                  §§goto(addr278);
                                                               }
                                                               addr248:
                                                            }
                                                            break loop39;
                                                         }
                                                      }
                                                      addr61:
                                                      while(true)
                                                      {
                                                         _loc1_ = §§pop();
                                                         §§goto(addr265);
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      if(!(_loc6_ || _loc3_))
                                                      {
                                                         continue;
                                                      }
                                                      addr69:
                                                      if(_loc6_ || _loc3_)
                                                      {
                                                         if(!(_loc7_ && _loc1_))
                                                         {
                                                            _loc1_ = §§pop();
                                                            if(!(_loc7_ && this))
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  continue loop34;
                                                               }
                                                               if(_loc7_ && _loc1_)
                                                               {
                                                                  continue loop3;
                                                               }
                                                               if(false)
                                                               {
                                                                  continue loop35;
                                                               }
                                                               var _loc4_:int = 0;
                                                               var _loc5_:* = this.§3t§;
                                                               addr423:
                                                               for each(_loc2_ in _loc5_)
                                                               {
                                                                  if(!(_loc7_ && _loc2_))
                                                                  {
                                                                     §§push(_loc1_);
                                                                     if(_loc6_ || _loc2_)
                                                                     {
                                                                        §§push(" <Camera id=\"");
                                                                        if(!_loc7_)
                                                                        {
                                                                           §§push(§§pop() + _loc2_.id);
                                                                           if(_loc6_ || _loc3_)
                                                                           {
                                                                              §§push("\" leftBorder=\"");
                                                                              if(!(_loc7_ && _loc2_))
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    addr344:
                                                                                    §§push(_loc2_.left);
                                                                                    if(_loc6_ || _loc3_)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          §§push("\" rightBorder=\"");
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                §§push(_loc2_.right);
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   addr366:
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(!_loc7_)
                                                                                                   {
                                                                                                      §§push("\" topBorder=\"");
                                                                                                      if(!(_loc7_ && this))
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(!(_loc7_ && _loc2_))
                                                                                                         {
                                                                                                            §§push(_loc2_.top);
                                                                                                            if(!_loc7_)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  addr392:
                                                                                                                  §§push("\" bottomBorder=\"");
                                                                                                                  if(_loc6_ || _loc3_)
                                                                                                                  {
                                                                                                                     addr420:
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        addr403:
                                                                                                                        §§push(_loc2_.top);
                                                                                                                        if(_loc6_ || _loc3_)
                                                                                                                        {
                                                                                                                           addr412:
                                                                                                                           §§push(§§pop() + §#C§.§&R§);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     _loc1_ = §§pop() + §§pop();
                                                                                                                     §§goto(addr423);
                                                                                                                  }
                                                                                                                  addr419:
                                                                                                                  §§goto(addr420);
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                               }
                                                                                                               §§goto(addr403);
                                                                                                            }
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(!_loc7_)
                                                                                                            {
                                                                                                               addr418:
                                                                                                               §§goto(addr419);
                                                                                                               §§push("\"></Camera>");
                                                                                                            }
                                                                                                            §§goto(addr420);
                                                                                                         }
                                                                                                         §§goto(addr392);
                                                                                                      }
                                                                                                      §§goto(addr420);
                                                                                                   }
                                                                                                   §§goto(addr403);
                                                                                                }
                                                                                                §§goto(addr412);
                                                                                             }
                                                                                             §§goto(addr418);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr392);
                                                                                    }
                                                                                    §§goto(addr366);
                                                                                 }
                                                                                 §§goto(addr420);
                                                                              }
                                                                              §§goto(addr392);
                                                                           }
                                                                           §§goto(addr344);
                                                                        }
                                                                        §§goto(addr392);
                                                                     }
                                                                     §§goto(addr420);
                                                                  }
                                                                  §§goto(addr423);
                                                               }
                                                               if(_loc6_)
                                                               {
                                                                  addr889:
                                                                  _loc1_ += "</Cameras>";
                                                                  addr847:
                                                                  addr863:
                                                                  addr846:
                                                                  addr882:
                                                                  addr881:
                                                                  addr884:
                                                                  addr883:
                                                                  §§push(_loc1_);
                                                                  §§push("<Slingshot x=\"" + this.§?$§[0].x);
                                                                  §§push("\" y=\"");
                                                                  if(_loc6_ || _loc2_)
                                                                  {
                                                                     addr880:
                                                                     §§push(§§pop() + §§pop() + (this.§?$§[0].y - 8));
                                                                     §§push("\">");
                                                                  }
                                                                  _loc1_ = §§pop() + (§§pop() + §§pop());
                                                                  addr842:
                                                                  _loc1_ += " <Birds>";
                                                                  addr836:
                                                                  _loc3_ = 0;
                                                                  addr885:
                                                                  addr843:
                                                                  addr840:
                                                                  addr888:
                                                                  addr890:
                                                                  addr887:
                                                                  addr841:
                                                                  addr837:
                                                                  if(_loc3_ >= this.§?$§.length)
                                                                  {
                                                                     addr751:
                                                                     §§push(_loc1_);
                                                                     if(!_loc7_)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           addr758:
                                                                           §§push(§§pop() + " </Birds>");
                                                                           if(!_loc7_)
                                                                           {
                                                                              if(!(_loc7_ && _loc2_))
                                                                              {
                                                                                 _loc1_ = §§pop();
                                                                                 addr732:
                                                                                 addr768:
                                                                                 §§push(_loc1_);
                                                                                 §§push("</Slingshot>");
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    addr736:
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc6_ || _loc1_)
                                                                                    {
                                                                                       _loc1_ = §§pop();
                                                                                       addr744:
                                                                                       §§push(0);
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          if(_loc6_ || this)
                                                                                          {
                                                                                             _loc3_ = §§pop();
                                                                                             addr722:
                                                                                             if(!(_loc7_ && _loc2_))
                                                                                             {
                                                                                                addr447:
                                                                                                §§push(_loc3_);
                                                                                                if(!(_loc7_ && this))
                                                                                                {
                                                                                                   if(§§pop() >= this.§>!!§.length)
                                                                                                   {
                                                                                                      if(!_loc7_)
                                                                                                      {
                                                                                                         if(!(_loc7_ && _loc1_))
                                                                                                         {
                                                                                                            if(!_loc7_)
                                                                                                            {
                                                                                                               if(_loc6_ || _loc2_)
                                                                                                               {
                                                                                                                  if(!(_loc7_ && _loc2_))
                                                                                                                  {
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        §§push(_loc1_);
                                                                                                                        if(!_loc7_)
                                                                                                                        {
                                                                                                                           if(_loc6_ || this)
                                                                                                                           {
                                                                                                                              if(!_loc7_)
                                                                                                                              {
                                                                                                                                 §§push("</Level>");
                                                                                                                                 if(!(_loc7_ && this))
                                                                                                                                 {
                                                                                                                                    if(_loc6_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       if(_loc6_)
                                                                                                                                       {
                                                                                                                                          if(_loc6_)
                                                                                                                                          {
                                                                                                                                             if(!_loc7_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                if(_loc6_ || this)
                                                                                                                                                {
                                                                                                                                                   if(_loc6_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc7_)
                                                                                                                                                      {
                                                                                                                                                         _loc1_ = §§pop();
                                                                                                                                                         §§goto(addr533);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr842);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr736);
                                                                                                                                                }
                                                                                                                                                addr687:
                                                                                                                                                if(_loc6_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   addr695:
                                                                                                                                                   §§push(§§pop());
                                                                                                                                                   if(!_loc7_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc6_ || _loc1_)
                                                                                                                                                      {
                                                                                                                                                         _loc1_ = §§pop();
                                                                                                                                                         addr705:
                                                                                                                                                         if(_loc6_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc6_)
                                                                                                                                                            {
                                                                                                                                                               _loc3_++;
                                                                                                                                                               §§goto(addr538);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr843);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr751);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr840);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr732);
                                                                                                                                                }
                                                                                                                                                §§goto(addr758);
                                                                                                                                             }
                                                                                                                                             §§goto(addr880);
                                                                                                                                          }
                                                                                                                                          §§goto(addr732);
                                                                                                                                       }
                                                                                                                                       addr604:
                                                                                                                                       §§push("\" y=\"");
                                                                                                                                       if(!_loc7_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(!(_loc7_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + this.§>!!§[_loc3_].y);
                                                                                                                                             if(!(_loc7_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                addr628:
                                                                                                                                                if(_loc6_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   §§push("\" rotation=\"");
                                                                                                                                                   if(!(_loc7_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      if(_loc6_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         if(_loc6_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc6_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               addr666:
                                                                                                                                                               §§push(§§pop() + this.§>!!§[_loc3_].angle);
                                                                                                                                                               if(!_loc7_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc6_)
                                                                                                                                                                  {
                                                                                                                                                                     addr671:
                                                                                                                                                                     §§push("\" ></Item>");
                                                                                                                                                                     if(!(_loc7_ && _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        addr679:
                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                        if(!(_loc7_ && _loc1_))
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr687);
                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr888);
                                                                                                                                                                     }
                                                                                                                                                                     addr795:
                                                                                                                                                                     §§push(§§pop() + §§pop() + this.§?$§[_loc3_].x);
                                                                                                                                                                     if(_loc6_ || _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        addr811:
                                                                                                                                                                        §§push(§§pop() + "\" y=\"" + this.§?$§[_loc3_].y + "\"></Bird>");
                                                                                                                                                                     }
                                                                                                                                                                     if(!(_loc7_ && _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        addr827:
                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                        if(_loc6_)
                                                                                                                                                                        {
                                                                                                                                                                           _loc1_ = §§pop();
                                                                                                                                                                           addr831:
                                                                                                                                                                           if(!_loc7_)
                                                                                                                                                                           {
                                                                                                                                                                              _loc3_++;
                                                                                                                                                                              §§goto(addr538);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr890);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr887);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr847);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr863);
                                                                                                                                                               }
                                                                                                                                                               if(_loc6_ || this)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc7_)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr795);
                                                                                                                                                                     §§push("\" x=\"");
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr880);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr841);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr811);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr679);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr811);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr671);
                                                                                                                                                }
                                                                                                                                                §§goto(addr758);
                                                                                                                                             }
                                                                                                                                             §§goto(addr666);
                                                                                                                                          }
                                                                                                                                          §§goto(addr679);
                                                                                                                                       }
                                                                                                                                       §§goto(addr671);
                                                                                                                                    }
                                                                                                                                    §§goto(addr666);
                                                                                                                                 }
                                                                                                                                 §§goto(addr679);
                                                                                                                              }
                                                                                                                              §§goto(addr846);
                                                                                                                           }
                                                                                                                           §§goto(addr751);
                                                                                                                        }
                                                                                                                        §§goto(addr695);
                                                                                                                     }
                                                                                                                     §§goto(addr837);
                                                                                                                  }
                                                                                                                  §§goto(addr768);
                                                                                                               }
                                                                                                               §§goto(addr744);
                                                                                                            }
                                                                                                            §§goto(addr722);
                                                                                                         }
                                                                                                         §§goto(addr705);
                                                                                                      }
                                                                                                      addr533:
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         addr538:
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            if(!_loc7_)
                                                                                                            {
                                                                                                               §§goto(addr447);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr885);
                                                                                                      }
                                                                                                      return new XML(_loc1_);
                                                                                                   }
                                                                                                   §§push(_loc1_);
                                                                                                   if(_loc6_ || _loc2_)
                                                                                                   {
                                                                                                      if(!(_loc7_ && this))
                                                                                                      {
                                                                                                         §§push("<Item id=\"");
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            §§push(§§pop() + this.§>!!§[_loc3_].id);
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               if(_loc6_ || _loc1_)
                                                                                                               {
                                                                                                                  §§push("\" x=\"");
                                                                                                                  if(!_loc7_)
                                                                                                                  {
                                                                                                                     if(!_loc7_)
                                                                                                                     {
                                                                                                                        if(!_loc7_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(!_loc7_)
                                                                                                                           {
                                                                                                                              addr589:
                                                                                                                              if(_loc6_ || _loc2_)
                                                                                                                              {
                                                                                                                                 if(!_loc7_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr604);
                                                                                                                                    §§push(§§pop() + this.§>!!§[_loc3_].x);
                                                                                                                                 }
                                                                                                                                 §§goto(addr882);
                                                                                                                              }
                                                                                                                              §§goto(addr671);
                                                                                                                           }
                                                                                                                           §§goto(addr628);
                                                                                                                        }
                                                                                                                        §§goto(addr881);
                                                                                                                     }
                                                                                                                     §§goto(addr811);
                                                                                                                  }
                                                                                                                  §§goto(addr671);
                                                                                                               }
                                                                                                               §§goto(addr811);
                                                                                                            }
                                                                                                            §§goto(addr589);
                                                                                                         }
                                                                                                         §§goto(addr628);
                                                                                                      }
                                                                                                      §§goto(addr884);
                                                                                                   }
                                                                                                   §§goto(addr695);
                                                                                                }
                                                                                                §§goto(addr744);
                                                                                             }
                                                                                             §§goto(addr831);
                                                                                          }
                                                                                          §§goto(addr836);
                                                                                       }
                                                                                       §§goto(addr847);
                                                                                    }
                                                                                    §§goto(addr889);
                                                                                 }
                                                                                 §§goto(addr671);
                                                                              }
                                                                              §§goto(addr883);
                                                                           }
                                                                           §§goto(addr827);
                                                                        }
                                                                        addr776:
                                                                        §§push("  <Bird id=\"");
                                                                        if(_loc6_)
                                                                        {
                                                                           §§goto(addr666);
                                                                           §§push(§§pop() + this.§?$§[_loc3_].id);
                                                                        }
                                                                        §§goto(addr671);
                                                                     }
                                                                     §§goto(addr827);
                                                                  }
                                                                  §§goto(addr776);
                                                                  §§push(_loc1_);
                                                               }
                                                               §§goto(addr751);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr132);
                                                            }
                                                         }
                                                         §§goto(addr219);
                                                      }
                                                      while(true)
                                                      {
                                                         continue loop33;
                                                         §§goto(addr69);
                                                      }
                                                   }
                                                }
                                                while(true)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      §§goto(addr154);
                                                   }
                                                   addr202:
                                                   while(true)
                                                   {
                                                      §§goto(addr204);
                                                   }
                                                   §§goto(addr123);
                                                }
                                                addr123:
                                                §§goto(addr254);
                                             }
                                             break;
                                          }
                                          §§goto(addr236);
                                       }
                                       while(!_loc7_)
                                       {
                                          §§goto(addr140);
                                          §§push(" scoreGold=\"");
                                       }
                                       §§goto(addr285);
                                    }
                                    while(true)
                                    {
                                       §§goto(addr202);
                                       §§goto(addr115);
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr137);
                              }
                           }
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr286);
      }
      
      public function §8!3§(param1:int) : §0!D§
      {
         return this.§>!!§[param1];
      }
      
      public function addObject(param1:§0!D§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§>!!§.push(param1);
         }
      }
      
      public function §!y§(param1:int) : §+N§
      {
         return this.§4a§[param1];
      }
      
      public function §"!K§(param1:§+N§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§4a§.push(param1);
         }
      }
      
      public function §0J§(param1:int) : §'!]§
      {
         return this.§?$§[param1];
      }
      
      public function §-T§(param1:§'!]§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§?$§.push(param1);
         }
      }
      
      public function §4!"§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§3t§ = new Vector.<§4!=§>();
         }
      }
      
      public function §7s§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§?$§ = new Vector.<§'!]§>();
         }
      }
      
      public function §6!L§(param1:int) : §4!=§
      {
         return this.§3t§[param1];
      }
      
      public function §&!=§(param1:§4!=§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§3t§.push(param1);
         }
      }
   }
}
