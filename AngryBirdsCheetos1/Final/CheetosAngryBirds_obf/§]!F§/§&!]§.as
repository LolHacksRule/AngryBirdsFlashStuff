package §]!F§
{
   import §!X§.§86§;
   import §%J§.§#^§;
   import §%J§.§8C§;
   import §%J§.§`u§;
   import §2!D§.*;
   import §?h§.§<I§;
   import §default§.§%<§;
   import §default§.§-r§;
   import flash.geom.Point;
   
   public class §&!]§
   {
      
      public static const § get§:String = "BACKGROUND_BLUE_GRASS";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            § get§ = "BACKGROUND_BLUE_GRASS";
         }
      }
      
      public var §^!E§:Number = 0;
      
      public var §0!;§:Number = -8;
      
      private var §%o§:Vector.<§`u§> = null;
      
      private var §8k§:Vector.<§#^§> = null;
      
      private var §[%§:Vector.<§8C§> = null;
      
      private var §[!,§:Vector.<§'A§> = null;
      
      public var §,u§:Number = 0;
      
      public var §%M§:Boolean = false;
      
      public var §;!L§:int = 0;
      
      public var §7z§:int = 0;
      
      private var § E§:int = 0;
      
      private var §%!%§:String = null;
      
      public var mName:String = null;
      
      public function §&!]§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
         }
         do
         {
            this.§[!,§ = new Vector.<§'A§>();
            do
            {
               this.§%o§ = new Vector.<§`u§>();
               loop2:
               do
               {
                  this.§8k§ = new Vector.<§#^§>();
                  while(true)
                  {
                     this.§[%§ = new Vector.<§8C§>();
                     while(_loc2_)
                     {
                        this.§%!%§ = § get§;
                        if(!(_loc1_ && _loc2_))
                        {
                           continue loop2;
                        }
                     }
                  }
               }
               while(!(_loc2_ || this));
               
            }
            while(!(_loc2_ || this));
            
         }
         while(_loc1_);
         
      }
      
      public static function §]"§(param1:String) : §&!]§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§&!]§ = new §&!]§();
         if(!_loc3_)
         {
            _loc2_.§?3§(param1);
         }
         return _loc2_;
      }
      
      public static function §"u§(param1:§-r§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1.§?n§);
            loop0:
            while(true)
            {
               §§push(§-r§.§`T§);
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
                        if(§§pop())
                        {
                           loop8:
                           while(true)
                           {
                              loop9:
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(_loc3_ && _loc3_)
                                 {
                                    break;
                                 }
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc3_)
                                          {
                                             if(!_loc3_)
                                             {
                                                if(_loc2_ || _loc2_)
                                                {
                                                   addr19:
                                                   §§push(false);
                                                   if(_loc2_ || _loc3_)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         break;
                                                      }
                                                      addr132:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                      }
                                                   }
                                                   while(_loc3_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   return §§pop();
                                                   addr89:
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §§push(param1.§?n§);
                                                      continue loop0;
                                                   }
                                                   addr152:
                                                }
                                             }
                                             while(true)
                                             {
                                                §§push(param1.§?n§);
                                                if(_loc3_ && _loc2_)
                                                {
                                                   break;
                                                }
                                                addr43:
                                                §§push(§-r§.§+!S§);
                                                if(!(_loc2_ || _loc2_))
                                                {
                                                   while(_loc2_ || _loc2_)
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      continue loop8;
                                                      §§goto(addr43);
                                                   }
                                                   continue loop1;
                                                   addr114:
                                                }
                                                §§push(§§pop() == §§pop());
                                                if(!(_loc3_ && _loc2_))
                                                {
                                                   continue loop9;
                                                }
                                             }
                                             continue loop0;
                                             addr133:
                                          }
                                          while(true)
                                          {
                                             §§push(true);
                                          }
                                          §§goto(addr89);
                                       }
                                       §§goto(addr19);
                                    }
                                    return §§pop();
                                    addr84:
                                 }
                                 §§goto(addr132);
                              }
                              continue loop3;
                           }
                        }
                        while(true)
                        {
                           §§pop();
                           §§goto(addr152);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr88);
      }
      
      public static function §'F§(param1:String) : §&!]§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§&!]§ = §]"§(param1);
         if(_loc4_ || _loc2_)
         {
            _loc2_.§^!E§ = _loc2_.§8k§[0].x;
            if(!(_loc5_ && §&!]§))
            {
               addr42:
               _loc2_.§0!;§ = _loc2_.§8k§[0].y - 8.5;
            }
            var _loc3_:* = Number(0);
            while(true)
            {
               §§push(_loc3_);
               if(!(_loc5_ && _loc3_))
               {
                  if(_loc4_)
                  {
                     if(§§pop() >= _loc2_.§%o§.length)
                     {
                        if(_loc5_ && _loc3_)
                        {
                           continue;
                        }
                        if(_loc4_ || _loc2_)
                        {
                           break;
                        }
                     }
                     else
                     {
                        _loc2_.§%o§[_loc3_].angle = 360 - _loc2_.§%o§[_loc3_].angle;
                     }
                     §§push(_loc3_);
                     if(!(_loc5_ && §&!]§))
                     {
                        §§push(§§pop() + 1);
                     }
                  }
                  §§push(Number(§§pop()));
               }
               _loc3_ = §§pop();
            }
            return _loc2_;
         }
         §§goto(addr42);
      }
      
      protected static function §<a§(param1:int, param2:Object) : Vector.<§8C§>
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§8C§ = null;
         var _loc3_:Vector.<§8C§> = new Vector.<§8C§>();
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
               if(_loc9_ || §&!]§)
               {
                  §§push(_loc5_.type == §8C§.§2u§);
                  if(!(_loc10_ && param1))
                  {
                     if(!§§pop())
                     {
                        if(!_loc10_)
                        {
                           §§pop();
                           addr101:
                           if(_loc9_)
                           {
                              §§push(_loc5_.type == §8C§.§=G§);
                           }
                           _loc8_ = new §8C§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                           if(!(_loc10_ && §&!]§))
                           {
                              if(_loc5_.type == §8C§.§=G§)
                              {
                                 if(!(_loc10_ && param1))
                                 {
                                    addr158:
                                    _loc8_.axisX = _loc5_.axisX;
                                    if(!(_loc10_ && param1))
                                    {
                                       _loc8_.axisY = _loc5_.axisY;
                                       if(!(_loc10_ && _loc3_))
                                       {
                                          addr195:
                                          if(_loc5_.type == §8C§.§[!S§)
                                          {
                                             if(!(_loc10_ && param1))
                                             {
                                                addr207:
                                                _loc8_.§-7§ = _loc5_.destroyTimer;
                                                if(_loc10_ && _loc3_)
                                                {
                                                }
                                                addr231:
                                                _loc4_++;
                                                continue;
                                             }
                                          }
                                          _loc3_.push(_loc8_);
                                          §§goto(addr231);
                                          addr180:
                                       }
                                       §§goto(addr207);
                                    }
                                 }
                                 §§goto(addr207);
                              }
                              §§goto(addr180);
                           }
                           §§goto(addr158);
                        }
                     }
                  }
                  if(§§pop())
                  {
                     §§goto(addr101);
                  }
                  else
                  {
                     _loc8_ = new §8C§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
                  }
                  §§goto(addr195);
               }
               §§goto(addr101);
            }
            §§goto(addr207);
         }
         return _loc3_;
      }
      
      public function get §5"§() : int
      {
         return this.§%o§.length;
      }
      
      public function get §=!R§() : int
      {
         return this.§[%§.length;
      }
      
      public function get §3]§() : int
      {
         return this.§8k§.length;
      }
      
      public function get §0^§() : int
      {
         return this.§[!,§.length;
      }
      
      public function get theme() : String
      {
         return this.§%!%§;
      }
      
      public function set theme(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§%!%§ = param1;
         }
      }
      
      public function getEagleScore() : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§=!^§());
         if(!_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!(_loc3_ && _loc2_))
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
                  if(_loc2_ || _loc1_)
                  {
                     if(§§pop())
                     {
                        loop8:
                        while(true)
                        {
                           §§pop();
                           addr146:
                           loop7:
                           while(true)
                           {
                              §§push(_loc1_);
                              addr111:
                              loop5:
                              while(true)
                              {
                                 §§push(this.§ E§);
                                 addr113:
                                 while(true)
                                 {
                                    §§push(§§pop() < §§pop());
                                    if(_loc2_)
                                    {
                                       break loop5;
                                    }
                                    continue loop8;
                                 }
                                 continue loop7;
                              }
                           }
                        }
                        addr145:
                     }
                     loop2:
                     while(!§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§push(this.§ E§);
                           while(true)
                           {
                              if(_loc2_ || _loc1_)
                              {
                                 §§push(0);
                                 if(!(_loc3_ && _loc1_))
                                 {
                                    if(!(_loc2_ || _loc2_))
                                    {
                                       continue loop1;
                                    }
                                    if(§§pop() == §§pop())
                                    {
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             if(!(_loc2_ || _loc1_))
                                             {
                                                break loop2;
                                             }
                                             addr103:
                                             §§push(_loc1_);
                                             if(_loc2_)
                                             {
                                                if(!_loc3_)
                                                {
                                                   return §§pop();
                                                }
                                                continue loop0;
                                             }
                                          }
                                          else
                                          {
                                             if(!_loc3_)
                                             {
                                                continue loop3;
                                             }
                                             §§goto(addr146);
                                          }
                                          §§goto(addr111);
                                       }
                                       else
                                       {
                                          addr30:
                                          §§push(this.§ E§);
                                          if(!(_loc3_ && this))
                                          {
                                             if(_loc2_)
                                             {
                                                return §§pop();
                                             }
                                             continue;
                                          }
                                       }
                                       §§goto(addr103);
                                    }
                                    §§goto(addr30);
                                 }
                                 break;
                              }
                              §§goto(addr119);
                           }
                           §§goto(addr113);
                        }
                     }
                     addr118:
                     addr119:
                     return §§pop();
                     §§push(_loc1_);
                  }
                  §§goto(addr145);
               }
            }
         }
         §§goto(addr118);
      }
      
      public function §""§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§=!^§());
         if(_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(0);
               addr86:
               while(true)
               {
                  §§push(§§pop() > §§pop());
                  if(_loc3_)
                  {
                     if(!§§pop())
                     {
                        while(!§§pop())
                        {
                           do
                           {
                              this.§ E§ = param1;
                           }
                           while(!_loc3_);
                           
                           if(!_loc3_)
                           {
                              break;
                           }
                           if(!_loc4_)
                           {
                              return;
                           }
                           continue loop0;
                        }
                        addr72:
                        return;
                        addr70:
                     }
                  }
                  addr91:
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr72);
      }
      
      public function §?3§(param1:String) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc4_:§'A§ = null;
         var _loc5_:Object = null;
         var _loc6_:§#^§ = null;
         var _loc7_:String = null;
         var _loc8_:Object = null;
         var _loc9_:§`u§ = null;
         var _loc2_:Object = JSON.parse(param1);
         if(_loc10_ || param1)
         {
            this.§,u§ = _loc2_.LevelExtension;
            loop0:
            while(true)
            {
               this.§%M§ = false;
               loop1:
               while(true)
               {
                  this.§;!L§ = _loc2_.scoreSilver;
                  loop2:
                  while(true)
                  {
                     this.§7z§ = _loc2_.scoreGold;
                     while(true)
                     {
                        this.§ E§ = _loc2_.scoreEagle;
                        addr146:
                        while(true)
                        {
                           this.§%!%§ = _loc2_.theme;
                           while(true)
                           {
                              this.mName = _loc2_.id;
                              addr125:
                              while(!_loc11_)
                              {
                                 continue loop1;
                              }
                           }
                        }
                        addr95:
                        if(!(_loc10_ || _loc2_))
                        {
                           continue;
                        }
                        do
                        {
                           this.§8k§ = new Vector.<§#^§>();
                           loop12:
                           while(_loc10_)
                           {
                              if(_loc10_)
                              {
                                 continue loop2;
                              }
                              addr117:
                              while(!_loc11_)
                              {
                                 while(true)
                                 {
                                    addr82:
                                    while(true)
                                    {
                                       this.§[!,§ = new Vector.<§'A§>();
                                       break loop12;
                                    }
                                 }
                              }
                              continue loop0;
                           }
                           while(true)
                           {
                              if(_loc10_)
                              {
                                 if(!_loc11_)
                                 {
                                    if(_loc10_)
                                    {
                                       §§goto(addr95);
                                    }
                                    else
                                    {
                                       §§goto(addr146);
                                    }
                                 }
                                 break;
                              }
                              addr108:
                              while(true)
                              {
                                 this.§[%§ = §<a§(_loc2_.counts.joints,_loc2_.world);
                                 §§goto(addr117);
                              }
                           }
                           §§goto(addr125);
                        }
                        while(false);
                        
                        var _loc3_:* = Number(0);
                        addr302:
                        §§push(_loc3_);
                        if(_loc10_ || this)
                        {
                           if(§§pop() < _loc2_.camera.length)
                           {
                              (_loc4_ = new §'A§()).x = _loc2_.camera[_loc3_].x;
                              if(!_loc11_)
                              {
                                 _loc4_.y = _loc2_.camera[_loc3_].y;
                              }
                              _loc4_.left = _loc2_.camera[_loc3_].left;
                              _loc4_.right = _loc2_.camera[_loc3_].right;
                              addr293:
                              if(!(_loc11_ && param1))
                              {
                                 _loc4_.top = _loc2_.camera[_loc3_].top;
                                 _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
                                 _loc4_.id = _loc2_.camera[_loc3_].id;
                                 addr259:
                                 if(!(_loc11_ && _loc2_))
                                 {
                                    addr227:
                                    this.§[!,§.push(_loc4_);
                                    if(_loc10_)
                                    {
                                       §§push(_loc3_);
                                       if(_loc10_ || _loc2_)
                                       {
                                          §§push(§§pop() + 1);
                                          if(_loc10_ || _loc2_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       _loc3_ = §§pop();
                                       if(!_loc11_)
                                       {
                                          if(_loc10_ || _loc2_)
                                          {
                                             if(_loc10_)
                                             {
                                                if(_loc10_ || this)
                                                {
                                                   if(false)
                                                   {
                                                      §§goto(addr227);
                                                   }
                                                   §§goto(addr302);
                                                }
                                                §§goto(addr293);
                                             }
                                          }
                                          §§goto(addr259);
                                       }
                                       §§goto(addr227);
                                    }
                                    §§goto(addr293);
                                 }
                                 addr268:
                                 §§goto(addr268);
                              }
                              addr301:
                              §§goto(addr301);
                           }
                           if(!(_loc11_ && _loc2_))
                           {
                              §§push(1);
                              if(_loc10_ || this)
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc10_ || param1)
                                 {
                                    _loc3_ = §§pop();
                                    if(_loc10_)
                                    {
                                       addr425:
                                       §§push(_loc3_);
                                       if(!(_loc11_ && this))
                                       {
                                          if(§§pop() <= _loc2_.counts.birds)
                                          {
                                             _loc5_ = _loc2_.world["bird_" + _loc3_];
                                             (_loc6_ = new §#^§()).x = _loc5_.x;
                                             if(_loc10_ || param1)
                                             {
                                                _loc6_.y = _loc5_.y;
                                                _loc6_.id = _loc5_.id;
                                                addr406:
                                                this.§8k§.push(_loc6_);
                                                addr419:
                                                if(!_loc11_)
                                                {
                                                   §§push(_loc3_);
                                                   if(!(_loc11_ && param1))
                                                   {
                                                      §§push(§§pop() + 1);
                                                      if(!(_loc11_ && _loc3_))
                                                      {
                                                         addr393:
                                                         §§push(Number(§§pop()));
                                                      }
                                                      _loc3_ = §§pop();
                                                      if(_loc10_)
                                                      {
                                                         if(!(_loc11_ && _loc2_))
                                                         {
                                                            addr404:
                                                            if(false)
                                                            {
                                                               §§goto(addr406);
                                                            }
                                                            §§goto(addr425);
                                                         }
                                                         §§goto(addr419);
                                                      }
                                                      §§goto(addr406);
                                                   }
                                                   §§goto(addr393);
                                                }
                                                addr424:
                                                §§goto(addr424);
                                             }
                                             §§goto(addr404);
                                          }
                                          if(!_loc11_)
                                          {
                                             addr440:
                                             §§push(Number(1));
                                             if(_loc10_ || param1)
                                             {
                                                addr448:
                                                _loc3_ = §§pop();
                                                if(!_loc11_)
                                                {
                                                   addr604:
                                                   if(_loc3_ <= _loc2_.counts.blocks)
                                                   {
                                                      _loc7_ = "block_" + _loc3_;
                                                      if(_loc10_ || this)
                                                      {
                                                         addr465:
                                                         _loc8_ = _loc2_.world[_loc7_];
                                                         (_loc9_ = new §`u§()).x = _loc8_.x;
                                                         if(!_loc11_)
                                                         {
                                                            _loc9_.y = _loc8_.y;
                                                            _loc9_.id = _loc8_.id;
                                                            addr598:
                                                            addr603:
                                                            if(_loc8_.uniqueID)
                                                            {
                                                               addr588:
                                                               _loc9_.uniqueID = _loc8_.uniqueID;
                                                               addr592:
                                                               if(_loc8_.front)
                                                               {
                                                                  if(_loc10_ || _loc2_)
                                                                  {
                                                                     if(!(_loc11_ && this))
                                                                     {
                                                                        _loc9_.front = _loc8_.front;
                                                                        addr541:
                                                                        _loc9_.angle = _loc8_.angle;
                                                                        addr526:
                                                                        this.§%o§.push(_loc9_);
                                                                        addr569:
                                                                        addr546:
                                                                        if(!(_loc11_ && param1))
                                                                        {
                                                                           if(!_loc11_)
                                                                           {
                                                                              §§push(_loc3_);
                                                                              if(!(_loc11_ && param1))
                                                                              {
                                                                                 §§push(§§pop() + 1);
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    addr494:
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 _loc3_ = §§pop();
                                                                                 if(!(_loc11_ && _loc3_))
                                                                                 {
                                                                                    if(!(_loc11_ && _loc3_))
                                                                                    {
                                                                                       if(!(_loc11_ && param1))
                                                                                       {
                                                                                          if(_loc10_ || _loc3_)
                                                                                          {
                                                                                             if(false)
                                                                                             {
                                                                                                §§goto(addr526);
                                                                                             }
                                                                                             §§goto(addr604);
                                                                                          }
                                                                                          §§goto(addr598);
                                                                                       }
                                                                                       §§goto(addr569);
                                                                                    }
                                                                                    §§goto(addr546);
                                                                                 }
                                                                                 §§goto(addr526);
                                                                              }
                                                                              §§goto(addr494);
                                                                           }
                                                                           §§goto(addr592);
                                                                        }
                                                                        if(_loc10_ || _loc3_)
                                                                        {
                                                                           addr583:
                                                                           §§goto(addr592);
                                                                        }
                                                                        §§goto(addr603);
                                                                     }
                                                                     §§goto(addr588);
                                                                  }
                                                                  §§goto(addr526);
                                                               }
                                                               §§goto(addr541);
                                                            }
                                                            _loc9_.uniqueID = _loc7_;
                                                            §§goto(addr541);
                                                         }
                                                         §§goto(addr583);
                                                      }
                                                      §§goto(addr632);
                                                   }
                                                   if(_loc10_)
                                                   {
                                                      addr611:
                                                      this.§^!E§ = _loc2_.slingshotX;
                                                      if(!(_loc11_ && _loc3_))
                                                      {
                                                         §§goto(addr632);
                                                      }
                                                   }
                                                   addr632:
                                                   this.§0!;§ = _loc2_.slingshotY;
                                                   return;
                                                   addr451:
                                                }
                                                §§goto(addr632);
                                             }
                                             §§goto(addr604);
                                          }
                                          §§goto(addr611);
                                       }
                                       §§goto(addr604);
                                    }
                                    §§goto(addr465);
                                 }
                                 §§goto(addr448);
                              }
                              §§goto(addr440);
                           }
                           §§goto(addr451);
                        }
                        §§goto(addr448);
                     }
                  }
               }
            }
         }
         §§goto(addr119);
      }
      
      public function §;!G§() : Object
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Object = new Object();
         if(_loc4_ || _loc2_)
         {
            _loc1_.LevelExtension = this.§,u§;
            loop0:
            while(true)
            {
               _loc1_.scoreSilver = this.§;!L§;
               loop1:
               while(true)
               {
                  _loc1_.scoreGold = this.§7z§;
                  while(true)
                  {
                     _loc1_.scoreEagle = this.§ E§;
                     while(!_loc3_)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           continue loop0;
                        }
                     }
                     continue loop1;
                     loop7:
                     while(_loc4_ || _loc3_)
                     {
                        _loc1_.camera = this.§[!,§;
                        if(_loc3_ && this)
                        {
                           continue;
                        }
                        if(_loc4_)
                        {
                           §§goto(addr43);
                        }
                        while(true)
                        {
                           addr59:
                           while(true)
                           {
                              _loc1_.name = this.mName;
                              continue loop7;
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            _loc1_.theme = this.§%!%§;
            §§goto(addr77);
         }
      }
      
      public function §@7§() : String
      {
         return JSON.stringify(this.§;!G§());
      }
      
      public function §=!^§() : int
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:§`u§ = null;
         var _loc3_:* = null;
         var _loc4_:§-r§ = null;
         var _loc1_:* = 0;
         for each(_loc2_ in this.§%o§)
         {
            if(_loc7_ || _loc2_)
            {
               §§push(_loc2_.id);
               if(_loc7_)
               {
                  §§push(§§pop());
               }
               _loc3_ = §§pop();
            }
            §§push((_loc4_ = §%<§.§<<§(_loc3_)) == null);
            if(_loc7_)
            {
               if(§§pop())
               {
                  if(!(_loc8_ && this))
                  {
                     §§pop();
                     if(_loc7_ || _loc3_)
                     {
                        §§push(_loc3_);
                        if(_loc7_)
                        {
                           §§push(§§pop().indexOf("MISC_") == 0);
                           if(_loc7_ || _loc2_)
                           {
                              addr104:
                              if(§§pop())
                              {
                                 if(_loc7_ || this)
                                 {
                                    addr118:
                                    _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
                                    if(_loc7_)
                                    {
                                       addr121:
                                       _loc4_ = §%<§.§<<§(_loc3_);
                                       addr126:
                                       if(!_loc4_)
                                       {
                                          continue;
                                       }
                                       if(_loc7_)
                                       {
                                          §§push(_loc1_);
                                          if(_loc7_)
                                          {
                                             §§push(§§pop() + _loc4_.score);
                                             if(!_loc8_)
                                             {
                                                §§push(int(§§pop()));
                                                if(_loc7_)
                                                {
                                                   _loc1_ = §§pop();
                                                   if(!(_loc8_ && _loc2_))
                                                   {
                                                      addr149:
                                                      if(§"u§(_loc4_))
                                                      {
                                                         if(_loc7_ || this)
                                                         {
                                                            addr160:
                                                            §§push(_loc1_);
                                                            if(!(_loc8_ && _loc3_))
                                                            {
                                                               addr168:
                                                               §§push(_loc4_.§+?§);
                                                               if(!(_loc8_ && this))
                                                               {
                                                                  §§push(§§pop() * §86§.§@r§.getValue());
                                                               }
                                                               §§push(int(§§pop() + §§pop()));
                                                            }
                                                            _loc1_ = §§pop();
                                                         }
                                                      }
                                                      continue;
                                                   }
                                                   §§goto(addr160);
                                                }
                                             }
                                          }
                                          §§goto(addr168);
                                       }
                                       §§goto(addr149);
                                    }
                                    §§goto(addr160);
                                 }
                                 §§goto(addr149);
                              }
                              §§goto(addr126);
                           }
                           §§goto(addr149);
                        }
                        §§goto(addr118);
                     }
                     §§goto(addr121);
                  }
               }
               §§goto(addr104);
            }
            §§goto(addr149);
         }
         return _loc1_;
      }
      
      public function §8!$§() : XML
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§'A§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         if(_loc7_)
         {
            addr233:
            §§push(_loc1_);
            while(true)
            {
               §§push(§§pop() + "<Level background=\"ThemeHills\"");
               addr235:
               while(true)
               {
                  _loc1_ = §§pop();
               }
            }
            addr233:
         }
         loop2:
         while(true)
         {
            §§push(_loc1_);
            loop3:
            while(true)
            {
               §§push(" LevelExtension=\"" + this.§,u§);
               loop4:
               while(true)
               {
                  §§push("\"");
                  while(true)
                  {
                     §§push(§§pop() + §§pop());
                     loop6:
                     while(true)
                     {
                        §§push(§§pop() + §§pop());
                        loop7:
                        while(true)
                        {
                           §§push(§§pop());
                           loop8:
                           while(true)
                           {
                              _loc1_ = §§pop();
                              loop9:
                              while(!_loc6_)
                              {
                                 §§push(_loc1_);
                                 loop10:
                                 while(true)
                                 {
                                    §§push(" AutoCamera=\"" + this.§%M§);
                                    loop11:
                                    while(_loc7_)
                                    {
                                       §§push("\"");
                                       loop12:
                                       while(true)
                                       {
                                          §§push(§§pop() + §§pop());
                                          loop13:
                                          while(true)
                                          {
                                             §§push(§§pop() + §§pop());
                                             loop14:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                loop15:
                                                while(true)
                                                {
                                                   _loc1_ = §§pop();
                                                   loop16:
                                                   while(true)
                                                   {
                                                      §§push(_loc1_);
                                                      loop17:
                                                      while(!_loc6_)
                                                      {
                                                         §§push(" scoreSilver=\"" + this.§;!L§);
                                                         if(_loc7_)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               continue loop11;
                                                            }
                                                            if(_loc6_)
                                                            {
                                                               continue loop6;
                                                            }
                                                            §§push("\"");
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               addr107:
                                                               §§push("\"");
                                                               if(!(_loc6_ && this))
                                                               {
                                                                  continue loop12;
                                                               }
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            addr192:
                                                            while(_loc7_)
                                                            {
                                                               §§push(§§pop());
                                                               continue loop10;
                                                            }
                                                            continue loop7;
                                                         }
                                                         loop23:
                                                         while(true)
                                                         {
                                                            if(_loc6_ && _loc2_)
                                                            {
                                                               continue loop17;
                                                            }
                                                            if(!_loc6_)
                                                            {
                                                               §§push(" scoreGold=\"" + this.§7z§);
                                                               if(_loc7_)
                                                               {
                                                                  §§goto(addr107);
                                                               }
                                                               else
                                                               {
                                                                  addr130:
                                                                  if(!(_loc7_ || _loc3_))
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(_loc6_ && _loc2_)
                                                                  {
                                                                     continue loop13;
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                                  loop24:
                                                                  for(; _loc7_ || this; while(true)
                                                                  {
                                                                     if(_loc6_ && this)
                                                                     {
                                                                        continue loop24;
                                                                     }
                                                                     if(_loc6_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(!_loc6_)
                                                                     {
                                                                        _loc1_ = §§pop();
                                                                        §§goto(addr80);
                                                                     }
                                                                     §§goto(addr235);
                                                                     §§goto(addr43);
                                                                  },continue loop14)
                                                                  {
                                                                     §§push(§§pop());
                                                                     while(true)
                                                                     {
                                                                        if(_loc7_)
                                                                        {
                                                                           if(_loc7_)
                                                                           {
                                                                              continue loop3;
                                                                           }
                                                                           continue loop15;
                                                                        }
                                                                        continue loop10;
                                                                        addr36:
                                                                        if(_loc6_ && _loc1_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§push(§§pop() + "<Cameras>");
                                                                        if(!(_loc7_ || _loc3_))
                                                                        {
                                                                           continue loop24;
                                                                        }
                                                                        addr52:
                                                                        _loc1_ = §§pop();
                                                                        if(_loc6_ && _loc3_)
                                                                        {
                                                                           loop30:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc7_ || _loc3_))
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       if(!(_loc7_ || _loc2_))
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       do
                                                                                       {
                                                                                          §§push(_loc1_);
                                                                                       }
                                                                                       while(false);
                                                                                       
                                                                                       var _loc4_:int = 0;
                                                                                       var _loc5_:* = this.§[!,§;
                                                                                       addr353:
                                                                                       for each(_loc2_ in _loc5_)
                                                                                       {
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             §§push(_loc1_);
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                §§push(" <Camera id=\"" + _loc2_.id);
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   §§push(§§pop() + "\" leftBorder=\"");
                                                                                                   if(!(_loc6_ && _loc3_))
                                                                                                   {
                                                                                                      addr270:
                                                                                                      §§push(_loc2_.left);
                                                                                                      if(!(_loc6_ && _loc3_))
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(!(_loc6_ && this))
                                                                                                         {
                                                                                                            §§push(§§pop() + "\" rightBorder=\"");
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               §§push(_loc2_.right);
                                                                                                               if(_loc7_ || _loc2_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(!(_loc6_ && _loc2_))
                                                                                                                  {
                                                                                                                     addr308:
                                                                                                                     §§push(§§pop() + "\" topBorder=\"");
                                                                                                                     if(_loc7_ || this)
                                                                                                                     {
                                                                                                                        §§push(_loc2_.top);
                                                                                                                        if(!_loc6_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(!_loc6_)
                                                                                                                           {
                                                                                                                              addr348:
                                                                                                                              §§push(§§pop() + "\" bottomBorder=\"");
                                                                                                                              if(_loc7_ || _loc2_)
                                                                                                                              {
                                                                                                                                 addr333:
                                                                                                                                 §§push(_loc2_.top);
                                                                                                                                 if(_loc7_)
                                                                                                                                 {
                                                                                                                                    addr337:
                                                                                                                                    §§push(§§pop() + §<I§.§0!2§);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              _loc1_ = §§pop() + (§§pop() + "\"></Camera>");
                                                                                                                              §§goto(addr353);
                                                                                                                           }
                                                                                                                           §§goto(addr333);
                                                                                                                        }
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(_loc7_ || _loc2_)
                                                                                                                        {
                                                                                                                           §§goto(addr348);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr348);
                                                                                                               }
                                                                                                               §§goto(addr337);
                                                                                                            }
                                                                                                            §§goto(addr348);
                                                                                                         }
                                                                                                         §§goto(addr308);
                                                                                                      }
                                                                                                      §§goto(addr337);
                                                                                                   }
                                                                                                   §§goto(addr333);
                                                                                                }
                                                                                                §§goto(addr270);
                                                                                             }
                                                                                             §§goto(addr348);
                                                                                          }
                                                                                          §§goto(addr353);
                                                                                       }
                                                                                       if(!(_loc6_ && _loc2_))
                                                                                       {
                                                                                          addr773:
                                                                                          _loc1_ += "</Cameras>";
                                                                                          addr768:
                                                                                          §§push(_loc1_);
                                                                                          if(_loc7_ || _loc3_)
                                                                                          {
                                                                                             addr766:
                                                                                             §§push("<Slingshot x=\"" + this.§8k§[0].x);
                                                                                             if(_loc7_ || _loc2_)
                                                                                             {
                                                                                                addr746:
                                                                                                §§push(§§pop() + "\" y=\"" + (this.§8k§[0].y - 8) + "\">");
                                                                                             }
                                                                                             §§push(§§pop() + §§pop());
                                                                                          }
                                                                                          _loc1_ = §§pop();
                                                                                          addr710:
                                                                                          addr774:
                                                                                          addr771:
                                                                                          addr769:
                                                                                          §§push(_loc1_ + " <Birds>");
                                                                                          if(!(_loc6_ && _loc3_))
                                                                                          {
                                                                                             _loc1_ = §§pop();
                                                                                             addr706:
                                                                                             _loc3_ = 0;
                                                                                             addr707:
                                                                                             addr720:
                                                                                             §§push(_loc3_);
                                                                                             if(_loc7_ || _loc2_)
                                                                                             {
                                                                                                if(§§pop() >= this.§8k§.length)
                                                                                                {
                                                                                                   addr631:
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      addr634:
                                                                                                      §§push(_loc1_);
                                                                                                      if(_loc7_ || _loc1_)
                                                                                                      {
                                                                                                         addr643:
                                                                                                         §§push(§§pop() + " </Birds>");
                                                                                                         if(!(_loc6_ && _loc3_))
                                                                                                         {
                                                                                                            _loc1_ = §§pop();
                                                                                                            addr651:
                                                                                                            §§push(_loc1_);
                                                                                                            if(_loc7_)
                                                                                                            {
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  addr609:
                                                                                                                  §§push(§§pop() + "</Slingshot>");
                                                                                                                  if(_loc7_ || _loc3_)
                                                                                                                  {
                                                                                                                     _loc1_ = §§pop();
                                                                                                                     addr597:
                                                                                                                     _loc3_ = 0;
                                                                                                                     addr598:
                                                                                                                     addr617:
                                                                                                                     if(_loc7_)
                                                                                                                     {
                                                                                                                        addr372:
                                                                                                                        §§push(_loc3_);
                                                                                                                        if(!_loc6_)
                                                                                                                        {
                                                                                                                           if(_loc7_ || _loc1_)
                                                                                                                           {
                                                                                                                              if(§§pop() >= this.§%o§.length)
                                                                                                                              {
                                                                                                                                 if(_loc7_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    if(_loc7_)
                                                                                                                                    {
                                                                                                                                       if(!(_loc6_ && _loc1_))
                                                                                                                                       {
                                                                                                                                          if(!_loc6_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc1_);
                                                                                                                                             if(_loc7_)
                                                                                                                                             {
                                                                                                                                                if(_loc7_)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc6_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + "</Level>");
                                                                                                                                                      if(_loc7_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         _loc1_ = §§pop();
                                                                                                                                                         addr437:
                                                                                                                                                         if(_loc7_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc6_ && this)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr598);
                                                                                                                                                            }
                                                                                                                                                            return new XML(_loc1_);
                                                                                                                                                         }
                                                                                                                                                         addr454:
                                                                                                                                                         if(_loc7_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc7_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc7_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr372);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr707);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr651);
                                                                                                                                                         }
                                                                                                                                                         if(!_loc6_)
                                                                                                                                                         {
                                                                                                                                                            _loc3_++;
                                                                                                                                                            §§goto(addr454);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr617);
                                                                                                                                                      }
                                                                                                                                                      addr579:
                                                                                                                                                      if(!_loc6_)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc6_ && _loc2_))
                                                                                                                                                         {
                                                                                                                                                            addr589:
                                                                                                                                                            §§push(§§pop());
                                                                                                                                                            if(!_loc6_)
                                                                                                                                                            {
                                                                                                                                                               _loc1_ = §§pop();
                                                                                                                                                               §§goto(addr454);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr710);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr643);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr609);
                                                                                                                                                   }
                                                                                                                                                   addr675:
                                                                                                                                                   §§push("  <Bird id=\"" + this.§8k§[_loc3_].id + "\" x=\"");
                                                                                                                                                   if(!(_loc6_ && _loc1_))
                                                                                                                                                   {
                                                                                                                                                      addr688:
                                                                                                                                                      §§push(§§pop() + (§§pop() + this.§8k§[_loc3_].x + "\" y=\"" + this.§8k§[_loc3_].y + "\"></Bird>"));
                                                                                                                                                      if(_loc7_)
                                                                                                                                                      {
                                                                                                                                                         addr702:
                                                                                                                                                         _loc1_ = §§pop();
                                                                                                                                                         _loc3_++;
                                                                                                                                                         addr654:
                                                                                                                                                         if(!(_loc6_ && this))
                                                                                                                                                         {
                                                                                                                                                            addr661:
                                                                                                                                                            §§goto(addr707);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr774);
                                                                                                                                                         addr703:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr710);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr746);
                                                                                                                                                }
                                                                                                                                                §§goto(addr651);
                                                                                                                                             }
                                                                                                                                             §§goto(addr589);
                                                                                                                                          }
                                                                                                                                          §§goto(addr720);
                                                                                                                                       }
                                                                                                                                       §§goto(addr703);
                                                                                                                                    }
                                                                                                                                    §§goto(addr631);
                                                                                                                                 }
                                                                                                                                 §§goto(addr437);
                                                                                                                              }
                                                                                                                              §§push(_loc1_);
                                                                                                                              if(_loc7_)
                                                                                                                              {
                                                                                                                                 if(_loc7_)
                                                                                                                                 {
                                                                                                                                    §§push("<Item id=\"" + this.§%o§[_loc3_].id);
                                                                                                                                    if(_loc7_)
                                                                                                                                    {
                                                                                                                                       §§push("\" x=\"");
                                                                                                                                       if(!_loc6_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(_loc7_)
                                                                                                                                          {
                                                                                                                                             if(!(_loc6_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() + this.§%o§[_loc3_].x);
                                                                                                                                                if(!_loc6_)
                                                                                                                                                {
                                                                                                                                                   §§push("\" y=\"");
                                                                                                                                                   if(_loc7_ || _loc1_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc7_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         if(_loc7_)
                                                                                                                                                         {
                                                                                                                                                            addr527:
                                                                                                                                                            §§push(§§pop() + this.§%o§[_loc3_].y);
                                                                                                                                                            if(!_loc6_)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc6_ && _loc1_))
                                                                                                                                                               {
                                                                                                                                                                  if(_loc7_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() + "\" rotation=\"");
                                                                                                                                                                     if(_loc7_)
                                                                                                                                                                     {
                                                                                                                                                                        addr548:
                                                                                                                                                                        if(!(_loc6_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() + this.§%o§[_loc3_].angle);
                                                                                                                                                                           if(_loc7_ || _loc1_)
                                                                                                                                                                           {
                                                                                                                                                                              addr568:
                                                                                                                                                                              if(_loc7_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc6_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr574:
                                                                                                                                                                                    §§push(§§pop() + "\" ></Item>");
                                                                                                                                                                                    if(!_loc6_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc6_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr579);
                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr766);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr688);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr574);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr675);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr568);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr746);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr675);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr548);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr574);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr746);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr688);
                                                                                                                                                }
                                                                                                                                                §§goto(addr527);
                                                                                                                                             }
                                                                                                                                             §§goto(addr688);
                                                                                                                                          }
                                                                                                                                          §§goto(addr568);
                                                                                                                                       }
                                                                                                                                       §§goto(addr675);
                                                                                                                                    }
                                                                                                                                    §§goto(addr527);
                                                                                                                                 }
                                                                                                                                 §§goto(addr634);
                                                                                                                              }
                                                                                                                              §§goto(addr589);
                                                                                                                           }
                                                                                                                           §§goto(addr707);
                                                                                                                        }
                                                                                                                        §§goto(addr597);
                                                                                                                     }
                                                                                                                     §§goto(addr654);
                                                                                                                  }
                                                                                                                  §§goto(addr766);
                                                                                                               }
                                                                                                               §§goto(addr771);
                                                                                                            }
                                                                                                            §§goto(addr702);
                                                                                                         }
                                                                                                         §§goto(addr688);
                                                                                                      }
                                                                                                      §§goto(addr768);
                                                                                                   }
                                                                                                   §§goto(addr769);
                                                                                                }
                                                                                                §§goto(addr675);
                                                                                                §§push(_loc1_);
                                                                                             }
                                                                                             §§goto(addr706);
                                                                                          }
                                                                                          §§goto(addr773);
                                                                                       }
                                                                                       §§goto(addr661);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          continue loop23;
                                                                                       }
                                                                                       §§goto(addr233);
                                                                                       addr203:
                                                                                    }
                                                                                    continue loop30;
                                                                                 }
                                                                                 continue loop16;
                                                                                 addr165:
                                                                              }
                                                                              if(!_loc7_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(_loc1_);
                                                                              if(!(_loc6_ && this))
                                                                              {
                                                                                 §§goto(addr36);
                                                                              }
                                                                              while(!_loc6_)
                                                                              {
                                                                                 §§push(§§pop() + ">");
                                                                                 continue loop24;
                                                                              }
                                                                              continue loop23;
                                                                           }
                                                                           continue loop9;
                                                                           addr80:
                                                                        }
                                                                        §§goto(addr60);
                                                                     }
                                                                     continue loop3;
                                                                  }
                                                                  §§goto(addr192);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr233);
                                                            }
                                                         }
                                                         §§goto(addr191);
                                                      }
                                                      continue loop8;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    continue loop4;
                                 }
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function §1T§(param1:int) : §`u§
      {
         return this.§%o§[param1];
      }
      
      public function addObject(param1:§`u§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§%o§.push(param1);
         }
      }
      
      public function §"4§(param1:int) : §8C§
      {
         return this.§[%§[param1];
      }
      
      public function §9!U§(param1:§8C§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§[%§.push(param1);
         }
      }
      
      public function §!!J§(param1:int) : §#^§
      {
         return this.§8k§[param1];
      }
      
      public function §"L§(param1:§#^§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§8k§.push(param1);
         }
      }
      
      public function §>^§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§[!,§ = new Vector.<§'A§>();
         }
      }
      
      public function §,`§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§8k§ = new Vector.<§#^§>();
         }
      }
      
      public function §`;§(param1:int) : §'A§
      {
         return this.§[!,§[param1];
      }
      
      public function §&[§(param1:§'A§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§[!,§.push(param1);
         }
      }
   }
}
