package §7L§
{
   import flash.display.BitmapData;
   import flash.utils.ByteArray;
   
   public class §%!,§
   {
       
      
      private var §8c§:Array;
      
      private var §7!-§:Array;
      
      private var § 0§:Array;
      
      private var §7s§:Array;
      
      private var §^V§:Array;
      
      private var §-!=§:Array;
      
      private var §%1§:Array;
      
      private var §3l§:Array;
      
      private var §[G§:Array;
      
      private var §'[§:Array;
      
      private var §+4§:Array;
      
      private var §`!&§:Array;
      
      private var §<^§:Array;
      
      private var §-f§:Array;
      
      private var §2W§:Array;
      
      private var §>h§:Array;
      
      private var §!!M§:Array;
      
      private var §-9§:Array;
      
      private var category:Array;
      
      private var §@!P§:ByteArray;
      
      private var §?p§:int = 0;
      
      private var §#O§:int = 7;
      
      private var §3!8§:Array;
      
      private var §<!-§:Array;
      
      private var §#!+§:Array;
      
      private var §?!9§:Array;
      
      public function §%!,§(param1:Number = 50)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         this.§8c§ = [0,1,5,6,14,15,27,28,2,4,7,13,16,26,29,42,3,8,12,17,25,30,41,43,9,11,18,24,31,40,44,53,10,19,23,32,39,45,52,54,20,22,33,38,46,51,55,60,21,34,37,47,50,56,59,61,35,36,48,49,57,58,62,63];
         loop0:
         while(true)
         {
            this.§7!-§ = new Array(64);
            this.§ 0§ = new Array(64);
            loop1:
            while(true)
            {
               this.§7s§ = new Array(64);
               continue loop0;
               addr103:
               if(!(_loc4_ || param1))
               {
                  continue;
               }
               super();
               addr110:
               if(!(_loc3_ && _loc3_))
               {
                  loop13:
                  while(true)
                  {
                     §§push(param1);
                     loop14:
                     while(true)
                     {
                        §§push(0);
                        loop15:
                        while(true)
                        {
                           if(§§pop() <= §§pop())
                           {
                              if(_loc4_)
                              {
                                 if(!_loc3_)
                                 {
                                    addr68:
                                    if(_loc3_ && this)
                                    {
                                       break;
                                    }
                                    §§push(1);
                                    loop16:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       loop17:
                                       while(true)
                                       {
                                          param1 = §§pop();
                                          addr18:
                                          while(true)
                                          {
                                             §§push(param1);
                                             if(!_loc3_)
                                             {
                                                if(!_loc4_)
                                                {
                                                   continue loop14;
                                                }
                                                §§push(100);
                                                if(_loc3_)
                                                {
                                                   continue loop15;
                                                }
                                                if(§§pop() > §§pop())
                                                {
                                                   if(_loc4_ || param1)
                                                   {
                                                      §§push(100);
                                                      if(_loc4_)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            addr41:
                                                            §§push(Number(§§pop()));
                                                            if(_loc4_)
                                                            {
                                                               break;
                                                            }
                                                            continue loop17;
                                                         }
                                                         continue loop16;
                                                      }
                                                      addr739:
                                                      var _loc2_:* = §§pop();
                                                      if(param1 >= 50)
                                                      {
                                                         §§push(int(int(200 - param1 * 2)));
                                                         if(!_loc3_)
                                                         {
                                                            _loc2_ = §§pop();
                                                            addr768:
                                                            this.§]z§();
                                                            addr771:
                                                            if(!_loc3_)
                                                            {
                                                               if(_loc4_ || _loc2_)
                                                               {
                                                                  this.§6]§();
                                                                  this.§<7§(_loc2_);
                                                                  if(_loc4_ || _loc2_)
                                                                  {
                                                                     if(!(_loc4_ || _loc2_))
                                                                     {
                                                                        §§goto(addr771);
                                                                     }
                                                                     return;
                                                                  }
                                                                  addr767:
                                                                  §§goto(addr767);
                                                               }
                                                               addr815:
                                                               _loc2_ = int(int(5000 / param1));
                                                            }
                                                            §§goto(addr768);
                                                         }
                                                      }
                                                      §§goto(addr815);
                                                   }
                                                   addr44:
                                                   if(!(_loc3_ && this))
                                                   {
                                                      addr51:
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         if(false)
                                                         {
                                                            continue loop13;
                                                         }
                                                         addr738:
                                                         §§goto(addr739);
                                                         §§push(0);
                                                      }
                                                      else
                                                      {
                                                         while(_loc4_ || _loc3_)
                                                         {
                                                            this.§!!M§ = [0,1,2,3,17,4,5,33,49,6,18,65,81,7,97,113,19,34,50,129,8,20,66,145,161,177,193,9,35,51,82,240,21,98,114,209,10,22,36,52,225,37,241,23,24,25,26,38,39,40,41,42,53,54,55,56,57,58,67,68,69,70,71,72,73,74,83,84,85,86,87,88,89,90,99,100,101,102,103,104,105,106,115,116,117,118,119,120,121,122,130,131,132,133,134,135,136,137,138,146,147,148,149,150,151,152,153,154,162,163,164,165,166,167,168,169,170,178,179,180,181,182,183,184,185,186,194,195,196,197,198,199,200,201,202,210,211,212,213,214,215,216,217,218,226,227,228,229,230,231,232,233,234,242,243,244,245,246,247,248,249,250];
                                                            loop8:
                                                            while(true)
                                                            {
                                                               this.§-9§ = new Array(65535);
                                                               this.category = new Array(65535);
                                                               while(true)
                                                               {
                                                                  this.§3!8§ = new Array(64);
                                                                  loop10:
                                                                  while(!_loc3_)
                                                                  {
                                                                     this.§<!-§ = new Array(64);
                                                                     while(true)
                                                                     {
                                                                        if(_loc4_ || _loc2_)
                                                                        {
                                                                           continue loop8;
                                                                        }
                                                                        continue loop10;
                                                                        §§goto(addr110);
                                                                     }
                                                                     continue loop1;
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr51);
                                                         }
                                                         while(true)
                                                         {
                                                            this.§-f§ = [0,0,3,1,1,1,1,1,1,1,1,1,0,0,0,0,0];
                                                            if(_loc3_ && _loc3_)
                                                            {
                                                               break;
                                                            }
                                                            this.§2W§ = [0,1,2,3,4,5,6,7,8,9,10,11];
                                                            this.§>h§ = [0,0,2,1,2,4,4,3,4,7,5,4,4,0,1,2,119];
                                                            §§goto(addr343);
                                                         }
                                                         addr343:
                                                         loop3:
                                                         while(true)
                                                         {
                                                            this.§+4§ = [0,1,2,3,4,5,6,7,8,9,10,11];
                                                            addr612:
                                                            while(true)
                                                            {
                                                               this.§`!&§ = [0,0,2,1,3,3,2,4,3,5,5,4,4,0,0,1,125];
                                                               addr595:
                                                               while(true)
                                                               {
                                                                  this.§<^§ = [1,2,3,0,4,17,5,18,33,49,65,6,19,81,97,7,34,113,20,50,129,145,161,8,35,66,177,193,21,82,209,240,36,51,98,114,130,9,10,22,23,24,25,26,37,38,39,40,41,42,52,53,54,55,56,57,58,67,68,69,70,71,72,73,74,83,84,85,86,87,88,89,90,99,100,101,102,103,104,105,106,115,116,117,118,119,120,121,122,131,132,133,134,135,136,137,138,146,147,148,149,150,151,152,153,154,162,163,164,165,166,167,168,169,170,178,179,180,181,182,183,184,185,186,194,195,196,197,198,199,200,201,202,210,211,212,213,214,215,216,217,218,225,226,227,228,229,230,231,232,233,234,241,242,243,244,245,246,247,248,249,250];
                                                                  continue loop3;
                                                               }
                                                            }
                                                         }
                                                         addr573:
                                                         addr634:
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      this.§#!+§ = new Array(64);
                                                      §§goto(addr117);
                                                      §§goto(addr44);
                                                   }
                                                }
                                                §§goto(addr738);
                                             }
                                             §§goto(addr41);
                                          }
                                          param1 = §§pop();
                                          §§goto(addr44);
                                       }
                                    }
                                 }
                                 §§goto(addr612);
                              }
                              §§goto(addr595);
                           }
                           §§goto(addr18);
                        }
                        continue loop0;
                     }
                  }
               }
               §§goto(addr117);
            }
         }
      }
      
      private function §<7§(param1:int) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:* = NaN;
         var _loc8_:int = 0;
         var _loc4_:Array = [16,11,10,16,24,40,51,61,12,12,14,19,26,58,60,55,14,13,16,24,40,57,69,56,14,17,22,29,51,87,80,62,18,22,37,56,68,109,103,77,24,35,55,64,81,104,113,92,49,64,78,87,103,121,120,101,72,92,95,98,112,100,103,99];
         if(_loc10_)
         {
            _loc2_ = 0;
         }
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(_loc10_ || _loc2_)
            {
               loop1:
               while(true)
               {
                  §§push(64);
                  if(!_loc9_)
                  {
                     if(§§pop() < §§pop())
                     {
                        §§push(Number(Math.floor((_loc4_[_loc2_] * param1 + 50) / 100)));
                        loop2:
                        do
                        {
                           _loc3_ = §§pop();
                           loop3:
                           while(true)
                           {
                              §§push(_loc3_);
                              loop4:
                              do
                              {
                                 §§push(1);
                                 while(true)
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       break loop3;
                                    }
                                    §§push(_loc3_);
                                    if(!_loc9_)
                                    {
                                       §§push(255);
                                       if(_loc9_ && _loc2_)
                                       {
                                          continue;
                                       }
                                       if(§§pop() <= §§pop())
                                       {
                                          addr97:
                                          loop7:
                                          while(true)
                                          {
                                             this.§7!-§[this.§8c§[_loc2_]] = _loc3_;
                                             if(_loc9_)
                                             {
                                                addr209:
                                                break loop0;
                                             }
                                             addr108:
                                             if(!(_loc9_ && _loc3_))
                                             {
                                                continue loop0;
                                             }
                                             addr152:
                                             while(true)
                                             {
                                                continue loop7;
                                                §§goto(addr108);
                                             }
                                          }
                                          continue loop0;
                                          addr97:
                                       }
                                       if(!(_loc10_ || _loc2_))
                                       {
                                          continue loop3;
                                       }
                                       §§push(255);
                                       if(!(_loc10_ || this))
                                       {
                                          break loop0;
                                       }
                                       §§push(Number(§§pop()));
                                    }
                                    if(!_loc10_)
                                    {
                                       break;
                                    }
                                    continue loop4;
                                 }
                                 continue loop2;
                              }
                              while(_loc9_);
                              
                              _loc3_ = §§pop();
                              §§goto(addr152);
                           }
                           continue loop1;
                        }
                        while(_loc9_ && param1);
                        
                        _loc3_ = §§pop();
                        if(!_loc9_)
                        {
                           §§goto(addr97);
                        }
                     }
                     §§goto(addr209);
                  }
                  break;
               }
               var _loc5_:Array = null;
               §§push(0);
               loop8:
               while(true)
               {
                  _loc2_ = §§pop();
                  loop9:
                  while(true)
                  {
                     loop10:
                     while(true)
                     {
                        §§push(_loc2_);
                        if(_loc10_ || _loc3_)
                        {
                           loop11:
                           while(true)
                           {
                              if(§§pop() < 64)
                              {
                                 §§push(Number(Math.floor((_loc5_[_loc2_] * param1 + 50) / 100)));
                                 loop12:
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                    §§push(_loc3_);
                                    loop13:
                                    while(true)
                                    {
                                       §§push(1);
                                       while(true)
                                       {
                                          if(§§pop() >= §§pop())
                                          {
                                             §§push(_loc3_);
                                             if(!_loc9_)
                                             {
                                                if(_loc10_ || param1)
                                                {
                                                   if(!_loc10_)
                                                   {
                                                      continue loop13;
                                                   }
                                                   §§push(255);
                                                   if(_loc9_)
                                                   {
                                                      continue;
                                                   }
                                                   if(§§pop() > §§pop())
                                                   {
                                                      if(_loc9_ && _loc2_)
                                                      {
                                                         §§push(1);
                                                      }
                                                      else
                                                      {
                                                         addr391:
                                                      }
                                                      §§push(255);
                                                      if(!_loc10_)
                                                      {
                                                         continue loop11;
                                                      }
                                                      continue loop8;
                                                      break loop10;
                                                   }
                                                }
                                                else
                                                {
                                                   addr359:
                                                   _loc3_ = §§pop();
                                                }
                                                addr293:
                                                this.§ 0§[this.§8c§[_loc2_]] = _loc3_;
                                                _loc2_++;
                                                if(_loc10_)
                                                {
                                                   if(true)
                                                   {
                                                      continue loop10;
                                                   }
                                                   §§goto(addr293);
                                                }
                                                break;
                                             }
                                             addr340:
                                             if(!_loc9_)
                                             {
                                                _loc3_ = §§pop();
                                                break;
                                             }
                                             continue loop12;
                                          }
                                          §§push(1);
                                          if(_loc9_ && _loc3_)
                                          {
                                             continue loop11;
                                          }
                                          §§push(Number(§§pop()));
                                          §§goto(addr359);
                                       }
                                       if(_loc9_)
                                       {
                                          continue loop9;
                                       }
                                       §§goto(addr293);
                                    }
                                 }
                                 continue loop8;
                              }
                              §§goto(addr391);
                           }
                        }
                        break;
                     }
                     var _loc6_:Array = null;
                     if(!_loc9_)
                     {
                        §§push(0);
                        if(!_loc9_)
                        {
                           _loc2_ = §§pop();
                           addr408:
                           §§push(0);
                        }
                        var _loc7_:* = §§pop();
                        addr411:
                        §§push(_loc7_);
                        if(!_loc9_)
                        {
                           if(!(_loc9_ && _loc2_))
                           {
                              §§push(8);
                              if(!(_loc9_ && _loc3_))
                              {
                                 if(§§pop() >= §§pop())
                                 {
                                    if(_loc10_ || _loc2_)
                                    {
                                       if(!_loc10_)
                                       {
                                          addr574:
                                          §§push(this.§^V§);
                                          if(_loc10_)
                                          {
                                             §§push(_loc2_);
                                             if(_loc10_)
                                             {
                                                §§push(1);
                                                if(!(_loc9_ && this))
                                                {
                                                   §§push(this.§ 0§);
                                                   if(_loc10_ || this)
                                                   {
                                                      §§push(this.§8c§);
                                                      if(_loc10_)
                                                      {
                                                         §§push(_loc2_);
                                                         if(_loc10_)
                                                         {
                                                            §§push(§§pop()[§§pop()[§§pop()]] * _loc6_[_loc7_]);
                                                            if(_loc10_ || this)
                                                            {
                                                               if(_loc10_)
                                                               {
                                                                  §§push(§§pop() * _loc6_[_loc8_]);
                                                                  if(_loc10_)
                                                                  {
                                                                     §§push(8);
                                                                     if(_loc10_)
                                                                     {
                                                                        addr519:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!(_loc9_ && _loc3_))
                                                                        {
                                                                           if(_loc10_ || this)
                                                                           {
                                                                              §§push(§§pop() / §§pop());
                                                                              if(!_loc9_)
                                                                              {
                                                                                 §§pop()[§§pop()] = §§pop();
                                                                                 _loc2_++;
                                                                                 _loc8_++;
                                                                                 addr458:
                                                                                 if(_loc8_ >= 8)
                                                                                 {
                                                                                    if(_loc10_ || _loc3_)
                                                                                    {
                                                                                       _loc7_++;
                                                                                       addr455:
                                                                                       §§goto(addr411);
                                                                                    }
                                                                                    §§goto(addr458);
                                                                                 }
                                                                                 addr566:
                                                                                 §§push(this.§7s§);
                                                                                 §§push(_loc2_);
                                                                                 §§push(1 / (this.§7!-§[this.§8c§[_loc2_]] * _loc6_[_loc7_] * _loc6_[_loc8_] * 8));
                                                                              }
                                                                              §§pop()[§§pop()] = §§pop();
                                                                              §§goto(addr574);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr566);
                                                                  }
                                                                  §§goto(addr519);
                                                               }
                                                               §§goto(addr566);
                                                            }
                                                            §§goto(addr519);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr566);
                                       }
                                       return;
                                    }
                                    §§goto(addr455);
                                 }
                                 addr578:
                                 _loc8_ = 0;
                              }
                              §§goto(addr458);
                           }
                           §§goto(addr578);
                        }
                        §§goto(addr458);
                     }
                     §§goto(addr408);
                  }
               }
               addr211:
            }
            break;
         }
         §§goto(addr211);
         §§push(18);
      }
      
      private function §[!§(param1:Array, param2:Array) : Array
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:int = 0;
         var _loc5_:Array = new Array();
         var _loc6_:int = 1;
         loop0:
         while(true)
         {
            §§push(_loc6_);
            if(_loc9_ || param2)
            {
               if(!(_loc8_ && param1))
               {
                  §§push(16);
                  if(_loc9_ || _loc3_)
                  {
                     if(§§pop() > §§pop())
                     {
                        if(!_loc8_)
                        {
                           if(!_loc8_)
                           {
                              break;
                           }
                           loop1:
                           while(true)
                           {
                              §§push(_loc3_);
                              addr99:
                              while(true)
                              {
                                 §§push(2);
                                 addr100:
                                 while(true)
                                 {
                                    §§push(int(§§pop() * §§pop()));
                                    addr102:
                                    loop9:
                                    while(true)
                                    {
                                       if(_loc9_)
                                       {
                                          addr104:
                                          _loc3_ = §§pop();
                                          _loc6_++;
                                          while(true)
                                          {
                                             if(!_loc8_)
                                             {
                                                if(!(_loc8_ && this))
                                                {
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   _loc7_++;
                                                   addr144:
                                                   _loc5_[param2[_loc4_]].len = _loc6_;
                                                   _loc4_++;
                                                   _loc3_++;
                                                }
                                             }
                                             while(true)
                                             {
                                                if(_loc9_)
                                                {
                                                   loop5:
                                                   while(true)
                                                   {
                                                      §§push(_loc7_);
                                                      if(!(_loc8_ && param1))
                                                      {
                                                         if(§§pop() <= param1[_loc6_])
                                                         {
                                                            break;
                                                         }
                                                         continue loop1;
                                                      }
                                                      continue loop9;
                                                      addr159:
                                                      while(true)
                                                      {
                                                         _loc7_ = §§pop();
                                                         continue loop5;
                                                      }
                                                   }
                                                   _loc5_[param2[_loc4_]] = new §9+§();
                                                   _loc5_[param2[_loc4_]].val = _loc3_;
                                                   addr85:
                                                }
                                                §§goto(addr144);
                                             }
                                             §§goto(addr104);
                                          }
                                          continue loop0;
                                          addr75:
                                       }
                                       §§goto(addr159);
                                       §§goto(addr85);
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr75);
                     }
                     else
                     {
                        §§push(1);
                     }
                     §§goto(addr159);
                  }
                  §§goto(addr100);
               }
               §§goto(addr99);
            }
            §§goto(addr102);
         }
         return _loc5_;
      }
      
      private function §]z§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§-!=§ = this.§[!§(this.§'[§,this.§+4§);
            while(true)
            {
               this.§%1§ = this.§[!§(this.§-f§,this.§2W§);
            }
            addr97:
         }
         loop1:
         do
         {
            this.§3l§ = this.§[!§(this.§`!&§,this.§<^§);
            while(_loc1_)
            {
               this.§[G§ = this.§[!§(this.§>h§,this.§!!M§);
               if(_loc1_)
               {
                  continue loop1;
               }
            }
            §§goto(addr97);
         }
         while(_loc2_ && _loc2_);
         
      }
      
      private function §6]§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = 0;
         var _loc1_:int = 1;
         var _loc2_:* = 2;
         var _loc4_:int = 1;
         while(true)
         {
            §§push(_loc4_);
            if(_loc5_)
            {
               if(!_loc6_)
               {
                  if(!_loc6_)
                  {
                     §§push(15);
                     if(!(_loc6_ && this))
                     {
                        if(!(_loc6_ && _loc3_))
                        {
                           if(§§pop() > §§pop())
                           {
                              if(!(_loc6_ && _loc3_))
                              {
                                 if(!(_loc6_ && this))
                                 {
                                    break;
                                 }
                                 while(true)
                                 {
                                    _loc4_++;
                                    addr90:
                                    _loc2_ = §§pop() << §§pop();
                                 }
                              }
                              while(true)
                              {
                                 if(!_loc6_)
                                 {
                                    if(!(_loc6_ && _loc2_))
                                    {
                                       break;
                                    }
                                    addr353:
                                    while(true)
                                    {
                                       loop7:
                                       while(true)
                                       {
                                          §§push(_loc3_);
                                          loop5:
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             addr257:
                                             while(true)
                                             {
                                                if(§§pop() >= §§pop())
                                                {
                                                   loop9:
                                                   while(true)
                                                   {
                                                      §§push(_loc2_);
                                                      if(!(_loc6_ && _loc3_))
                                                      {
                                                         §§push(§§pop() - 1);
                                                         if(_loc5_)
                                                         {
                                                            §§push(-§§pop());
                                                         }
                                                         §§push(int(§§pop()));
                                                      }
                                                      _loc3_ = §§pop();
                                                      addr272:
                                                      while(true)
                                                      {
                                                         loop11:
                                                         while(true)
                                                         {
                                                            §§push(_loc3_);
                                                            addr95:
                                                            while(true)
                                                            {
                                                               §§push(_loc1_);
                                                               if(!(_loc5_ || _loc1_))
                                                               {
                                                                  continue loop5;
                                                               }
                                                               if(§§pop() > -§§pop())
                                                               {
                                                                  addr105:
                                                                  if(!(_loc6_ && this))
                                                                  {
                                                                     §§push(_loc1_);
                                                                     while(true)
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                     addr113:
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(this.category);
                                                                  §§push(32767);
                                                                  §§push(_loc3_);
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     loop19:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc4_);
                                                                        if(!(_loc6_ && _loc3_))
                                                                        {
                                                                           §§pop()[§§pop()] = §§pop();
                                                                           if(!(_loc6_ && _loc3_))
                                                                           {
                                                                              §§push(this.§-9§);
                                                                              loop20:
                                                                              while(true)
                                                                              {
                                                                                 §§push(32767);
                                                                                 loop21:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc3_);
                                                                                    loop22:
                                                                                    while(_loc5_ || this)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       loop23:
                                                                                       while(_loc5_ || _loc3_)
                                                                                       {
                                                                                          §§pop()[§§pop()] = new §9+§();
                                                                                          loop24:
                                                                                          while(_loc5_)
                                                                                          {
                                                                                             §§push(this.§-9§);
                                                                                             if(_loc5_ || _loc3_)
                                                                                             {
                                                                                                §§push(32767);
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   continue loop21;
                                                                                                }
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   §§push(_loc3_);
                                                                                                   while(_loc5_)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      while(_loc5_)
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         continue loop20;
                                                                                                         if(_loc6_ && _loc2_)
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            continue loop23;
                                                                                                         }
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            §§pop()[§§pop()].val = _loc2_ - 1 + _loc3_;
                                                                                                            while(_loc5_)
                                                                                                            {
                                                                                                               _loc3_++;
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  continue loop11;
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop24;
                                                                                                         }
                                                                                                         addr326:
                                                                                                         addr323:
                                                                                                         addr279:
                                                                                                         §§pop()[§§pop()].len = _loc4_;
                                                                                                         addr279:
                                                                                                         §§push(this.§-9§);
                                                                                                         if(!(_loc6_ && this))
                                                                                                         {
                                                                                                            addr287:
                                                                                                            §§push(32767);
                                                                                                            §§push(_loc3_);
                                                                                                            if(_loc5_ || _loc1_)
                                                                                                            {
                                                                                                               addr295:
                                                                                                               if(!(_loc5_ || _loc1_))
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     §§push(_loc4_);
                                                                                                                     break loop19;
                                                                                                                     §§goto(addr295);
                                                                                                                  }
                                                                                                                  addr344:
                                                                                                               }
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               break loop23;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop()[§§pop() + §§pop()] = new §9+§();
                                                                                                               §§push(this.§-9§);
                                                                                                               §§goto(addr287);
                                                                                                            }
                                                                                                            §§goto(addr295);
                                                                                                            addr332:
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            break loop22;
                                                                                                            §§goto(addr279);
                                                                                                         }
                                                                                                         §§goto(addr287);
                                                                                                      }
                                                                                                      continue loop19;
                                                                                                   }
                                                                                                   continue loop22;
                                                                                                   addr194:
                                                                                                }
                                                                                                §§goto(addr287);
                                                                                             }
                                                                                             §§goto(addr279);
                                                                                          }
                                                                                          continue loop9;
                                                                                       }
                                                                                       addr303:
                                                                                       §§pop()[§§pop()].val = _loc3_;
                                                                                       while(true)
                                                                                       {
                                                                                          _loc3_++;
                                                                                          addr275:
                                                                                          while(true)
                                                                                          {
                                                                                             continue loop7;
                                                                                             §§goto(addr105);
                                                                                          }
                                                                                          §§goto(addr303);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr323);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr326);
                                                                        }
                                                                        break;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§pop()[§§pop()] = §§pop();
                                                                        §§goto(addr332);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr275);
                                                               continue loop11;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(this.category);
                                                   §§push(32767);
                                                   §§push(_loc3_);
                                                }
                                                §§goto(addr344);
                                                continue loop5;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr306);
                              }
                              continue;
                           }
                           addr352:
                           _loc3_ = int(_loc1_);
                           §§goto(addr353);
                        }
                        §§goto(addr257);
                     }
                     §§goto(addr83);
                  }
                  §§goto(addr352);
               }
               §§goto(addr95);
            }
            §§goto(addr80);
         }
      }
      
      private function §6$§(param1:§9+§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(param1.val);
         if(_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(param1.len);
         if(_loc6_ || _loc3_)
         {
            §§push(int(§§pop() - 1));
         }
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(_loc3_);
            §§push(0);
            if(!_loc7_)
            {
               if(§§pop() < §§pop())
               {
                  break;
               }
               §§push(_loc2_);
               if(!(_loc7_ && _loc2_))
               {
                  §§push(§§pop() & uint(1 << _loc3_));
                  if(!_loc7_)
                  {
                     if(§§pop())
                     {
                        §§push(this);
                        §§push(this.§?p§);
                        if(!(_loc7_ && this))
                        {
                           §§push(§§pop() | uint(1 << this.§#O§));
                        }
                        §§pop().§?p§ = §§pop();
                     }
                     §§push(_loc3_);
                     if(!_loc7_)
                     {
                        addr84:
                        §§push(§§pop() - 1);
                        if(_loc6_)
                        {
                           addr87:
                           _loc3_ = §§pop();
                           var _loc4_:*;
                           §§push((_loc4_ = this).§#O§);
                           if(!_loc7_)
                           {
                              §§push(§§pop() - 1);
                           }
                           var _loc5_:* = §§pop();
                           if(_loc6_)
                           {
                              _loc4_.§#O§ = _loc5_;
                           }
                           §§push(this.§#O§);
                        }
                        §§push(0);
                        if(!_loc7_)
                        {
                           if(§§pop() >= §§pop())
                           {
                              continue;
                           }
                           loop1:
                           while(true)
                           {
                              §§push(this.§?p§);
                              §§push(255);
                              addr169:
                              while(true)
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    this.writeByte(255);
                                    this.writeByte(0);
                                    continue loop1;
                                 }
                                 addr125:
                                 this.writeByte(this.§?p§);
                                 while(true)
                                 {
                                    this.§#O§ = 7;
                                    this.§?p§ = 0;
                                    if(!(_loc7_ && param1))
                                    {
                                       break;
                                    }
                                    continue loop1;
                                 }
                                 continue loop0;
                              }
                           }
                        }
                        §§goto(addr169);
                     }
                  }
                  §§goto(addr87);
               }
               §§goto(addr84);
            }
            §§goto(addr169);
         }
      }
      
      private function writeByte(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§@!P§.writeByte(param1);
         }
      }
      
      private function §'D§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this);
            §§push(param1);
            if(_loc3_ || this)
            {
               §§push(8);
               if(_loc3_)
               {
                  addr87:
                  §§push(§§pop() >> §§pop());
                  if(_loc3_ || _loc3_)
                  {
                     §§push(255);
                  }
                  §§pop().writeByte(§§pop());
                  do
                  {
                     §§push(this);
                     §§push(param1);
                     if(!(_loc2_ && this))
                     {
                        §§push(§§pop() & 255);
                     }
                     §§pop().writeByte(§§pop());
                  }
                  while(!(_loc3_ || _loc3_));
                  
                  return;
                  addr88:
               }
               §§push(§§pop() & §§pop());
            }
            §§goto(addr87);
         }
         §§goto(addr88);
      }
      
      private function §6t§(param1:Array, param2:Array) : Array
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private function §2^§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.§'D§(65504);
         while(true)
         {
            this.§'D§(16);
            loop1:
            while(!(_loc1_ && _loc1_))
            {
               this.writeByte(74);
               loop2:
               while(true)
               {
                  this.writeByte(70);
                  loop3:
                  while(true)
                  {
                     this.writeByte(73);
                     while(true)
                     {
                        this.writeByte(70);
                        continue loop3;
                        addr85:
                        loop6:
                        while(true)
                        {
                           this.writeByte(1);
                           if(!_loc2_)
                           {
                              break;
                              addr80:
                           }
                           this.writeByte(0);
                           if(!_loc1_)
                           {
                              this.§'D§(1);
                              loop7:
                              while(!_loc1_)
                              {
                                 this.§'D§(1);
                                 while(true)
                                 {
                                    if(!_loc1_)
                                    {
                                       continue loop6;
                                    }
                                    continue loop7;
                                    addr49:
                                    this.writeByte(0);
                                    if(_loc2_)
                                    {
                                       this.writeByte(0);
                                       return;
                                    }
                                 }
                                 continue loop1;
                              }
                              continue loop2;
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
         }
      }
      
      private function §<=§(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         this.§'D§(65472);
         loop0:
         while(true)
         {
            this.§'D§(17);
            this.writeByte(8);
            while(true)
            {
               this.§'D§(param2);
               continue loop0;
               loop6:
               while(true)
               {
                  this.writeByte(1);
                  if(_loc3_ && this)
                  {
                     break;
                     addr135:
                  }
                  this.writeByte(3);
                  loop7:
                  while(!(_loc3_ && this))
                  {
                     this.writeByte(17);
                     loop8:
                     while(!_loc3_)
                     {
                        this.writeByte(1);
                        if(_loc4_ || this)
                        {
                           if(!_loc3_)
                           {
                              addr35:
                              if(_loc3_ && param2)
                              {
                                 while(true)
                                 {
                                    this.writeByte(1);
                                    do
                                    {
                                       this.writeByte(17);
                                       this.writeByte(0);
                                    }
                                    while(_loc3_ && param2);
                                    
                                    this.writeByte(2);
                                    this.writeByte(17);
                                    break loop8;
                                    §§goto(addr35);
                                 }
                                 addr120:
                              }
                              return;
                           }
                           continue loop7;
                        }
                     }
                     continue loop6;
                  }
                  while(!_loc3_)
                  {
                     this.writeByte(3);
                     §§goto(addr120);
                     §§goto(addr54);
                  }
                  addr54:
                  continue loop0;
               }
            }
         }
      }
      
      private function §8K§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = 0;
         if(_loc3_ || this)
         {
            this.§'D§(65499);
         }
         do
         {
            this.§'D§(132);
            do
            {
               this.writeByte(0);
               do
               {
                  _loc1_ = 0;
               }
               while(_loc2_ && _loc2_);
               
            }
            while(!(_loc3_ || _loc2_));
            
         }
         while(!(_loc3_ || _loc1_));
         
         loop3:
         while(true)
         {
            §§push(_loc1_);
            loop4:
            while(true)
            {
               §§push(64);
               loop5:
               while(§§pop() >= §§pop())
               {
                  this.writeByte(1);
                  §§push(0);
                  loop6:
                  while(true)
                  {
                     _loc1_ = §§pop();
                     while(true)
                     {
                        §§push(_loc1_);
                        if(_loc3_ || _loc1_)
                        {
                           if(_loc2_ && this)
                           {
                              break;
                           }
                           §§push(64);
                           if(_loc3_)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 if(_loc3_)
                                 {
                                    return;
                                 }
                              }
                              else
                              {
                                 this.writeByte(this.§ 0§[_loc1_]);
                                 _loc1_++;
                              }
                              continue;
                           }
                           continue loop5;
                        }
                        continue loop6;
                     }
                     continue loop4;
                  }
               }
               continue loop3;
            }
         }
      }
      
      private function §]!A§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = 0;
         if(!_loc3_)
         {
            this.§'D§(65476);
            while(true)
            {
               this.§'D§(418);
               loop2:
               while(_loc2_ || _loc3_)
               {
                  _loc1_ = 0;
                  if(!(_loc2_ || _loc1_))
                  {
                     continue;
                  }
                  addr366:
                  if(!(_loc2_ || _loc1_))
                  {
                     while(true)
                     {
                        this.writeByte(0);
                        continue loop2;
                        §§goto(addr366);
                     }
                     addr390:
                  }
                  loop3:
                  while(true)
                  {
                     §§push(_loc1_);
                     loop4:
                     while(true)
                     {
                        if(§§pop() >= 16)
                        {
                           _loc1_ = 0;
                           loop5:
                           while(true)
                           {
                              §§push(_loc1_);
                              §§push(11);
                              loop6:
                              while(true)
                              {
                                 if(§§pop() <= §§pop())
                                 {
                                    this.writeByte(this.§+4§[_loc1_]);
                                    continue loop5;
                                 }
                                 this.writeByte(16);
                                 §§push(0);
                                 loop7:
                                 while(true)
                                 {
                                    _loc1_ = §§pop();
                                    loop8:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          §§push(_loc1_);
                                          loop10:
                                          while(true)
                                          {
                                             if(§§pop() < 16)
                                             {
                                                this.writeByte(this.§`!&§[_loc1_ + 1]);
                                                break;
                                             }
                                             §§push(0);
                                             while(true)
                                             {
                                                _loc1_ = §§pop();
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(_loc1_);
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §§push(161);
                                                      addr250:
                                                      while(true)
                                                      {
                                                         if(§§pop() > §§pop())
                                                         {
                                                            loop15:
                                                            while(_loc2_)
                                                            {
                                                               this.writeByte(1);
                                                               §§push(0);
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  _loc1_ = §§pop();
                                                                  addr246:
                                                                  while(true)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc1_);
                                                                        if(_loc3_ && _loc2_)
                                                                        {
                                                                           continue loop13;
                                                                        }
                                                                        if(§§pop() < 16)
                                                                        {
                                                                           this.writeByte(this.§-f§[_loc1_ + 1]);
                                                                           if(!_loc2_)
                                                                           {
                                                                              addr226:
                                                                              break;
                                                                           }
                                                                           _loc1_++;
                                                                           if(!_loc3_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           continue loop15;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           _loc1_ = 0;
                                                                           addr223:
                                                                           while(true)
                                                                           {
                                                                              do
                                                                              {
                                                                                 §§push(_loc1_);
                                                                                 continue loop16;
                                                                              }
                                                                              while(!(_loc3_ && _loc1_));
                                                                              
                                                                              addr345:
                                                                              _loc1_++;
                                                                              continue loop3;
                                                                           }
                                                                        }
                                                                     }
                                                                     continue loop12;
                                                                  }
                                                               }
                                                            }
                                                            continue loop8;
                                                         }
                                                         this.writeByte(this.§<^§[_loc1_]);
                                                         §§goto(addr269);
                                                      }
                                                   }
                                                }
                                                if(_loc3_ && _loc2_)
                                                {
                                                   continue;
                                                }
                                                if(§§pop() > 11)
                                                {
                                                   if(_loc2_ || _loc1_)
                                                   {
                                                      this.writeByte(17);
                                                      if(!_loc3_)
                                                      {
                                                         if(_loc3_ && _loc1_)
                                                         {
                                                            continue loop5;
                                                         }
                                                         §§push(0);
                                                         if(_loc2_ || _loc3_)
                                                         {
                                                            _loc1_ = §§pop();
                                                            loop23:
                                                            for(; !(_loc3_ && _loc3_); if(!(_loc2_ || _loc1_))
                                                            {
                                                               continue;
                                                            },if(!_loc3_)
                                                            {
                                                               §§push(0);
                                                               loop26:
                                                               while(_loc2_)
                                                               {
                                                                  _loc1_ = §§pop();
                                                                  while(true)
                                                                  {
                                                                     do
                                                                     {
                                                                        §§push(_loc1_);
                                                                        if(!_loc2_)
                                                                        {
                                                                           continue loop26;
                                                                        }
                                                                        if(_loc2_)
                                                                        {
                                                                           §§push(161);
                                                                           if(_loc2_)
                                                                           {
                                                                              if(§§pop() > §§pop())
                                                                              {
                                                                                 if(_loc3_ && this)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(_loc2_ || this)
                                                                                 {
                                                                                    return;
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 this.writeByte(this.§!!M§[_loc1_]);
                                                                              }
                                                                              _loc1_++;
                                                                              continue;
                                                                           }
                                                                           continue loop6;
                                                                        }
                                                                        §§goto(addr65);
                                                                     }
                                                                     while(_loc2_);
                                                                     
                                                                  }
                                                               }
                                                               continue loop10;
                                                            },§§goto(addr200))
                                                            {
                                                               loop24:
                                                               while(true)
                                                               {
                                                                  §§push(_loc1_);
                                                                  addr65:
                                                                  while(true)
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        continue loop7;
                                                                     }
                                                                     if(!(_loc2_ || _loc1_))
                                                                     {
                                                                        continue loop4;
                                                                     }
                                                                     §§push(16);
                                                                     if(!_loc3_)
                                                                     {
                                                                        if(§§pop() >= §§pop())
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              continue loop23;
                                                                           }
                                                                           continue loop24;
                                                                        }
                                                                        this.writeByte(this.§>h§[_loc1_ + 1]);
                                                                        if(_loc2_)
                                                                        {
                                                                           if(!_loc2_)
                                                                           {
                                                                              break loop10;
                                                                           }
                                                                           _loc1_++;
                                                                           continue loop24;
                                                                        }
                                                                        §§goto(addr221);
                                                                     }
                                                                     §§goto(addr250);
                                                                  }
                                                                  continue loop3;
                                                               }
                                                            }
                                                            §§goto(addr171);
                                                         }
                                                         §§goto(addr133);
                                                      }
                                                      §§goto(addr246);
                                                   }
                                                   §§goto(addr223);
                                                }
                                                this.writeByte(this.§2W§[_loc1_]);
                                                §§goto(addr200);
                                             }
                                          }
                                          if(_loc2_ || _loc2_)
                                          {
                                             _loc1_++;
                                             continue;
                                          }
                                          continue loop3;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        else
                        {
                           this.writeByte(this.§'[§[_loc1_ + 1]);
                        }
                        §§goto(addr345);
                     }
                  }
               }
            }
         }
         §§goto(addr390);
      }
      
      private function §;8§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§'D§(65498);
         }
         this.§'D§(12);
         this.writeByte(3);
         loop0:
         while(true)
         {
            this.writeByte(1);
            while(true)
            {
               this.writeByte(0);
               loop2:
               while(_loc1_ || _loc1_)
               {
                  continue loop0;
                  addr67:
                  if(!(_loc1_ || _loc2_))
                  {
                     continue;
                  }
                  this.writeByte(0);
                  loop6:
                  while(true)
                  {
                     this.writeByte(63);
                     loop7:
                     while(true)
                     {
                        if(!_loc2_)
                        {
                           if(_loc1_)
                           {
                              addr38:
                              if(!(_loc2_ && this))
                              {
                                 continue;
                              }
                              addr89:
                              while(true)
                              {
                                 this.writeByte(17);
                                 this.writeByte(3);
                                 addr79:
                                 while(true)
                                 {
                                    this.writeByte(17);
                                    break loop7;
                                 }
                                 §§goto(addr38);
                              }
                           }
                           break;
                        }
                        continue loop6;
                     }
                     while(true)
                     {
                        if(!_loc2_)
                        {
                           §§goto(addr67);
                        }
                        else
                        {
                           §§goto(addr79);
                        }
                     }
                     continue loop2;
                  }
               }
            }
         }
      }
      
      private function §,h§(param1:Array, param2:Array, param3:Number, param4:Array, param5:Array) : Number
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         var _loc8_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:* = 0;
         var _loc14_:int = 0;
         var _loc6_:§9+§ = param5[0];
         var _loc7_:§9+§ = param5[240];
         var _loc9_:Array = this.§6t§(param1,param2);
         if(_loc15_)
         {
            _loc8_ = 0;
         }
         loop0:
         while(true)
         {
            while(true)
            {
               §§push(_loc8_);
               if(!_loc16_)
               {
                  if(§§pop() < 64)
                  {
                     §§push(this.§3!8§);
                     if(!(_loc16_ && param1))
                     {
                        §§pop()[this.§8c§[_loc8_]] = _loc9_[_loc8_];
                        if(_loc15_ || param2)
                        {
                           _loc8_++;
                           if(_loc15_ || param1)
                           {
                              if(false)
                              {
                                 continue loop0;
                              }
                              continue;
                           }
                           addr90:
                           §§push(this.§3!8§);
                        }
                        §§goto(addr90);
                     }
                     §§push(int(§§pop()[0] - param3));
                     break;
                  }
                  §§goto(addr90);
               }
               break;
            }
            var _loc10_:* = §§pop();
            if(_loc15_ || param1)
            {
               param3 = this.§3!8§[0];
               loop2:
               while(true)
               {
                  §§push(_loc10_);
                  if(!(_loc16_ && this))
                  {
                     if(§§pop() == 0)
                     {
                        continue;
                     }
                     addr160:
                     this.§6$§(param4[this.category[32767 + _loc10_]]);
                     while(_loc15_)
                     {
                        if(!_loc16_)
                        {
                           this.§6$§(this.§-9§[32767 + _loc10_]);
                           if(!_loc16_)
                           {
                              if(false)
                              {
                                 addr119:
                              }
                              break loop2;
                           }
                           continue;
                           continue;
                        }
                        continue loop2;
                     }
                     §§goto(addr119);
                  }
                  break;
               }
               var _loc11_:* = §§pop();
               loop4:
               while(true)
               {
                  §§push(_loc11_ > 0);
                  loop5:
                  while(true)
                  {
                     §§push(§§pop());
                     loop6:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop7:
                           while(true)
                           {
                              §§pop();
                              §§push(this.§3!8§);
                              while(true)
                              {
                                 §§push(_loc11_);
                                 addr490:
                                 while(true)
                                 {
                                    §§push(§§pop()[§§pop()] == 0);
                                 }
                                 loop16:
                                 while(true)
                                 {
                                    §§push(this.§3!8§);
                                    if(_loc16_ && this)
                                    {
                                       break;
                                    }
                                    §§push(_loc8_);
                                    if(_loc15_ || this)
                                    {
                                       §§push(§§pop()[§§pop()] == 0);
                                       loop17:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(!(_loc15_ || param2))
                                          {
                                             break;
                                          }
                                          if(§§pop())
                                          {
                                             addr494:
                                             loop18:
                                             while(_loc15_)
                                             {
                                                if(!(_loc16_ && param3))
                                                {
                                                   §§pop();
                                                   do
                                                   {
                                                      §§push(_loc8_ <= _loc11_);
                                                      if(_loc16_ && param1)
                                                      {
                                                         continue loop18;
                                                      }
                                                      if(!_loc15_)
                                                      {
                                                         continue loop17;
                                                      }
                                                   }
                                                   while(_loc15_ || param3);
                                                   
                                                   continue loop5;
                                                   continue;
                                                }
                                                continue loop7;
                                             }
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   §§push(_loc11_);
                                                   continue loop4;
                                                }
                                                §§push(_loc11_);
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(0);
                                                   loop13:
                                                   while(true)
                                                   {
                                                      if(§§pop() == §§pop())
                                                      {
                                                         this.§6$§(_loc6_);
                                                         addr501:
                                                         return param3;
                                                      }
                                                      else
                                                      {
                                                         _loc8_ = 1;
                                                         loop14:
                                                         while(true)
                                                         {
                                                            §§push(_loc8_);
                                                            if(_loc15_ || param2)
                                                            {
                                                               §§push(_loc11_);
                                                               if(_loc15_)
                                                               {
                                                                  if(_loc16_)
                                                                  {
                                                                     continue loop13;
                                                                  }
                                                                  if(§§pop() > §§pop())
                                                                  {
                                                                     if(_loc15_)
                                                                     {
                                                                        if(_loc15_ || param1)
                                                                        {
                                                                           if(!(_loc15_ || param3))
                                                                           {
                                                                              continue loop12;
                                                                           }
                                                                           if(!(_loc16_ && param3))
                                                                           {
                                                                              §§push(_loc11_);
                                                                              if(!(_loc16_ && param2))
                                                                              {
                                                                                 if(_loc15_ || param1)
                                                                                 {
                                                                                    if(_loc15_)
                                                                                    {
                                                                                       if(_loc16_ && param1)
                                                                                       {
                                                                                          continue loop4;
                                                                                       }
                                                                                       if(§§pop() != 63)
                                                                                       {
                                                                                          addr259:
                                                                                          if(_loc15_ || this)
                                                                                          {
                                                                                             this.§6$§(_loc6_);
                                                                                             if(!(_loc16_ && param2))
                                                                                             {
                                                                                                if(!(_loc16_ && param3))
                                                                                                {
                                                                                                   if(_loc15_ || param2)
                                                                                                   {
                                                                                                      if(_loc15_)
                                                                                                      {
                                                                                                         addr171:
                                                                                                         §§push(param3);
                                                                                                         if(_loc15_ || param3)
                                                                                                         {
                                                                                                            if(!_loc16_)
                                                                                                            {
                                                                                                               return §§pop();
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(int(§§pop()));
                                                                                                            addr401:
                                                                                                            addr397:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc13_ = §§pop());
                                                                                                               §§push(16);
                                                                                                               addr404:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop() >= §§pop())
                                                                                                                  {
                                                                                                                     continue loop12;
                                                                                                                  }
                                                                                                                  addr322:
                                                                                                                  loop26:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     this.§6$§(param5[_loc13_ * 16 + this.category[32767 + this.§3!8§[_loc8_]]]);
                                                                                                                     addr341:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!_loc16_)
                                                                                                                        {
                                                                                                                           break loop26;
                                                                                                                        }
                                                                                                                        §§goto(addr455);
                                                                                                                     }
                                                                                                                     addr357:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        continue loop26;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  this.§6$§(this.§-9§[32767 + this.§3!8§[_loc8_]]);
                                                                                                                  loop29:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc8_++;
                                                                                                                     addr295:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc15_ || param3)
                                                                                                                        {
                                                                                                                           addr302:
                                                                                                                           if(!(_loc16_ && param2))
                                                                                                                           {
                                                                                                                              break loop29;
                                                                                                                           }
                                                                                                                           addr350:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc13_ = int(int(_loc13_ & 15));
                                                                                                                              §§goto(addr302);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr357);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop14;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         continue loop16;
                                                                                                         addr467:
                                                                                                      }
                                                                                                   }
                                                                                                   loop30:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      addr344:
                                                                                                      loop21:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc14_);
                                                                                                         addr346:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop() <= _loc13_ / 16)
                                                                                                            {
                                                                                                               this.§6$§(_loc7_);
                                                                                                               _loc14_++;
                                                                                                               continue loop30;
                                                                                                            }
                                                                                                            §§goto(addr350);
                                                                                                            continue loop21;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr341);
                                                                                             }
                                                                                             §§goto(addr295);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr344);
                                                                                          }
                                                                                          addr414:
                                                                                       }
                                                                                       §§goto(addr171);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr466:
                                                                                       _loc12_ = §§pop();
                                                                                       addr465:
                                                                                    }
                                                                                    §§goto(addr467);
                                                                                 }
                                                                                 §§goto(addr401);
                                                                              }
                                                                              §§goto(addr346);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr501);
                                                                           }
                                                                        }
                                                                        §§goto(addr322);
                                                                     }
                                                                     §§goto(addr259);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(_loc8_);
                                                                  }
                                                                  §§goto(addr465);
                                                               }
                                                               §§goto(addr404);
                                                            }
                                                            §§goto(addr466);
                                                         }
                                                      }
                                                      return §§pop();
                                                   }
                                                }
                                             }
                                             addr494:
                                          }
                                          while(!§§pop())
                                          {
                                             if(!(_loc16_ && this))
                                             {
                                                §§goto(addr397);
                                             }
                                             §§goto(addr259);
                                          }
                                          continue loop16;
                                       }
                                       continue loop6;
                                    }
                                    §§goto(addr490);
                                    §§goto(addr494);
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr494);
                        }
                     }
                  }
               }
            }
            §§goto(addr160);
         }
      }
      
      private function §+!2§(param1:BitmapData, param2:int, param3:int) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc6_:* = 0;
         var _loc7_:uint = 0;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         while(true)
         {
            §§push(_loc5_);
            if(!_loc11_)
            {
               §§push(8);
               if(_loc12_)
               {
                  if(§§pop() >= §§pop())
                  {
                     if(!(_loc11_ && param3))
                     {
                        if(!(_loc11_ && param3))
                        {
                           break;
                        }
                        loop1:
                        while(true)
                        {
                           _loc4_++;
                           addr97:
                           loop2:
                           while(true)
                           {
                              _loc6_++;
                              if(_loc12_ || param2)
                              {
                                 if(_loc12_ || param2)
                                 {
                                    loop3:
                                    while(true)
                                    {
                                       §§push(_loc6_);
                                       addr60:
                                       while(true)
                                       {
                                          if(!(_loc11_ && param3))
                                          {
                                             §§push(8);
                                             while(true)
                                             {
                                                if(§§pop() >= §§pop())
                                                {
                                                   _loc5_++;
                                                   continue loop2;
                                                }
                                                _loc7_ = param1.getPixel32(param2 + _loc6_,param3 + _loc5_);
                                                if(!(_loc12_ || param1))
                                                {
                                                   continue loop3;
                                                }
                                                §§push(Number(Number(_loc7_ >> 16 & 255)));
                                                while(true)
                                                {
                                                   _loc8_ = §§pop();
                                                }
                                             }
                                             addr68:
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                _loc6_ = §§pop();
                                                continue loop3;
                                             }
                                             addr352:
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(Number(Number(_loc7_ >> 8 & 255)));
                                    addr305:
                                    while(true)
                                    {
                                       _loc9_ = §§pop();
                                       break loop2;
                                    }
                                 }
                              }
                              break;
                           }
                           while(true)
                           {
                              §§push(Number(Number(_loc7_ & 255)));
                              if(_loc11_ && this)
                              {
                                 continue;
                              }
                              if(_loc12_)
                              {
                                 break;
                              }
                              §§goto(addr326);
                           }
                           _loc10_ = §§pop();
                           §§push(this.§<!-§);
                           loop5:
                           while(true)
                           {
                              §§push(_loc4_);
                              loop6:
                              while(true)
                              {
                                 §§push(0.299);
                                 loop7:
                                 while(true)
                                 {
                                    §§push(_loc8_);
                                    if(!(_loc11_ && param2))
                                    {
                                       §§push(§§pop() * §§pop());
                                       while(true)
                                       {
                                          §§push(0.587);
                                          addr124:
                                          if(!(_loc12_ || param3))
                                          {
                                             continue;
                                          }
                                          §§push(_loc8_);
                                          if(!_loc11_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             §§push(-0.41869);
                                             if(!_loc11_)
                                             {
                                                if(!(_loc11_ && param3))
                                                {
                                                   §§push(_loc9_);
                                                   if(!_loc11_)
                                                   {
                                                      if(_loc12_ || param2)
                                                      {
                                                         if(!_loc11_)
                                                         {
                                                            if(!(_loc11_ && this))
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc12_)
                                                               {
                                                                  addr177:
                                                                  if(_loc12_ || param3)
                                                                  {
                                                                     if(_loc12_ || param1)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!_loc12_)
                                                                        {
                                                                           continue loop1;
                                                                        }
                                                                        if(!_loc12_)
                                                                        {
                                                                           loop20:
                                                                           while(true)
                                                                           {
                                                                              §§pop()[§§pop()] = §§pop();
                                                                              §§push(this.§?!9§);
                                                                              if(_loc11_ && param1)
                                                                              {
                                                                                 continue loop5;
                                                                              }
                                                                              addr108:
                                                                              §§push(_loc4_);
                                                                              if(_loc11_ && param1)
                                                                              {
                                                                                 while(!_loc11_)
                                                                                 {
                                                                                    §§push(-0.16874);
                                                                                    if(!_loc12_)
                                                                                    {
                                                                                       continue loop20;
                                                                                    }
                                                                                    §§push(§§pop() * _loc8_);
                                                                                    §§push(-0.33126);
                                                                                    §§push(_loc9_);
                                                                                    if(_loc12_)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop() * §§pop());
                                                                                       if(_loc12_ || param3)
                                                                                       {
                                                                                          §§push(0.5);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc10_);
                                                                                             addr248:
                                                                                             while(true)
                                                                                             {
                                                                                                continue loop20;
                                                                                             }
                                                                                             §§goto(addr177);
                                                                                          }
                                                                                          addr247:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop()[§§pop()] = §§pop();
                                                                                             §§push(this.§#!+§);
                                                                                             continue loop5;
                                                                                          }
                                                                                          addr276:
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr248);
                                                                                    §§goto(addr108);
                                                                                 }
                                                                                 continue loop6;
                                                                                 addr226:
                                                                              }
                                                                              §§push(0.5);
                                                                              if(_loc11_ && this)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§goto(addr124);
                                                                              §§goto(addr248);
                                                                           }
                                                                           continue loop1;
                                                                           addr250:
                                                                        }
                                                                        if(_loc12_)
                                                                        {
                                                                           if(_loc11_ && param2)
                                                                           {
                                                                              continue loop7;
                                                                           }
                                                                           §§push(-0.08131);
                                                                           if(!_loc11_)
                                                                           {
                                                                              addr210:
                                                                              §§push(§§pop() * _loc10_);
                                                                              if(!_loc11_)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 continue loop1;
                                                                              }
                                                                           }
                                                                           §§goto(addr210);
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(0.114);
                                                                              §§push(_loc10_);
                                                                              addr272:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                              }
                                                                           }
                                                                           addr270:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr276);
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr270);
                                                                     }
                                                                     addr269:
                                                                  }
                                                                  §§goto(addr247);
                                                               }
                                                               §§goto(addr210);
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr269);
                                                            }
                                                            addr268:
                                                         }
                                                         §§goto(addr272);
                                                      }
                                                      §§goto(addr248);
                                                   }
                                                   §§goto(addr210);
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr268);
                                                }
                                                addr267:
                                             }
                                          }
                                          §§goto(addr210);
                                       }
                                    }
                                    §§goto(addr267);
                                 }
                              }
                           }
                        }
                     }
                     while(_loc11_ && param2)
                     {
                        §§goto(addr97);
                     }
                     continue;
                  }
                  §§push(0);
                  §§goto(addr352);
               }
               §§goto(addr68);
            }
            §§goto(addr60);
         }
      }
      
      public function encode(param1:BitmapData) : ByteArray
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:* = 0;
         var _loc7_:§9+§ = null;
         if(!(_loc8_ && _loc2_))
         {
            this.§@!P§ = new ByteArray();
            this.§?p§ = 0;
         }
         this.§#O§ = 7;
         this.§'D§(65496);
         while(true)
         {
            this.§2^§();
            while(true)
            {
               this.§8K§();
               loop2:
               while(true)
               {
                  this.§<=§(param1.width,param1.height);
                  do
                  {
                     this.§]!A§();
                     continue loop2;
                  }
                  while(false);
                  
                  var _loc2_:* = Number(0);
                  var _loc3_:* = Number(0);
                  var _loc4_:* = Number(0);
                  if(!_loc8_)
                  {
                     this.§?p§ = 0;
                     if(!(_loc8_ && param1))
                     {
                        addr119:
                        this.§#O§ = 7;
                     }
                     var _loc5_:* = 0;
                     addr281:
                     if(_loc5_ < param1.height)
                     {
                        addr272:
                        _loc6_ = 0;
                        if(!(_loc8_ && param1))
                        {
                           addr125:
                           if(_loc6_ >= param1.width)
                           {
                              if(_loc9_)
                              {
                                 if(_loc9_ || _loc3_)
                                 {
                                    §§push(_loc5_);
                                    §§push(8);
                                    if(!_loc8_)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(!_loc8_)
                                       {
                                          if(!(_loc8_ && this))
                                          {
                                             §§push(int(§§pop()));
                                             if(_loc9_)
                                             {
                                                _loc5_ = §§pop();
                                                if(false)
                                                {
                                                   addr159:
                                                   §§push(_loc6_);
                                                   §§push(8);
                                                   if(!(_loc8_ && this))
                                                   {
                                                      addr180:
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc9_ || _loc3_)
                                                      {
                                                         §§push(int(§§pop()));
                                                         if(!(_loc8_ && this))
                                                         {
                                                            _loc6_ = §§pop();
                                                            addr196:
                                                            §§goto(addr125);
                                                         }
                                                         §§goto(addr272);
                                                      }
                                                      §§goto(addr210);
                                                   }
                                                   §§goto(addr290);
                                                }
                                             }
                                             §§goto(addr281);
                                          }
                                          §§goto(addr229);
                                       }
                                       §§goto(addr180);
                                    }
                                    §§goto(addr290);
                                 }
                                 §§goto(addr213);
                              }
                              §§goto(addr196);
                           }
                           this.§+!2§(param1,_loc6_,_loc5_);
                           §§goto(addr229);
                           §§push(this.§,h§(this.§<!-§,this.§7s§,_loc2_,this.§-!=§,this.§3l§));
                        }
                        §§goto(addr291);
                     }
                     if(_loc9_)
                     {
                        addr290:
                        if(§§pop() >= §§pop())
                        {
                           addr291:
                           (_loc7_ = new §9+§()).len = this.§#O§ + 1;
                           if(!_loc8_)
                           {
                              §§push(_loc7_);
                              §§push(1);
                              if(_loc9_ || _loc3_)
                              {
                                 §§push(§§pop() << this.§#O§ + 1);
                              }
                              §§pop().val = §§pop() - 1;
                              if(_loc8_ && this)
                              {
                              }
                              §§goto(addr339);
                           }
                           this.§6$§(_loc7_);
                        }
                        addr339:
                        this.§'D§(65497);
                        addr210:
                        if(_loc9_)
                        {
                           _loc4_ = §§pop();
                           addr213:
                           §§goto(addr159);
                        }
                        if(!_loc8_)
                        {
                           addr229:
                           §§push(Number(§§pop()));
                           if(_loc9_ || _loc3_)
                           {
                              _loc3_ = §§pop();
                              §§goto(addr210);
                              §§push(Number(this.§,h§(this.§?!9§,this.§^V§,_loc4_,this.§%1§,this.§[G§)));
                           }
                           §§push(Number(§§pop()));
                        }
                        _loc2_ = §§pop();
                        if(_loc9_ || this)
                        {
                           §§goto(addr210);
                           §§push(this.§,h§(this.§#!+§,this.§^V§,_loc3_,this.§%1§,this.§[G§));
                        }
                        return this.§@!P§;
                        §§push(this.§#O§);
                        §§push(0);
                     }
                     §§goto(addr291);
                  }
                  §§goto(addr119);
               }
            }
            if(!(_loc9_ || _loc2_))
            {
               continue;
            }
            this.§;8§();
            if(_loc9_ || _loc2_)
            {
               §§goto(addr40);
            }
            §§goto(addr45);
         }
      }
   }
}
