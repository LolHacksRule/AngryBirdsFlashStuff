package §`g§
{
   import §2m§.§@>§;
   import §7H§.§'!w§;
   import §7H§.transformCoords;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class § O§ extends DisplayObject
   {
      
      private static var §;q§:Vector3D;
      
      private static var §"!,§:Point;
      
      private static var §=!l§:Matrix;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §;q§ = new Vector3D();
         }
         do
         {
            §"!,§ = new Point();
            do
            {
               §=!l§ = new Matrix();
            }
            while(!(_loc2_ || _loc1_));
            
         }
         while(_loc1_ && § O§);
         
      }
      
      protected var §[!K§:§'!w§;
      
      private var §#!0§:Number = 0.0;
      
      private var §7"!§:Number = 0.0;
      
      private var §4t§:uint = 16777215;
      
      public function § O§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            super();
            loop0:
            while(true)
            {
               this.§[!K§ = new §'!w§(4,param4);
               while(true)
               {
                  this.updateVertexData(param1,param2,param3,param4);
                  loop2:
                  while(_loc6_)
                  {
                     while(true)
                     {
                        this.§4t§ = param3;
                        if(!(_loc5_ && param3))
                        {
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr72);
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param2)
         {
            §§push(this.§[!K§);
            while(true)
            {
               §§pop().§&!O§(param4);
               loop12:
               for(; !(_loc5_ && param2); while(true)
               {
                  if(_loc5_ && param2)
                  {
                     continue loop12;
                  }
                  §§goto(addr87);
                  §§goto(addr144);
               },§§goto(addr194))
               {
                  §§push(2);
                  loop13:
                  while(!(_loc5_ && param2))
                  {
                     if(!_loc5_)
                     {
                        §§push(0);
                        while(true)
                        {
                           §§push(param2);
                           addr177:
                           while(true)
                           {
                              §§pop().setPosition(§§pop(),§§pop(),§§pop());
                              addr178:
                              while(true)
                              {
                                 §§push(this.§[!K§);
                                 continue loop12;
                              }
                           }
                           addr107:
                           §§push(param1);
                           if(_loc5_ && param1)
                           {
                              continue;
                           }
                           if(!_loc5_)
                           {
                              §§push(param2);
                              if(!_loc5_)
                              {
                                 addr120:
                                 if(!(_loc5_ && param2))
                                 {
                                    if(_loc6_)
                                    {
                                       §§pop().setPosition(§§pop(),§§pop(),§§pop());
                                       loop18:
                                       while(true)
                                       {
                                          if(!(_loc5_ && param3))
                                          {
                                             if(!(_loc5_ && param2))
                                             {
                                                §§push(this.§[!K§);
                                                if(!(_loc5_ && param3))
                                                {
                                                   addr67:
                                                   if(_loc6_ || param1)
                                                   {
                                                      §§pop().§]!P§(param3);
                                                      loop19:
                                                      do
                                                      {
                                                         this.§#!0§ = param1;
                                                         while(_loc6_)
                                                         {
                                                            this.§7"!§ = param2;
                                                            if(!(_loc5_ && this))
                                                            {
                                                               continue loop19;
                                                            }
                                                         }
                                                         continue loop18;
                                                      }
                                                      while(!_loc6_);
                                                      
                                                      if(!(_loc5_ && this))
                                                      {
                                                         return;
                                                      }
                                                      addr198:
                                                      while(true)
                                                      {
                                                         §§push(this.§[!K§);
                                                         break loop18;
                                                      }
                                                   }
                                                   break;
                                                }
                                                continue loop12;
                                                addr144:
                                             }
                                             while(true)
                                             {
                                                if(!_loc5_)
                                                {
                                                   §§push(this.§[!K§);
                                                   continue loop12;
                                                }
                                                addr203:
                                                while(true)
                                                {
                                                   §§push(this.§[!K§);
                                                   addr194:
                                                   while(true)
                                                   {
                                                      §§push(0);
                                                      addr195:
                                                      addr87:
                                                      while(true)
                                                      {
                                                         §§push(0);
                                                         addr196:
                                                         while(true)
                                                         {
                                                            §§push(0);
                                                         }
                                                      }
                                                      if(!(_loc6_ || param2))
                                                      {
                                                         continue;
                                                      }
                                                      §§push(3);
                                                      if(!_loc6_)
                                                      {
                                                         continue loop13;
                                                      }
                                                      §§goto(addr107);
                                                   }
                                                }
                                             }
                                             addr188:
                                          }
                                          else
                                          {
                                             §§goto(addr178);
                                          }
                                       }
                                       while(true)
                                       {
                                          break loop13;
                                          §§goto(addr67);
                                       }
                                    }
                                    while(true)
                                    {
                                       §§pop().setPosition(§§pop(),§§pop(),§§pop());
                                       §§goto(addr198);
                                    }
                                 }
                                 while(true)
                                 {
                                    §§pop().setPosition(§§pop(),§§pop(),§§pop());
                                    §§goto(addr188);
                                    §§goto(addr120);
                                 }
                                 addr187:
                              }
                              else
                              {
                                 §§goto(addr177);
                              }
                              §§goto(addr178);
                           }
                           while(_loc6_)
                           {
                              §§goto(addr187);
                              §§push(0);
                           }
                           §§goto(addr196);
                        }
                     }
                     else
                     {
                        §§goto(addr195);
                     }
                  }
                  while(true)
                  {
                     §§goto(addr184);
                  }
               }
            }
         }
         §§goto(addr203);
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:* = 0;
         if(_loc8_)
         {
            if(param2 == null)
            {
               addr23:
               param2 = new Rectangle();
            }
            var _loc3_:* = Number(Number.MAX_VALUE);
            §§push(-Number.MAX_VALUE);
            if(_loc8_)
            {
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            var _loc5_:* = Number(Number.MAX_VALUE);
            §§push(-Number.MAX_VALUE);
            if(_loc8_ || param1)
            {
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            if(!(_loc9_ && this))
            {
               if(param1 == this)
               {
                  if(!(_loc9_ && _loc3_))
                  {
                     _loc7_ = 0;
                     addr624:
                     loop80:
                     while(true)
                     {
                        §§push(_loc7_);
                        loop79:
                        while(true)
                        {
                           §§push(4);
                           loop78:
                           while(true)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 loop48:
                                 while(true)
                                 {
                                    loop76:
                                    while(true)
                                    {
                                       param2.x = _loc3_;
                                       loop49:
                                       while(!_loc9_)
                                       {
                                          addr124:
                                          if(!(_loc9_ && this))
                                          {
                                             param2.y = _loc5_;
                                             loop50:
                                             while(true)
                                             {
                                                if(_loc8_)
                                                {
                                                   if(_loc8_ || param1)
                                                   {
                                                      if(!(_loc9_ && param1))
                                                      {
                                                         if(!_loc9_)
                                                         {
                                                            param2.width = _loc4_ - _loc3_;
                                                            while(_loc8_)
                                                            {
                                                               param2.height = _loc6_ - _loc5_;
                                                               if(!_loc9_)
                                                               {
                                                                  return param2;
                                                               }
                                                            }
                                                            continue;
                                                         }
                                                         loop53:
                                                         while(true)
                                                         {
                                                            §§push(_loc3_);
                                                            loop54:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() < §;q§.x);
                                                               loop70:
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     §§push(Number(§;q§.x));
                                                                     loop72:
                                                                     while(true)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        loop64:
                                                                        while(true)
                                                                        {
                                                                           _loc3_ = §§pop();
                                                                           loop73:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc4_);
                                                                              loop23:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() > §;q§.x);
                                                                                 loop24:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc4_);
                                                                                          addr570:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             addr571:
                                                                                             while(true)
                                                                                             {
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr569:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(Number(§;q§.x));
                                                                                    }
                                                                                    loop25:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       loop26:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc4_ = §§pop();
                                                                                          loop29:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc5_);
                                                                                             loop19:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() < §;q§.y);
                                                                                                loop71:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc5_);
                                                                                                         addr551:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc8_)
                                                                                                            {
                                                                                                               continue loop25;
                                                                                                            }
                                                                                                            addr553:
                                                                                                            §§push(Number(§§pop()));
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§goto(addr553);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr550:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push(Number(§;q§.y));
                                                                                                   }
                                                                                                   loop65:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            continue loop54;
                                                                                                         }
                                                                                                         _loc5_ = §§pop();
                                                                                                         loop52:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc6_);
                                                                                                            loop66:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() > §;q§.y);
                                                                                                               addr507:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc8_ || param1))
                                                                                                                  {
                                                                                                                     continue loop24;
                                                                                                                  }
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     loop30:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc8_)
                                                                                                                        {
                                                                                                                           §§push(_loc6_);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              loop32:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    loop15:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc9_)
                                                                                                                                       {
                                                                                                                                          continue loop19;
                                                                                                                                       }
                                                                                                                                       if(!(_loc9_ && param1))
                                                                                                                                       {
                                                                                                                                          _loc6_ = §§pop();
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             _loc7_++;
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                continue loop80;
                                                                                                                                                addr143:
                                                                                                                                                if(!(_loc8_ || param1))
                                                                                                                                                {
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                addr150:
                                                                                                                                                loop3:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc7_);
                                                                                                                                                   if(!_loc9_)
                                                                                                                                                   {
                                                                                                                                                      §§push(4);
                                                                                                                                                      if(_loc9_)
                                                                                                                                                      {
                                                                                                                                                         continue loop78;
                                                                                                                                                      }
                                                                                                                                                      if(§§pop() >= §§pop())
                                                                                                                                                      {
                                                                                                                                                         if(!_loc9_)
                                                                                                                                                         {
                                                                                                                                                            continue loop76;
                                                                                                                                                         }
                                                                                                                                                         continue loop49;
                                                                                                                                                      }
                                                                                                                                                      §§push(this.§[!K§);
                                                                                                                                                      if(_loc8_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc7_);
                                                                                                                                                         if(!_loc9_)
                                                                                                                                                         {
                                                                                                                                                            §§pop().§+j§(§§pop(),§;q§);
                                                                                                                                                            while(!_loc9_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc8_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc9_ && _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop73;
                                                                                                                                                                  }
                                                                                                                                                                  transformCoords(§=!l§,§;q§.x,§;q§.y,§"!,§);
                                                                                                                                                                  loop5:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc3_);
                                                                                                                                                                     loop6:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc9_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop72;
                                                                                                                                                                        }
                                                                                                                                                                        §§push(§§pop() < §"!,§.x);
                                                                                                                                                                        loop7:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc8_ || param2))
                                                                                                                                                                           {
                                                                                                                                                                              continue loop71;
                                                                                                                                                                           }
                                                                                                                                                                           if(!(_loc8_ || this))
                                                                                                                                                                           {
                                                                                                                                                                              continue loop70;
                                                                                                                                                                           }
                                                                                                                                                                           if(§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc3_);
                                                                                                                                                                                 addr414:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                    addr415:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr413:
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§push(Number(§"!,§.x));
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc8_ || param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop66;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr419:
                                                                                                                                                                           }
                                                                                                                                                                           loop9:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                              addr427:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc9_ && this))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc9_ && param2))
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc3_ = §§pop();
                                                                                                                                                                                       loop11:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc4_);
                                                                                                                                                                                          if(_loc8_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc9_)
                                                                                                                                                                                             {
                                                                                                                                                                                                break;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(!(_loc9_ && _loc3_))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() > §"!,§.x);
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      while(_loc8_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc9_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc9_ && param2))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc4_);
                                                                                                                                                                                                               while(!_loc9_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc9_ && _loc3_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc8_ || _loc3_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop23;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr554);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop9;
                                                                                                                                                                                                               addr352:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop29;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop30;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop11;
                                                                                                                                                                                                      addr340:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr373:
                                                                                                                                                                                                   §§push(Number(§"!,§.x));
                                                                                                                                                                                                   while(!_loc9_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc8_ || param2))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop15;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr414);
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                      addr383:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc9_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop32;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(_loc9_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop26;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         _loc4_ = §§pop();
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc8_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc5_);
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() < §"!,§.y);
                                                                                                                                                                                                                  continue loop7;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr265:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr569);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr124);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr369);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                addr339:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr570);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr383);
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop6;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop64;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop65;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr246:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc8_ || _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           continue loop5;
                                                                                                                                                                        }
                                                                                                                                                                        addr253:
                                                                                                                                                                        if(_loc8_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc8_)
                                                                                                                                                                           {
                                                                                                                                                                              _loc7_++;
                                                                                                                                                                              break loop50;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop52;
                                                                                                                                                                        }
                                                                                                                                                                        addr487:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop3;
                                                                                                                                                                           §§goto(addr253);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr550);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr551);
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               break loop3;
                                                                                                                                                            }
                                                                                                                                                            addr498:
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc7_);
                                                                                                                                                         }
                                                                                                                                                         addr608:
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§pop().§+j§(§§pop(),§;q§);
                                                                                                                                                         continue loop53;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!_loc8_)
                                                                                                                                                   {
                                                                                                                                                      continue loop79;
                                                                                                                                                   }
                                                                                                                                                   _loc7_ = §§pop();
                                                                                                                                                   §§goto(addr487);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§goto(addr595);
                                                                                                                           }
                                                                                                                           addr584:
                                                                                                                        }
                                                                                                                        §§goto(addr596);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr523);
                                                                                                                     §§push(Number(§;q§.y));
                                                                                                                  }
                                                                                                                  §§goto(addr595);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     addr600:
                                                                  }
                                                                  §§goto(addr584);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr246);
                                                      }
                                                      §§goto(addr600);
                                                   }
                                                   break;
                                                }
                                                continue loop49;
                                             }
                                             while(_loc8_ || param2)
                                             {
                                                if(!_loc9_)
                                                {
                                                   §§goto(addr143);
                                                }
                                                §§goto(addr413);
                                             }
                                             break loop48;
                                             addr134:
                                          }
                                          §§goto(addr388);
                                       }
                                       while(true)
                                       {
                                          §§push(_loc6_);
                                          if(_loc8_)
                                          {
                                             if(!_loc9_)
                                             {
                                                if(_loc8_)
                                                {
                                                   if(!(_loc9_ && param2))
                                                   {
                                                      if(!(_loc9_ && param1))
                                                      {
                                                         §§push(§§pop() > §"!,§.y);
                                                         if(!(_loc9_ && param2))
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               if(!_loc9_)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     §§push(Number(§"!,§.y));
                                                                     if(!(_loc9_ && param1))
                                                                     {
                                                                        addr233:
                                                                        while(_loc8_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              addr236:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    if(_loc8_ || _loc3_)
                                                                                    {
                                                                                       _loc6_ = §§pop();
                                                                                       §§goto(addr246);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr295);
                                                                              }
                                                                              §§goto(addr369);
                                                                           }
                                                                        }
                                                                        §§goto(addr265);
                                                                        addr233:
                                                                     }
                                                                     §§goto(addr236);
                                                                  }
                                                                  break loop48;
                                                               }
                                                               §§goto(addr507);
                                                            }
                                                            §§goto(addr339);
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr571);
                                                   }
                                                   §§goto(addr427);
                                                }
                                                §§goto(addr352);
                                             }
                                             §§goto(addr383);
                                          }
                                          §§goto(addr236);
                                       }
                                       §§goto(addr268);
                                    }
                                 }
                                 while(true)
                                 {
                                    if(_loc8_)
                                    {
                                       if(!(_loc9_ && param1))
                                       {
                                          §§push(_loc6_);
                                          if(!(_loc9_ && _loc3_))
                                          {
                                             if(!(_loc9_ && param1))
                                             {
                                                if(!(_loc9_ && param2))
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(!_loc9_)
                                                   {
                                                      §§goto(addr235);
                                                   }
                                                   §§goto(addr233);
                                                }
                                                §§goto(addr318);
                                             }
                                             break;
                                          }
                                          §§goto(addr233);
                                       }
                                       §§goto(addr340);
                                    }
                                    §§goto(addr276);
                                    §§goto(addr134);
                                 }
                                 §§goto(addr319);
                              }
                              else
                              {
                                 §§push(this.§[!K§);
                              }
                              §§goto(addr608);
                           }
                        }
                     }
                     addr624:
                  }
                  §§goto(addr624);
               }
               else
               {
                  §,!g§(param1,§=!l§);
               }
               §§goto(addr498);
            }
            §§goto(addr624);
         }
         §§goto(addr23);
      }
      
      public function §"!3§(param1:int) : uint
      {
         return this.§[!K§.§>!9§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            this.§[!K§.§,!7§(param1,param2);
         }
      }
      
      public function §]!`§(param1:int) : Number
      {
         return this.§[!K§.§5!&§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§[!K§.§!0§(param1,param2);
         }
      }
      
      public function get color() : uint
      {
         return this.§4t§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§4t§ != param1)
            {
               if(_loc2_)
               {
                  this.§4t§ = param1;
                  do
                  {
                     this.§[!K§.§]!P§(param1,1);
                  }
                  while(!(_loc2_ || param1));
                  
                  addr56:
               }
               §§goto(addr56);
            }
            return;
         }
         §§goto(addr56);
      }
      
      public function copyVertexDataTo(param1:§'!w§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.§[!K§.copyTo(param1,param2,param3,true,param4);
         }
      }
      
      override public function render(param1:§@>§, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            param1.batchQuad(this,param2);
         }
      }
      
      public function get useColor() : Boolean
      {
         return true;
      }
      
      public function get clippedBitmapData() : BitmapData
      {
         return null;
      }
      
      public function get §@!8§() : Number
      {
         return this.§#!0§;
      }
      
      public function get §0!v§() : Number
      {
         return this.§7"!§;
      }
   }
}
