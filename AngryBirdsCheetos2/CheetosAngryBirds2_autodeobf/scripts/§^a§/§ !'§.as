package §^a§
{
   import §4v§.§40§;
   import §4v§.transformCoords;
   import §6;§.§2^§;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class § !'§ extends DisplayObject
   {
      
      private static var §0D§:Vector3D;
      
      private static var §[<§:Point;
      
      private static var §&!T§:Matrix;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §0D§ = new Vector3D();
            while(true)
            {
               §[<§ = new Point();
               §§goto(addr63);
            }
         }
         addr63:
         while(true)
         {
            §&!T§ = new Matrix();
            if(_loc1_ || § !'§)
            {
               if(_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      protected var §`§:§40§;
      
      private var §[>§:Number = 0.0;
      
      private var §,!0§:Number = 0.0;
      
      private var §^!0§:uint = 16777215;
      
      public function § !'§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param3))
         {
            super();
            loop0:
            while(true)
            {
               this.§`§ = new §40§(4,param4);
               while(true)
               {
                  this.updateVertexData(param1,param2,param3,param4);
                  loop2:
                  while(_loc6_ || param2)
                  {
                     continue loop0;
                     while(true)
                     {
                        this.§^!0§ = param3;
                        if(!(_loc5_ && param2))
                        {
                           break;
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
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param2))
         {
            §§push(this.§`§);
            loop0:
            while(true)
            {
               §§pop().§@!g§(param4);
               addr182:
               while(true)
               {
                  §§push(this.§`§);
                  loop2:
                  while(true)
                  {
                     §§push(0);
                     loop3:
                     while(true)
                     {
                        §§push(0);
                        loop4:
                        while(true)
                        {
                           §§push(0);
                           loop5:
                           while(true)
                           {
                              §§pop().setPosition(§§pop(),§§pop(),§§pop());
                              addr177:
                              while(true)
                              {
                                 §§push(this.§`§);
                                 loop7:
                                 while(!_loc6_)
                                 {
                                    §§push(1);
                                    loop8:
                                    while(true)
                                    {
                                       §§push(param1);
                                       loop9:
                                       while(true)
                                       {
                                          §§push(0);
                                          loop10:
                                          while(true)
                                          {
                                             §§pop().setPosition(§§pop(),§§pop(),§§pop());
                                             addr159:
                                             while(true)
                                             {
                                                §§push(this.§`§);
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(2);
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §§push(0);
                                                      loop14:
                                                      while(_loc5_ || param3)
                                                      {
                                                         §§push(param2);
                                                         loop15:
                                                         for(; _loc5_ || this; §§push(param2),if(_loc6_ && param3)
                                                         {
                                                            continue;
                                                         },if(!_loc5_)
                                                         {
                                                            continue loop5;
                                                         },§§pop().setPosition(§§pop(),§§pop(),§§pop()),§§goto(addr127))
                                                         {
                                                            §§pop().setPosition(§§pop(),§§pop(),§§pop());
                                                            while(true)
                                                            {
                                                               §§push(this.§`§);
                                                               while(_loc5_)
                                                               {
                                                                  §§push(3);
                                                                  if(_loc5_)
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        if(_loc5_ || param1)
                                                                        {
                                                                           §§push(param1);
                                                                           if(_loc5_)
                                                                           {
                                                                              if(_loc5_)
                                                                              {
                                                                                 continue loop15;
                                                                              }
                                                                              continue loop9;
                                                                           }
                                                                           continue loop14;
                                                                        }
                                                                        continue loop3;
                                                                     }
                                                                     continue loop8;
                                                                  }
                                                                  continue loop13;
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§`§);
                                                                     if(!_loc5_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(_loc5_)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     continue loop12;
                                                                  }
                                                               }
                                                               continue loop7;
                                                            }
                                                         }
                                                         continue loop10;
                                                      }
                                                      continue loop4;
                                                   }
                                                }
                                             }
                                          }
                                       }
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
         §§goto(addr93);
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
            if(!(_loc9_ && param1))
            {
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            var _loc5_:* = Number(Number.MAX_VALUE);
            §§push(-Number.MAX_VALUE);
            if(!_loc9_)
            {
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            if(!_loc9_)
            {
               if(param1 == this)
               {
                  if(_loc8_ || this)
                  {
                     _loc7_ = 0;
                     addr634:
                     loop76:
                     while(true)
                     {
                        §§push(_loc7_);
                        loop75:
                        while(true)
                        {
                           §§push(4);
                           loop74:
                           while(true)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 if(_loc8_ || param1)
                                 {
                                    if(_loc8_)
                                    {
                                       loop69:
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             param2.x = _loc3_;
                                             loop71:
                                             while(!_loc9_)
                                             {
                                                if(!(_loc9_ && param1))
                                                {
                                                   addr148:
                                                   if(!(_loc9_ && param2))
                                                   {
                                                      param2.y = _loc5_;
                                                      loop72:
                                                      while(true)
                                                      {
                                                         if(_loc8_ || this)
                                                         {
                                                            param2.width = _loc4_ - _loc3_;
                                                            while(true)
                                                            {
                                                               if(!_loc9_)
                                                               {
                                                                  if(!(_loc9_ && _loc3_))
                                                                  {
                                                                     if(!(_loc8_ || this))
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue;
                                                                  }
                                                                  continue loop71;
                                                               }
                                                               continue loop72;
                                                            }
                                                            loop53:
                                                            while(true)
                                                            {
                                                               if(!(_loc9_ && param2))
                                                               {
                                                                  if(_loc8_)
                                                                  {
                                                                     §§push(_loc4_);
                                                                     if(!_loc9_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     loop54:
                                                                     while(true)
                                                                     {
                                                                        loop15:
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           loop16:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc9_ && param2))
                                                                              {
                                                                                 if(!(_loc9_ && _loc3_))
                                                                                 {
                                                                                    _loc4_ = §§pop();
                                                                                    loop17:
                                                                                    while(_loc8_)
                                                                                    {
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          §§push(_loc5_);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() < §[<§.y);
                                                                                             loop19:
                                                                                             while(!_loc9_)
                                                                                             {
                                                                                                if(!(_loc9_ && param1))
                                                                                                {
                                                                                                   if(_loc8_ || param1)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            §§push(_loc5_);
                                                                                                            loop20:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               loop21:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc9_)
                                                                                                                  {
                                                                                                                     loop22:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        loop23:
                                                                                                                        while(_loc8_ || _loc3_)
                                                                                                                        {
                                                                                                                           if(!_loc9_)
                                                                                                                           {
                                                                                                                              if(_loc8_ || param1)
                                                                                                                              {
                                                                                                                                 _loc5_ = §§pop();
                                                                                                                                 addr347:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!_loc9_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc6_);
                                                                                                                                       if(_loc8_ || param2)
                                                                                                                                       {
                                                                                                                                          if(!(_loc8_ || this))
                                                                                                                                          {
                                                                                                                                             continue loop23;
                                                                                                                                          }
                                                                                                                                          if(!_loc8_)
                                                                                                                                          {
                                                                                                                                             continue loop54;
                                                                                                                                          }
                                                                                                                                          if(!_loc9_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() > §[<§.y);
                                                                                                                                             if(_loc9_)
                                                                                                                                             {
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             if(!_loc9_)
                                                                                                                                             {
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   break loop71;
                                                                                                                                                }
                                                                                                                                                addr384:
                                                                                                                                                §§push(Number(§[<§.y));
                                                                                                                                                if(_loc8_)
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc9_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc9_)
                                                                                                                                                         {
                                                                                                                                                            continue loop20;
                                                                                                                                                         }
                                                                                                                                                         continue loop21;
                                                                                                                                                      }
                                                                                                                                                      continue loop22;
                                                                                                                                                   }
                                                                                                                                                   addr264:
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                   if(_loc8_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc9_)
                                                                                                                                                      {
                                                                                                                                                         _loc6_ = §§pop();
                                                                                                                                                         addr270:
                                                                                                                                                         if(_loc9_)
                                                                                                                                                         {
                                                                                                                                                            continue loop17;
                                                                                                                                                         }
                                                                                                                                                         addr272:
                                                                                                                                                         if(_loc8_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            _loc7_++;
                                                                                                                                                            addr158:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc7_);
                                                                                                                                                               if(_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               §§push(4);
                                                                                                                                                               if(_loc9_ && _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop74;
                                                                                                                                                               }
                                                                                                                                                               if(§§pop() >= §§pop())
                                                                                                                                                               {
                                                                                                                                                                  continue loop69;
                                                                                                                                                               }
                                                                                                                                                               §§push(this.§`§);
                                                                                                                                                               if(_loc8_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc7_);
                                                                                                                                                                  if(!(_loc9_ && param2))
                                                                                                                                                                  {
                                                                                                                                                                     §§pop().§2q§(§§pop(),§0D§);
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        transformCoords(§&!T§,§0D§.x,§0D§.y,§[<§);
                                                                                                                                                                        addr451:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc8_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc8_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc3_);
                                                                                                                                                                                 loop6:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() < §[<§.x);
                                                                                                                                                                                    addr419:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc9_ && param2))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc3_);
                                                                                                                                                                                                addr428:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                   addr429:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr435:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                         addr436:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc8_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc3_ = §§pop();
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc8_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc4_);
                                                                                                                                                                                                                     while(_loc8_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc9_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() > §[<§.x);
                                                                                                                                                                                                                           break loop19;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        loop55:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() < §0D§.x);
                                                                                                                                                                                                                           addr593:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(§§pop())
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 loop63:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc3_);
                                                                                                                                                                                                                                    addr595:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                                                                       addr596:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop63;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr594:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(Number(§0D§.x));
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr600:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                                                                 loop27:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    _loc3_ = §§pop();
                                                                                                                                                                                                                                    addr602:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc4_);
                                                                                                                                                                                                                                       loop29:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() > §0D§.x);
                                                                                                                                                                                                                                          addr578:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc4_);
                                                                                                                                                                                                                                                   addr580:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                                                                      addr581:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr585:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                                                                            addr586:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               _loc4_ = §§pop();
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr579:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr585);
                                                                                                                                                                                                                                                §§push(Number(§0D§.x));
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr585);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr552:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc9_ && param1)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop29;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             if(_loc9_ && _loc3_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop27;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                                                                addr571:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   _loc5_ = §§pop();
                                                                                                                                                                                                                                                   addr572:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc6_);
                                                                                                                                                                                                                                                      addr524:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop() > §0D§.y);
                                                                                                                                                                                                                                                         addr527:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(§§pop())
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc6_);
                                                                                                                                                                                                                                                                  addr529:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                     addr530:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr528:
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(Number(§0D§.y));
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr534:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                                                                               addr535:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  _loc6_ = §§pop();
                                                                                                                                                                                                                                                                  addr536:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     _loc7_++;
                                                                                                                                                                                                                                                                     addr514:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc8_ || _loc3_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop76;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr611:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop55;
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
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop6;
                                                                                                                                                                                                                     addr352:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc5_);
                                                                                                                                                                                                                     addr539:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() < §0D§.y);
                                                                                                                                                                                                                        addr542:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(§§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc8_ || this)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr551:
                                                                                                                                                                                                                                    §§push(_loc5_);
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr552);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr551:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr602);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr543:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(Number(§0D§.y));
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr570);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr439:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr551);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             addr427:
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(Number(§[<§.x));
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc9_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr435);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr216:
                                                                                                                                                                                                if(_loc9_ && _loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(!_loc9_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc8_ || param1)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc8_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc8_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr264);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr581);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr571);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr534);
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr429);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             addr433:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr552);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr593);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr579);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr514);
                                                                                                                                                                           §§goto(addr272);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr148);
                                                                                                                                                                     }
                                                                                                                                                                     addr478:
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop().§2q§(§§pop(),§0D§);
                                                                                                                                                                     }
                                                                                                                                                                     addr609:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr611);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                  }
                                                                                                                                                                  addr608:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr609);
                                                                                                                                                               §§goto(addr158);
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  _loc7_ = §§pop();
                                                                                                                                                                  break loop17;
                                                                                                                                                               }
                                                                                                                                                               continue loop75;
                                                                                                                                                            }
                                                                                                                                                            addr122:
                                                                                                                                                            addr481:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr451);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr352);
                                                                                                                                                   }
                                                                                                                                                   addr242:
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr264);
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!_loc9_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc8_ || param1)
                                                                                                                                                      {
                                                                                                                                                         continue loop15;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr586);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr570);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr542);
                                                                                                                                          }
                                                                                                                                          §§goto(addr524);
                                                                                                                                       }
                                                                                                                                       §§goto(addr264);
                                                                                                                                    }
                                                                                                                                    §§goto(addr543);
                                                                                                                                 }
                                                                                                                                 continue loop19;
                                                                                                                                 addr347:
                                                                                                                              }
                                                                                                                              §§goto(addr595);
                                                                                                                           }
                                                                                                                           §§goto(addr428);
                                                                                                                        }
                                                                                                                        continue loop16;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr535);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr347);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§push(Number(§[<§.y));
                                                                                                      }
                                                                                                      §§goto(addr322);
                                                                                                   }
                                                                                                   §§goto(addr578);
                                                                                                }
                                                                                                §§goto(addr527);
                                                                                             }
                                                                                             while(!(_loc9_ && _loc3_))
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   continue loop53;
                                                                                                }
                                                                                                §§goto(addr384);
                                                                                                §§push(Number(§[<§.x));
                                                                                             }
                                                                                             §§goto(addr419);
                                                                                             addr202:
                                                                                             if(!(_loc8_ || _loc3_))
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             if(!(_loc9_ && param1))
                                                                                             {
                                                                                                §§goto(addr216);
                                                                                             }
                                                                                             §§goto(addr436);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr528);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc9_ && param1))
                                                                                       {
                                                                                          §§goto(addr122);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr511:
                                                                                          while(true)
                                                                                          {
                                                                                          }
                                                                                          addr511:
                                                                                       }
                                                                                       §§goto(addr481);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr580);
                                                                              }
                                                                              §§goto(addr585);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr572);
                                                               }
                                                               §§goto(addr536);
                                                            }
                                                         }
                                                         §§goto(addr158);
                                                      }
                                                   }
                                                   §§goto(addr478);
                                                }
                                                §§goto(addr347);
                                             }
                                             while(true)
                                             {
                                                if(_loc8_)
                                                {
                                                   §§push(_loc6_);
                                                   if(_loc8_)
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(_loc8_ || param2)
                                                         {
                                                            §§goto(addr202);
                                                         }
                                                         §§goto(addr264);
                                                      }
                                                      §§goto(addr600);
                                                   }
                                                   §§goto(addr242);
                                                }
                                                §§goto(addr439);
                                             }
                                             §§goto(addr433);
                                             if(_loc9_ && param1)
                                             {
                                                continue;
                                             }
                                             if(_loc8_ || param1)
                                             {
                                                if(_loc8_)
                                                {
                                                   return param2;
                                                }
                                                §§goto(addr427);
                                             }
                                             §§goto(addr270);
                                          }
                                       }
                                    }
                                    §§goto(addr594);
                                 }
                                 §§goto(addr511);
                              }
                              else
                              {
                                 §§push(this.§`§);
                              }
                              §§goto(addr608);
                           }
                        }
                     }
                     addr634:
                  }
                  §§goto(addr634);
               }
               else
               {
                  §?z§(param1,§&!T§);
               }
               §§goto(addr511);
            }
            §§goto(addr634);
         }
         §§goto(addr23);
      }
      
      public function §-;§(param1:int) : uint
      {
         return this.§`§.§'x§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            this.§`§.§ !d§(param1,param2);
         }
      }
      
      public function §=!6§(param1:int) : Number
      {
         return this.§`§.§@%§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§`§.§"!c§(param1,param2);
         }
      }
      
      public function get color() : uint
      {
         return this.§^!0§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(this.§^!0§ != param1)
            {
               do
               {
                  this.§^!0§ = param1;
                  do
                  {
                     this.§`§.§9i§(param1,1);
                  }
                  while(_loc2_ && param1);
                  
               }
               while(_loc2_);
               
               addr64:
            }
            return;
         }
         §§goto(addr64);
      }
      
      public function copyVertexDataTo(param1:§40§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param1)
         {
            this.§`§.copyTo(param1,param2,param3,true,param4);
         }
      }
      
      override public function render(param1:§2^§, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
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
      
      public function get §3m§() : Number
      {
         return this.§[>§;
      }
      
      public function get §=!f§() : Number
      {
         return this.§,!0§;
      }
   }
}
