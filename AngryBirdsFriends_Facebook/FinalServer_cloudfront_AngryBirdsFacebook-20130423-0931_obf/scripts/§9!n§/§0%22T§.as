package §9!n§
{
   import §!!=§.§"l§;
   import §%!g§.*;
   import §-f§.§8!<§;
   import §-f§.§9L§;
   import §4!<§.§'!S§;
   import flash.geom.Point;
   import §super§.§>y§;
   import §super§.§?!F§;
   import §super§.§^m§;
   
   public class §0"T§
   {
      
      public static const §=!p§:String = "BACKGROUND_BLUE_GRASS";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §=!p§ = "BACKGROUND_BLUE_GRASS";
         }
      }
      
      public var §7x§:Number = 0;
      
      public var §;"H§:Number = -8;
      
      protected var §+?§:Vector.<§>y§> = null;
      
      protected var §9!L§:Vector.<§^m§> = null;
      
      protected var §>F§:Vector.<§?!F§> = null;
      
      protected var §<!$§:Vector.<§1S§> = null;
      
      public var §;!?§:int = 0;
      
      public var §8"G§:int = 0;
      
      private var §2!"§:int = 0;
      
      protected var §&!M§:String = null;
      
      public var mName:String = null;
      
      public function §0"T§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
            loop0:
            while(true)
            {
               this.§<!$§ = new Vector.<§1S§>();
               loop1:
               do
               {
                  this.§+?§ = new Vector.<§>y§>();
                  while(true)
                  {
                     this.§9!L§ = new Vector.<§^m§>();
                     loop3:
                     while(!_loc2_)
                     {
                        this.§>F§ = new Vector.<§?!F§>();
                        while(_loc1_)
                        {
                           this.§&!M§ = §=!p§;
                           if(_loc1_)
                           {
                              if(!_loc2_)
                              {
                                 continue loop1;
                              }
                              continue loop3;
                           }
                        }
                        continue loop0;
                     }
                  }
               }
               while(!_loc1_);
               
            }
         }
      }
      
      public static function §&"%§(param1:String) : §0"T§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§0"T§ = new §0"T§();
         if(_loc4_ || _loc2_)
         {
            _loc2_.§]z§(param1);
         }
         return _loc2_;
      }
      
      public static function §`"4§(param1:§9L§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1.§<!G§);
            loop0:
            while(true)
            {
               §§push(§9L§.§["-§);
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
                                 if(_loc3_ && §0"T§)
                                 {
                                    break;
                                 }
                                 if(!§§pop())
                                 {
                                    loop10:
                                    while(_loc2_ || _loc3_)
                                    {
                                       §§pop();
                                       loop11:
                                       while(_loc2_ || param1)
                                       {
                                          while(true)
                                          {
                                             §§push(param1.§<!G§);
                                             if(_loc3_ && §0"T§)
                                             {
                                                continue loop0;
                                             }
                                             addr52:
                                             §§push(§9L§.§+"W§);
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                if(_loc3_)
                                                {
                                                   continue loop1;
                                                }
                                                §§push(§§pop() == §§pop());
                                                loop12:
                                                while(true)
                                                {
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            §§push(true);
                                                            break loop12;
                                                         }
                                                         if(_loc3_)
                                                         {
                                                            continue loop11;
                                                         }
                                                      }
                                                      §§push(false);
                                                      if(!_loc2_)
                                                      {
                                                         break loop12;
                                                      }
                                                      if(_loc2_ || param1)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            continue loop9;
                                                         }
                                                         continue loop10;
                                                      }
                                                   }
                                                }
                                                if(!_loc3_)
                                                {
                                                   return §§pop();
                                                }
                                                addr146:
                                                while(true)
                                                {
                                                   §§pop();
                                                   break loop11;
                                                }
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   continue loop8;
                                                   §§goto(addr52);
                                                }
                                                addr102:
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          §§push(param1.§<!G§);
                                          continue loop0;
                                       }
                                    }
                                    continue loop2;
                                 }
                                 §§goto(addr74);
                              }
                              continue loop3;
                           }
                        }
                        §§goto(addr146);
                     }
                  }
               }
            }
         }
         §§goto(addr138);
      }
      
      public static function §7"K§(param1:String) : §0"T§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§0"T§ = §&"%§(param1);
         if(_loc5_)
         {
            _loc2_.§7x§ = _loc2_.§9!L§[0].x;
            if(_loc5_ || _loc3_)
            {
               addr38:
               _loc2_.§;"H§ = _loc2_.§9!L§[0].y - 8.5;
            }
            var _loc3_:* = Number(0);
            while(true)
            {
               §§push(_loc3_);
               if(_loc5_)
               {
                  if(§§pop() >= _loc2_.§+?§.length)
                  {
                     if(_loc5_ || _loc2_)
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
                  _loc2_.§+?§[_loc3_].angle = 360 - _loc2_.§+?§[_loc3_].angle;
                  while(true)
                  {
                     §§push(_loc3_);
                     if(!(_loc4_ && §0"T§))
                     {
                        §§push(§§pop() + 1);
                        if(!_loc4_)
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
         §§goto(addr38);
      }
      
      protected static function §>!0§(param1:int, param2:Object) : Vector.<§?!F§>
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§?!F§ = null;
         var _loc3_:Vector.<§?!F§> = new Vector.<§?!F§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               if(_loc9_ && §0"T§)
               {
                  continue;
               }
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(!(_loc9_ && param2))
               {
                  §§push(_loc5_.type == §?!F§.§?<§);
                  if(!_loc9_)
                  {
                     if(!§§pop())
                     {
                        if(!(_loc9_ && _loc3_))
                        {
                           addr98:
                           §§pop();
                           addr117:
                           if(_loc10_)
                           {
                              §§push(_loc5_.type == §?!F§.§5!b§);
                           }
                           _loc8_ = new §?!F§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                           if(!_loc9_)
                           {
                              if(_loc5_.type == §?!F§.§5!b§)
                              {
                                 if(!(_loc9_ && param1))
                                 {
                                    _loc8_.axisX = _loc5_.axisX;
                                    if(_loc10_ || param2)
                                    {
                                    }
                                    addr206:
                                    if(_loc5_.type == §?!F§.§8!B§)
                                    {
                                       if(!_loc9_)
                                       {
                                          _loc8_.§<3§ = _loc5_.destroyTimer;
                                          if(_loc10_ || §0"T§)
                                          {
                                          }
                                          addr227:
                                          _loc4_++;
                                          continue;
                                       }
                                       §§goto(addr227);
                                    }
                                    addr224:
                                    _loc3_.push(_loc8_);
                                    §§goto(addr227);
                                    addr181:
                                 }
                                 _loc8_.axisY = _loc5_.axisY;
                                 if(!(_loc9_ && _loc3_))
                                 {
                                    §§goto(addr181);
                                 }
                                 §§goto(addr224);
                              }
                           }
                           §§goto(addr224);
                        }
                     }
                     if(§§pop())
                     {
                        §§goto(addr117);
                     }
                     else
                     {
                        _loc8_ = new §?!F§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
                     }
                     §§goto(addr206);
                  }
               }
               §§goto(addr98);
            }
            §§goto(addr227);
         }
         return _loc3_;
      }
      
      public function get §-;§() : int
      {
         return this.§+?§.length;
      }
      
      public function get §"2§() : int
      {
         return this.§>F§.length;
      }
      
      public function get §9X§() : int
      {
         return this.§9!L§.length;
      }
      
      public function get § H§() : int
      {
         return this.§<!$§.length;
      }
      
      public function get theme() : String
      {
         return this.§&!M§;
      }
      
      public function set theme(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§&!M§ = param1;
         }
      }
      
      public function getEagleScore() : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§@Z§());
         if(!(_loc3_ && _loc1_))
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            §§push(_loc1_);
            loop0:
            while(true)
            {
               §§push(0);
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
                           loop4:
                           while(true)
                           {
                              §§push(_loc1_);
                              if(_loc2_)
                              {
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 §§push(this.§2!"§);
                                 loop5:
                                 while(true)
                                 {
                                    §§push(§§pop() < §§pop());
                                    if(_loc3_ && this)
                                    {
                                       continue loop3;
                                    }
                                    if(!(_loc2_ || _loc3_))
                                    {
                                       break;
                                    }
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          while(true)
                                          {
                                             §§push(this.§2!"§);
                                             if(!_loc2_)
                                             {
                                                break;
                                             }
                                             continue loop5;
                                          }
                                       }
                                       if(_loc2_)
                                       {
                                          §§goto(addr116);
                                       }
                                       addr117:
                                       addr76:
                                       while(!(_loc3_ && _loc1_))
                                       {
                                       }
                                       continue loop4;
                                       return §§pop();
                                    }
                                 }
                                 continue loop2;
                              }
                              §§goto(addr116);
                           }
                           continue loop0;
                        }
                     }
                     §§goto(addr111);
                  }
               }
            }
         }
         addr116:
         return _loc1_;
      }
      
      public function §>!g§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§@Z§());
         if(!_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(0);
               addr84:
               while(true)
               {
                  §§push(§§pop() > §§pop());
                  addr85:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           if(!§§pop())
                           {
                              do
                              {
                                 this.§2!"§ = param1;
                              }
                              while(_loc3_);
                              
                              if(!_loc3_)
                              {
                                 break;
                              }
                           }
                           if(_loc4_ || param1)
                           {
                              return;
                           }
                           continue loop0;
                        }
                        return;
                        addr71:
                     }
                     while(true)
                     {
                        §§pop();
                        continue loop0;
                     }
                  }
               }
            }
            addr83:
         }
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_)
            {
               §§push(param1);
               if(_loc4_)
               {
                  §§push(§§pop() < §§pop());
                  if(!_loc4_)
                  {
                     continue;
                  }
                  if(!_loc4_)
                  {
                     §§goto(addr85);
                  }
                  §§goto(addr71);
               }
               else
               {
                  §§goto(addr84);
               }
            }
            else
            {
               §§goto(addr83);
            }
            §§goto(addr84);
         }
      }
      
      public function §]z§(param1:String) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc3_:* = 0;
         var _loc5_:Object = null;
         var _loc6_:* = null;
         var _loc8_:§1S§ = null;
         var _loc9_:Object = null;
         var _loc10_:§^m§ = null;
         var _loc11_:§>y§ = null;
         var _loc2_:Object = JSON.parse(param1);
         if(_loc13_)
         {
            this.§;!?§ = _loc2_.scoreSilver;
            while(true)
            {
               this.§8"G§ = _loc2_.scoreGold;
               loop1:
               while(true)
               {
                  this.§2!"§ = _loc2_.scoreEagle;
                  while(true)
                  {
                     this.§&!M§ = _loc2_.theme;
                     addr145:
                     while(true)
                     {
                        this.mName = _loc2_.id;
                        continue loop1;
                     }
                     addr59:
                     if(_loc12_ && _loc2_)
                     {
                        continue;
                     }
                     if(false)
                     {
                        loop10:
                        while(true)
                        {
                           this.§+?§ = new Vector.<§>y§>();
                           loop11:
                           while(!_loc12_)
                           {
                              if(!(_loc12_ && _loc2_))
                              {
                                 addr84:
                                 if(!(_loc13_ || param1))
                                 {
                                    continue loop1;
                                 }
                                 while(true)
                                 {
                                    _loc3_ = 0;
                                    if(!_loc13_)
                                    {
                                       continue loop11;
                                    }
                                    addr50:
                                    if(_loc13_ || _loc2_)
                                    {
                                       if(!_loc12_)
                                       {
                                          §§goto(addr59);
                                       }
                                       else
                                       {
                                          §§goto(addr145);
                                       }
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          continue loop10;
                                          §§goto(addr50);
                                       }
                                       addr99:
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    if(_loc13_)
                                    {
                                       if(§§pop() < _loc2_.camera.length)
                                       {
                                          (_loc8_ = new §1S§()).x = _loc2_.camera[_loc3_].x;
                                          if(_loc13_)
                                          {
                                             _loc8_.y = _loc2_.camera[_loc3_].y;
                                             while(true)
                                             {
                                                _loc8_.left = _loc2_.camera[_loc3_].left;
                                                loop15:
                                                while(true)
                                                {
                                                   _loc8_.right = _loc2_.camera[_loc3_].right;
                                                   addr248:
                                                   while(true)
                                                   {
                                                      _loc8_.top = _loc2_.camera[_loc3_].top;
                                                      continue loop15;
                                                   }
                                                }
                                             }
                                          }
                                          while(false)
                                          {
                                             §§goto(addr196);
                                          }
                                          continue;
                                       }
                                       if(!(_loc12_ && this))
                                       {
                                          §§push(1);
                                          if(!_loc12_)
                                          {
                                             _loc3_ = §§pop();
                                             addr349:
                                             if(!(_loc12_ && _loc3_))
                                             {
                                                addr344:
                                                §§push(_loc3_);
                                                break;
                                                addr291:
                                             }
                                             var _loc4_:Vector.<int> = new Vector.<int>();
                                             var _loc7_:int = 1;
                                             if(_loc13_ || _loc2_)
                                             {
                                                §§push(1);
                                                if(!(_loc12_ && _loc2_))
                                                {
                                                   _loc3_ = §§pop();
                                                   if(!_loc12_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(_loc3_);
                                                         if(_loc13_ || param1)
                                                         {
                                                            if(§§pop() > _loc2_.counts.blocks)
                                                            {
                                                               if(_loc13_ || param1)
                                                               {
                                                                  §§push(1);
                                                                  if(!(_loc12_ && _loc2_))
                                                                  {
                                                                     break;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(§§pop() > _loc2_.counts.blocks)
                                                                     {
                                                                        if(_loc13_)
                                                                        {
                                                                           addr715:
                                                                           this.§7x§ = _loc2_.slingshotX;
                                                                           if(_loc13_ || this)
                                                                           {
                                                                              addr726:
                                                                              this.§;"H§ = _loc2_.slingshotY;
                                                                           }
                                                                        }
                                                                        §§goto(addr730);
                                                                     }
                                                                     §§push("block_");
                                                                     if(!(_loc12_ && this))
                                                                     {
                                                                        §§push(_loc3_);
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           addr522:
                                                                           loop32:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              addr523:
                                                                              while(true)
                                                                              {
                                                                                 _loc6_ = §§pop();
                                                                                 if(!_loc13_)
                                                                                 {
                                                                                    break loop32;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    _loc5_ = _loc2_.world[_loc6_];
                                                                                    (_loc11_ = new §>y§()).x = _loc5_.x;
                                                                                    if(_loc13_)
                                                                                    {
                                                                                       _loc11_.y = _loc5_.y;
                                                                                       loop35:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc11_.id = _loc5_.id;
                                                                                          loop36:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Boolean(_loc5_.uniqueID));
                                                                                             loop37:
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   loop38:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      addr686:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc5_.uniqueID.length > 0);
                                                                                                         if(!(_loc12_ && _loc3_))
                                                                                                         {
                                                                                                            continue loop37;
                                                                                                         }
                                                                                                         continue loop38;
                                                                                                      }
                                                                                                      continue loop37;
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc4_.indexOf(_loc7_) < 0)
                                                                                                            {
                                                                                                               continue loop36;
                                                                                                            }
                                                                                                            addr642:
                                                                                                            _loc7_++;
                                                                                                            while(!_loc13_)
                                                                                                            {
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc11_.uniqueID = _loc5_.uniqueID;
                                                                                                         continue loop35;
                                                                                                      }
                                                                                                   }
                                                                                                   addr665:
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr612);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        addr521:
                                                                     }
                                                                     §§goto(addr522);
                                                                  }
                                                                  addr709:
                                                               }
                                                               §§goto(addr715);
                                                            }
                                                            else
                                                            {
                                                               §§push("block_");
                                                               if(_loc13_)
                                                               {
                                                                  §§push(_loc3_);
                                                                  if(_loc13_ || _loc3_)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc13_ || this)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!(_loc12_ && _loc2_))
                                                                        {
                                                                           _loc6_ = §§pop();
                                                                           if(_loc13_ || _loc3_)
                                                                           {
                                                                              §§push(Boolean((_loc5_ = _loc2_.world[_loc6_]).uniqueID));
                                                                              if(_loc13_ || _loc2_)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(_loc13_ || _loc3_)
                                                                                    {
                                                                                       §§pop();
                                                                                       if(!(_loc12_ && _loc3_))
                                                                                       {
                                                                                          addr460:
                                                                                          if(_loc5_.uniqueID.length > 0)
                                                                                          {
                                                                                             if(_loc12_ && this)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             addr468:
                                                                                             _loc4_.push(_loc5_.uniqueID);
                                                                                             if(!_loc13_)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                          }
                                                                                          _loc3_++;
                                                                                          continue;
                                                                                       }
                                                                                       §§goto(addr468);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr460);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr526);
                                                                           }
                                                                        }
                                                                        §§goto(addr523);
                                                                     }
                                                                     §§goto(addr522);
                                                                  }
                                                                  §§goto(addr521);
                                                               }
                                                            }
                                                            §§goto(addr522);
                                                         }
                                                         break;
                                                      }
                                                      _loc3_ = §§pop();
                                                      if(_loc13_ || this)
                                                      {
                                                         §§goto(addr708);
                                                      }
                                                      addr730:
                                                      return;
                                                   }
                                                   §§goto(addr526);
                                                }
                                                §§goto(addr709);
                                             }
                                             §§goto(addr726);
                                          }
                                          break;
                                       }
                                       §§goto(addr291);
                                    }
                                    break;
                                 }
                                 while(§§pop() <= _loc2_.counts.birds)
                                 {
                                    _loc9_ = _loc2_.world["bird_" + _loc3_];
                                    (_loc10_ = new §^m§()).x = _loc9_.x;
                                    if(_loc13_)
                                    {
                                       _loc10_.y = _loc9_.y;
                                       while(true)
                                       {
                                          _loc10_.id = _loc9_.id;
                                          loop25:
                                          for(; _loc13_; while(true)
                                          {
                                             if(!(_loc12_ && _loc2_))
                                             {
                                                _loc3_++;
                                                if(!_loc12_)
                                                {
                                                   break;
                                                }
                                                continue;
                                             }
                                             continue loop25;
                                          })
                                          {
                                             while(true)
                                             {
                                                this.§9!L§.push(_loc10_);
                                                continue loop25;
                                             }
                                          }
                                       }
                                    }
                                    while(false)
                                    {
                                       §§goto(addr318);
                                    }
                                    §§goto(addr344);
                                 }
                                 §§goto(addr349);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    addr100:
                                    while(true)
                                    {
                                       this.§<!$§ = new Vector.<§1S§>();
                                       break loop11;
                                    }
                                 }
                                 addr124:
                              }
                           }
                           while(true)
                           {
                              if(!_loc12_)
                              {
                                 this.§9!L§ = new Vector.<§^m§>();
                                 §§goto(addr99);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    this.§>F§ = §>!0§(_loc2_.counts.joints,_loc2_.world);
                                    §§goto(addr124);
                                 }
                                 addr115:
                              }
                           }
                        }
                     }
                     §§goto(addr163);
                  }
               }
            }
         }
         §§goto(addr91);
      }
      
      public function §;!C§() : Object
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Object = new Object();
         if(_loc4_ || _loc2_)
         {
            _loc1_.scoreSilver = this.§;!?§;
            while(true)
            {
               _loc1_.scoreGold = this.§8"G§;
               addr84:
               while(true)
               {
                  _loc1_.scoreEagle = this.§2!"§;
               }
            }
            addr89:
         }
         loop2:
         while(true)
         {
            _loc1_.theme = this.§&!M§;
            loop3:
            while(_loc4_)
            {
               while(true)
               {
                  _loc1_.name = this.mName;
                  do
                  {
                     _loc1_.camera = this.§<!$§;
                  }
                  while(_loc3_ && _loc2_);
                  
                  if(_loc4_ || _loc1_)
                  {
                     continue loop2;
                  }
                  continue loop3;
               }
               continue loop2;
            }
            §§goto(addr84);
         }
      }
      
      public function §8z§() : String
      {
         return JSON.stringify(this.§;!C§());
      }
      
      public function §@Z§() : int
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:§>y§ = null;
         var _loc3_:* = null;
         var _loc4_:§9L§ = null;
         var _loc1_:* = 0;
         for each(_loc2_ in this.§+?§)
         {
            if(_loc8_ || _loc3_)
            {
               §§push(_loc2_.id);
               if(_loc8_)
               {
                  §§push(§§pop());
               }
               _loc3_ = §§pop();
            }
            §§push((_loc4_ = §8!<§.§3"[§(_loc3_)) == null);
            if(!(_loc7_ && _loc3_))
            {
               if(§§pop())
               {
                  if(_loc8_ || this)
                  {
                     §§pop();
                     if(_loc8_ || _loc3_)
                     {
                        §§push(_loc3_);
                        if(!_loc7_)
                        {
                           §§push(§§pop().indexOf("MISC_") == 0);
                           if(_loc8_)
                           {
                              addr105:
                              if(§§pop())
                              {
                                 if(!(_loc7_ && _loc1_))
                                 {
                                    addr126:
                                    §§push("MISC_FOOD_");
                                    if(!(_loc7_ && this))
                                    {
                                       §§push(§§pop() + _loc3_.substring(5));
                                    }
                                    _loc3_ = §§pop();
                                    if(_loc8_)
                                    {
                                       _loc4_ = §8!<§.§3"[§(_loc3_);
                                       addr134:
                                       if(!_loc4_)
                                       {
                                          continue;
                                       }
                                       if(!_loc7_)
                                       {
                                          §§push(_loc1_);
                                          if(!(_loc7_ && this))
                                          {
                                             §§push(§§pop() + _loc4_.score);
                                             if(_loc8_ || _loc2_)
                                             {
                                                §§push(int(§§pop()));
                                                if(_loc8_ || _loc1_)
                                                {
                                                   addr164:
                                                   _loc1_ = §§pop();
                                                   if(_loc7_ && this)
                                                   {
                                                      continue;
                                                   }
                                                   addr185:
                                                   if(!§`"4§(_loc4_))
                                                   {
                                                      continue;
                                                   }
                                                   if(_loc7_)
                                                   {
                                                      continue;
                                                   }
                                                   addr188:
                                                   §§push(_loc1_);
                                                   if(!(_loc7_ && _loc1_))
                                                   {
                                                      addr205:
                                                      §§push(_loc4_.§^!2§);
                                                      if(_loc8_)
                                                      {
                                                         §§push(§§pop() * §'!S§.§3"2§.getValue());
                                                      }
                                                      §§push(int(§§pop() + §§pop()));
                                                   }
                                                }
                                                _loc1_ = §§pop();
                                                continue;
                                             }
                                             §§goto(addr205);
                                          }
                                          §§goto(addr164);
                                       }
                                    }
                                 }
                                 §§goto(addr188);
                              }
                              §§goto(addr134);
                           }
                           §§goto(addr185);
                        }
                     }
                     §§goto(addr126);
                  }
                  §§goto(addr185);
               }
               §§goto(addr105);
            }
            §§goto(addr185);
         }
         return _loc1_;
      }
      
      public function §>!F§() : XML
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§1S§ = null;
         var _loc3_:int = 0;
         var _loc1_:* = "";
         if(!(_loc6_ && this))
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
                        if(!_loc6_)
                        {
                           §§push(" scoreSilver=\"");
                           loop4:
                           while(_loc7_)
                           {
                              §§push(this.§;!?§);
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 addr186:
                                 while(true)
                                 {
                                    §§push("\"");
                                    addr187:
                                    while(true)
                                    {
                                       §§push(§§pop() + §§pop());
                                       addr188:
                                       while(true)
                                       {
                                          §§push(§§pop() + §§pop());
                                          addr189:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                          }
                                       }
                                    }
                                 }
                                 addr130:
                                 §§push(this.§8"G§);
                                 if(!(_loc7_ || this))
                                 {
                                    continue;
                                 }
                                 §§push(§§pop() + §§pop());
                                 while(true)
                                 {
                                    §§push("\"");
                                    if(_loc7_ || _loc2_)
                                    {
                                       §§push(§§pop() + §§pop());
                                       loop13:
                                       while(true)
                                       {
                                          if(_loc7_)
                                          {
                                             §§push(§§pop() + §§pop());
                                             loop14:
                                             for(; _loc7_ || _loc2_; while(!(_loc6_ && _loc3_))
                                             {
                                                if(!(_loc6_ && _loc2_))
                                                {
                                                   _loc1_ = §§pop();
                                                   while(true)
                                                   {
                                                      if(_loc7_ || this)
                                                      {
                                                         §§push(_loc1_);
                                                         if(_loc7_)
                                                         {
                                                            continue loop0;
                                                         }
                                                         §§goto(addr77);
                                                      }
                                                      §§goto(addr161);
                                                   }
                                                   continue loop13;
                                                   addr103:
                                                }
                                                continue loop2;
                                             })
                                             {
                                                §§push(§§pop());
                                                loop15:
                                                while(true)
                                                {
                                                   _loc1_ = §§pop();
                                                   addr161:
                                                   loop16:
                                                   while(_loc7_ || _loc2_)
                                                   {
                                                      if(!(_loc7_ || _loc3_))
                                                      {
                                                         continue loop3;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(_loc1_);
                                                         addr77:
                                                         while(_loc7_)
                                                         {
                                                            if(!(_loc6_ && _loc1_))
                                                            {
                                                               §§push(">");
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  §§push("<Cameras>");
                                                                  addr43:
                                                                  continue loop14;
                                                                  if(_loc7_ || _loc2_)
                                                                  {
                                                                     continue loop13;
                                                                  }
                                                               }
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  _loc1_ = §§pop();
                                                                  break loop16;
                                                               }
                                                               addr190:
                                                            }
                                                         }
                                                         continue loop15;
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(_loc1_);
                                                      if(_loc6_ && _loc1_)
                                                      {
                                                         continue loop15;
                                                      }
                                                      §§push(" scoreGold=\"");
                                                      if(_loc6_ && _loc1_)
                                                      {
                                                         continue loop13;
                                                      }
                                                      if(_loc6_)
                                                      {
                                                         continue loop4;
                                                      }
                                                      §§goto(addr130);
                                                   }
                                                }
                                             }
                                             §§goto(addr189);
                                          }
                                          else
                                          {
                                             §§goto(addr186);
                                          }
                                       }
                                    }
                                    break;
                                 }
                                 §§goto(addr187);
                              }
                           }
                           continue loop1;
                        }
                        §§goto(addr190);
                     }
                  }
               }
               if(!(_loc7_ || _loc1_))
               {
                  continue;
               }
               §§goto(addr43);
            }
         }
         §§goto(addr73);
      }
      
      public function §,!§(param1:int) : §>y§
      {
         return this.§+?§[param1];
      }
      
      public function addObject(param1:§>y§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§+?§.push(param1);
         }
      }
      
      public function §^"4§(param1:int) : §?!F§
      {
         return this.§>F§[param1];
      }
      
      public function §%!>§(param1:§?!F§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§>F§.push(param1);
         }
      }
      
      public function §1!e§(param1:int) : §^m§
      {
         return this.§9!L§[param1];
      }
      
      public function §78§(param1:§^m§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§9!L§.push(param1);
         }
      }
      
      public function §0"[§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§<!$§ = new Vector.<§1S§>();
         }
      }
      
      public function §`f§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§9!L§ = new Vector.<§^m§>();
         }
      }
      
      public function §8!D§(param1:int) : §1S§
      {
         return this.§<!$§[param1];
      }
      
      public function §9"Q§(param1:§1S§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§<!$§.push(param1);
         }
      }
   }
}
