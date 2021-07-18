package §`![§
{
   import §!r§.§3!!§;
   import §!r§.§=?§;
   import §,!K§.§[V§;
   import §,§.§ p§;
   import §94§.*;
   import §;A§.§ f§;
   import §;A§.§ l§;
   import §;A§.§]!A§;
   import flash.geom.Point;
   
   public class §!!K§
   {
      
      public static const §,]§:String = "BACKGROUND_BLUE_GRASS";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §!!K§))
         {
            §,]§ = "BACKGROUND_BLUE_GRASS";
         }
      }
      
      public var §;!Y§:Number = 0;
      
      public var §'f§:Number = -8;
      
      protected var §[!L§:Vector.<§]!A§> = null;
      
      protected var §0!b§:Vector.<§ l§> = null;
      
      protected var §]N§:Vector.<§ f§> = null;
      
      protected var §7z§:Vector.<§5!b§> = null;
      
      public var §!!<§:int = 0;
      
      public var §8Z§:int = 0;
      
      private var §'!@§:int = 0;
      
      protected var §]f§:String = null;
      
      public var mName:String = null;
      
      public function §!!K§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            loop0:
            while(true)
            {
               this.§7z§ = new Vector.<§5!b§>();
               while(true)
               {
                  this.§[!L§ = new Vector.<§]!A§>();
                  addr67:
                  if(!(_loc2_ || _loc1_))
                  {
                     continue;
                  }
                  this.§]f§ = §,]§;
                  addr74:
                  if(_loc2_ || _loc2_)
                  {
                     addr35:
                     if(_loc2_ || this)
                     {
                        return;
                     }
                     loop3:
                     while(true)
                     {
                        if(_loc1_)
                        {
                           continue loop0;
                        }
                        this.§]N§ = new Vector.<§ f§>();
                        while(_loc2_ || _loc1_)
                        {
                           §§goto(addr67);
                           §§goto(addr74);
                        }
                        while(true)
                        {
                           this.§0!b§ = new Vector.<§ l§>();
                           continue loop3;
                           §§goto(addr60);
                        }
                        addr60:
                     }
                     continue;
                  }
                  §§goto(addr60);
               }
            }
         }
         §§goto(addr92);
      }
      
      public static function §4-§(param1:String) : §!!K§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§!!K§ = new §!!K§();
         if(!(_loc4_ && _loc2_))
         {
            _loc2_.§@$§(param1);
         }
         return _loc2_;
      }
      
      public static function §6!O§(param1:§=?§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1.§=J§);
            loop0:
            while(true)
            {
               §§push(§=?§.§!!"§);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(§§pop());
                     loop2:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           addr146:
                           while(true)
                           {
                              §§pop();
                              addr147:
                              while(true)
                              {
                                 §§push(param1.§=J§);
                                 addr112:
                                 while(true)
                                 {
                                    §§push(§=?§.§=K§);
                                    addr114:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                    }
                                 }
                              }
                           }
                           addr146:
                        }
                        while(true)
                        {
                           loop4:
                           while(true)
                           {
                              §§push(§§pop());
                              if(!_loc2_)
                              {
                                 break;
                              }
                              if(!§§pop())
                              {
                                 loop5:
                                 while(true)
                                 {
                                    §§pop();
                                    loop6:
                                    while(true)
                                    {
                                       §§push(param1.§=J§);
                                       if(!_loc3_)
                                       {
                                          if(_loc3_)
                                          {
                                             continue loop0;
                                          }
                                          §§push(§=?§.§<![§);
                                          if(_loc2_ || §!!K§)
                                          {
                                             if(!(_loc2_ || _loc2_))
                                             {
                                                continue loop1;
                                             }
                                             §§push(§§pop() == §§pop());
                                             while(true)
                                             {
                                                loop8:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         §§push(true);
                                                         break;
                                                      }
                                                      if(!(_loc2_ || param1))
                                                      {
                                                         continue loop6;
                                                      }
                                                      if(_loc2_ || _loc3_)
                                                      {
                                                         while(true)
                                                         {
                                                            addr19:
                                                            while(true)
                                                            {
                                                               §§push(false);
                                                               if(!(_loc2_ || param1))
                                                               {
                                                                  break loop8;
                                                               }
                                                               continue loop8;
                                                            }
                                                         }
                                                         addr108:
                                                      }
                                                      §§goto(addr147);
                                                   }
                                                   §§goto(addr19);
                                                }
                                                while(true)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      continue loop5;
                                                   }
                                                   if(_loc3_ && param1)
                                                   {
                                                      continue loop4;
                                                   }
                                                   if(_loc2_ || _loc2_)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr146);
                                                }
                                                return §§pop();
                                             }
                                          }
                                          §§goto(addr114);
                                       }
                                       break;
                                    }
                                    §§goto(addr112);
                                 }
                              }
                              §§goto(addr62);
                           }
                           continue loop2;
                        }
                     }
                  }
                  §§goto(addr146);
               }
            }
         }
         §§goto(addr108);
      }
      
      public static function §]G§(param1:String) : §!!K§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§!!K§ = §4-§(param1);
         if(_loc5_ || _loc3_)
         {
            _loc2_.§;!Y§ = _loc2_.§0!b§[0].x;
            if(_loc5_ || _loc2_)
            {
               _loc2_.§'f§ = _loc2_.§0!b§[0].y - 8.5;
            }
         }
         var _loc3_:* = Number(0);
         while(true)
         {
            §§push(_loc3_);
            if(_loc5_)
            {
               if(§§pop() >= _loc2_.§[!L§.length)
               {
                  if(!(_loc4_ && _loc2_))
                  {
                     break;
                  }
                  loop1:
                  while(_loc4_ && _loc2_)
                  {
                     while(true)
                     {
                        _loc3_ = §§pop();
                        continue loop1;
                     }
                  }
                  continue;
               }
               _loc2_.§[!L§[_loc3_].angle = 360 - _loc2_.§[!L§[_loc3_].angle;
               while(true)
               {
                  §§push(_loc3_);
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(§§pop() + 1);
                     if(!(_loc4_ && param1))
                     {
                        §§push(Number(§§pop()));
                     }
                  }
               }
            }
            §§goto(addr103);
         }
         return _loc2_;
      }
      
      protected static function §<-§(param1:int, param2:Object) : Vector.<§ f§>
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§ f§ = null;
         var _loc3_:Vector.<§ f§> = new Vector.<§ f§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               if(!_loc10_)
               {
                  continue;
               }
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(!_loc9_)
               {
                  §§push(_loc5_.type == § f§.§+!J§);
                  if(!(_loc9_ && §!!K§))
                  {
                     if(!§§pop())
                     {
                        if(_loc10_)
                        {
                           addr88:
                           §§pop();
                           if(!_loc9_)
                           {
                              addr96:
                              if(_loc5_.type == § f§.§?x§)
                              {
                                 _loc8_ = new § f§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                                 addr97:
                                 if(_loc10_ || param2)
                                 {
                                    if(_loc5_.type == § f§.§?x§)
                                    {
                                       if(_loc10_ || §!!K§)
                                       {
                                          _loc8_.axisX = _loc5_.axisX;
                                          if(_loc10_ || param2)
                                          {
                                          }
                                          addr214:
                                          _loc3_.push(_loc8_);
                                          addr217:
                                          _loc4_++;
                                          continue;
                                       }
                                       _loc8_.axisY = _loc5_.axisY;
                                       if(!_loc9_)
                                       {
                                          addr186:
                                          if(_loc5_.type == § f§.§+!7§)
                                          {
                                             if(_loc9_)
                                             {
                                             }
                                             §§goto(addr217);
                                          }
                                          §§goto(addr214);
                                          addr171:
                                       }
                                       _loc8_.§^`§ = _loc5_.destroyTimer;
                                       if(_loc10_ || _loc3_)
                                       {
                                       }
                                       §§goto(addr214);
                                    }
                                    §§goto(addr171);
                                 }
                                 §§goto(addr214);
                              }
                              else
                              {
                                 _loc8_ = new § f§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
                              }
                              §§goto(addr186);
                           }
                           §§goto(addr97);
                        }
                     }
                     §§goto(addr96);
                  }
                  §§goto(addr88);
               }
               §§goto(addr96);
            }
            §§goto(addr214);
         }
         return _loc3_;
      }
      
      public function get §@!_§() : int
      {
         return this.§[!L§.length;
      }
      
      public function get §85§() : int
      {
         return this.§]N§.length;
      }
      
      public function get §!Z§() : int
      {
         return this.§0!b§.length;
      }
      
      public function get §+![§() : int
      {
         return this.§7z§.length;
      }
      
      public function get theme() : String
      {
         return this.§]f§;
      }
      
      public function set theme(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§]f§ = param1;
         }
      }
      
      public function getEagleScore() : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§@!K§());
         if(_loc2_ || _loc3_)
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
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           addr136:
                           while(true)
                           {
                              §§push(_loc1_);
                              addr108:
                              while(true)
                              {
                                 §§push(this.§'!@§);
                                 addr110:
                                 do
                                 {
                                    §§push(§§pop() < §§pop());
                                    if(_loc3_)
                                    {
                                       continue loop3;
                                    }
                                 }
                                 while(_loc2_);
                                 
                                 continue loop2;
                              }
                           }
                        }
                     }
                     loop7:
                     while(!§§pop())
                     {
                        loop8:
                        while(true)
                        {
                           §§push(this.§'!@§);
                           while(true)
                           {
                              if(!_loc3_)
                              {
                                 §§push(0);
                                 if(!_loc3_)
                                 {
                                    if(_loc3_ && _loc3_)
                                    {
                                       continue loop1;
                                    }
                                    if(§§pop() == §§pop())
                                    {
                                       if(_loc2_)
                                       {
                                          if(!(_loc2_ || _loc3_))
                                          {
                                             continue loop8;
                                          }
                                          if(_loc3_)
                                          {
                                             break loop7;
                                          }
                                          §§push(_loc1_);
                                       }
                                       else
                                       {
                                          if(_loc2_ || _loc1_)
                                          {
                                             addr35:
                                             §§push(this.§'!@§);
                                             if(!(_loc2_ || _loc3_))
                                             {
                                                §§goto(addr97);
                                             }
                                             if(_loc3_ && _loc2_)
                                             {
                                                continue;
                                             }
                                             if(_loc3_)
                                             {
                                                §§goto(addr128);
                                             }
                                             if(!_loc3_)
                                             {
                                                return §§pop();
                                             }
                                             §§goto(addr108);
                                          }
                                          §§goto(addr136);
                                       }
                                       addr97:
                                       return §§pop();
                                    }
                                    §§goto(addr35);
                                 }
                                 break;
                              }
                              continue loop0;
                           }
                           §§goto(addr110);
                        }
                     }
                     addr128:
                     return §§pop();
                  }
               }
            }
         }
         §§goto(addr129);
      }
      
      public function §;!5§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§@!K§());
         if(!(_loc3_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || param1)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(0);
               addr109:
               while(true)
               {
                  §§push(§§pop() > §§pop());
                  addr110:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(!§§pop())
                        {
                           do
                           {
                              this.§'!@§ = param1;
                           }
                           while(!(_loc4_ || _loc3_));
                           
                           if(_loc3_)
                           {
                              break;
                           }
                           if(!_loc4_)
                           {
                              continue loop0;
                           }
                        }
                        return;
                        addr93:
                     }
                     while(true)
                     {
                        §§pop();
                        continue loop0;
                     }
                  }
               }
            }
         }
      }
      
      public function §@$§(param1:String) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc3_:* = 0;
         var _loc5_:Object = null;
         var _loc6_:* = null;
         var _loc8_:§5!b§ = null;
         var _loc9_:Object = null;
         var _loc10_:§ l§ = null;
         var _loc11_:§]!A§ = null;
         var _loc2_:Object = JSON.parse(param1);
         if(!_loc13_)
         {
            this.§!!<§ = _loc2_.scoreSilver;
            loop0:
            while(true)
            {
               this.§8Z§ = _loc2_.scoreGold;
               loop1:
               while(true)
               {
                  this.§'!@§ = _loc2_.scoreEagle;
                  while(true)
                  {
                     this.§]f§ = _loc2_.theme;
                     while(!(_loc13_ && param1))
                     {
                        this.mName = _loc2_.id;
                        loop4:
                        while(true)
                        {
                           if(_loc2_.counts.joints)
                           {
                              continue;
                           }
                           loop6:
                           while(true)
                           {
                              this.§7z§ = new Vector.<§5!b§>();
                              loop7:
                              while(_loc12_ || _loc3_)
                              {
                                 this.§0!b§ = new Vector.<§ l§>();
                                 loop8:
                                 while(!(_loc13_ && _loc3_))
                                 {
                                    while(true)
                                    {
                                       this.§[!L§ = new Vector.<§]!A§>();
                                       continue loop8;
                                       addr49:
                                       if(_loc13_)
                                       {
                                          break;
                                       }
                                       if(false)
                                       {
                                          continue;
                                       }
                                       addr285:
                                       §§push(_loc3_);
                                       if(_loc12_)
                                       {
                                          if(§§pop() < _loc2_.camera.length)
                                          {
                                             (_loc8_ = new §5!b§()).x = _loc2_.camera[_loc3_].x;
                                             if(_loc12_)
                                             {
                                                _loc8_.y = _loc2_.camera[_loc3_].y;
                                                _loc8_.left = _loc2_.camera[_loc3_].left;
                                                _loc8_.right = _loc2_.camera[_loc3_].right;
                                                _loc8_.top = _loc2_.camera[_loc3_].top;
                                                _loc8_.bottom = _loc2_.camera[_loc3_].bottom;
                                                _loc8_.id = _loc2_.camera[_loc3_].id;
                                                addr217:
                                                this.§7z§.push(_loc8_);
                                                addr284:
                                                addr276:
                                                addr267:
                                                addr249:
                                                addr258:
                                                if(!_loc13_)
                                                {
                                                   if(!(_loc13_ && _loc2_))
                                                   {
                                                      _loc3_++;
                                                      if(_loc12_ || _loc2_)
                                                      {
                                                         if(!(_loc13_ && _loc2_))
                                                         {
                                                            if(!_loc13_)
                                                            {
                                                               if(_loc12_ || param1)
                                                               {
                                                                  if(!(_loc13_ && this))
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        §§goto(addr217);
                                                                     }
                                                                     §§goto(addr285);
                                                                  }
                                                                  §§goto(addr284);
                                                               }
                                                               §§goto(addr276);
                                                            }
                                                            §§goto(addr267);
                                                         }
                                                         §§goto(addr249);
                                                      }
                                                      §§goto(addr217);
                                                      addr231:
                                                   }
                                                   §§goto(addr258);
                                                }
                                                addr240:
                                                §§goto(addr240);
                                             }
                                             §§goto(addr231);
                                          }
                                          if(_loc12_ || param1)
                                          {
                                             §§push(1);
                                             if(!(_loc13_ && this))
                                             {
                                                addr307:
                                                _loc3_ = §§pop();
                                                addr393:
                                                if(_loc12_)
                                                {
                                                   addr388:
                                                   §§push(_loc3_);
                                                }
                                                var _loc4_:Vector.<int> = new Vector.<int>();
                                                var _loc7_:int = 1;
                                                if(!_loc13_)
                                                {
                                                   §§push(1);
                                                   if(_loc12_)
                                                   {
                                                      _loc3_ = §§pop();
                                                      if(!_loc13_)
                                                      {
                                                         addr489:
                                                         §§push(_loc3_);
                                                         if(!_loc13_)
                                                         {
                                                            if(§§pop() <= _loc2_.counts.blocks)
                                                            {
                                                               §§push("block_");
                                                               if(_loc12_)
                                                               {
                                                                  §§push(_loc3_);
                                                                  if(!(_loc13_ && param1))
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc12_ || _loc2_)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(_loc12_ || param1)
                                                                        {
                                                                           _loc6_ = §§pop();
                                                                           if(!(_loc13_ && param1))
                                                                           {
                                                                              §§push(Boolean((_loc5_ = _loc2_.world[_loc6_]).uniqueID));
                                                                              if(!_loc13_)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(_loc12_ || param1)
                                                                                    {
                                                                                       §§pop();
                                                                                       if(_loc12_ || _loc2_)
                                                                                       {
                                                                                          addr479:
                                                                                          if(_loc5_.uniqueID.length > 0)
                                                                                          {
                                                                                             if(!_loc13_)
                                                                                             {
                                                                                                _loc4_.push(_loc5_.uniqueID);
                                                                                                if(!_loc12_)
                                                                                                {
                                                                                                }
                                                                                                §§goto(addr489);
                                                                                             }
                                                                                          }
                                                                                          _loc3_++;
                                                                                       }
                                                                                       §§goto(addr489);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr479);
                                                                           }
                                                                           addr705:
                                                                           if(_loc3_ <= _loc2_.counts.blocks)
                                                                           {
                                                                              addr520:
                                                                              _loc6_ = "block_" + _loc3_;
                                                                              addr519:
                                                                              addr518:
                                                                              addr517:
                                                                              if(!(_loc13_ && _loc3_))
                                                                              {
                                                                                 addr528:
                                                                                 _loc5_ = _loc2_.world[_loc6_];
                                                                                 (_loc11_ = new §]!A§()).x = _loc5_.x;
                                                                                 if(_loc12_)
                                                                                 {
                                                                                    _loc11_.y = _loc5_.y;
                                                                                    _loc11_.id = _loc5_.id;
                                                                                    addr704:
                                                                                    addr699:
                                                                                    §§push(Boolean(_loc5_.uniqueID));
                                                                                    if(_loc12_ || param1)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          addr692:
                                                                                          §§pop();
                                                                                          §§push(_loc5_.uniqueID.length > 0);
                                                                                          if(_loc13_)
                                                                                          {
                                                                                          }
                                                                                          §§goto(addr692);
                                                                                          addr693:
                                                                                       }
                                                                                       if(§§pop())
                                                                                       {
                                                                                          addr674:
                                                                                          _loc11_.uniqueID = _loc5_.uniqueID;
                                                                                          addr678:
                                                                                          if(_loc5_.front)
                                                                                          {
                                                                                             addr618:
                                                                                             if(!(_loc13_ && _loc2_))
                                                                                             {
                                                                                                if(!(_loc13_ && param1))
                                                                                                {
                                                                                                   _loc11_.front = _loc5_.front;
                                                                                                   addr590:
                                                                                                   _loc11_.angle = _loc5_.angle;
                                                                                                   addr595:
                                                                                                   if(_loc12_ || _loc2_)
                                                                                                   {
                                                                                                      if(!_loc13_)
                                                                                                      {
                                                                                                         if(_loc12_ || _loc2_)
                                                                                                         {
                                                                                                            if(_loc12_)
                                                                                                            {
                                                                                                               addr577:
                                                                                                               this.§[!L§.push(_loc11_);
                                                                                                               if(_loc12_ || _loc3_)
                                                                                                               {
                                                                                                                  _loc3_++;
                                                                                                                  if(!(_loc13_ && this))
                                                                                                                  {
                                                                                                                     if(!(_loc13_ && _loc3_))
                                                                                                                     {
                                                                                                                        if(_loc12_ || this)
                                                                                                                        {
                                                                                                                           if(_loc12_ || this)
                                                                                                                           {
                                                                                                                              if(false)
                                                                                                                              {
                                                                                                                                 §§goto(addr577);
                                                                                                                              }
                                                                                                                              §§goto(addr705);
                                                                                                                           }
                                                                                                                           §§goto(addr704);
                                                                                                                        }
                                                                                                                        §§goto(addr674);
                                                                                                                     }
                                                                                                                     §§goto(addr595);
                                                                                                                  }
                                                                                                                  §§goto(addr577);
                                                                                                               }
                                                                                                               §§goto(addr618);
                                                                                                            }
                                                                                                            addr648:
                                                                                                            _loc11_.uniqueID = _loc7_.toString();
                                                                                                         }
                                                                                                         if(!_loc13_)
                                                                                                         {
                                                                                                            _loc4_.push(_loc7_);
                                                                                                            addr641:
                                                                                                            §§goto(addr674);
                                                                                                         }
                                                                                                         §§goto(addr699);
                                                                                                      }
                                                                                                      §§goto(addr641);
                                                                                                   }
                                                                                                   addr636:
                                                                                                   §§goto(addr636);
                                                                                                }
                                                                                                §§goto(addr693);
                                                                                             }
                                                                                             addr661:
                                                                                             if(_loc12_)
                                                                                             {
                                                                                                addr642:
                                                                                                if(_loc4_.indexOf(_loc7_) < 0)
                                                                                                {
                                                                                                   §§goto(addr648);
                                                                                                }
                                                                                                _loc7_++;
                                                                                                §§goto(addr661);
                                                                                             }
                                                                                             §§goto(addr678);
                                                                                          }
                                                                                          §§goto(addr590);
                                                                                       }
                                                                                       §§goto(addr642);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr692);
                                                                              }
                                                                              §§goto(addr733);
                                                                           }
                                                                           addr514:
                                                                           if(!_loc13_)
                                                                           {
                                                                              this.§;!Y§ = _loc2_.slingshotX;
                                                                              if(_loc13_ && this)
                                                                              {
                                                                              }
                                                                              §§goto(addr733);
                                                                           }
                                                                           addr733:
                                                                           this.§'f§ = _loc2_.slingshotY;
                                                                           return;
                                                                           addr514:
                                                                        }
                                                                        §§goto(addr520);
                                                                     }
                                                                     §§goto(addr519);
                                                                  }
                                                                  §§goto(addr518);
                                                               }
                                                               §§goto(addr517);
                                                            }
                                                            if(_loc12_ || this)
                                                            {
                                                               addr503:
                                                               §§push(1);
                                                               if(!_loc13_)
                                                               {
                                                                  addr506:
                                                                  _loc3_ = §§pop();
                                                                  if(_loc12_ || param1)
                                                                  {
                                                                     §§goto(addr514);
                                                                  }
                                                                  §§goto(addr520);
                                                               }
                                                               §§goto(addr705);
                                                            }
                                                            §§goto(addr514);
                                                         }
                                                         §§goto(addr705);
                                                      }
                                                      §§goto(addr528);
                                                   }
                                                   §§goto(addr506);
                                                }
                                                §§goto(addr503);
                                             }
                                             if(§§pop() <= _loc2_.counts.birds)
                                             {
                                                _loc9_ = _loc2_.world["bird_" + _loc3_];
                                                (_loc10_ = new § l§()).x = _loc9_.x;
                                                if(!(_loc13_ && this))
                                                {
                                                   _loc10_.y = _loc9_.y;
                                                   _loc10_.id = _loc9_.id;
                                                   addr372:
                                                   this.§0!b§.push(_loc10_);
                                                   _loc3_++;
                                                   addr387:
                                                   addr382:
                                                   if(_loc12_ || param1)
                                                   {
                                                      if(!(_loc13_ && param1))
                                                      {
                                                         if(_loc12_ || _loc2_)
                                                         {
                                                            addr359:
                                                            if(false)
                                                            {
                                                               §§goto(addr372);
                                                            }
                                                            §§goto(addr388);
                                                         }
                                                         §§goto(addr387);
                                                      }
                                                      §§goto(addr382);
                                                   }
                                                   addr376:
                                                   §§goto(addr376);
                                                }
                                                §§goto(addr359);
                                             }
                                          }
                                          §§goto(addr393);
                                       }
                                       while(_loc12_ || _loc2_)
                                       {
                                          _loc3_ = 0;
                                          if(_loc13_)
                                          {
                                             continue;
                                          }
                                          §§goto(addr49);
                                       }
                                       §§goto(addr307);
                                    }
                                    continue loop7;
                                 }
                                 continue loop4;
                              }
                              addr128:
                              while(true)
                              {
                                 if(_loc13_)
                                 {
                                    break loop6;
                                 }
                                 continue loop6;
                              }
                           }
                           continue loop1;
                        }
                        if(_loc13_ && _loc3_)
                        {
                           continue;
                        }
                        if(!_loc12_)
                        {
                           continue loop0;
                        }
                        while(true)
                        {
                           this.§]N§ = §<-§(_loc2_.counts.joints,_loc2_.world);
                           §§goto(addr128);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr119);
      }
      
      public function §=i§() : Object
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Object = new Object();
         if(_loc4_)
         {
            _loc1_.scoreSilver = this.§!!<§;
            loop0:
            while(true)
            {
               _loc1_.scoreGold = this.§8Z§;
               loop1:
               while(true)
               {
                  _loc1_.scoreEagle = this.§'!@§;
                  while(true)
                  {
                     _loc1_.theme = this.§]f§;
                     continue loop1;
                     loop5:
                     while(!(_loc3_ && this))
                     {
                        _loc1_.camera = this.§7z§;
                        if(!(_loc4_ || _loc3_))
                        {
                           continue;
                        }
                        if(_loc3_)
                        {
                           continue loop1;
                        }
                        if(_loc3_)
                        {
                           continue loop0;
                        }
                        while(false)
                        {
                           while(true)
                           {
                              _loc1_.name = this.mName;
                              continue loop5;
                           }
                           continue loop1;
                        }
                        var _loc2_:* = Number(0);
                        if(!(_loc3_ && this))
                        {
                           _loc1_.world = new Object();
                           do
                           {
                              _loc2_ = Number(0);
                           }
                           while(_loc3_ && _loc1_);
                           
                        }
                        loop8:
                        while(true)
                        {
                           §§push(_loc2_);
                           loop9:
                           while(true)
                           {
                              if(§§pop() >= this.§0!b§.length)
                              {
                                 loop10:
                                 while(true)
                                 {
                                    if(!_loc3_)
                                    {
                                       §§push(0);
                                       loop11:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          loop12:
                                          while(!(_loc3_ && _loc1_))
                                          {
                                             _loc2_ = §§pop();
                                             while(true)
                                             {
                                                loop14:
                                                do
                                                {
                                                   §§push(_loc2_);
                                                   loop15:
                                                   while(true)
                                                   {
                                                      if(!(_loc3_ && _loc2_))
                                                      {
                                                         if(§§pop() < this.§[!L§.length)
                                                         {
                                                            _loc1_.world["block_" + (_loc2_ + 1)] = this.§[!L§[_loc2_];
                                                         }
                                                         loop16:
                                                         while(true)
                                                         {
                                                            §§push(0);
                                                            if(_loc3_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(Number(§§pop()));
                                                            loop17:
                                                            while(!(_loc3_ && _loc3_))
                                                            {
                                                               _loc2_ = §§pop();
                                                               while(true)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc2_);
                                                                     if(_loc4_ || _loc3_)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           if(§§pop() >= this.§]N§.length)
                                                                           {
                                                                              continue loop16;
                                                                           }
                                                                           addr290:
                                                                           _loc1_.world["joint_" + (_loc2_ + 1)] = this.§]N§[_loc2_].getAsSerializableObject();
                                                                           §§push(_loc2_);
                                                                        }
                                                                        §§push(§§pop() + 1);
                                                                        if(!(_loc3_ && _loc2_))
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              if(_loc4_)
                                                                              {
                                                                                 if(!(_loc3_ && this))
                                                                                 {
                                                                                    if(_loc3_ && _loc2_)
                                                                                    {
                                                                                       §§push(§§pop() + 1);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr385:
                                                                                    }
                                                                                    addr265:
                                                                                    §§push(Number(§§pop()));
                                                                                    if(_loc4_ || _loc2_)
                                                                                    {
                                                                                       _loc2_ = §§pop();
                                                                                       continue;
                                                                                    }
                                                                                    continue loop15;
                                                                                    break loop12;
                                                                                 }
                                                                                 addr387:
                                                                                 _loc2_ = §§pop();
                                                                                 break;
                                                                              }
                                                                              addr331:
                                                                              addr330:
                                                                              _loc2_ = §§pop();
                                                                              if(!_loc4_)
                                                                              {
                                                                                 break loop15;
                                                                              }
                                                                              continue loop14;
                                                                           }
                                                                           continue loop17;
                                                                        }
                                                                     }
                                                                     §§goto(addr265);
                                                                  }
                                                                  continue loop8;
                                                               }
                                                            }
                                                            §§push(§§pop() + 1);
                                                            if(!(_loc3_ && this))
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  continue loop12;
                                                               }
                                                               §§push(Number(§§pop()));
                                                            }
                                                            §§goto(addr330);
                                                         }
                                                         continue loop11;
                                                         break;
                                                      }
                                                      continue loop9;
                                                   }
                                                   while(true)
                                                   {
                                                      if(_loc3_ && this)
                                                      {
                                                         continue loop8;
                                                      }
                                                      §§goto(addr319);
                                                      §§push(_loc2_);
                                                   }
                                                   continue loop12;
                                                }
                                                while(_loc4_ || _loc1_);
                                                
                                                continue loop10;
                                                if(!(_loc4_ || _loc2_))
                                                {
                                                   continue;
                                                }
                                                §§goto(addr144);
                                             }
                                          }
                                          §§goto(addr387);
                                       }
                                    }
                                    else
                                    {
                                       §§push(_loc2_);
                                       addr404:
                                    }
                                    §§goto(addr385);
                                 }
                              }
                              else
                              {
                                 _loc1_.world["bird_" + (_loc2_ + 1)] = this.§0!b§[_loc2_];
                              }
                              §§goto(addr404);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr40);
      }
      
      public function §46§() : String
      {
         return JSON.stringify(this.§=i§());
      }
      
      public function §@!K§() : int
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:§]!A§ = null;
         var _loc3_:* = null;
         var _loc4_:§=?§ = null;
         var _loc1_:* = 0;
         for each(_loc2_ in this.§[!L§)
         {
            if(_loc7_)
            {
               §§push(_loc2_.id);
               if(!(_loc8_ && this))
               {
                  §§push(§§pop());
               }
               _loc3_ = §§pop();
            }
            §§push((_loc4_ = §3!!§.§^!-§(_loc3_)) == null);
            if(!_loc8_)
            {
               if(§§pop())
               {
                  if(!_loc8_)
                  {
                     §§pop();
                     if(!(_loc7_ || this))
                     {
                        continue;
                     }
                     §§push(_loc3_);
                     if(!(_loc8_ && _loc1_))
                     {
                        §§push(§§pop().indexOf("MISC_") == 0);
                        if(!_loc8_)
                        {
                           addr89:
                           if(§§pop())
                           {
                              if(!_loc8_)
                              {
                                 addr108:
                                 _loc3_ = "MISC_FOOD_" + _loc3_.substring(5);
                                 if(_loc7_ || _loc3_)
                                 {
                                    _loc4_ = §3!!§.§^!-§(_loc3_);
                                    addr121:
                                    if(!_loc4_)
                                    {
                                       continue;
                                    }
                                    if(!(_loc8_ && _loc2_))
                                    {
                                       §§push(_loc1_);
                                       if(!(_loc8_ && _loc2_))
                                       {
                                          §§push(§§pop() + _loc4_.score);
                                          if(!(_loc8_ && _loc1_))
                                          {
                                             §§push(int(§§pop()));
                                             if(_loc7_ || _loc2_)
                                             {
                                                addr156:
                                                _loc1_ = §§pop();
                                                if(_loc7_ || _loc2_)
                                                {
                                                   addr164:
                                                   if(§6!O§(_loc4_))
                                                   {
                                                      if(_loc7_ || _loc1_)
                                                      {
                                                         addr175:
                                                         §§push(_loc1_);
                                                         if(_loc7_ || _loc3_)
                                                         {
                                                            addr183:
                                                            §§push(_loc4_.§ !G§);
                                                            if(_loc7_)
                                                            {
                                                               §§push(§§pop() * § p§.§5k§.getValue());
                                                            }
                                                            §§push(int(§§pop() + §§pop()));
                                                         }
                                                         _loc1_ = §§pop();
                                                      }
                                                   }
                                                   continue;
                                                }
                                                §§goto(addr175);
                                             }
                                          }
                                          §§goto(addr183);
                                       }
                                       §§goto(addr156);
                                    }
                                    §§goto(addr164);
                                 }
                                 §§goto(addr175);
                              }
                              §§goto(addr164);
                           }
                           §§goto(addr121);
                        }
                        §§goto(addr164);
                     }
                     §§goto(addr108);
                  }
                  §§goto(addr164);
               }
               §§goto(addr89);
            }
            §§goto(addr164);
         }
         return _loc1_;
      }
      
      public function §3w§() : XML
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§5!b§ = null;
         var _loc3_:* = 0;
         var _loc1_:* = "";
         if(_loc7_ || _loc2_)
         {
            §§push(_loc1_);
            loop0:
            while(true)
            {
               §§push(§§pop() + "<Level background=\"ThemeHills\"");
               loop1:
               while(true)
               {
                  _loc1_ = §§pop();
                  loop2:
                  while(true)
                  {
                     §§push(_loc1_);
                     if(_loc7_ || _loc2_)
                     {
                        addr147:
                        §§push(" scoreSilver=\"" + this.§!!<§);
                        if(!_loc6_)
                        {
                           §§push("\"");
                           while(true)
                           {
                              §§push(§§pop() + §§pop());
                           }
                           addr146:
                        }
                        while(true)
                        {
                           §§push(§§pop() + §§pop());
                           addr148:
                           while(!_loc6_)
                           {
                              §§push(§§pop());
                           }
                           continue loop1;
                        }
                        addr147:
                     }
                     loop6:
                     while(true)
                     {
                        _loc1_ = §§pop();
                        loop7:
                        while(!(_loc6_ && _loc2_))
                        {
                           §§push(_loc1_);
                           if(_loc7_ || _loc3_)
                           {
                              if(_loc6_)
                              {
                                 continue loop6;
                              }
                              §§push(" scoreGold=\"" + this.§8Z§);
                              if(!(_loc6_ && this))
                              {
                                 §§push("\"");
                                 if(_loc7_)
                                 {
                                    addr112:
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc6_ && this))
                                    {
                                       §§push(§§pop() + §§pop());
                                       loop8:
                                       for(; _loc7_ || this; while(!(_loc6_ && _loc2_))
                                       {
                                          _loc1_ = §§pop();
                                          while(true)
                                          {
                                             if(_loc7_ || _loc2_)
                                             {
                                                if(!(_loc7_ || _loc1_))
                                                {
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   §§push(_loc1_);
                                                   if(!_loc6_)
                                                   {
                                                      §§goto(addr36);
                                                   }
                                                   §§goto(addr61);
                                                }
                                                for each(_loc2_ in this.§7z§)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      continue;
                                                   }
                                                   §§push(_loc1_);
                                                   if(_loc7_ || this)
                                                   {
                                                      §§push(" <Camera id=\"" + _loc2_.id);
                                                      if(!_loc6_)
                                                      {
                                                         §§push(§§pop() + "\" leftBorder=\"");
                                                         if(!(_loc6_ && _loc3_))
                                                         {
                                                            addr203:
                                                            §§push(_loc2_.left);
                                                            if(!(_loc6_ && _loc3_))
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(!_loc6_)
                                                               {
                                                                  §§push(§§pop() + "\" rightBorder=\"");
                                                                  if(_loc7_ || _loc1_)
                                                                  {
                                                                     addr224:
                                                                     §§push(_loc2_.right);
                                                                     if(_loc7_ || this)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc7_)
                                                                        {
                                                                           §§push(§§pop() + "\" topBorder=\"");
                                                                           if(_loc7_ || this)
                                                                           {
                                                                              addr245:
                                                                              §§push(_loc2_.top);
                                                                              if(_loc7_ || _loc2_)
                                                                              {
                                                                                 addr254:
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(_loc7_ || this)
                                                                                 {
                                                                                    addr262:
                                                                                    §§push(§§pop() + "\" bottomBorder=\"");
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       addr266:
                                                                                       §§push(_loc2_.top);
                                                                                       if(!(_loc6_ && _loc3_))
                                                                                       {
                                                                                          addr278:
                                                                                          addr275:
                                                                                          §§push(§§pop() + (§§pop() + §[V§.§7!T§));
                                                                                          if(_loc6_)
                                                                                          {
                                                                                          }
                                                                                          _loc1_ = §§pop() + §§pop();
                                                                                          continue;
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr278);
                                                                                    §§push(§§pop() + "\"></Camera>");
                                                                                 }
                                                                                 §§goto(addr266);
                                                                              }
                                                                           }
                                                                           §§goto(addr278);
                                                                        }
                                                                        §§goto(addr262);
                                                                     }
                                                                     §§goto(addr254);
                                                                  }
                                                                  §§goto(addr245);
                                                               }
                                                               §§goto(addr266);
                                                            }
                                                            §§goto(addr275);
                                                         }
                                                         §§goto(addr224);
                                                      }
                                                      §§goto(addr203);
                                                   }
                                                   §§goto(addr278);
                                                }
                                                if(!_loc6_)
                                                {
                                                   §§push(_loc1_);
                                                   loop17:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + "</Cameras>");
                                                      loop18:
                                                      while(true)
                                                      {
                                                         _loc1_ = §§pop();
                                                         loop19:
                                                         while(true)
                                                         {
                                                            §§push(_loc1_);
                                                            loop20:
                                                            while(true)
                                                            {
                                                               §§push("<Slingshot x=\"" + this.§0!b§[0].x);
                                                               loop21:
                                                               while(true)
                                                               {
                                                                  §§push("\" y=\"");
                                                                  loop22:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§push(§§pop() + (this.§0!b§[0].y - 8));
                                                                        if(!_loc6_)
                                                                        {
                                                                           addr697:
                                                                           §§push(§§pop() + "\">");
                                                                        }
                                                                        loop23:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           loop24:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              loop25:
                                                                              while(true)
                                                                              {
                                                                                 _loc1_ = §§pop();
                                                                                 loop26:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc1_);
                                                                                    loop27:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() + " <Birds>");
                                                                                       loop28:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc1_ = §§pop();
                                                                                          loop29:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(0);
                                                                                             loop30:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc3_ = §§pop();
                                                                                                loop31:
                                                                                                while(true)
                                                                                                {
                                                                                                   loop32:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc3_);
                                                                                                      loop33:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop() < this.§0!b§.length)
                                                                                                         {
                                                                                                            §§push(_loc1_);
                                                                                                            break;
                                                                                                         }
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            §§push(_loc1_);
                                                                                                            loop34:
                                                                                                            while(!(_loc6_ && _loc2_))
                                                                                                            {
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  break loop33;
                                                                                                               }
                                                                                                               §§push(§§pop() + " </Birds>");
                                                                                                               loop35:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc7_ || _loc2_)
                                                                                                                  {
                                                                                                                     if(!(_loc7_ || _loc1_))
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     _loc1_ = §§pop();
                                                                                                                     loop36:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc1_);
                                                                                                                        loop37:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + "</Slingshot>");
                                                                                                                           addr547:
                                                                                                                           while(!(_loc6_ && _loc2_))
                                                                                                                           {
                                                                                                                              _loc1_ = §§pop();
                                                                                                                              loop39:
                                                                                                                              while(_loc7_)
                                                                                                                              {
                                                                                                                                 §§push(0);
                                                                                                                                 loop40:
                                                                                                                                 for(; _loc7_; loop42:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc3_);
                                                                                                                                    if(!(_loc7_ || _loc3_))
                                                                                                                                    {
                                                                                                                                       continue loop40;
                                                                                                                                    }
                                                                                                                                    if(_loc6_ && this)
                                                                                                                                    {
                                                                                                                                       continue loop33;
                                                                                                                                    }
                                                                                                                                    if(§§pop() >= this.§[!L§.length)
                                                                                                                                    {
                                                                                                                                       if(!(_loc7_ || this))
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!_loc6_)
                                                                                                                                             {
                                                                                                                                                continue loop39;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          return new XML(_loc1_);
                                                                                                                                          addr390:
                                                                                                                                          addr379:
                                                                                                                                       }
                                                                                                                                       if(_loc7_)
                                                                                                                                       {
                                                                                                                                          if(!_loc6_)
                                                                                                                                          {
                                                                                                                                             continue loop36;
                                                                                                                                          }
                                                                                                                                          §§goto(addr535);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             _loc3_++;
                                                                                                                                          }
                                                                                                                                          addr529:
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!_loc6_)
                                                                                                                                          {
                                                                                                                                             continue loop42;
                                                                                                                                          }
                                                                                                                                          continue loop26;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§push(_loc1_);
                                                                                                                                       if(!_loc7_)
                                                                                                                                       {
                                                                                                                                          continue loop37;
                                                                                                                                       }
                                                                                                                                       §§push("<Item id=\"" + this.§[!L§[_loc3_].id);
                                                                                                                                       if(_loc7_)
                                                                                                                                       {
                                                                                                                                          §§push("\" x=\"");
                                                                                                                                          if(!_loc6_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             if(!_loc6_)
                                                                                                                                             {
                                                                                                                                                if(!(_loc6_ && this))
                                                                                                                                                {
                                                                                                                                                   if(_loc7_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + this.§[!L§[_loc3_].x);
                                                                                                                                                      if(_loc7_)
                                                                                                                                                      {
                                                                                                                                                         §§push("\" y=\"");
                                                                                                                                                         if(!(_loc6_ && _loc2_))
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc7_ || _loc1_))
                                                                                                                                                            {
                                                                                                                                                               continue loop22;
                                                                                                                                                            }
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                            if(!(_loc6_ && _loc1_))
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() + this.§[!L§[_loc3_].y);
                                                                                                                                                               if(_loc7_)
                                                                                                                                                               {
                                                                                                                                                                  addr465:
                                                                                                                                                                  §§push(§§pop() + "\" rotation=\"");
                                                                                                                                                                  if(_loc7_)
                                                                                                                                                                  {
                                                                                                                                                                     addr469:
                                                                                                                                                                     if(!(_loc6_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() + this.§[!L§[_loc3_].angle);
                                                                                                                                                                        if(_loc7_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           addr489:
                                                                                                                                                                           §§push(§§pop() + "\" ></Item>");
                                                                                                                                                                        }
                                                                                                                                                                        if(!(_loc6_ && _loc2_))
                                                                                                                                                                        {
                                                                                                                                                                           continue loop23;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr642);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr489);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr469);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr642);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr469);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr642);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr465);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr623);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr465);
                                                                                                                                    }
                                                                                                                                    §§goto(addr642);
                                                                                                                                 },continue loop23)
                                                                                                                                 {
                                                                                                                                    _loc3_ = §§pop();
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc7_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          continue loop40;
                                                                                                                                       }
                                                                                                                                       continue loop19;
                                                                                                                                    }
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(!_loc6_)
                                                                                                                                    {
                                                                                                                                       if(_loc6_)
                                                                                                                                       {
                                                                                                                                          continue loop21;
                                                                                                                                       }
                                                                                                                                       §§push(§§pop() + this.§0!b§[_loc3_].x + "\" y=\"" + this.§0!b§[_loc3_].y + "\"></Bird>");
                                                                                                                                    }
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                 }
                                                                                                                                 continue loop30;
                                                                                                                                 if(_loc6_ && this)
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 if(!_loc7_)
                                                                                                                                 {
                                                                                                                                    continue loop31;
                                                                                                                                 }
                                                                                                                                 §§goto(addr390);
                                                                                                                              }
                                                                                                                              continue loop32;
                                                                                                                           }
                                                                                                                           addr514:
                                                                                                                           continue loop18;
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc7_ || _loc3_)
                                                                                                                              {
                                                                                                                                 continue loop17;
                                                                                                                              }
                                                                                                                              continue loop37;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        if(!(_loc6_ && _loc1_))
                                                                                                                        {
                                                                                                                           if(!(_loc6_ && _loc2_))
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc1_);
                                                                                                                                 if(_loc7_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    if(!_loc7_)
                                                                                                                                    {
                                                                                                                                       continue loop34;
                                                                                                                                    }
                                                                                                                                    if(_loc6_)
                                                                                                                                    {
                                                                                                                                       continue loop27;
                                                                                                                                    }
                                                                                                                                    §§push(§§pop() + "</Level>");
                                                                                                                                    if(!_loc7_)
                                                                                                                                    {
                                                                                                                                       continue loop35;
                                                                                                                                    }
                                                                                                                                    if(_loc7_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       _loc1_ = §§pop();
                                                                                                                                       §§goto(addr379);
                                                                                                                                    }
                                                                                                                                    §§goto(addr547);
                                                                                                                                 }
                                                                                                                                 §§goto(addr514);
                                                                                                                              }
                                                                                                                              addr345:
                                                                                                                           }
                                                                                                                           addr656:
                                                                                                                           if(_loc7_ || _loc2_)
                                                                                                                           {
                                                                                                                              _loc3_++;
                                                                                                                              continue loop32;
                                                                                                                           }
                                                                                                                           continue loop29;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  if(_loc7_ || _loc1_)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     break loop34;
                                                                                                                  }
                                                                                                                  break loop32;
                                                                                                               }
                                                                                                               continue loop28;
                                                                                                            }
                                                                                                            if(!_loc7_)
                                                                                                            {
                                                                                                               continue loop25;
                                                                                                            }
                                                                                                            _loc1_ = §§pop();
                                                                                                            §§goto(addr656);
                                                                                                         }
                                                                                                         §§goto(addr593);
                                                                                                      }
                                                                                                      continue loop20;
                                                                                                   }
                                                                                                   continue loop24;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           if(!(_loc7_ || _loc3_))
                                                                           {
                                                                              continue;
                                                                           }
                                                                           §§goto(addr506);
                                                                           §§push(§§pop() + §§pop());
                                                                        }
                                                                     }
                                                                     §§goto(addr697);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr345);
                                             }
                                             §§goto(addr129);
                                          }
                                          continue loop7;
                                       })
                                       {
                                          §§push(§§pop());
                                          while(true)
                                          {
                                             _loc1_ = §§pop();
                                             addr129:
                                             while(true)
                                             {
                                                addr59:
                                                while(true)
                                                {
                                                   §§push(_loc1_);
                                                   addr61:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + ">");
                                                      continue loop8;
                                                   }
                                                }
                                             }
                                             addr36:
                                             if(_loc7_ || _loc3_)
                                             {
                                                continue loop0;
                                             }
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr147);
                                    }
                                    §§goto(addr148);
                                 }
                                 else
                                 {
                                    §§goto(addr146);
                                 }
                              }
                              §§goto(addr112);
                           }
                           §§goto(addr128);
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr85);
      }
      
      public function §0;§(param1:int) : §]!A§
      {
         return this.§[!L§[param1];
      }
      
      public function addObject(param1:§]!A§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§[!L§.push(param1);
         }
      }
      
      public function §]R§(param1:int) : § f§
      {
         return this.§]N§[param1];
      }
      
      public function §3!b§(param1:§ f§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§]N§.push(param1);
         }
      }
      
      public function §1&§(param1:int) : § l§
      {
         return this.§0!b§[param1];
      }
      
      public function §1!,§(param1:§ l§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§0!b§.push(param1);
         }
      }
      
      public function §^?§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§7z§ = new Vector.<§5!b§>();
         }
      }
      
      public function §@6§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§0!b§ = new Vector.<§ l§>();
         }
      }
      
      public function §-3§(param1:int) : §5!b§
      {
         return this.§7z§[param1];
      }
      
      public function §1s§(param1:§5!b§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§7z§.push(param1);
         }
      }
   }
}
