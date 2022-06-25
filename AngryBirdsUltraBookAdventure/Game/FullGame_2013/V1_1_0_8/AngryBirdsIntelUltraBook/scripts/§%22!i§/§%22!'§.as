package §"!i§
{
   import §0S§.§4K§;
   import §0S§.§7!Z§;
   import §40§.§5G§;
   import §5<§.§#c§;
   import §5<§.§-H§;
   import §5<§.§<n§;
   import §=!A§.*;
   import §`!M§.§%X§;
   import flash.geom.Point;
   
   public class §"!'§
   {
      
      public static const §0D§:String = "BACKGROUND_BLUE_GRASS";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §0D§ = "BACKGROUND_BLUE_GRASS";
         }
      }
      
      public var §`!P§:Number = 0;
      
      public var §=!M§:Number = -8;
      
      protected var §&O§:Vector.<§<n§> = null;
      
      protected var § Y§:Vector.<§#c§> = null;
      
      protected var §"!§:Vector.<§-H§> = null;
      
      protected var §5z§:Vector.<§8z§> = null;
      
      public var §2!m§:int = 0;
      
      public var §;"$§:int = 0;
      
      private var §&P§:int = 0;
      
      protected var §<H§:String = null;
      
      public var mName:String = null;
      
      public function §"!'§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
            while(true)
            {
               this.§5z§ = new Vector.<§8z§>();
               addr114:
               while(true)
               {
                  this.§&O§ = new Vector.<§<n§>();
                  addr41:
                  if(_loc1_ || this)
                  {
                     return;
                     addr58:
                  }
               }
               addr91:
               if(!(_loc1_ || _loc1_))
               {
                  continue;
               }
               this.§"!§ = new Vector.<§-H§>();
               do
               {
                  this.§<H§ = §0D§;
               }
               while(!_loc1_);
               
               if(_loc1_ || this)
               {
                  §§goto(addr41);
               }
               loop3:
               while(true)
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     §§goto(addr91);
                  }
                  else
                  {
                     while(true)
                     {
                        this.§ Y§ = new Vector.<§#c§>();
                        continue loop3;
                     }
                     §§goto(addr58);
                     addr106:
                  }
               }
               addr98:
               §§goto(addr114);
            }
         }
         §§goto(addr106);
      }
      
      public static function §1" §(param1:String) : §"!'§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§"!'§ = new §"!'§();
         if(_loc4_)
         {
            _loc2_.§"!O§(param1);
         }
         return _loc2_;
      }
      
      public static function §2b§(param1:§4K§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1.§-!o§);
            loop0:
            while(true)
            {
               §§push(§4K§.§8!J§);
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
                                 §§push(param1.§-!o§);
                                 while(true)
                                 {
                                    §§push(§4K§.§^!Q§);
                                    addr104:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                    }
                                    loop11:
                                    while(true)
                                    {
                                       §§push(param1.§-!o§);
                                       if(!_loc2_)
                                       {
                                          break;
                                       }
                                       if(!_loc2_)
                                       {
                                          continue loop0;
                                       }
                                       §§push(§4K§.§!!U§);
                                       if(_loc2_ || _loc2_)
                                       {
                                          if(_loc2_)
                                          {
                                             §§push(§§pop() == §§pop());
                                             loop12:
                                             while(true)
                                             {
                                                if(!_loc2_)
                                                {
                                                   continue loop4;
                                                }
                                                loop13:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc3_ && §"!'§))
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            continue loop11;
                                                         }
                                                         if(_loc3_)
                                                         {
                                                            break loop12;
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(true);
                                                            break loop13;
                                                         }
                                                      }
                                                   }
                                                   §§push(false);
                                                   if(_loc3_)
                                                   {
                                                      break;
                                                   }
                                                   if(!_loc3_)
                                                   {
                                                      addr25:
                                                      if(_loc2_ || _loc2_)
                                                      {
                                                         return §§pop();
                                                      }
                                                      addr115:
                                                      while(_loc2_)
                                                      {
                                                         §§pop();
                                                         continue loop11;
                                                         §§goto(addr25);
                                                      }
                                                      continue loop2;
                                                   }
                                                   continue loop12;
                                                }
                                                loop15:
                                                while(true)
                                                {
                                                   if(!(_loc2_ || §"!'§))
                                                   {
                                                      addr106:
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         if(!(_loc2_ || param1))
                                                         {
                                                            continue loop3;
                                                         }
                                                         if(§§pop())
                                                         {
                                                            §§goto(addr66);
                                                         }
                                                         §§goto(addr115);
                                                         continue loop15;
                                                      }
                                                      addr106:
                                                   }
                                                   return §§pop();
                                                }
                                                addr66:
                                             }
                                             continue loop5;
                                          }
                                          continue loop1;
                                       }
                                       §§goto(addr104);
                                       §§goto(addr106);
                                    }
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr106);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr79);
      }
      
      public static function §'O§(param1:String) : §"!'§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§"!'§ = §1" §(param1);
         if(!(_loc4_ && _loc2_))
         {
            _loc2_.§`!P§ = _loc2_.§ Y§[0].x;
            if(!_loc4_)
            {
               _loc2_.§=!M§ = _loc2_.§ Y§[0].y - 8.5;
            }
         }
         var _loc3_:* = Number(0);
         while(true)
         {
            §§push(_loc3_);
            if(!_loc4_)
            {
               if(§§pop() >= _loc2_.§&O§.length)
               {
                  if(!_loc4_)
                  {
                     break;
                  }
                  loop1:
                  while(!_loc5_)
                  {
                     while(true)
                     {
                        _loc3_ = §§pop();
                        continue loop1;
                     }
                  }
                  continue;
               }
               _loc2_.§&O§[_loc3_].angle = 360 - _loc2_.§&O§[_loc3_].angle;
               while(true)
               {
                  §§push(_loc3_);
                  if(_loc5_ || _loc2_)
                  {
                     §§push(§§pop() + 1);
                     if(_loc5_ || _loc3_)
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
      
      protected static function §'F§(param1:int, param2:Object) : Vector.<§-H§>
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§-H§ = null;
         var _loc3_:Vector.<§-H§> = new Vector.<§-H§>();
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
               if(!(_loc10_ && §"!'§))
               {
                  §§push(_loc5_.type == §-H§.§2h§);
                  if(_loc9_ || param1)
                  {
                     if(!§§pop())
                     {
                        if(_loc9_)
                        {
                           §§pop();
                           if(_loc9_)
                           {
                              addr110:
                              if(_loc5_.type == §-H§.§'"#§)
                              {
                                 addr111:
                                 _loc8_ = new §-H§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                                 if(_loc9_)
                                 {
                                    if(_loc5_.type == §-H§.§'"#§)
                                    {
                                       if(!(_loc10_ && _loc3_))
                                       {
                                          _loc8_.axisX = _loc5_.axisX;
                                          if(_loc9_)
                                          {
                                             addr159:
                                             _loc8_.axisY = _loc5_.axisY;
                                             if(!(_loc10_ && §"!'§))
                                             {
                                                addr185:
                                                if(_loc5_.type == §-H§.§1!4§)
                                                {
                                                   if(!(_loc10_ && param2))
                                                   {
                                                      _loc8_.§2,§ = _loc5_.destroyTimer;
                                                      if(_loc10_ && param2)
                                                      {
                                                      }
                                                      addr221:
                                                      _loc4_++;
                                                      continue;
                                                   }
                                                   §§goto(addr221);
                                                }
                                                addr170:
                                             }
                                             §§goto(addr221);
                                          }
                                          _loc3_.push(_loc8_);
                                          §§goto(addr221);
                                       }
                                       §§goto(addr159);
                                    }
                                    §§goto(addr170);
                                 }
                                 §§goto(addr221);
                              }
                              else
                              {
                                 _loc8_ = new §-H§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
                              }
                              §§goto(addr185);
                           }
                           §§goto(addr111);
                        }
                     }
                  }
               }
               §§goto(addr110);
            }
            §§goto(addr221);
         }
         return _loc3_;
      }
      
      public function get §^!b§() : int
      {
         return this.§&O§.length;
      }
      
      public function get §5!R§() : int
      {
         return this.§"!§.length;
      }
      
      public function get §[i§() : int
      {
         return this.§ Y§.length;
      }
      
      public function get §?!M§() : int
      {
         return this.§5z§.length;
      }
      
      public function get theme() : String
      {
         return this.§<H§;
      }
      
      public function set theme(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§<H§ = param1;
         }
      }
      
      public function getEagleScore() : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§+!u§());
         if(_loc2_ || _loc1_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(_loc2_)
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
                  if(_loc2_)
                  {
                     if(§§pop())
                     {
                        loop8:
                        while(true)
                        {
                           §§pop();
                           addr136:
                           loop5:
                           while(true)
                           {
                              §§push(_loc1_);
                              addr92:
                              while(true)
                              {
                                 if(!_loc2_)
                                 {
                                    break loop5;
                                 }
                                 §§push(this.§&P§);
                                 while(true)
                                 {
                                    if(!(_loc2_ || this))
                                    {
                                       continue loop1;
                                    }
                                    §§push(§§pop() < §§pop());
                                    if(_loc3_ && _loc3_)
                                    {
                                       continue loop8;
                                    }
                                 }
                              }
                              continue loop8;
                           }
                           continue loop0;
                        }
                        addr135:
                     }
                     loop2:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              §§push(this.§&P§);
                              loop4:
                              while(true)
                              {
                                 §§push(0);
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       if(!_loc3_)
                                       {
                                          §§push(_loc1_);
                                          while(true)
                                          {
                                             if(!_loc3_)
                                             {
                                                return §§pop();
                                             }
                                          }
                                          addr77:
                                       }
                                       else if(_loc2_)
                                       {
                                          if(!(_loc2_ || _loc1_))
                                          {
                                             break loop2;
                                          }
                                          while(true)
                                          {
                                             addr30:
                                             while(true)
                                             {
                                                §§push(this.§&P§);
                                                if(!(_loc3_ && _loc1_))
                                                {
                                                   continue loop4;
                                                }
                                                §§goto(addr77);
                                             }
                                          }
                                       }
                                       else
                                       {
                                          if(!_loc3_)
                                          {
                                             continue loop3;
                                          }
                                          §§goto(addr136);
                                       }
                                       §§goto(addr92);
                                    }
                                    §§goto(addr30);
                                 }
                                 break;
                              }
                              §§goto(addr96);
                           }
                        }
                        break;
                        §§goto(addr113);
                     }
                     §§goto(addr124);
                     §§push(_loc1_);
                  }
                  §§goto(addr135);
               }
            }
         }
         §§goto(addr89);
      }
      
      public function §^!j§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§+!u§());
         if(!_loc3_)
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
               addr104:
               while(true)
               {
                  §§push(§§pop() > §§pop());
                  addr105:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(!§§pop())
                        {
                           loop6:
                           while(true)
                           {
                              this.§&P§ = param1;
                              if(_loc4_)
                              {
                                 break;
                              }
                              addr101:
                              while(true)
                              {
                                 continue loop6;
                              }
                           }
                           if(!(_loc4_ || _loc2_))
                           {
                              break;
                           }
                           if(!(_loc3_ && _loc3_))
                           {
                              return;
                           }
                           continue loop0;
                        }
                        return;
                        addr98:
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
         §§goto(addr101);
      }
      
      public function §"!O§(param1:String) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc3_:* = 0;
         var _loc5_:Object = null;
         var _loc6_:* = null;
         var _loc8_:§8z§ = null;
         var _loc9_:Object = null;
         var _loc10_:§#c§ = null;
         var _loc11_:§<n§ = null;
         var _loc2_:Object = JSON.parse(param1);
         if(!_loc12_)
         {
            this.§2!m§ = _loc2_.scoreSilver;
            while(true)
            {
               this.§;"$§ = _loc2_.scoreGold;
               loop1:
               while(true)
               {
                  this.§&P§ = _loc2_.scoreEagle;
                  loop2:
                  while(true)
                  {
                     this.§<H§ = _loc2_.theme;
                     loop3:
                     while(true)
                     {
                        this.mName = _loc2_.id;
                        loop4:
                        while(true)
                        {
                           if(_loc2_.counts.joints)
                           {
                              while(true)
                              {
                                 this.§"!§ = §'F§(_loc2_.counts.joints,_loc2_.world);
                                 addr131:
                                 while(_loc13_)
                                 {
                                 }
                                 continue loop2;
                                 addr57:
                                 if(_loc12_ && _loc3_)
                                 {
                                    continue;
                                 }
                                 addr64:
                                 if(false)
                                 {
                                    loop11:
                                    while(true)
                                    {
                                       this.§&O§ = new Vector.<§<n§>();
                                       while(true)
                                       {
                                          if(_loc13_ || param1)
                                          {
                                             if(_loc12_)
                                             {
                                                break;
                                             }
                                             if(_loc12_)
                                             {
                                                continue loop1;
                                             }
                                             _loc3_ = 0;
                                             if(_loc12_ && this)
                                             {
                                                continue;
                                             }
                                             if(_loc12_)
                                             {
                                                continue loop3;
                                             }
                                             §§goto(addr57);
                                          }
                                          else
                                          {
                                             while(!(_loc12_ && param1))
                                             {
                                                continue loop11;
                                             }
                                             §§goto(addr131);
                                             addr92:
                                          }
                                       }
                                       continue loop4;
                                    }
                                 }
                                 loop13:
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    if(!_loc12_)
                                    {
                                       if(§§pop() >= _loc2_.camera.length)
                                       {
                                          addr364:
                                          if(!_loc12_)
                                          {
                                             §§push(1);
                                             if(_loc13_)
                                             {
                                                _loc3_ = §§pop();
                                                if(_loc13_)
                                                {
                                                   addr359:
                                                   §§push(_loc3_);
                                                   break;
                                                }
                                             }
                                             break;
                                          }
                                          var _loc4_:Vector.<int> = new Vector.<int>();
                                          var _loc7_:int = 1;
                                          if(!_loc12_)
                                          {
                                             §§push(1);
                                             if(!(_loc12_ && param1))
                                             {
                                                _loc3_ = §§pop();
                                                if(_loc13_)
                                                {
                                                   loop27:
                                                   while(true)
                                                   {
                                                      §§push(_loc3_);
                                                      if(_loc13_)
                                                      {
                                                         if(§§pop() > _loc2_.counts.blocks)
                                                         {
                                                            if(!_loc12_)
                                                            {
                                                               §§push(1);
                                                               if(!_loc12_)
                                                               {
                                                                  _loc3_ = §§pop();
                                                                  if(!(_loc12_ && param1))
                                                                  {
                                                                     addr480:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc3_);
                                                                        break loop27;
                                                                     }
                                                                     addr663:
                                                                  }
                                                                  §§goto(addr680);
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr670);
                                                         }
                                                         else
                                                         {
                                                            §§push("block_");
                                                            if(!(_loc12_ && this))
                                                            {
                                                               §§push(_loc3_);
                                                               if(!_loc12_)
                                                               {
                                                                  addr487:
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc13_)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(!(_loc12_ && this))
                                                                     {
                                                                        _loc6_ = §§pop();
                                                                        if(!(_loc12_ && _loc2_))
                                                                        {
                                                                           §§push(Boolean((_loc5_ = _loc2_.world[_loc6_]).uniqueID));
                                                                           if(!(_loc12_ && param1))
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc13_ || _loc2_)
                                                                                 {
                                                                                    §§pop();
                                                                                    if(_loc12_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    §§push(_loc5_.uniqueID.length > 0);
                                                                                 }
                                                                              }
                                                                           }
                                                                           if(§§pop())
                                                                           {
                                                                              if(!_loc12_)
                                                                              {
                                                                                 _loc4_.push(_loc5_.uniqueID);
                                                                                 if(!_loc13_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                              }
                                                                           }
                                                                           _loc3_++;
                                                                           continue;
                                                                        }
                                                                        §§goto(addr480);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        _loc6_ = §§pop();
                                                                        if(!(_loc12_ && _loc2_))
                                                                        {
                                                                           _loc5_ = _loc2_.world[_loc6_];
                                                                           (_loc11_ = new §<n§()).x = _loc5_.x;
                                                                           if(_loc13_)
                                                                           {
                                                                              _loc11_.y = _loc5_.y;
                                                                              loop29:
                                                                              while(true)
                                                                              {
                                                                                 _loc11_.id = _loc5_.id;
                                                                                 loop30:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Boolean(_loc5_.uniqueID));
                                                                                    loop31:
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop();
                                                                                             addr651:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc5_.uniqueID.length > 0);
                                                                                                if(!_loc13_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                if(_loc12_)
                                                                                                {
                                                                                                   continue loop31;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             loop35:
                                                                                             do
                                                                                             {
                                                                                                if(_loc4_.indexOf(_loc7_) >= 0)
                                                                                                {
                                                                                                   _loc7_++;
                                                                                                   continue;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc11_.uniqueID = _loc7_.toString();
                                                                                                   while(_loc13_)
                                                                                                   {
                                                                                                      _loc4_.push(_loc7_);
                                                                                                      loop38:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc13_ || _loc2_)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc5_.front)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc11_.angle = _loc5_.angle;
                                                                                                                     loop43:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!_loc12_)
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              this.§&O§.push(_loc11_);
                                                                                                                              continue loop43;
                                                                                                                           }
                                                                                                                           addr535:
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               while(!_loc12_)
                                                                                                               {
                                                                                                                  continue loop29;
                                                                                                               }
                                                                                                               continue loop38;
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc11_.uniqueID = _loc5_.uniqueID;
                                                                                                            }
                                                                                                            addr627:
                                                                                                         }
                                                                                                         §§goto(addr631);
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop35;
                                                                                                }
                                                                                             }
                                                                                             while(!_loc12_);
                                                                                             
                                                                                             continue loop30;
                                                                                          }
                                                                                          §§goto(addr627);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr554);
                                                                        }
                                                                        §§goto(addr676);
                                                                     }
                                                                     addr488:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr488);
                                                                  }
                                                                  §§goto(addr676);
                                                                  addr487:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr487);
                                                               }
                                                               addr486:
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr486);
                                                            }
                                                            addr485:
                                                         }
                                                         §§goto(addr676);
                                                      }
                                                      break;
                                                   }
                                                   while(true)
                                                   {
                                                      if(§§pop() > _loc2_.counts.blocks)
                                                      {
                                                         if(!_loc12_)
                                                         {
                                                            addr670:
                                                            this.§`!P§ = _loc2_.slingshotX;
                                                            if(!_loc12_)
                                                            {
                                                               addr676:
                                                               this.§=!M§ = _loc2_.slingshotY;
                                                            }
                                                            §§goto(addr680);
                                                         }
                                                         addr680:
                                                         return;
                                                      }
                                                      §§push("block_");
                                                      if(_loc13_)
                                                      {
                                                         §§goto(addr485);
                                                      }
                                                      §§goto(addr487);
                                                      §§goto(addr676);
                                                   }
                                                   addr664:
                                                }
                                                §§goto(addr480);
                                             }
                                             §§goto(addr664);
                                          }
                                          §§goto(addr670);
                                       }
                                       else
                                       {
                                          (_loc8_ = new §8z§()).x = _loc2_.camera[_loc3_].x;
                                          if(!(_loc12_ && param1))
                                          {
                                             _loc8_.y = _loc2_.camera[_loc3_].y;
                                             while(true)
                                             {
                                                _loc8_.left = _loc2_.camera[_loc3_].left;
                                             }
                                             addr270:
                                          }
                                          loop15:
                                          while(true)
                                          {
                                             _loc8_.right = _loc2_.camera[_loc3_].right;
                                             loop16:
                                             while(true)
                                             {
                                                _loc8_.top = _loc2_.camera[_loc3_].top;
                                                loop17:
                                                while(true)
                                                {
                                                   _loc8_.bottom = _loc2_.camera[_loc3_].bottom;
                                                   while(true)
                                                   {
                                                      if(_loc13_)
                                                      {
                                                         if(!_loc13_)
                                                         {
                                                            break;
                                                         }
                                                         _loc8_.id = _loc2_.camera[_loc3_].id;
                                                         continue loop15;
                                                      }
                                                      continue loop16;
                                                      loop21:
                                                      while(!(_loc12_ && _loc3_))
                                                      {
                                                         if(_loc13_)
                                                         {
                                                            _loc3_++;
                                                            if(!_loc12_)
                                                            {
                                                               if(_loc13_)
                                                               {
                                                                  addr190:
                                                                  if(false)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        this.§5z§.push(_loc8_);
                                                                        continue loop21;
                                                                        §§goto(addr190);
                                                                     }
                                                                     addr192:
                                                                  }
                                                                  continue loop13;
                                                               }
                                                               continue loop15;
                                                            }
                                                            continue;
                                                         }
                                                         continue loop17;
                                                      }
                                                   }
                                                   §§goto(addr270);
                                                }
                                             }
                                          }
                                       }
                                    }
                                    break;
                                 }
                                 loop22:
                                 while(§§pop() <= _loc2_.counts.birds)
                                 {
                                    _loc9_ = _loc2_.world["bird_" + _loc3_];
                                    (_loc10_ = new §#c§()).x = _loc9_.x;
                                    if(!_loc12_)
                                    {
                                       _loc10_.y = _loc9_.y;
                                       while(true)
                                       {
                                          _loc10_.id = _loc9_.id;
                                          loop24:
                                          for(; _loc13_ || _loc2_; while(true)
                                          {
                                             _loc3_++;
                                             if(_loc12_ && _loc2_)
                                             {
                                                continue;
                                             }
                                             if(_loc12_ && _loc2_)
                                             {
                                                continue loop24;
                                             }
                                             if(true)
                                             {
                                                break;
                                             }
                                             §§goto(addr325);
                                          },continue loop22)
                                          {
                                             while(true)
                                             {
                                                this.§ Y§.push(_loc10_);
                                                continue loop24;
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr340);
                                    §§goto(addr359);
                                 }
                                 §§goto(addr364);
                              }
                           }
                           while(true)
                           {
                              this.§5z§ = new Vector.<§8z§>();
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§ Y§ = new Vector.<§#c§>();
            §§goto(addr92);
         }
      }
      
      public function §<>§() : Object
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:Object = new Object();
         if(!_loc4_)
         {
            _loc1_.scoreSilver = this.§2!m§;
            while(true)
            {
               _loc1_.scoreGold = this.§;"$§;
               while(!_loc4_)
               {
                  addr30:
                  if(_loc4_ && _loc3_)
                  {
                     continue;
                  }
                  if(false)
                  {
                     loop5:
                     while(true)
                     {
                        _loc1_.name = this.mName;
                        addr44:
                        addr57:
                        while(!(_loc4_ && _loc3_))
                        {
                           _loc1_.camera = this.§5z§;
                           if(_loc3_)
                           {
                              continue loop5;
                           }
                        }
                        addr70:
                        while(_loc3_ || _loc1_)
                        {
                           continue loop5;
                           §§goto(addr44);
                        }
                        while(true)
                        {
                           _loc1_.theme = this.§<H§;
                           §§goto(addr57);
                        }
                     }
                     continue;
                  }
                  var _loc2_:* = Number(0);
                  if(_loc3_)
                  {
                     _loc1_.world = new Object();
                  }
                  _loc2_ = Number(0);
                  addr400:
                  if(!_loc3_)
                  {
                     §§goto(addr400);
                  }
                  addr340:
                  if(_loc2_ >= this.§ Y§.length)
                  {
                     addr346:
                     §§push(Number(0));
                     if(_loc3_ || _loc2_)
                     {
                        _loc2_ = §§pop();
                        addr356:
                        if(_loc2_ >= this.§&O§.length)
                        {
                           addr282:
                           §§push(0);
                           if(_loc3_ || _loc2_)
                           {
                              addr291:
                              §§push(Number(§§pop()));
                              if(!(_loc4_ && _loc2_))
                              {
                                 _loc2_ = §§pop();
                                 addr299:
                                 if(_loc3_ || _loc3_)
                                 {
                                    addr174:
                                    §§push(_loc2_);
                                    if(!_loc4_)
                                    {
                                       if(_loc3_)
                                       {
                                          if(_loc3_)
                                          {
                                             if(§§pop() >= this.§"!§.length)
                                             {
                                                addr186:
                                                if(_loc3_ || _loc1_)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         _loc1_.counts = new Object();
                                                         addr211:
                                                         if(!_loc4_)
                                                         {
                                                            _loc1_.counts.blocks = this.§&O§.length;
                                                            addr169:
                                                            if(!_loc4_)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  _loc1_.counts.birds = this.§ Y§.length;
                                                                  _loc1_.counts.joints = this.§"!§.length;
                                                                  addr139:
                                                                  if(!(_loc4_ && _loc2_))
                                                                  {
                                                                     if(!(_loc4_ && _loc2_))
                                                                     {
                                                                        _loc1_.slingshotX = this.§`!P§;
                                                                        _loc1_.slingshotY = this.§=!M§;
                                                                        if(!_loc4_)
                                                                        {
                                                                           if(_loc3_ || _loc2_)
                                                                           {
                                                                              if(!(_loc4_ && this))
                                                                              {
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    if(_loc4_ && _loc3_)
                                                                                    {
                                                                                       addr371:
                                                                                       _loc2_++;
                                                                                       §§goto(addr340);
                                                                                       addr359:
                                                                                       addr370:
                                                                                       addr388:
                                                                                    }
                                                                                    return _loc1_;
                                                                                 }
                                                                                 addr251:
                                                                                 if(!(_loc4_ && _loc1_))
                                                                                 {
                                                                                    §§goto(addr174);
                                                                                 }
                                                                                 §§goto(addr282);
                                                                              }
                                                                              §§goto(addr186);
                                                                           }
                                                                           §§goto(addr139);
                                                                        }
                                                                        addr131:
                                                                        §§goto(addr131);
                                                                     }
                                                                     §§goto(addr169);
                                                                  }
                                                                  addr161:
                                                                  §§goto(addr161);
                                                               }
                                                               §§goto(addr356);
                                                            }
                                                            §§goto(addr211);
                                                         }
                                                         addr321:
                                                         if(_loc3_)
                                                         {
                                                            §§goto(addr356);
                                                         }
                                                         §§goto(addr346);
                                                      }
                                                      addr310:
                                                      §§push(_loc2_ + 1);
                                                      if(!(_loc4_ && this))
                                                      {
                                                         addr318:
                                                         §§push(Number(§§pop()));
                                                         if(_loc3_)
                                                         {
                                                            _loc2_ = §§pop();
                                                            §§goto(addr321);
                                                         }
                                                         §§goto(addr371);
                                                      }
                                                      §§goto(addr340);
                                                      addr339:
                                                   }
                                                   §§goto(addr299);
                                                }
                                                §§push(_loc2_);
                                                if(_loc3_ || _loc2_)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      §§push(§§pop() + 1);
                                                      if(!(_loc4_ && _loc1_))
                                                      {
                                                         addr233:
                                                         if(!(_loc4_ && _loc2_))
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               if(!(_loc4_ && this))
                                                               {
                                                                  addr250:
                                                                  _loc2_ = Number(§§pop());
                                                                  §§goto(addr251);
                                                               }
                                                               §§goto(addr346);
                                                            }
                                                            §§goto(addr310);
                                                         }
                                                         §§goto(addr356);
                                                      }
                                                      §§goto(addr250);
                                                   }
                                                   §§goto(addr318);
                                                }
                                                §§goto(addr233);
                                                addr275:
                                             }
                                             _loc1_.world["joint_" + (_loc2_ + 1)] = this.§"!§[_loc2_].getAsSerializableObject();
                                             §§goto(addr275);
                                          }
                                          §§goto(addr310);
                                       }
                                       §§goto(addr291);
                                    }
                                    §§goto(addr250);
                                 }
                                 §§goto(addr371);
                              }
                              §§goto(addr359);
                           }
                           §§goto(addr346);
                        }
                        _loc1_.world["block_" + (_loc2_ + 1)] = this.§&O§[_loc2_];
                        §§goto(addr339);
                     }
                     §§goto(addr370);
                  }
                  _loc1_.world["bird_" + (_loc2_ + 1)] = this.§ Y§[_loc2_];
                  §§goto(addr388);
               }
            }
         }
         while(true)
         {
            _loc1_.scoreEagle = this.§&P§;
            §§goto(addr70);
         }
      }
      
      public function §-?§() : String
      {
         return JSON.stringify(this.§<>§());
      }
      
      public function §+!u§() : int
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:§<n§ = null;
         var _loc3_:* = null;
         var _loc4_:§4K§ = null;
         var _loc1_:* = 0;
         for each(_loc2_ in this.§&O§)
         {
            if(!(_loc8_ && this))
            {
               §§push(_loc2_.id);
               if(_loc7_)
               {
                  §§push(§§pop());
               }
               _loc3_ = §§pop();
            }
            §§push((_loc4_ = §7!Z§.§`!H§(_loc3_)) == null);
            if(_loc7_)
            {
               if(§§pop())
               {
                  if(!_loc8_)
                  {
                     §§pop();
                     if(!_loc8_)
                     {
                        §§push(_loc3_);
                        if(!(_loc8_ && _loc2_))
                        {
                           §§push(§§pop().indexOf("MISC_") == 0);
                           if(!_loc8_)
                           {
                              addr94:
                              if(§§pop())
                              {
                                 if(!_loc8_)
                                 {
                                    addr105:
                                    §§push("MISC_FOOD_");
                                    if(_loc7_)
                                    {
                                       §§push(§§pop() + _loc3_.substring(5));
                                    }
                                    _loc3_ = §§pop();
                                    if(!(_loc8_ && _loc1_))
                                    {
                                       _loc4_ = §7!Z§.§`!H§(_loc3_);
                                       addr118:
                                       if(!_loc4_)
                                       {
                                          continue;
                                       }
                                       if(!(_loc7_ || this))
                                       {
                                          continue;
                                       }
                                       §§push(_loc1_);
                                       if(!(_loc8_ && this))
                                       {
                                          §§push(§§pop() + _loc4_.score);
                                          if(!_loc8_)
                                          {
                                             §§push(int(§§pop()));
                                             if(_loc7_ || _loc3_)
                                             {
                                                _loc1_ = §§pop();
                                                if(_loc8_)
                                                {
                                                   continue;
                                                }
                                                addr151:
                                                if(!§2b§(_loc4_))
                                                {
                                                   continue;
                                                }
                                                if(!(_loc7_ || _loc1_))
                                                {
                                                   continue;
                                                }
                                                §§push(_loc1_);
                                                if(!_loc8_)
                                                {
                                                   addr184:
                                                   §§push(_loc4_.§]!3§);
                                                   if(_loc7_)
                                                   {
                                                      §§push(§§pop() * §5G§.§'!4§.getValue());
                                                   }
                                                   §§push(int(§§pop() + §§pop()));
                                                }
                                             }
                                             _loc1_ = §§pop();
                                             continue;
                                          }
                                       }
                                       §§goto(addr184);
                                    }
                                 }
                                 §§goto(addr151);
                              }
                              §§goto(addr118);
                           }
                           §§goto(addr151);
                        }
                     }
                     §§goto(addr105);
                  }
               }
            }
            §§goto(addr94);
         }
         return _loc1_;
      }
      
      public function §9!I§() : XML
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§8z§ = null;
         var _loc3_:* = 0;
         var _loc1_:* = "";
         if(_loc7_ || this)
         {
            §§push(_loc1_);
            while(true)
            {
               §§push("<Level background=\"ThemeHills\"");
               addr184:
               while(true)
               {
                  §§push(§§pop() + §§pop());
                  addr185:
                  loop2:
                  while(true)
                  {
                     _loc1_ = §§pop();
                     loop3:
                     while(true)
                     {
                        §§push(_loc1_);
                        while(true)
                        {
                           §§push(" scoreSilver=\"");
                           addr171:
                           while(true)
                           {
                              §§push(this.§2!m§);
                              addr173:
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 addr174:
                                 while(true)
                                 {
                                    §§push("\"");
                                    addr175:
                                    while(true)
                                    {
                                       §§push(§§pop() + §§pop());
                                       addr176:
                                       while(true)
                                       {
                                          §§push(§§pop() + §§pop());
                                          addr177:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             addr178:
                                             while(true)
                                             {
                                                _loc1_ = §§pop();
                                                addr179:
                                                while(!_loc6_)
                                                {
                                                }
                                                continue loop3;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           loop19:
                           while(!(_loc6_ && _loc2_))
                           {
                              §§push(">");
                              loop20:
                              while(_loc7_ || _loc1_)
                              {
                                 §§push(§§pop() + §§pop());
                                 loop21:
                                 for(; _loc7_ || this; §§push(§§pop() + §§pop()),if(!(_loc7_ || _loc2_))
                                 {
                                    continue;
                                 },§§goto(addr73))
                                 {
                                    _loc1_ = §§pop();
                                    loop22:
                                    while(true)
                                    {
                                       if(_loc7_)
                                       {
                                          §§push(_loc1_);
                                          if(_loc7_ || _loc2_)
                                          {
                                             if(_loc7_ || _loc3_)
                                             {
                                                §§push("<Cameras>");
                                                if(_loc6_)
                                                {
                                                   continue loop20;
                                                }
                                                addr51:
                                                if(_loc7_ || _loc1_)
                                                {
                                                   if(_loc7_ || _loc3_)
                                                   {
                                                      continue loop21;
                                                   }
                                                   §§goto(addr174);
                                                }
                                                while(_loc7_)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      break loop22;
                                                      addr73:
                                                      if(!(_loc7_ || _loc1_))
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc6_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      _loc1_ = §§pop();
                                                      if(!_loc7_)
                                                      {
                                                         continue loop22;
                                                      }
                                                      if(!(_loc6_ && _loc3_))
                                                      {
                                                         if(false)
                                                         {
                                                            while(true)
                                                            {
                                                               continue loop19;
                                                            }
                                                            addr187:
                                                            var _loc4_:int = 0;
                                                            var _loc5_:* = this.§5z§;
                                                            addr94:
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr187);
                                                         }
                                                         addr313:
                                                         for each(_loc2_ in _loc5_)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               §§push(_loc1_);
                                                               if(!_loc6_)
                                                               {
                                                                  §§push(" <Camera id=\"");
                                                                  if(_loc7_)
                                                                  {
                                                                     §§push(§§pop() + _loc2_.id);
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§push("\" leftBorder=\"");
                                                                        if(_loc7_)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!(_loc6_ && _loc1_))
                                                                           {
                                                                              §§push(_loc2_.left);
                                                                              if(!_loc6_)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    addr231:
                                                                                    §§push("\" rightBorder=\"");
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          §§push(_loc2_.right);
                                                                                          if(!(_loc6_ && _loc3_))
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(_loc7_ || _loc2_)
                                                                                             {
                                                                                                §§push("\" topBorder=\"");
                                                                                                if(_loc7_ || this)
                                                                                                {
                                                                                                   addr262:
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(!(_loc6_ && _loc1_))
                                                                                                   {
                                                                                                      addr270:
                                                                                                      §§push(_loc2_.top);
                                                                                                      if(_loc7_ || _loc2_)
                                                                                                      {
                                                                                                         addr279:
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            addr282:
                                                                                                            §§push("\" bottomBorder=\"");
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(!(_loc6_ && _loc1_))
                                                                                                               {
                                                                                                                  addr293:
                                                                                                                  §§push(_loc2_.top);
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     addr300:
                                                                                                                     addr297:
                                                                                                                     §§push(§§pop() + (§§pop() + §%X§.§8!@§));
                                                                                                                     if(_loc7_ || _loc3_)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     _loc1_ = §§pop() + §§pop();
                                                                                                                     §§goto(addr313);
                                                                                                                  }
                                                                                                                  §§goto(addr300);
                                                                                                               }
                                                                                                               addr309:
                                                                                                               §§goto(addr300);
                                                                                                               §§push(§§pop() + "\"></Camera>");
                                                                                                            }
                                                                                                            §§goto(addr309);
                                                                                                         }
                                                                                                         §§goto(addr300);
                                                                                                      }
                                                                                                      §§goto(addr297);
                                                                                                   }
                                                                                                   §§goto(addr300);
                                                                                                }
                                                                                                §§goto(addr309);
                                                                                             }
                                                                                             §§goto(addr270);
                                                                                          }
                                                                                          §§goto(addr300);
                                                                                       }
                                                                                       §§goto(addr270);
                                                                                    }
                                                                                    §§goto(addr309);
                                                                                 }
                                                                                 §§goto(addr293);
                                                                              }
                                                                              §§goto(addr279);
                                                                           }
                                                                           §§goto(addr231);
                                                                        }
                                                                        §§goto(addr262);
                                                                     }
                                                                  }
                                                                  §§goto(addr282);
                                                               }
                                                               §§goto(addr300);
                                                            }
                                                            §§goto(addr313);
                                                         }
                                                         if(!_loc6_)
                                                         {
                                                            addr829:
                                                            _loc1_ += "</Cameras>";
                                                            addr824:
                                                            _loc1_ += "<Slingshot x=\"" + this.§ Y§[0].x + "\" y=\"" + (this.§ Y§[0].y - 8) + "\">";
                                                            addr830:
                                                            addr827:
                                                            addr820:
                                                            addr822:
                                                            addr811:
                                                            addr804:
                                                            addr828:
                                                            addr821:
                                                            addr810:
                                                            addr823:
                                                            addr803:
                                                            addr825:
                                                            §§push(_loc1_);
                                                            §§push(" <Birds>");
                                                            if(_loc7_ || this)
                                                            {
                                                               addr789:
                                                               _loc1_ = §§pop() + §§pop();
                                                               addr769:
                                                               _loc3_ = 0;
                                                               addr790:
                                                               if(_loc7_ || _loc1_)
                                                               {
                                                                  addr647:
                                                                  if(_loc3_ >= this.§ Y§.length)
                                                                  {
                                                                     addr653:
                                                                     if(!_loc6_)
                                                                     {
                                                                        addr656:
                                                                        §§push(_loc1_);
                                                                        if(!(_loc6_ && this))
                                                                        {
                                                                           addr665:
                                                                           _loc1_ = §§pop() + " </Birds>";
                                                                           addr624:
                                                                           addr664:
                                                                           addr666:
                                                                           §§push(_loc1_ + "</Slingshot>");
                                                                           if(_loc7_ || _loc2_)
                                                                           {
                                                                              if(_loc7_ || this)
                                                                              {
                                                                                 _loc1_ = §§pop();
                                                                                 addr639:
                                                                                 if(!(_loc6_ && _loc3_))
                                                                                 {
                                                                                    addr604:
                                                                                    §§push(0);
                                                                                    if(_loc7_ || _loc2_)
                                                                                    {
                                                                                       _loc3_ = §§pop();
                                                                                       addr612:
                                                                                       if(!(_loc6_ && this))
                                                                                       {
                                                                                          addr327:
                                                                                          §§push(_loc3_);
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             if(_loc7_ || _loc3_)
                                                                                             {
                                                                                                if(§§pop() >= this.§&O§.length)
                                                                                                {
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      if(_loc7_ || this)
                                                                                                      {
                                                                                                         if(_loc7_)
                                                                                                         {
                                                                                                            if(_loc7_ || _loc1_)
                                                                                                            {
                                                                                                               §§push(_loc1_);
                                                                                                               if(_loc7_)
                                                                                                               {
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     if(!(_loc6_ && _loc2_))
                                                                                                                     {
                                                                                                                        §§push("</Level>");
                                                                                                                        if(!(_loc6_ && _loc3_))
                                                                                                                        {
                                                                                                                           if(!_loc6_)
                                                                                                                           {
                                                                                                                              if(!_loc6_)
                                                                                                                              {
                                                                                                                                 if(!(_loc6_ && _loc1_))
                                                                                                                                 {
                                                                                                                                    if(_loc7_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       if(!_loc6_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(!(_loc6_ && this))
                                                                                                                                          {
                                                                                                                                             if(!(_loc6_ && this))
                                                                                                                                             {
                                                                                                                                                _loc1_ = §§pop();
                                                                                                                                                addr426:
                                                                                                                                                if(!_loc6_)
                                                                                                                                                {
                                                                                                                                                   if(_loc6_ && this)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr790);
                                                                                                                                                   }
                                                                                                                                                   return new XML(_loc1_);
                                                                                                                                                }
                                                                                                                                                §§goto(addr653);
                                                                                                                                             }
                                                                                                                                             §§goto(addr789);
                                                                                                                                          }
                                                                                                                                          addr572:
                                                                                                                                          if(!(_loc6_ && this))
                                                                                                                                          {
                                                                                                                                             if(_loc7_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                addr587:
                                                                                                                                                §§push(§§pop());
                                                                                                                                                if(!(_loc6_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   if(_loc7_)
                                                                                                                                                   {
                                                                                                                                                      _loc1_ = §§pop();
                                                                                                                                                      addr597:
                                                                                                                                                      if(!_loc6_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc7_)
                                                                                                                                                         {
                                                                                                                                                            _loc3_++;
                                                                                                                                                            addr438:
                                                                                                                                                            if(!(_loc6_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr327);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr830);
                                                                                                                                                         }
                                                                                                                                                         _loc3_++;
                                                                                                                                                         addr766:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr647);
                                                                                                                                                   }
                                                                                                                                                   addr751:
                                                                                                                                                   if(!(_loc6_ && this))
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc6_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         _loc1_ = §§pop();
                                                                                                                                                         §§goto(addr766);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr827);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr824);
                                                                                                                                                }
                                                                                                                                                §§goto(addr656);
                                                                                                                                             }
                                                                                                                                             addr748:
                                                                                                                                             if(_loc7_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr751);
                                                                                                                                                §§push(§§pop());
                                                                                                                                             }
                                                                                                                                             §§goto(addr829);
                                                                                                                                          }
                                                                                                                                          §§goto(addr624);
                                                                                                                                       }
                                                                                                                                       §§goto(addr664);
                                                                                                                                    }
                                                                                                                                    §§goto(addr624);
                                                                                                                                 }
                                                                                                                                 addr458:
                                                                                                                                 if(_loc7_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + this.§&O§[_loc3_].id);
                                                                                                                                    if(_loc7_)
                                                                                                                                    {
                                                                                                                                       §§push("\" x=\"");
                                                                                                                                       if(_loc7_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          if(!(_loc6_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             addr484:
                                                                                                                                             §§push(§§pop() + §§pop() + this.§&O§[_loc3_].x);
                                                                                                                                             if(_loc7_)
                                                                                                                                             {
                                                                                                                                                if(!(_loc6_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   §§push("\" y=\"");
                                                                                                                                                   if(!(_loc6_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      addr507:
                                                                                                                                                      if(!_loc6_)
                                                                                                                                                      {
                                                                                                                                                         addr510:
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         if(_loc7_ || _loc2_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() + this.§&O§[_loc3_].y);
                                                                                                                                                            if(_loc7_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc7_ || _loc1_)
                                                                                                                                                               {
                                                                                                                                                                  §§push("\" rotation=\"");
                                                                                                                                                                  if(_loc7_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc6_ && _loc1_))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                        if(!(_loc6_ && _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           addr550:
                                                                                                                                                                           if(!_loc6_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() + this.§&O§[_loc3_].angle);
                                                                                                                                                                              if(!(_loc6_ && _loc2_))
                                                                                                                                                                              {
                                                                                                                                                                                 addr565:
                                                                                                                                                                                 addr566:
                                                                                                                                                                                 §§push("\" ></Item>");
                                                                                                                                                                                 if(_loc7_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr743:
                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                    if(_loc7_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr572);
                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                    }
                                                                                                                                                                                    if(_loc7_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr746:
                                                                                                                                                                                       §§goto(addr748);
                                                                                                                                                                                       §§push(§§pop() + (§§pop() + "\"></Bird>"));
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr829);
                                                                                                                                                                                 }
                                                                                                                                                                                 if(!_loc6_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr723:
                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                    if(_loc7_ || this)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc6_ && _loc1_))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr743);
                                                                                                                                                                                          §§push(§§pop() + this.§ Y§[_loc3_].y);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr820);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr822);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr811);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr743);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr804);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr565);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr746);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr566);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr723);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr550);
                                                                                                                                                         }
                                                                                                                                                         addr703:
                                                                                                                                                         §§push(§§pop() + "\" x=\"");
                                                                                                                                                         if(_loc7_)
                                                                                                                                                         {
                                                                                                                                                            addr706:
                                                                                                                                                            if(!(_loc6_ && _loc1_))
                                                                                                                                                            {
                                                                                                                                                               addr719:
                                                                                                                                                               §§goto(addr565);
                                                                                                                                                               §§push(§§pop() + this.§ Y§[_loc3_].x);
                                                                                                                                                               §§push("\" y=\"");
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr828);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr723);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr821);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr565);
                                                                                                                                                }
                                                                                                                                                §§goto(addr719);
                                                                                                                                             }
                                                                                                                                             §§goto(addr565);
                                                                                                                                          }
                                                                                                                                          §§goto(addr703);
                                                                                                                                       }
                                                                                                                                       §§goto(addr507);
                                                                                                                                    }
                                                                                                                                    §§goto(addr550);
                                                                                                                                 }
                                                                                                                                 §§goto(addr746);
                                                                                                                              }
                                                                                                                              §§goto(addr484);
                                                                                                                           }
                                                                                                                           §§goto(addr510);
                                                                                                                        }
                                                                                                                        §§goto(addr743);
                                                                                                                     }
                                                                                                                     addr674:
                                                                                                                     if(_loc7_ || this)
                                                                                                                     {
                                                                                                                        §§push("  <Bird id=\"");
                                                                                                                        if(!(_loc6_ && _loc2_))
                                                                                                                        {
                                                                                                                           if(!(_loc6_ && _loc2_))
                                                                                                                           {
                                                                                                                              §§goto(addr510);
                                                                                                                              §§push(§§pop() + this.§ Y§[_loc3_].id);
                                                                                                                           }
                                                                                                                           §§goto(addr810);
                                                                                                                        }
                                                                                                                        §§goto(addr706);
                                                                                                                     }
                                                                                                                     §§goto(addr829);
                                                                                                                  }
                                                                                                                  addr450:
                                                                                                                  if(!(_loc6_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§goto(addr458);
                                                                                                                     §§push("<Item id=\"");
                                                                                                                  }
                                                                                                                  §§goto(addr624);
                                                                                                               }
                                                                                                               §§goto(addr587);
                                                                                                            }
                                                                                                            §§goto(addr612);
                                                                                                         }
                                                                                                         §§goto(addr597);
                                                                                                      }
                                                                                                      §§goto(addr438);
                                                                                                   }
                                                                                                   §§goto(addr426);
                                                                                                }
                                                                                                §§goto(addr450);
                                                                                                §§push(_loc1_);
                                                                                             }
                                                                                             §§goto(addr647);
                                                                                          }
                                                                                          §§goto(addr604);
                                                                                       }
                                                                                       §§goto(addr639);
                                                                                    }
                                                                                    §§goto(addr769);
                                                                                 }
                                                                                 §§goto(addr666);
                                                                              }
                                                                              §§goto(addr823);
                                                                           }
                                                                           §§goto(addr665);
                                                                        }
                                                                        §§goto(addr803);
                                                                     }
                                                                     §§goto(addr789);
                                                                  }
                                                                  §§goto(addr674);
                                                                  §§push(_loc1_);
                                                               }
                                                               §§goto(addr825);
                                                            }
                                                            addr812:
                                                            §§goto(addr812);
                                                         }
                                                         §§goto(addr656);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr179);
                                                      }
                                                   }
                                                   §§goto(addr51);
                                                }
                                                §§goto(addr171);
                                             }
                                             break;
                                          }
                                          continue loop19;
                                       }
                                       addr167:
                                       while(true)
                                       {
                                          §§goto(addr94);
                                       }
                                    }
                                    while(true)
                                    {
                                       _loc1_ = §§pop();
                                       §§goto(addr167);
                                    }
                                 }
                                 §§goto(addr177);
                              }
                              §§goto(addr176);
                           }
                        }
                     }
                  }
               }
            }
            addr183:
         }
         while(true)
         {
            §§push(_loc1_);
            if(_loc7_)
            {
               if(!_loc6_)
               {
                  if(!_loc6_)
                  {
                     §§push(" scoreGold=\"");
                     if(_loc7_ || _loc2_)
                     {
                        §§push(this.§;"$§);
                        if(!_loc6_)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc7_ || _loc1_)
                           {
                              addr151:
                              if(_loc7_ || this)
                              {
                                 §§push("\"");
                                 if(!_loc6_)
                                 {
                                    §§goto(addr162);
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§goto(addr175);
                              }
                              else
                              {
                                 §§goto(addr184);
                              }
                           }
                           §§goto(addr51);
                        }
                        §§goto(addr173);
                     }
                     §§goto(addr151);
                  }
                  else
                  {
                     §§goto(addr183);
                  }
               }
               §§goto(addr178);
            }
            §§goto(addr166);
         }
      }
      
      public function § !X§(param1:int) : §<n§
      {
         return this.§&O§[param1];
      }
      
      public function addObject(param1:§<n§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§&O§.push(param1);
         }
      }
      
      public function §8[§(param1:int) : §-H§
      {
         return this.§"!§[param1];
      }
      
      public function §6!H§(param1:§-H§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§"!§.push(param1);
         }
      }
      
      public function §^!V§(param1:int) : §#c§
      {
         return this.§ Y§[param1];
      }
      
      public function §]Z§(param1:§#c§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§ Y§.push(param1);
         }
      }
      
      public function §&!Z§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§5z§ = new Vector.<§8z§>();
         }
      }
      
      public function §!!d§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§ Y§ = new Vector.<§#c§>();
         }
      }
      
      public function §#M§(param1:int) : §8z§
      {
         return this.§5z§[param1];
      }
      
      public function §7!x§(param1:§8z§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§5z§.push(param1);
         }
      }
   }
}
