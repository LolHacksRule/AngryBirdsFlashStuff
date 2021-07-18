package §default§
{
   import §3W§.§>!-§;
   import §3W§.transformCoords;
   import §6p§.§5!W§;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §^$§ extends DisplayObject
   {
      
      private static var §6!X§:Vector3D;
      
      private static var §?!`§:Point;
      
      private static var §,C§:Matrix;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §6!X§ = new Vector3D();
         }
         do
         {
            §?!`§ = new Point();
            do
            {
               §,C§ = new Matrix();
            }
            while(!_loc1_);
            
         }
         while(_loc2_ && _loc2_);
         
      }
      
      protected var §8!m§:§>!-§;
      
      private var §`o§:Number = 0.0;
      
      private var §6!d§:Number = 0.0;
      
      private var §;!`§:uint = 16777215;
      
      public function §^$§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§8!m§ = new §>!-§(4,param4);
            while(true)
            {
               this.updateVertexData(param1,param2,param3,param4);
               while(!(_loc6_ && param3))
               {
                  if(!_loc6_)
                  {
                     this.§;!`§ = param3;
                     if(!_loc6_)
                     {
                        return;
                     }
                     continue;
                     continue;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
            §§push(this.§8!m§);
            loop0:
            while(true)
            {
               §§pop().§&B§(param4);
               loop1:
               while(true)
               {
                  §§push(this.§8!m§);
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
                              loop6:
                              while(true)
                              {
                                 §§push(this.§8!m§);
                                 loop7:
                                 for(; _loc6_; while(_loc6_ || param2)
                                 {
                                    §§push(2);
                                    while(!(_loc5_ && param3))
                                    {
                                       §§goto(addr139);
                                       §§push(0);
                                    }
                                    continue loop3;
                                 })
                                 {
                                    §§push(1);
                                    while(true)
                                    {
                                       §§push(param1);
                                       addr153:
                                       addr80:
                                       while(true)
                                       {
                                          §§push(0);
                                          addr154:
                                          while(true)
                                          {
                                             §§pop().setPosition(§§pop(),§§pop(),§§pop());
                                             addr155:
                                             while(true)
                                             {
                                                §§push(this.§8!m§);
                                                continue loop7;
                                             }
                                          }
                                       }
                                       if(_loc5_)
                                       {
                                          continue;
                                       }
                                       §§push(param1);
                                       if(_loc6_)
                                       {
                                          if(_loc6_ || this)
                                          {
                                             if(!(_loc6_ || this))
                                             {
                                                continue loop4;
                                             }
                                             §§push(param2);
                                             if(_loc6_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   §§pop().setPosition(§§pop(),§§pop(),§§pop());
                                                   while(_loc6_)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         addr119:
                                                         §§push(this.§8!m§);
                                                         if(!_loc5_)
                                                         {
                                                            §§pop().§[_§(param3);
                                                            while(_loc6_)
                                                            {
                                                               if(!(_loc5_ && param2))
                                                               {
                                                                  this.§`o§ = param1;
                                                                  loop20:
                                                                  while(_loc6_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        this.§6!d§ = param2;
                                                                        if(!(_loc5_ && param2))
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue loop20;
                                                                     }
                                                                     return;
                                                                  }
                                                                  continue;
                                                               }
                                                            }
                                                            continue;
                                                         }
                                                         addr68:
                                                         while(!_loc5_)
                                                         {
                                                            continue loop2;
                                                            §§goto(addr119);
                                                         }
                                                         continue loop7;
                                                      }
                                                      continue loop1;
                                                   }
                                                   while(!_loc5_)
                                                   {
                                                      §§goto(addr68);
                                                      §§push(this.§8!m§);
                                                   }
                                                   continue loop6;
                                                   addr143:
                                                }
                                                else
                                                {
                                                   §§goto(addr154);
                                                }
                                                §§goto(addr155);
                                             }
                                             else
                                             {
                                                while(!_loc5_)
                                                {
                                                   §§pop().setPosition(§§pop(),§§pop(),§§pop());
                                                }
                                                continue loop5;
                                                addr140:
                                             }
                                             §§goto(addr143);
                                          }
                                          else
                                          {
                                             §§goto(addr153);
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                          }
                                          addr139:
                                       }
                                       §§goto(addr140);
                                    }
                                 }
                                 continue loop0;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr47);
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:* = 0;
         if(!_loc8_)
         {
            if(param2 == null)
            {
               addr24:
               param2 = new Rectangle();
            }
            var _loc3_:* = Number(Number.MAX_VALUE);
            §§push(-Number.MAX_VALUE);
            if(_loc9_ || param2)
            {
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            var _loc5_:* = Number(Number.MAX_VALUE);
            §§push(-Number.MAX_VALUE);
            if(!(_loc8_ && param1))
            {
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            if(_loc9_ || param2)
            {
               if(param1 == this)
               {
                  if(_loc9_)
                  {
                     addr638:
                     _loc7_ = 0;
                  }
                  loop0:
                  while(true)
                  {
                     §§push(_loc7_);
                     loop1:
                     while(true)
                     {
                        §§push(4);
                        loop2:
                        while(true)
                        {
                           if(§§pop() >= §§pop())
                           {
                              loop3:
                              while(!(_loc8_ && _loc3_))
                              {
                                 loop4:
                                 while(true)
                                 {
                                    param2.x = _loc3_;
                                    loop5:
                                    while(_loc9_)
                                    {
                                       param2.y = _loc5_;
                                       loop6:
                                       while(!(_loc8_ && param2))
                                       {
                                          if(_loc9_)
                                          {
                                             param2.width = _loc4_ - _loc3_;
                                             while(_loc9_)
                                             {
                                                param2.height = _loc6_ - _loc5_;
                                                if(!_loc9_)
                                                {
                                                   continue;
                                                }
                                                if(_loc8_)
                                                {
                                                   continue loop6;
                                                }
                                                if(_loc9_)
                                                {
                                                   if(_loc9_)
                                                   {
                                                      break loop4;
                                                   }
                                                   loop32:
                                                   while(true)
                                                   {
                                                      §§push(_loc6_);
                                                      if(_loc9_ || this)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(!_loc8_)
                                                         {
                                                            if(_loc9_)
                                                            {
                                                               if(!(_loc8_ && this))
                                                               {
                                                                  if(_loc9_ || this)
                                                                  {
                                                                     if(_loc9_)
                                                                     {
                                                                        loop33:
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           loop34:
                                                                           while(true)
                                                                           {
                                                                              if(_loc9_ || _loc3_)
                                                                              {
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    if(_loc9_ || param2)
                                                                                    {
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          _loc6_ = §§pop();
                                                                                          break loop5;
                                                                                       }
                                                                                       addr589:
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    _loc4_ = §§pop();
                                                                                    break loop3;
                                                                                 }
                                                                                 loop21:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       addr374:
                                                                                       §§push(§§pop() < §?!`§.x);
                                                                                       loop16:
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                if(!_loc8_)
                                                                                                {
                                                                                                   if(_loc9_ || param1)
                                                                                                   {
                                                                                                      if(!(_loc8_ && param1))
                                                                                                      {
                                                                                                         §§push(_loc3_);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc9_ || param2)
                                                                                                            {
                                                                                                               if(!(_loc8_ && param2))
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  loop27:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     loop25:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        loop19:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!_loc8_)
                                                                                                                           {
                                                                                                                              if(!(_loc8_ && param2))
                                                                                                                              {
                                                                                                                                 _loc3_ = §§pop();
                                                                                                                                 addr441:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc4_);
                                                                                                                                    loop28:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() > §?!`§.x);
                                                                                                                                       loop15:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!(_loc9_ || param2))
                                                                                                                                          {
                                                                                                                                             continue loop16;
                                                                                                                                          }
                                                                                                                                          if(_loc9_)
                                                                                                                                          {
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                loop40:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc4_);
                                                                                                                                                   if(!(_loc8_ && param1))
                                                                                                                                                   {
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                      loop35:
                                                                                                                                                      while(_loc9_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         loop36:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                            addr362:
                                                                                                                                                            loop37:
                                                                                                                                                            while(_loc9_)
                                                                                                                                                            {
                                                                                                                                                               addr364:
                                                                                                                                                               _loc4_ = §§pop();
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc9_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     §§push(_loc5_);
                                                                                                                                                                     loop9:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() < §?!`§.y);
                                                                                                                                                                        loop10:
                                                                                                                                                                        while(_loc9_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc8_ && this))
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc5_);
                                                                                                                                                                                    if(_loc9_ || this)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc8_)
                                                                                                                                                                                       {
                                                                                                                                                                                          while(_loc9_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc8_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop25;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr547);
                                                                                                                                                                                          }
                                                                                                                                                                                          break loop16;
                                                                                                                                                                                          addr416:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                       loop30:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc9_ || param2)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc8_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc9_ || param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr303:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                      addr320:
                                                                                                                                                                                                      loop13:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc9_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc9_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc5_ = §§pop();
                                                                                                                                                                                                               loop14:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc6_);
                                                                                                                                                                                                                  if(_loc9_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc8_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop36;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(_loc8_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop19;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§push(§§pop() > §?!`§.y);
                                                                                                                                                                                                                     if(_loc8_ && _loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop10;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(_loc8_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop15;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(§§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop32;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§push(Number(§?!`§.y));
                                                                                                                                                                                                                     if(_loc8_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop34;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc8_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc9_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop33;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop9;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop13;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr224:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr224);
                                                                                                                                                                                                                  addr149:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc8_ && param2)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop14;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(!_loc9_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop40;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(_loc9_ || _loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc9_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           loop22:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc7_);
                                                                                                                                                                                                                              if(!(_loc9_ || param1))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    _loc7_ = §§pop();
                                                                                                                                                                                                                                    addr494:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop22;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr493:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(_loc8_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop1;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(4);
                                                                                                                                                                                                                              if(_loc8_ && param1)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop2;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(§§pop() >= §§pop())
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 break loop6;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(this.§8!m§);
                                                                                                                                                                                                                              if(!(_loc8_ && param2))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc7_);
                                                                                                                                                                                                                                 if(!(_loc8_ && _loc3_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§pop().§9!l§(§§pop(),§6!X§);
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc9_ || param2)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc9_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             transformCoords(§,C§,§6!X§.x,§6!X§.y,§?!`§);
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc9_ || param2)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc3_);
                                                                                                                                                                                                                                                   continue loop21;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr566:
                                                                                                                                                                                                                                                addr565:
                                                                                                                                                                                                                                                §§push(_loc4_);
                                                                                                                                                                                                                                                if(_loc9_ || param2)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                                                                   if(_loc9_ || _loc3_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr581:
                                                                                                                                                                                                                                                      if(!_loc8_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc9_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr589);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr604:
                                                                                                                                                                                                                                                         if(§§pop() < §6!X§.x)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr612:
                                                                                                                                                                                                                                                            _loc3_ = Number(Number(_loc3_));
                                                                                                                                                                                                                                                            §§push(_loc4_);
                                                                                                                                                                                                                                                            if(!_loc8_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr562:
                                                                                                                                                                                                                                                               §§push(§§pop() > §6!X§.x);
                                                                                                                                                                                                                                                               if(_loc9_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(§§pop())
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§goto(addr565);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr589);
                                                                                                                                                                                                                                                                  §§push(Number(§6!X§.x));
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr604);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr581);
                                                                                                                                                                                                                                                            addr611:
                                                                                                                                                                                                                                                            addr607:
                                                                                                                                                                                                                                                            addr606:
                                                                                                                                                                                                                                                            addr613:
                                                                                                                                                                                                                                                            addr605:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr611);
                                                                                                                                                                                                                                                         §§push(Number(§6!X§.x));
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr607);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr589);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr606);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr451:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc3_);
                                                                                                                                                                                                                                             addr632:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr604);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr613);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr481:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr620:
                                                                                                                                                                                                                                    §§pop().§9!l§(§§pop(),§6!X§);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr632);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr619:
                                                                                                                                                                                                                                 §§push(_loc7_);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr620);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr547:
                                                                                                                                                                                                                        §§push(Number(_loc5_));
                                                                                                                                                                                                                        break loop37;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr451);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop36;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop27;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop28;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop30;
                                                                                                                                                                                                      §§goto(addr303);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr533:
                                                                                                                                                                                                   break loop16;
                                                                                                                                                                                                   addr319:
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr612);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr547);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr533);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr547);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr320);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr276:
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Number(§?!`§.y));
                                                                                                                                                                                 while(_loc9_)
                                                                                                                                                                                 {
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr566);
                                                                                                                                                                                 addr307:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr319);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr562);
                                                                                                                                                                        }
                                                                                                                                                                        addr545:
                                                                                                                                                                        if(!§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Number(§6!X§.y));
                                                                                                                                                                           break loop37;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr547);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr493);
                                                                                                                                                                     }
                                                                                                                                                                     addr512:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr604);
                                                                                                                                                                  §§goto(addr364);
                                                                                                                                                               }
                                                                                                                                                               continue loop3;
                                                                                                                                                            }
                                                                                                                                                            break loop35;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      _loc5_ = §§pop();
                                                                                                                                                      addr530:
                                                                                                                                                      if(_loc6_ > §6!X§.y)
                                                                                                                                                      {
                                                                                                                                                         addr531:
                                                                                                                                                         §§goto(addr533);
                                                                                                                                                         §§push(Number(_loc6_));
                                                                                                                                                      }
                                                                                                                                                      §§push(Number(§6!X§.y));
                                                                                                                                                      break loop16;
                                                                                                                                                      addr554:
                                                                                                                                                      addr350:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr362);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§push(Number(§?!`§.x));
                                                                                                                                             }
                                                                                                                                             §§goto(addr361);
                                                                                                                                          }
                                                                                                                                          §§goto(addr530);
                                                                                                                                       }
                                                                                                                                       continue loop4;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr441:
                                                                                                                              }
                                                                                                                              §§goto(addr612);
                                                                                                                           }
                                                                                                                           §§goto(addr530);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr542:
                                                                                                               §§goto(addr545);
                                                                                                               §§push(§§pop() < §6!X§.y);
                                                                                                            }
                                                                                                            addr538:
                                                                                                            _loc6_ = §§pop();
                                                                                                         }
                                                                                                         addr397:
                                                                                                      }
                                                                                                      _loc7_++;
                                                                                                      addr515:
                                                                                                      if(!(_loc8_ && param2))
                                                                                                      {
                                                                                                         if(!_loc8_)
                                                                                                         {
                                                                                                            continue loop0;
                                                                                                         }
                                                                                                         §§goto(addr554);
                                                                                                      }
                                                                                                      §§goto(addr531);
                                                                                                   }
                                                                                                   §§goto(addr494);
                                                                                                }
                                                                                                §§goto(addr481);
                                                                                             }
                                                                                             §§goto(addr441);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(Number(§?!`§.x));
                                                                                          }
                                                                                          §§goto(addr416);
                                                                                       }
                                                                                       §§goto(addr538);
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    §§goto(addr531);
                                                                                 }
                                                                              }
                                                                              §§goto(addr287);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr397);
                                                                  }
                                                                  §§goto(addr350);
                                                               }
                                                               §§goto(addr362);
                                                            }
                                                            §§goto(addr307);
                                                         }
                                                      }
                                                      §§goto(addr224);
                                                   }
                                                }
                                                §§goto(addr149);
                                             }
                                             continue loop5;
                                          }
                                          §§goto(addr365);
                                       }
                                       while(true)
                                       {
                                          if(!(_loc8_ && this))
                                          {
                                             if(_loc9_)
                                             {
                                                continue loop4;
                                             }
                                             §§goto(addr441);
                                          }
                                          §§goto(addr276);
                                       }
                                    }
                                    while(true)
                                    {
                                       if(_loc9_ || param1)
                                       {
                                          _loc7_++;
                                          §§goto(addr149);
                                       }
                                       §§goto(addr515);
                                    }
                                 }
                                 return param2;
                              }
                              if(!(_loc9_ || param1))
                              {
                                 §§goto(addr605);
                              }
                              §§goto(addr542);
                              §§push(_loc5_);
                           }
                           else
                           {
                              §§push(this.§8!m§);
                           }
                           §§goto(addr619);
                        }
                     }
                  }
               }
               else
               {
                  §5!m§(param1,§,C§);
               }
               §§goto(addr512);
            }
            §§goto(addr638);
         }
         §§goto(addr24);
      }
      
      public function §+!0§(param1:int) : uint
      {
         return this.§8!m§.§2" §(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§8!m§.§ "9§(param1,param2);
         }
      }
      
      public function §'!M§(param1:int) : Number
      {
         return this.§8!m§.§&!-§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§8!m§.§]!G§(param1,param2);
         }
      }
      
      public function get color() : uint
      {
         return this.§;!`§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§;!`§ != param1)
            {
               if(_loc2_)
               {
                  this.§;!`§ = param1;
               }
               do
               {
                  this.§8!m§.§[_§(param1,1);
               }
               while(_loc3_);
               
               addr41:
            }
            return;
         }
         §§goto(addr41);
      }
      
      public function copyVertexDataTo(param1:§>!-§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            this.§8!m§.copyTo(param1,param2,param3,true,param4);
         }
      }
      
      override public function render(param1:§5!W§, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
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
      
      public function get §?!k§() : Number
      {
         return this.§`o§;
      }
      
      public function get § !_§() : Number
      {
         return this.§6!d§;
      }
   }
}
