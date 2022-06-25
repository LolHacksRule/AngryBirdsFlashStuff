package §'!9§
{
   import §<&§.§`K§;
   import §`s§.§0p§;
   import §`s§.transformCoords;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §%!g§ extends DisplayObject
   {
      
      private static var §<!=§:Vector3D;
      
      private static var §<r§:Point;
      
      private static var §5g§:Matrix;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §%!g§)
         {
            §<!=§ = new Vector3D();
            while(true)
            {
               §<r§ = new Point();
               while(!(_loc2_ && _loc2_))
               {
                  §5g§ = new Matrix();
                  if(!_loc1_)
                  {
                     continue;
                  }
                  return;
                  addr55:
               }
            }
         }
         §§goto(addr55);
      }
      
      protected var § Q§:§0p§;
      
      private var §[!Q§:Number = 0.0;
      
      private var §]j§:Number = 0.0;
      
      private var §%!v§:uint = 16777215;
      
      public function §%!g§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            super();
            loop0:
            do
            {
               this.§ Q§ = new §0p§(4,param4);
               while(true)
               {
                  this.updateVertexData(param1,param2,param3,param4);
                  while(_loc5_)
                  {
                     this.§%!v§ = param3;
                     if(_loc5_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(!(_loc5_ || param3));
            
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
         if(_loc6_)
         {
            §§push(this.§ Q§);
            loop0:
            while(true)
            {
               §§pop().setPremultipliedAlpha(param4);
               loop1:
               while(true)
               {
                  §§push(this.§ Q§);
                  loop2:
                  for(; _loc6_; while(!_loc5_)
                  {
                     §§goto(addr166);
                     §§push(1);
                     §§goto(addr77);
                  })
                  {
                     §§push(0);
                     while(true)
                     {
                        §§push(0);
                        addr186:
                        addr166:
                        while(true)
                        {
                           §§push(0);
                           addr187:
                           while(true)
                           {
                              §§pop().setPosition(§§pop(),§§pop(),§§pop());
                              addr188:
                              while(true)
                              {
                                 §§push(this.§ Q§);
                                 continue loop2;
                              }
                           }
                        }
                        loop8:
                        for(; !(_loc5_ && param1); while(!(_loc5_ && param2))
                        {
                           §§goto(addr138);
                           §§push(0);
                        })
                        {
                           §§push(param1);
                           while(true)
                           {
                              §§push(0);
                              addr175:
                              while(true)
                              {
                                 §§pop().setPosition(§§pop(),§§pop(),§§pop());
                                 addr176:
                                 while(!_loc5_)
                                 {
                                    §§push(this.§ Q§);
                                    while(true)
                                    {
                                       continue loop8;
                                    }
                                 }
                                 §§goto(addr188);
                              }
                              addr105:
                              if(!(_loc6_ || param1))
                              {
                                 continue;
                              }
                              if(_loc6_)
                              {
                                 §§push(param2);
                                 if(_loc6_)
                                 {
                                    §§pop().setPosition(§§pop(),§§pop(),§§pop());
                                    loop18:
                                    for(; _loc6_ || param3; if(_loc5_ && this)
                                    {
                                       continue;
                                    },if(!(_loc5_ && param1))
                                    {
                                       §§goto(addr61);
                                    },§§goto(addr176))
                                    {
                                       while(true)
                                       {
                                          §§push(this.§ Q§);
                                          if(!_loc5_)
                                          {
                                             §§pop().§4!^§(param3);
                                             loop20:
                                             while(!_loc5_)
                                             {
                                                this.§[!Q§ = param1;
                                                while(true)
                                                {
                                                   if(_loc6_ || param2)
                                                   {
                                                      continue loop18;
                                                   }
                                                   continue loop20;
                                                   addr61:
                                                   this.§]j§ = param2;
                                                   if(_loc6_ || param3)
                                                   {
                                                      return;
                                                   }
                                                }
                                                continue loop18;
                                             }
                                             continue loop1;
                                          }
                                          addr75:
                                          while(_loc6_)
                                          {
                                             if(_loc5_ && param2)
                                             {
                                                continue loop2;
                                             }
                                             §§push(3);
                                             if(!(_loc6_ || param2))
                                             {
                                                continue loop8;
                                             }
                                             §§push(param1);
                                             if(!_loc5_)
                                             {
                                                §§goto(addr105);
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§push(param2);
                                                   addr139:
                                                   while(_loc6_)
                                                   {
                                                      if(!(_loc5_ && param2))
                                                      {
                                                         §§pop().setPosition(§§pop(),§§pop(),§§pop());
                                                         break loop18;
                                                      }
                                                      §§goto(addr187);
                                                   }
                                                   §§goto(addr175);
                                                }
                                                addr138:
                                             }
                                             §§goto(addr139);
                                          }
                                          §§goto(addr129);
                                       }
                                    }
                                    while(true)
                                    {
                                       §§goto(addr75);
                                       §§goto(addr118);
                                    }
                                    addr118:
                                 }
                                 §§goto(addr139);
                              }
                              §§goto(addr186);
                           }
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr125);
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:* = 0;
         if(!(_loc9_ && param2))
         {
            if(param2 == null)
            {
               addr28:
               param2 = new Rectangle();
            }
            var _loc3_:* = Number(Number.MAX_VALUE);
            §§push(-Number.MAX_VALUE);
            if(!(_loc9_ && _loc3_))
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
            if(_loc8_ || _loc3_)
            {
               if(param1 == this)
               {
                  if(!_loc9_)
                  {
                     _loc7_ = 0;
                     addr644:
                     loop78:
                     while(true)
                     {
                        §§push(_loc7_);
                        loop76:
                        while(true)
                        {
                           §§push(4);
                           loop75:
                           while(true)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 loop65:
                                 while(true)
                                 {
                                    loop66:
                                    while(true)
                                    {
                                       param2.x = _loc3_;
                                       loop67:
                                       while(!(_loc9_ && _loc3_))
                                       {
                                          if(_loc8_)
                                          {
                                             addr162:
                                             if(_loc8_ || _loc3_)
                                             {
                                                if(!_loc9_)
                                                {
                                                   param2.y = _loc5_;
                                                   loop68:
                                                   for(; !(_loc9_ && param1); param2.width = _loc4_ - _loc3_,do
                                                   {
                                                      param2.height = _loc6_ - _loc5_;
                                                   }
                                                   while(!(_loc8_ || _loc3_));
                                                   ,if(!_loc8_)
                                                   {
                                                      continue;
                                                   },if(!_loc8_)
                                                   {
                                                      continue loop67;
                                                   },if(_loc8_)
                                                   {
                                                      if(!(_loc9_ && this))
                                                      {
                                                         break loop65;
                                                      }
                                                      §§goto(addr282);
                                                   },§§goto(addr140))
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         continue;
                                                      }
                                                      loop5:
                                                      while(true)
                                                      {
                                                         if(!(_loc8_ || this))
                                                         {
                                                            continue loop65;
                                                         }
                                                         §§push(_loc3_);
                                                         loop6:
                                                         while(true)
                                                         {
                                                            if(_loc8_)
                                                            {
                                                               §§push(§§pop() < §<r§.x);
                                                               loop7:
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     §§push(Number(§<r§.x));
                                                                     loop8:
                                                                     while(true)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        loop9:
                                                                        while(true)
                                                                        {
                                                                           _loc3_ = §§pop();
                                                                           addr475:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc4_);
                                                                              loop11:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc8_ || param1)
                                                                                 {
                                                                                    §§push(§§pop() > §<r§.x);
                                                                                    loop12:
                                                                                    while(!_loc9_)
                                                                                    {
                                                                                       if(!(_loc9_ && param1))
                                                                                       {
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             if(!(_loc9_ && this))
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(_loc8_)
                                                                                                   {
                                                                                                      §§push(_loc4_);
                                                                                                      loop13:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc8_ || param2)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            loop14:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               loop15:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  addr432:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc8_)
                                                                                                                     {
                                                                                                                        _loc4_ = §§pop();
                                                                                                                        addr435:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc8_ || this)
                                                                                                                           {
                                                                                                                              §§push(_loc5_);
                                                                                                                              if(!_loc9_)
                                                                                                                              {
                                                                                                                                 if(!(_loc9_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() < §<r§.y);
                                                                                                                                    loop33:
                                                                                                                                    while(_loc8_)
                                                                                                                                    {
                                                                                                                                       if(_loc8_)
                                                                                                                                       {
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             if(!_loc9_)
                                                                                                                                             {
                                                                                                                                                if(!(_loc9_ && param2))
                                                                                                                                                {
                                                                                                                                                   if(!_loc9_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc5_);
                                                                                                                                                      continue loop13;
                                                                                                                                                   }
                                                                                                                                                   addr531:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(0);
                                                                                                                                                      addr517:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         _loc7_ = §§pop();
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc8_)
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc7_);
                                                                                                                                                         if(_loc9_)
                                                                                                                                                         {
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         if(!(_loc8_ || _loc3_))
                                                                                                                                                         {
                                                                                                                                                            continue loop76;
                                                                                                                                                         }
                                                                                                                                                         §§push(4);
                                                                                                                                                         if(_loc9_)
                                                                                                                                                         {
                                                                                                                                                            continue loop75;
                                                                                                                                                         }
                                                                                                                                                         if(§§pop() >= §§pop())
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop66;
                                                                                                                                                               }
                                                                                                                                                               addr373:
                                                                                                                                                               addr373:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc8_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc6_);
                                                                                                                                                                     if(_loc8_ || param2)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc9_ && param2))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() > §<r§.y);
                                                                                                                                                                           if(_loc9_)
                                                                                                                                                                           {
                                                                                                                                                                              break;
                                                                                                                                                                           }
                                                                                                                                                                           if(§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              break loop67;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(Number(§<r§.y));
                                                                                                                                                                           if(_loc8_)
                                                                                                                                                                           {
                                                                                                                                                                              addr264:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc8_ || _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc9_)
                                                                                                                                                                                    {
                                                                                                                                                                                       loop41:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                          addr274:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc9_ && param2))
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc6_ = §§pop();
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc9_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc7_++;
                                                                                                                                                                                                      break loop68;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   loop28:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc5_);
                                                                                                                                                                                                      loop29:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                         addr581:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr585:
                                                                                                                                                                                                            loop24:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                               addr586:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc5_ = §§pop();
                                                                                                                                                                                                                  addr587:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc6_);
                                                                                                                                                                                                                     addr537:
                                                                                                                                                                                                                     loop27:
                                                                                                                                                                                                                     while(_loc8_ || param2)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() > §<!=§.y);
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(§§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc6_);
                                                                                                                                                                                                                                 addr549:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc9_ && _loc3_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop29;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(_loc8_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                                                                       loop52:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!(_loc8_ || param2))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop() < §<!=§.y);
                                                                                                                                                                                                                                                addr578:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop28;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§push(Number(§<!=§.y));
                                                                                                                                                                                                                                                   continue loop24;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue loop52;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr575:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr559:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr625:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                                                                          addr626:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             _loc3_ = §§pop();
                                                                                                                                                                                                                                             addr627:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc4_);
                                                                                                                                                                                                                                                break loop27;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr625:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr548:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(Number(§<!=§.y));
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr570:
                                                                                                                                                                                                                           loop53:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                              addr571:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 _loc6_ = §§pop();
                                                                                                                                                                                                                                 addr572:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    _loc7_++;
                                                                                                                                                                                                                                    addr534:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop78;
                                                                                                                                                                                                                                       §§goto(addr162);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop53;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() > §<!=§.x);
                                                                                                                                                                                                                        addr593:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(§§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc4_);
                                                                                                                                                                                                                                 addr595:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                    addr596:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr594:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(Number(§<!=§.x));
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr600:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                              addr601:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 _loc4_ = §§pop();
                                                                                                                                                                                                                                 addr602:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr575);
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
                                                                                                                                                                                                addr282:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr571);
                                                                                                                                                                                             continue loop41;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr601);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr581);
                                                                                                                                                                              }
                                                                                                                                                                              addr264:
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr274);
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                           addr621:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr625);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        addr620:
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc9_)
                                                                                                                                                                        {
                                                                                                                                                                           addr225:
                                                                                                                                                                           if(!(_loc8_ || this))
                                                                                                                                                                           {
                                                                                                                                                                              continue loop13;
                                                                                                                                                                           }
                                                                                                                                                                           if(!_loc8_)
                                                                                                                                                                           {
                                                                                                                                                                              break;
                                                                                                                                                                           }
                                                                                                                                                                           if(!(_loc8_ || this))
                                                                                                                                                                           {
                                                                                                                                                                              continue loop8;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                           if(!(_loc9_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc8_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop14;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop6;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr264);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           addr347:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc8_)
                                                                                                                                                                              {
                                                                                                                                                                                 while(_loc8_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc9_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop15;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop9;
                                                                                                                                                                                 addr427:
                                                                                                                                                                              }
                                                                                                                                                                              if(_loc8_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc9_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc8_)
                                                                                                                                                                                    {
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                          continue loop6;
                                                                                                                                                                                       }
                                                                                                                                                                                       addr355:
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       addr615:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() < §<!=§.x);
                                                                                                                                                                                          addr618:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                addr619:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr620);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr619:
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(Number(§<!=§.x));
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr625);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       addr615:
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr596);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr570);
                                                                                                                                                                           }
                                                                                                                                                                           addr347:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr600);
                                                                                                                                                                     }
                                                                                                                                                                     continue loop11;
                                                                                                                                                                     addr223:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr602);
                                                                                                                                                               }
                                                                                                                                                               continue loop33;
                                                                                                                                                            }
                                                                                                                                                            addr140:
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§ Q§);
                                                                                                                                                            if(!(_loc9_ && param1))
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc7_);
                                                                                                                                                               if(_loc8_)
                                                                                                                                                               {
                                                                                                                                                                  §§pop().§"!S§(§§pop(),§<!=§);
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc8_)
                                                                                                                                                                        {
                                                                                                                                                                           transformCoords(§5g§,§<!=§.x,§<!=§.y,§<r§);
                                                                                                                                                                           continue loop5;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr619);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr548);
                                                                                                                                                                     continue loop66;
                                                                                                                                                                  }
                                                                                                                                                                  addr510:
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop().§"!S§(§§pop(),§<!=§);
                                                                                                                                                                     addr636:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr615);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr634:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr619);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                               }
                                                                                                                                                               addr633:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr634);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr615);
                                                                                                                                                         addr188:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr517);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr636);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr373);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr347);
                                                                                                                                             §§push(Number(§<r§.y));
                                                                                                                                          }
                                                                                                                                          §§goto(addr347);
                                                                                                                                       }
                                                                                                                                       §§goto(addr578);
                                                                                                                                    }
                                                                                                                                    continue loop12;
                                                                                                                                 }
                                                                                                                                 §§goto(addr559);
                                                                                                                              }
                                                                                                                              §§goto(addr347);
                                                                                                                           }
                                                                                                                           §§goto(addr627);
                                                                                                                           break loop68;
                                                                                                                        }
                                                                                                                        addr435:
                                                                                                                     }
                                                                                                                     §§goto(addr595);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr460:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc8_)
                                                                                                            {
                                                                                                               if(!(_loc9_ && param1))
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§goto(addr586);
                                                                                                            }
                                                                                                            §§goto(addr537);
                                                                                                         }
                                                                                                         continue loop8;
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr435);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push(Number(§<r§.x));
                                                                                                }
                                                                                                §§goto(addr427);
                                                                                             }
                                                                                             §§goto(addr618);
                                                                                          }
                                                                                          §§goto(addr593);
                                                                                       }
                                                                                       §§goto(addr547);
                                                                                    }
                                                                                    continue loop7;
                                                                                 }
                                                                                 §§goto(addr626);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     addr473:
                                                                  }
                                                                  addr451:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     if(!(_loc9_ && param2))
                                                                     {
                                                                        §§goto(addr460);
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     §§goto(addr473);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr549);
                                                         }
                                                      }
                                                   }
                                                   while(_loc8_ || this)
                                                   {
                                                      if(_loc8_ || this)
                                                      {
                                                         §§goto(addr188);
                                                      }
                                                      §§goto(addr594);
                                                   }
                                                   §§goto(addr435);
                                                }
                                                §§goto(addr572);
                                             }
                                             §§goto(addr534);
                                          }
                                          §§goto(addr475);
                                       }
                                       while(true)
                                       {
                                          if(!(_loc9_ && _loc3_))
                                          {
                                             if(_loc8_)
                                             {
                                                §§push(_loc6_);
                                                if(!_loc9_)
                                                {
                                                   §§goto(addr223);
                                                }
                                                §§goto(addr264);
                                             }
                                             §§goto(addr587);
                                          }
                                          §§goto(addr451);
                                       }
                                    }
                                 }
                                 return param2;
                              }
                              §§push(this.§ Q§);
                              §§goto(addr633);
                           }
                        }
                     }
                     addr644:
                  }
                  §§goto(addr644);
               }
               else
               {
                  §^2§(param1,§5g§);
               }
               §§goto(addr531);
            }
            §§goto(addr644);
         }
         §§goto(addr28);
      }
      
      public function §3!o§(param1:int) : uint
      {
         return this.§ Q§.§6!b§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§ Q§.§1f§(param1,param2);
         }
      }
      
      public function § !G§(param1:int) : Number
      {
         return this.§ Q§.§<^§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§ Q§.§]f§(param1,param2);
         }
      }
      
      public function get color() : uint
      {
         return this.§%!v§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(this.§%!v§ != param1)
            {
               if(_loc2_ || _loc3_)
               {
                  this.§%!v§ = param1;
                  do
                  {
                     this.§ Q§.§4!^§(param1,1);
                  }
                  while(!_loc2_);
                  
                  addr71:
               }
               §§goto(addr71);
            }
            return;
         }
         §§goto(addr71);
      }
      
      public function copyVertexDataTo(param1:§0p§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            this.§ Q§.copyTo(param1,param2,param3,true,param4);
         }
      }
      
      override public function render(param1:§`K§, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
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
      
      public function get §>V§() : Number
      {
         return this.§[!Q§;
      }
      
      public function get §=!`§() : Number
      {
         return this.§]j§;
      }
   }
}
