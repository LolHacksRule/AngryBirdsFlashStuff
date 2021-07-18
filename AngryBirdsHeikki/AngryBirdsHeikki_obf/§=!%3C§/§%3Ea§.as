package §=!<§
{
   import §"^§.§+!'§;
   import §,-§.§!>§;
   import §,-§.§]M§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §>a§ extends EventDispatcher
   {
      
      private static const § 0§:int = 2;
      
      private static const §@!9§:int = 2048;
      
      private static var §]!'§:§>a§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            § 0§ = 2;
         }
         do
         {
            §@!9§ = 2048;
         }
         while(!(_loc1_ || _loc1_));
         
      }
      
      private var §<!a§:Dictionary;
      
      private var §4!a§:Vector.<§]M§>;
      
      private var §^5§:Dictionary;
      
      private var §+!9§:Boolean;
      
      private var §[M§:String;
      
      private var §-d§:Texture;
      
      private var §5m§:int;
      
      private var §!t§:int;
      
      public function §>a§(param1:String = null)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            super();
            while(true)
            {
               this.§4!a§ = new Vector.<§]M§>();
            }
            addr84:
         }
         loop1:
         while(true)
         {
            this.§<!a§ = new Dictionary();
            while(_loc3_)
            {
               this.§^5§ = new Dictionary();
               while(!_loc2_)
               {
                  if(_loc3_)
                  {
                     this.§[M§ = param1;
                     if(!_loc2_)
                     {
                        return;
                     }
                     continue;
                     continue;
                  }
                  continue loop1;
               }
            }
            §§goto(addr84);
         }
      }
      
      public static function get § s§() : §>a§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(§]!'§);
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(_loc2_)
                  {
                     §]!'§ = new §>a§();
                     addr54:
                     §§push(§]!'§);
                  }
               }
               §§goto(addr54);
            }
            return §§pop();
         }
         §§goto(addr54);
      }
      
      public function get §^j§() : int
      {
         return this.§5m§;
      }
      
      public function get §4!J§() : int
      {
         return this.§!t§;
      }
      
      public function get id() : String
      {
         return this.§[M§;
      }
      
      public function dispose() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:§8!!§ = null;
         var _loc2_:§]M§ = null;
         if(!_loc6_)
         {
            if(this.§<!a§)
            {
               addr27:
               var _loc3_:int = 0;
               var _loc4_:* = this.§<!a§;
               loop14:
               while(true)
               {
                  §§push(§§hasnext(_loc4_,_loc3_));
                  if(_loc5_ || this)
                  {
                     if(§§pop())
                     {
                        _loc1_ = §§nextvalue(_loc3_,_loc4_);
                        if(_loc5_ || _loc1_)
                        {
                           this.§=@§(_loc1_.texture.parent);
                           if(_loc6_ && this)
                           {
                              continue;
                           }
                        }
                        _loc1_.dispose();
                        continue;
                     }
                     if(_loc5_ || _loc2_)
                     {
                        if(!_loc6_)
                        {
                           if(_loc5_ || _loc3_)
                           {
                              this.§<!a§ = null;
                              if(!(_loc6_ && _loc1_))
                              {
                                 addr98:
                                 if(this.§4!a§)
                                 {
                                    if(!(_loc6_ && _loc3_))
                                    {
                                       _loc3_ = 0;
                                       if(!_loc6_)
                                       {
                                          addr122:
                                          _loc4_ = this.§4!a§;
                                          while(true)
                                          {
                                             §§push(§§hasnext(_loc4_,_loc3_));
                                             break loop14;
                                          }
                                          addr137:
                                       }
                                       if(!(_loc6_ && this))
                                       {
                                          this.§4!a§ = null;
                                          loop1:
                                          while(true)
                                          {
                                             addr206:
                                             while(true)
                                             {
                                                if(this.§^5§)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      this.§^5§ = null;
                                                   }
                                                   while(_loc6_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   addr224:
                                                }
                                                while(true)
                                                {
                                                   §§push(this.§-d§);
                                                   if(!_loc6_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(this.§-d§);
                                                            addr203:
                                                            loop4:
                                                            while(true)
                                                            {
                                                               §§pop().dispose();
                                                               loop5:
                                                               while(true)
                                                               {
                                                                  this.§-d§ = null;
                                                                  addr185:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                     if(_loc6_ && _loc1_)
                                                                     {
                                                                        §§goto(addr224);
                                                                     }
                                                                  }
                                                                  continue loop4;
                                                               }
                                                            }
                                                         }
                                                         addr201:
                                                      }
                                                      while(true)
                                                      {
                                                         this.§4!a§ = new Vector.<§]M§>();
                                                         while(_loc5_)
                                                         {
                                                            while(true)
                                                            {
                                                               this.§<!a§ = new Dictionary();
                                                               addr168:
                                                               §§goto(addr170);
                                                            }
                                                         }
                                                         §§goto(addr185);
                                                      }
                                                   }
                                                   §§goto(addr203);
                                                }
                                             }
                                          }
                                       }
                                       addr170:
                                       while(_loc6_)
                                       {
                                          continue loop8;
                                       }
                                       while(true)
                                       {
                                          this.§^5§ = new Dictionary();
                                          if(!_loc6_)
                                          {
                                             if(!_loc6_)
                                             {
                                                break;
                                             }
                                             §§goto(addr201);
                                          }
                                          else
                                          {
                                             §§goto(addr168);
                                          }
                                       }
                                       return;
                                    }
                                    §§goto(addr180);
                                 }
                                 §§goto(addr206);
                              }
                              §§goto(addr180);
                           }
                           §§goto(addr98);
                        }
                     }
                     §§goto(addr122);
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop())
                  {
                     _loc2_ = §§nextvalue(_loc3_,_loc4_);
                     if(!_loc6_)
                     {
                        _loc2_.dispose();
                     }
                     continue;
                  }
                  §§goto(addr122);
               }
            }
            §§goto(addr98);
         }
         §§goto(addr27);
      }
      
      public function §?h§(param1:§]M§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(!this.§+!9§)
            {
               while(this.§4!a§.indexOf(param1) < 0)
               {
                  loop1:
                  while(true)
                  {
                     this.§4!a§.push(param1);
                     if(_loc3_ || param1)
                     {
                        break;
                     }
                     if(_loc2_ && param1)
                     {
                        §§goto(addr85);
                     }
                     while(true)
                     {
                        continue loop1;
                     }
                  }
                  if(!_loc3_)
                  {
                     break;
                  }
                  if(!_loc2_)
                  {
                     return;
                  }
               }
               return;
            }
            addr85:
            return;
         }
         §§goto(addr81);
      }
      
      private function §!1§(param1:Array) : Rectangle
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc9_:§]M§ = null;
         var _loc10_:BitmapData = null;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = Number(1);
         var _loc8_:int = 0;
         loop0:
         while(_loc8_ < param1.length)
         {
            _loc9_ = param1[_loc8_];
            if(!(_loc11_ && _loc3_))
            {
               if(_loc8_ == 0)
               {
                  if(!(_loc11_ && this))
                  {
                     §§push(_loc9_.scale);
                     if(_loc12_)
                     {
                        §§push(Number(§§pop()));
                        if(!(_loc11_ && _loc2_))
                        {
                           _loc7_ = §§pop();
                           if(!_loc12_)
                           {
                              addr82:
                              break;
                           }
                           addr77:
                        }
                        else
                        {
                           addr80:
                           if(§§pop() != _loc7_)
                           {
                              §§goto(addr82);
                           }
                        }
                        _loc10_ = _loc9_.bitmapData;
                        if(_loc12_ || _loc3_)
                        {
                           §§push(_loc2_);
                           while(true)
                           {
                              if(§§pop() + _loc10_.width + § 0§ >= §@!9§)
                              {
                                 while(true)
                                 {
                                    §§push(0);
                                    addr301:
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                       addr302:
                                       while(true)
                                       {
                                          §§push(_loc3_);
                                          addr287:
                                          while(true)
                                          {
                                             §§push(_loc6_);
                                             addr288:
                                             while(true)
                                             {
                                                §§push(§§pop() + §§pop());
                                                addr289:
                                                while(true)
                                                {
                                                   §§push(int(§§pop()));
                                                   addr290:
                                                   while(true)
                                                   {
                                                      _loc3_ = §§pop();
                                                      addr291:
                                                      loop9:
                                                      while(true)
                                                      {
                                                         §§push(0);
                                                         addr276:
                                                         while(true)
                                                         {
                                                            _loc6_ = §§pop();
                                                            addr277:
                                                            while(!(_loc11_ && _loc2_))
                                                            {
                                                            }
                                                            continue loop9;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 addr300:
                              }
                              while(true)
                              {
                                 §§push(_loc3_);
                                 loop13:
                                 for(; _loc12_; if(!(_loc12_ || this))
                                 {
                                    continue;
                                 },if(_loc12_)
                                 {
                                    §§goto(addr225);
                                    §§push(_loc4_);
                                 },§§goto(addr276))
                                 {
                                    if(§§pop() + _loc10_.height + § 0§ < §@!9§)
                                    {
                                       §§push(_loc2_);
                                       loop14:
                                       while(true)
                                       {
                                          §§push(int(§§pop() + (_loc10_.width + § 0§)));
                                          loop15:
                                          while(true)
                                          {
                                             _loc2_ = §§pop();
                                             loop16:
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                if(!(_loc11_ && param1))
                                                {
                                                   continue loop13;
                                                }
                                                loop28:
                                                while(true)
                                                {
                                                   §§push(int(§§pop()));
                                                   loop19:
                                                   while(true)
                                                   {
                                                      _loc4_ = §§pop();
                                                      loop20:
                                                      while(!(_loc11_ && param1))
                                                      {
                                                         while(true)
                                                         {
                                                            loop21:
                                                            while(true)
                                                            {
                                                               if(_loc10_.height + § 0§ <= _loc6_)
                                                               {
                                                                  loop27:
                                                                  while(true)
                                                                  {
                                                                     _loc8_++;
                                                                     if(!_loc11_)
                                                                     {
                                                                        if(_loc12_)
                                                                        {
                                                                           addr101:
                                                                           if(!(_loc11_ && this))
                                                                           {
                                                                              addr108:
                                                                              if(_loc12_ || param1)
                                                                              {
                                                                                 if(true)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc3_);
                                                                                    if(!(_loc11_ && _loc2_))
                                                                                    {
                                                                                       addr126:
                                                                                       if(!(_loc12_ || _loc3_))
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       if(!_loc12_)
                                                                                       {
                                                                                          continue loop14;
                                                                                       }
                                                                                       if(_loc12_)
                                                                                       {
                                                                                          addr137:
                                                                                          §§push(_loc6_);
                                                                                          if(!(_loc11_ && param1))
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(_loc12_)
                                                                                             {
                                                                                                addr149:
                                                                                                §§push(int(§§pop()));
                                                                                                if(!(_loc11_ && this))
                                                                                                {
                                                                                                   _loc5_ = §§pop();
                                                                                                   while(!_loc11_)
                                                                                                   {
                                                                                                      continue loop27;
                                                                                                   }
                                                                                                   continue loop20;
                                                                                                   addr167:
                                                                                                }
                                                                                                continue loop15;
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(!(_loc11_ && _loc2_))
                                                                                             {
                                                                                                if(§§pop() > §§pop())
                                                                                                {
                                                                                                   while(_loc12_)
                                                                                                   {
                                                                                                      §§push(_loc2_);
                                                                                                      if(!(_loc11_ && this))
                                                                                                      {
                                                                                                         continue loop28;
                                                                                                      }
                                                                                                      continue loop19;
                                                                                                      §§goto(addr108);
                                                                                                   }
                                                                                                   continue loop16;
                                                                                                   addr233:
                                                                                                }
                                                                                                continue loop21;
                                                                                                §§goto(addr137);
                                                                                             }
                                                                                             §§goto(addr288);
                                                                                             addr225:
                                                                                          }
                                                                                          §§goto(addr289);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr287);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr149);
                                                                                 }
                                                                                 continue loop19;
                                                                                 addr117:
                                                                              }
                                                                              §§goto(addr233);
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    §§push(int(_loc10_.height + § 0§));
                                                                                    continue loop19;
                                                                                 }
                                                                                 §§goto(addr300);
                                                                                 §§goto(addr101);
                                                                              }
                                                                              addr177:
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           while(!_loc11_)
                                                                           {
                                                                              if(!_loc11_)
                                                                              {
                                                                                 §§goto(addr117);
                                                                              }
                                                                              break;
                                                                           }
                                                                           break loop0;
                                                                           §§goto(addr277);
                                                                           addr201:
                                                                        }
                                                                        §§goto(addr291);
                                                                     }
                                                                     §§goto(addr167);
                                                                  }
                                                                  continue loop0;
                                                               }
                                                               §§goto(addr177);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr302);
                                                   }
                                                }
                                             }
                                             §§goto(addr276);
                                          }
                                       }
                                    }
                                    §§goto(addr264);
                                 }
                                 §§goto(addr301);
                              }
                              if(_loc11_ && _loc2_)
                              {
                                 continue;
                              }
                              _loc6_ = §§pop();
                              §§goto(addr201);
                           }
                        }
                        §§goto(addr252);
                     }
                  }
                  §§goto(addr77);
               }
               else
               {
                  §§push(_loc9_.scale);
               }
               §§goto(addr80);
            }
            §§goto(addr77);
         }
         return new Rectangle(0,0,_loc4_,_loc5_);
      }
      
      private function §%>§(param1:Array, param2:BitmapData) : Array
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc8_:§]M§ = null;
         var _loc9_:BitmapData = null;
         var _loc10_:§,f§ = null;
         var _loc11_:int = 0;
         var _loc12_:* = 0;
         var _loc13_:§!>§ = null;
         var _loc3_:* = 0;
         var _loc4_:int = 0;
         var _loc5_:* = 0;
         var _loc6_:Array = [];
         var _loc7_:Number = NaN;
         loop0:
         while(true)
         {
            §§push(param1);
            loop1:
            while(§§pop().length > 0)
            {
               §§push(param1);
               if(!(_loc14_ || _loc3_))
               {
                  continue;
               }
               _loc8_ = §§pop()[0];
               if(!_loc15_)
               {
                  §§push(!isNaN(_loc7_));
                  if(_loc14_)
                  {
                     if(§§pop())
                     {
                        if(_loc14_)
                        {
                           §§pop();
                           if(!(_loc15_ && param2))
                           {
                              §§push(_loc7_);
                              if(!(_loc15_ && param2))
                              {
                                 §§push(§§pop() == _loc8_.scale);
                                 if(!(_loc15_ && _loc3_))
                                 {
                                    addr97:
                                    addr96:
                                    if(!§§pop())
                                    {
                                       if(!_loc15_)
                                       {
                                          addr100:
                                          break;
                                       }
                                    }
                                    else
                                    {
                                       §§push(_loc8_.scale);
                                       if(_loc14_)
                                       {
                                          addr106:
                                          _loc7_ = §§pop();
                                       }
                                       §§goto(addr106);
                                    }
                                    _loc9_ = _loc8_.bitmapData;
                                    if(_loc14_)
                                    {
                                       §§push(_loc3_);
                                       loop2:
                                       while(true)
                                       {
                                          if(§§pop() + _loc9_.width + § 0§ <= param2.width)
                                          {
                                             loop11:
                                             while(true)
                                             {
                                                §§push(_loc4_);
                                                if(_loc14_)
                                                {
                                                   if(_loc15_ && this)
                                                   {
                                                      continue loop2;
                                                   }
                                                   if(§§pop() + _loc9_.height + § 0§ > param2.height)
                                                   {
                                                      if(!(_loc15_ && _loc3_))
                                                      {
                                                         if(!(_loc14_ || param2))
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc14_)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr162:
                                                         if(!(_loc15_ && this))
                                                         {
                                                            if(!(_loc15_ && this))
                                                            {
                                                               if(false)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(0);
                                                                     addr180:
                                                                     loop10:
                                                                     while(_loc14_)
                                                                     {
                                                                        if(!(_loc15_ && param2))
                                                                        {
                                                                           _loc5_ = §§pop();
                                                                           continue loop11;
                                                                        }
                                                                        addr225:
                                                                        while(true)
                                                                        {
                                                                           _loc3_ = §§pop();
                                                                           addr226:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc4_);
                                                                              break loop10;
                                                                           }
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(int(§§pop() + _loc5_));
                                                                        continue loop2;
                                                                     }
                                                                  }
                                                                  addr178:
                                                               }
                                                               else
                                                               {
                                                                  (_loc10_ = new §,f§()).offset = new Point(_loc3_,_loc4_);
                                                                  if(!_loc15_)
                                                                  {
                                                                     _loc10_.§%A§ = _loc8_;
                                                                     _loc6_.push(_loc10_);
                                                                     addr298:
                                                                     if(_loc15_ && this)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     addr268:
                                                                     §§push(_loc8_.§]m§);
                                                                     if(!(_loc15_ && param2))
                                                                     {
                                                                        addr279:
                                                                        _loc11_ = §§pop();
                                                                        if(_loc14_)
                                                                        {
                                                                           §§push(0);
                                                                           if(!(_loc15_ && this))
                                                                           {
                                                                              if(_loc14_ || this)
                                                                              {
                                                                                 _loc12_ = §§pop();
                                                                                 if(_loc14_ || param2)
                                                                                 {
                                                                                    if(!_loc15_)
                                                                                    {
                                                                                       if(false)
                                                                                       {
                                                                                          §§goto(addr268);
                                                                                       }
                                                                                       addr319:
                                                                                       §§push(_loc12_);
                                                                                       if(!_loc15_)
                                                                                       {
                                                                                          if(§§pop() < _loc11_)
                                                                                          {
                                                                                             (_loc13_ = _loc8_.§'!B§(_loc12_)).§?7§ = null;
                                                                                             if(_loc14_)
                                                                                             {
                                                                                                _loc13_.§1!f§.offset(_loc3_,_loc4_);
                                                                                                if(_loc14_)
                                                                                                {
                                                                                                   addr318:
                                                                                                   _loc12_++;
                                                                                                }
                                                                                                §§goto(addr319);
                                                                                             }
                                                                                             §§goto(addr318);
                                                                                          }
                                                                                          if(!(_loc15_ && param1))
                                                                                          {
                                                                                             addr331:
                                                                                             §§push(_loc3_);
                                                                                             if(!(_loc15_ && this))
                                                                                             {
                                                                                                §§push(int(§§pop() + (_loc9_.width + § 0§)));
                                                                                                if(!(_loc15_ && _loc3_))
                                                                                                {
                                                                                                   addr352:
                                                                                                   _loc3_ = §§pop();
                                                                                                   if(_loc14_ || _loc3_)
                                                                                                   {
                                                                                                      addr360:
                                                                                                      if(_loc9_.height + § 0§ > _loc5_)
                                                                                                      {
                                                                                                         if(!_loc15_)
                                                                                                         {
                                                                                                            addr373:
                                                                                                            _loc5_ = int(_loc9_.height + § 0§);
                                                                                                            addr368:
                                                                                                            if(!_loc14_)
                                                                                                            {
                                                                                                               continue loop0;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      param1.splice(0,1);
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   §§goto(addr368);
                                                                                                }
                                                                                                §§goto(addr373);
                                                                                             }
                                                                                             §§goto(addr352);
                                                                                          }
                                                                                          §§goto(addr360);
                                                                                       }
                                                                                       §§goto(addr373);
                                                                                    }
                                                                                    §§goto(addr298);
                                                                                 }
                                                                                 §§goto(addr331);
                                                                              }
                                                                              §§goto(addr279);
                                                                           }
                                                                           §§goto(addr352);
                                                                        }
                                                                     }
                                                                     §§goto(addr373);
                                                                  }
                                                                  §§goto(addr360);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                               }
                                                               addr224:
                                                            }
                                                            §§goto(addr225);
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               §§goto(addr162);
                                                            }
                                                            addr214:
                                                         }
                                                         §§goto(addr178);
                                                      }
                                                      §§goto(addr226);
                                                   }
                                                   else
                                                   {
                                                      param2.copyPixels(_loc9_,_loc9_.rect,new Point(_loc3_,_loc4_),null,null,true);
                                                   }
                                                   §§goto(addr162);
                                                }
                                                §§goto(addr180);
                                             }
                                             break loop1;
                                          }
                                          §§goto(addr224);
                                       }
                                    }
                                    §§goto(addr200);
                                 }
                                 §§goto(addr97);
                              }
                              §§goto(addr106);
                           }
                           §§goto(addr100);
                        }
                        §§goto(addr96);
                     }
                  }
                  §§goto(addr97);
               }
               §§goto(addr100);
            }
            return _loc6_;
         }
      }
      
      public function §28§() : Boolean
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc1_:§]M§ = null;
         var _loc3_:Rectangle = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Array = null;
         var _loc6_:Texture = null;
         var _loc7_:* = 0;
         var _loc8_:§,f§ = null;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:§!>§ = null;
         if(_loc15_ || _loc1_)
         {
            §§push(§+!'§.§`4§());
            if(!(_loc14_ && this))
            {
               if(!§§pop())
               {
                  if(_loc15_)
                  {
                     addr63:
                     §§push(false);
                     if(!_loc14_)
                     {
                        §§goto(addr66);
                     }
                     else
                     {
                        addr78:
                        if(§§pop())
                        {
                           if(!(_loc14_ && this))
                           {
                              §§goto(addr87);
                           }
                        }
                     }
                  }
                  var _loc2_:Array = [];
                  var _loc12_:int = 0;
                  var _loc13_:* = this.§4!a§;
                  loop0:
                  while(true)
                  {
                     §§push(§§hasnext(_loc13_,_loc12_));
                     if(_loc15_ || _loc1_)
                     {
                        if(§§pop())
                        {
                           _loc1_ = §§nextvalue(_loc12_,_loc13_);
                           if(_loc15_ || _loc2_)
                           {
                              if(_loc1_.§]m§ <= 0)
                              {
                                 continue;
                              }
                              if(_loc14_ && _loc1_)
                              {
                                 continue;
                              }
                           }
                           _loc2_.push(_loc1_);
                           continue;
                        }
                        if(_loc15_ || _loc3_)
                        {
                           if(_loc15_)
                           {
                              if(_loc15_ || this)
                              {
                                 while(true)
                                 {
                                    if(_loc2_.length > 0)
                                    {
                                       _loc3_ = this.§!1§(_loc2_);
                                       if(_loc15_ || _loc2_)
                                       {
                                          if(_loc3_.width * _loc3_.height == 0)
                                          {
                                             if(_loc15_ || this)
                                             {
                                                break;
                                             }
                                          }
                                          _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
                                          if((_loc5_ = this.§%>§(_loc2_,_loc4_)).length == 0)
                                          {
                                             if(!_loc14_)
                                             {
                                                throw new Error("Found too large sprite sheet image!");
                                             }
                                          }
                                          _loc6_ = this.§=!Z§(_loc4_);
                                          if(_loc15_)
                                          {
                                             §§push(0);
                                             if(!(_loc14_ && this))
                                             {
                                                _loc7_ = §§pop();
                                                if(!_loc15_)
                                                {
                                                   continue;
                                                }
                                                addr238:
                                                while(true)
                                                {
                                                   §§push(_loc7_);
                                                }
                                                addr317:
                                             }
                                             for(; §§pop() < _loc5_.length; §§goto(addr317))
                                             {
                                                _loc1_ = (_loc8_ = _loc5_[_loc7_]).§%A§;
                                                if(_loc15_ || _loc1_)
                                                {
                                                   §§push(_loc1_.§]m§);
                                                   if(!_loc14_)
                                                   {
                                                      §§push(int(§§pop()));
                                                      if(_loc15_ || _loc1_)
                                                      {
                                                         _loc9_ = §§pop();
                                                         if(!(_loc14_ && this))
                                                         {
                                                            §§push(0);
                                                            if(!(_loc14_ && this))
                                                            {
                                                               addr284:
                                                               _loc10_ = §§pop();
                                                               if(_loc14_ && _loc2_)
                                                               {
                                                                  continue;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(_loc10_);
                                                               }
                                                               addr311:
                                                            }
                                                            while(§§pop() < _loc9_)
                                                            {
                                                               _loc11_ = _loc1_.§'!B§(_loc10_);
                                                               if(_loc15_)
                                                               {
                                                                  this.§4z§(_loc11_,_loc6_,_loc4_,_loc1_.scale);
                                                                  if(_loc15_)
                                                                  {
                                                                     _loc10_++;
                                                                  }
                                                               }
                                                               §§goto(addr311);
                                                            }
                                                            if(_loc15_)
                                                            {
                                                               addr316:
                                                               _loc7_++;
                                                            }
                                                            continue;
                                                         }
                                                         §§goto(addr316);
                                                      }
                                                   }
                                                   §§goto(addr284);
                                                }
                                                §§goto(addr316);
                                             }
                                             continue;
                                          }
                                          §§goto(addr238);
                                       }
                                       break;
                                    }
                                    if(!_loc14_)
                                    {
                                       _loc12_ = 0;
                                       if(_loc15_)
                                       {
                                          addr331:
                                          _loc13_ = this.§4!a§;
                                          while(true)
                                          {
                                             §§push(§§hasnext(_loc13_,_loc12_));
                                             break loop0;
                                          }
                                          addr346:
                                       }
                                       if(!(_loc14_ && _loc1_))
                                       {
                                          this.§4!a§ = new Vector.<§]M§>();
                                          do
                                          {
                                             this.§+!9§ = true;
                                          }
                                          while(!(_loc15_ || _loc1_));
                                          
                                          addr391:
                                          addr357:
                                       }
                                       return true;
                                    }
                                    §§goto(addr391);
                                 }
                                 throw new Error("Found too large sprite sheet image!");
                              }
                              §§goto(addr357);
                           }
                        }
                        §§goto(addr331);
                     }
                     break;
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        _loc1_ = §§nextvalue(_loc12_,_loc13_);
                        if(_loc15_)
                        {
                           _loc1_.dispose();
                        }
                        continue;
                     }
                     §§goto(addr331);
                  }
               }
               else
               {
                  §§push(this.§+!9§);
                  if(_loc15_)
                  {
                     §§goto(addr78);
                  }
               }
               addr87:
               return true;
            }
            addr66:
            return §§pop();
         }
         §§goto(addr63);
      }
      
      private function §4z§(param1:§!>§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:Rectangle = null;
         var _loc7_:§[!_§ = null;
         var _loc5_:§8!!§;
         if(!(_loc5_ = this.§<!a§[param1.mName]))
         {
            _loc6_ = param1.§1!f§.clone();
            _loc7_ = new §[!_§(param2,_loc6_,false);
            _loc5_ = new §8!!§(_loc7_,param3,_loc6_,param1.§var §,param1.§9!K§,param4);
            if(_loc8_)
            {
               this.§<!a§[param1.mName] = _loc5_;
            }
         }
      }
      
      public function §-!#§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         if(!_loc6_)
         {
            §§push(null);
            if(!_loc6_)
            {
               §§pop().§§slot[1] = §§pop();
               if(!_loc6_)
               {
                  addr32:
                  var texture:Texture = null;
                  if(!(_loc6_ && _loc1_))
                  {
                     §§goto(addr41);
                  }
                  §§goto(addr44);
               }
               addr41:
               if(!§+!'§.§@N§)
               {
                  addr44:
                  var _loc2_:int = 0;
                  var _loc3_:* = this.§^5§;
                  while(§§hasnext(_loc3_,_loc2_))
                  {
                     §§push(§§newactivation());
                     if(_loc5_)
                     {
                        §§pop().§§slot[1] = §§nextname(_loc2_,_loc3_);
                        if(_loc5_ || _loc3_)
                        {
                           try
                           {
                              §§push(§§newactivation());
                              if(!(_loc6_ && _loc2_))
                              {
                                 addr85:
                                 §§pop().§§slot[2] = this.§^5§[bd];
                                 addr101:
                                 if(!_loc6_)
                                 {
                                    addr94:
                                    §§push(§§newactivation());
                                 }
                                 continue;
                              }
                              §§pop().§§slot[2].requestBaseTextureUpdate(bd as BitmapData);
                           }
                           catch(e:Error)
                           {
                              continue;
                           }
                           §§goto(addr101);
                        }
                        §§goto(addr94);
                     }
                     §§goto(addr85);
                  }
               }
               return;
            }
         }
         §§goto(addr32);
      }
      
      public function §8t§(param1:String) : §8!!§
      {
         return this.§<!a§[param1];
      }
      
      public function §=!Z§(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Texture = this.§^5§[param1];
         if(!_loc4_)
         {
            if(_loc3_)
            {
               if(_loc5_ || this)
               {
                  §§goto(addr44);
               }
            }
            _loc3_ = §+!'§.§!a§(param1,param2);
            if(_loc5_ || this)
            {
               this.§^5§[param1] = _loc3_;
               do
               {
                  this.§3!e§(_loc3_,param1,true);
               }
               while(_loc4_);
               
            }
            return _loc3_;
         }
         addr44:
         return _loc3_;
      }
      
      public function §3!e§(param1:Texture, param2:BitmapData, param3:Boolean) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:* = 0;
         var _loc6_:int = 0;
         var _loc4_:* = 1;
         if(!_loc8_)
         {
            if(!param3)
            {
               while(true)
               {
                  §§push(-1);
                  addr262:
                  while(true)
                  {
                     _loc4_ = §§pop();
                     addr263:
                     while(true)
                     {
                     }
                  }
                  addr213:
                  if(!(_loc7_ || param1))
                  {
                     continue;
                  }
                  §§push(param1.width);
                  loop6:
                  while(true)
                  {
                     §§push(int(§§pop()));
                     addr223:
                     while(true)
                     {
                        _loc5_ = §§pop();
                        continue loop6;
                     }
                  }
               }
            }
            while(true)
            {
               if(param2)
               {
                  if(!_loc8_)
                  {
                     §§push(this);
                     §§push(this.§!t§);
                     §§push(_loc4_ * param2.width);
                     if(!_loc8_)
                     {
                        §§push(§§pop() * param2.height);
                        if(_loc7_)
                        {
                           addr244:
                           §§push(§§pop() * 4);
                        }
                        §§pop().§!t§ = §§pop() + §§pop();
                        §§goto(addr258);
                     }
                     §§goto(addr244);
                  }
                  §§goto(addr258);
               }
               §§goto(addr201);
               §§goto(addr263);
            }
         }
         §§goto(addr258);
      }
      
      public function §,!A§() : Texture
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§-d§);
            if(_loc1_ || _loc1_)
            {
               if(!§§pop())
               {
                  if(!_loc2_)
                  {
                     this.§-d§ = this.§=!Z§(new BitmapData(40,40,false,16711935));
                     addr60:
                     §§push(this.§-d§);
                  }
               }
               §§goto(addr60);
            }
            return §§pop();
         }
         §§goto(addr60);
      }
      
      public function §=@§(param1:Texture) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         var _loc4_:int = 0;
         var _loc5_:* = this.§^5§;
         while(true)
         {
            for(_loc2_ in _loc5_)
            {
               if(_loc7_ && _loc2_)
               {
                  break;
               }
               if(this.§^5§[_loc2_] == param1)
               {
                  break;
               }
            }
            return;
         }
         _loc3_ = _loc2_ as BitmapData;
         if(!(_loc7_ && this))
         {
            this.§3!e§(param1,_loc3_,false);
            loop1:
            while(true)
            {
               if(_loc3_)
               {
                  while(true)
                  {
                     _loc3_.dispose();
                  }
                  addr114:
               }
               loop3:
               while(true)
               {
                  delete this.§^5§[_loc2_];
                  while(_loc6_)
                  {
                     param1.dispose();
                     if(_loc6_ || _loc3_)
                     {
                        if(!_loc7_)
                        {
                           break loop3;
                        }
                        continue loop3;
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function §%'§(param1:String) : BitmapData
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§8!!§ = this.§8t§(param1);
         if(!(_loc4_ && param1))
         {
            if(_loc2_ == null)
            {
               if(!_loc4_)
               {
                  §§push(this.§8t§(param1 + "_1"));
                  if(_loc3_ || param1)
                  {
                     _loc2_ = §§pop();
                     §§goto(addr57);
                  }
                  §§goto(addr72);
               }
               §§goto(addr94);
            }
            addr57:
            if(_loc2_ == null)
            {
               if(_loc3_ || _loc2_)
               {
                  addr72:
                  _loc2_ = this.§8t§(param1 + "_01");
               }
               §§goto(addr96);
            }
            if(_loc2_ == null)
            {
               if(_loc3_ || _loc3_)
               {
                  addr94:
                  return null;
               }
               §§goto(addr96);
            }
            §§goto(addr96);
         }
         addr96:
         return _loc2_.bitmapData;
      }
   }
}
