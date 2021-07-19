package §6![§
{
   import §+o§.§3C§;
   import §+o§.transformCoords;
   import §`!a§.§0L§;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class § !f§ extends DisplayObject
   {
      
      private static var §>!#§:Vector3D;
      
      private static var §9!s§:Point;
      
      private static var §7=§:Matrix;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §>!#§ = new Vector3D();
         }
         while(true)
         {
            §9!s§ = new Point();
            while(!(_loc2_ && _loc2_))
            {
               §7=§ = new Matrix();
               if(!_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      protected var §1!&§:§3C§;
      
      private var §=!r§:Number = 0.0;
      
      private var §[!k§:Number = 0.0;
      
      private var §@=§:uint = 16777215;
      
      public function § !f§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§1!&§ = new §3C§(4,param4);
            do
            {
               this.updateVertexData(param1,param2,param3,param4);
               continue loop0;
            }
            while(!_loc6_);
            
            return;
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
            §§push(this.§1!&§);
            loop0:
            while(true)
            {
               §§pop().§!'§(param4);
               addr193:
               while(true)
               {
                  §§push(this.§1!&§);
                  addr174:
                  while(true)
                  {
                     §§push(0);
                     addr185:
                     while(true)
                     {
                        §§push(0);
                        addr186:
                        while(true)
                        {
                           §§push(0);
                           addr187:
                           while(true)
                           {
                              §§pop().setPosition(§§pop(),§§pop(),§§pop());
                           }
                        }
                     }
                     addr55:
                     if(!(_loc5_ && param2))
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr188);
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:* = 0;
         if(!(_loc9_ && this))
         {
            if(param2 == null)
            {
               addr28:
               param2 = new Rectangle();
            }
            var _loc3_:* = Number(Number.MAX_VALUE);
            §§push(-Number.MAX_VALUE);
            if(_loc8_ || param2)
            {
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            var _loc5_:* = Number(Number.MAX_VALUE);
            §§push(-Number.MAX_VALUE);
            if(!(_loc9_ && param1))
            {
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            if(_loc8_)
            {
               if(param1 == this)
               {
                  if(!(_loc9_ && _loc3_))
                  {
                     _loc7_ = 0;
                     addr679:
                     loop71:
                     while(true)
                     {
                        §§push(_loc7_);
                        loop68:
                        while(true)
                        {
                           §§push(4);
                           loop66:
                           while(true)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 loop67:
                                 while(true)
                                 {
                                    loop62:
                                    while(true)
                                    {
                                       param2.x = _loc3_;
                                       loop63:
                                       while(!_loc9_)
                                       {
                                          if(!(_loc9_ && this))
                                          {
                                             if(!_loc9_)
                                             {
                                                addr155:
                                                if(_loc8_ || param1)
                                                {
                                                   param2.y = _loc5_;
                                                   loop64:
                                                   while(true)
                                                   {
                                                      if(_loc8_ || this)
                                                      {
                                                         if(_loc9_ && param1)
                                                         {
                                                            break;
                                                         }
                                                         param2.width = _loc4_ - _loc3_;
                                                         for(; !_loc9_; param2.height = _loc6_ - _loc5_,if(!(_loc8_ || param2))
                                                         {
                                                            continue;
                                                         },if(_loc9_)
                                                         {
                                                            continue loop64;
                                                         },§§goto(addr87))
                                                         {
                                                            if(_loc8_ || this)
                                                            {
                                                               continue;
                                                            }
                                                            addr165:
                                                            addr165:
                                                            while(true)
                                                            {
                                                               §§push(_loc7_);
                                                               if(_loc9_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(4);
                                                               if(_loc9_)
                                                               {
                                                                  continue loop66;
                                                               }
                                                               if(§§pop() >= §§pop())
                                                               {
                                                                  do
                                                                  {
                                                                     if(!_loc9_)
                                                                     {
                                                                        continue loop62;
                                                                     }
                                                                  }
                                                                  while(!(_loc8_ || param1));
                                                                  
                                                                  return param2;
                                                               }
                                                               §§push(this.§1!&§);
                                                               if(_loc8_ || _loc3_)
                                                               {
                                                                  §§push(_loc7_);
                                                                  if(!(_loc9_ && this))
                                                                  {
                                                                     §§pop().§?!P§(§§pop(),§>!#§);
                                                                     loop4:
                                                                     while(true)
                                                                     {
                                                                        transformCoords(§7=§,§>!#§.x,§>!#§.y,§9!s§);
                                                                        addr478:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc3_);
                                                                           if(!_loc9_)
                                                                           {
                                                                              if(_loc8_)
                                                                              {
                                                                                 if(!(_loc9_ && param2))
                                                                                 {
                                                                                    if(_loc8_ || param2)
                                                                                    {
                                                                                       §§push(§§pop() < §9!s§.x);
                                                                                       loop6:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc8_ || param2)
                                                                                          {
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                §§push(Number(§9!s§.x));
                                                                                                loop7:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc3_ = §§pop();
                                                                                                      loop9:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc4_);
                                                                                                         if(_loc8_ || _loc3_)
                                                                                                         {
                                                                                                            if(!_loc8_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            §§push(§§pop() > §9!s§.x);
                                                                                                            loop10:
                                                                                                            for(; _loc8_; while(_loc8_ || param2)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!_loc9_)
                                                                                                                     {
                                                                                                                        if(_loc9_)
                                                                                                                        {
                                                                                                                           continue loop4;
                                                                                                                        }
                                                                                                                        §§push(_loc5_);
                                                                                                                        if(!(_loc9_ && param2))
                                                                                                                        {
                                                                                                                           §§goto(addr288);
                                                                                                                        }
                                                                                                                        §§goto(addr307);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc3_);
                                                                                                                           if(_loc9_ && param1)
                                                                                                                           {
                                                                                                                              break loop9;
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!(_loc9_ && _loc3_))
                                                                                                                              {
                                                                                                                                 §§goto(addr462);
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr446:
                                                                                                                     }
                                                                                                                     §§goto(addr624);
                                                                                                                  }
                                                                                                                  §§goto(addr402);
                                                                                                                  addr276:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§push(Number(§9!s§.y));
                                                                                                               }
                                                                                                               §§goto(addr320);
                                                                                                            })
                                                                                                            {
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  if(_loc8_)
                                                                                                                  {
                                                                                                                     if(!(_loc9_ && param2))
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           loop43:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc8_)
                                                                                                                              {
                                                                                                                                 §§push(_loc4_);
                                                                                                                                 loop47:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    loop48:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       loop12:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          addr402:
                                                                                                                                          loop13:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             _loc4_ = §§pop();
                                                                                                                                             addr403:
                                                                                                                                             while(!_loc9_)
                                                                                                                                             {
                                                                                                                                                if(!_loc9_)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc9_ && param1))
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc5_);
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() < §9!s§.y);
                                                                                                                                                         continue loop10;
                                                                                                                                                         addr208:
                                                                                                                                                         if(!(_loc8_ || param1))
                                                                                                                                                         {
                                                                                                                                                            continue;
                                                                                                                                                         }
                                                                                                                                                         if(!_loc8_)
                                                                                                                                                         {
                                                                                                                                                            continue loop7;
                                                                                                                                                         }
                                                                                                                                                         if(_loc8_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            addr237:
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                            if(_loc8_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               addr245:
                                                                                                                                                               if(!(_loc9_ && this))
                                                                                                                                                               {
                                                                                                                                                                  _loc6_ = §§pop();
                                                                                                                                                                  break loop63;
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc8_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop12;
                                                                                                                                                                     }
                                                                                                                                                                     loop41:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           _loc5_ = §§pop();
                                                                                                                                                                           addr608:
                                                                                                                                                                           loop32:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc6_);
                                                                                                                                                                              while(!(_loc9_ && _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() > §>!#§.y);
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc9_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc6_);
                                                                                                                                                                                          loop54:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                             addr564:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc8_ || param2)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc8_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr577:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                         addr578:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc8_ || this)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc9_ && _loc3_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc6_ = §§pop();
                                                                                                                                                                                                                  loop35:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     _loc7_++;
                                                                                                                                                                                                                     addr544:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc8_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop71;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop35;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr593:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr628:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr628:
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(!_loc9_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc4_ = §§pop();
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc5_);
                                                                                                                                                                                                                  addr596:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() < §>!#§.y);
                                                                                                                                                                                                                     addr599:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!§§pop())
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(Number(§>!#§.y));
                                                                                                                                                                                                                           continue loop41;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc5_);
                                                                                                                                                                                                                           addr601:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                              addr602:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop41;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr628);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr641:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr577:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                      addr646:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc3_ = §§pop();
                                                                                                                                                                                                         break loop64;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr645:
                                                                                                                                                                                                }
                                                                                                                                                                                                loop24:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                   addr624:
                                                                                                                                                                                                   addr622:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr628);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr622:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop24;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop54;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          addr563:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr593);
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(Number(§>!#§.y));
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 if(_loc9_ && param2)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(_loc8_ || param2)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc9_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr320:
                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                       if(_loc8_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr307:
                                                                                                                                                                                          if(_loc9_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop13;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(_loc9_ && param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop48;
                                                                                                                                                                                          }
                                                                                                                                                                                          addr316:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                             loop19:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc9_ && param2)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop47;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(_loc8_ || _loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc5_ = §§pop();
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc8_ || param2))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop43;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(_loc6_);
                                                                                                                                                                                                      if(_loc8_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() > §9!s§.y);
                                                                                                                                                                                                         if(_loc9_ && param2)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop10;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc8_ || this))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               break loop63;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(_loc6_);
                                                                                                                                                                                                            if(_loc8_ || _loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr196:
                                                                                                                                                                                                               if(!(_loc8_ || this))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop19;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(!_loc9_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                  if(_loc8_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr208);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr230:
                                                                                                                                                                                                                     if(_loc9_ && _loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop32;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr237);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr564);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(Number(§9!s§.y));
                                                                                                                                                                                                            if(_loc8_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr230);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr237);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr196);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr353:
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop7;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr462:
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop47;
                                                                                                                                                                                             §§goto(addr316);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr327:
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc9_ && this))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr327);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr578);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr320:
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr601);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr602);
                                                                                                                                                                              }
                                                                                                                                                                              addr635:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() < §>!#§.x);
                                                                                                                                                                                 addr638:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc3_);
                                                                                                                                                                                          addr640:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr641);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       addr639:
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(Number(§>!#§.x));
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr645);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           continue loop41;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr577);
                                                                                                                                                                  §§goto(addr245);
                                                                                                                                                               }
                                                                                                                                                               addr397:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr320);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr640);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr632);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr544);
                                                                                                                                             }
                                                                                                                                             continue loop9;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr392:
                                                                                                                              }
                                                                                                                              §§goto(addr608);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr397);
                                                                                                                           §§push(Number(§9!s§.x));
                                                                                                                        }
                                                                                                                        §§goto(addr577);
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           §§goto(addr622);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§push(Number(§>!#§.x));
                                                                                                                        }
                                                                                                                        §§goto(addr628);
                                                                                                                     }
                                                                                                                     addr621:
                                                                                                                  }
                                                                                                                  §§goto(addr599);
                                                                                                               }
                                                                                                               §§goto(addr559);
                                                                                                            }
                                                                                                            continue loop6;
                                                                                                         }
                                                                                                         §§goto(addr392);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr446);
                                                                                          }
                                                                                          §§goto(addr638);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr646);
                                                                                 }
                                                                                 §§goto(addr596);
                                                                              }
                                                                              §§goto(addr563);
                                                                           }
                                                                           §§goto(addr454);
                                                                           §§goto(addr155);
                                                                        }
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§pop().§?!P§(§§pop(),§>!#§);
                                                                        addr656:
                                                                        while(true)
                                                                        {
                                                                        }
                                                                     }
                                                                     addr654:
                                                                  }
                                                                  §§goto(addr635);
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                  }
                                                                  addr653:
                                                               }
                                                               §§goto(addr654);
                                                               §§goto(addr656);
                                                               §§goto(addr165);
                                                            }
                                                            loop1:
                                                            while(true)
                                                            {
                                                               if(!(_loc8_ || param1))
                                                               {
                                                                  continue loop68;
                                                               }
                                                               _loc7_ = §§pop();
                                                               while(_loc8_ || param2)
                                                               {
                                                                  if(!_loc8_)
                                                                  {
                                                                     continue loop67;
                                                                  }
                                                                  §§goto(addr130);
                                                                  continue loop64;
                                                               }
                                                               while(true)
                                                               {
                                                                  if(_loc8_ || param2)
                                                                  {
                                                                     if(!_loc9_)
                                                                     {
                                                                        continue loop1;
                                                                     }
                                                                     §§goto(addr639);
                                                                  }
                                                                  §§goto(addr600);
                                                                  §§goto(addr512);
                                                               }
                                                               addr512:
                                                            }
                                                            addr130:
                                                         }
                                                         continue loop63;
                                                      }
                                                      §§goto(addr512);
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(_loc4_);
                                                      if(!(_loc9_ && this))
                                                      {
                                                         §§goto(addr621);
                                                         §§push(§§pop() > §>!#§.x);
                                                      }
                                                      §§goto(addr628);
                                                   }
                                                }
                                                §§goto(addr478);
                                             }
                                             §§goto(addr403);
                                          }
                                          §§goto(addr276);
                                       }
                                       while(true)
                                       {
                                          if(_loc8_)
                                          {
                                             if(!(_loc9_ && this))
                                             {
                                                _loc7_++;
                                                break;
                                             }
                                             §§goto(addr622);
                                          }
                                          §§goto(addr353);
                                       }
                                       §§goto(addr165);
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(this.§1!&§);
                              }
                              §§goto(addr653);
                           }
                        }
                     }
                     addr679:
                  }
                  §§goto(addr679);
               }
               else
               {
                  §3!+§(param1,§7=§);
               }
               §§goto(addr532);
            }
            §§goto(addr679);
         }
         §§goto(addr28);
      }
      
      public function §#",§(param1:int) : uint
      {
         return this.§1!&§.§>!k§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§1!&§.§<!=§(param1,param2);
         }
      }
      
      public function §3h§(param1:int) : Number
      {
         return this.§1!&§.§7"-§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            this.§1!&§.§7z§(param1,param2);
         }
      }
      
      public function get color() : uint
      {
         return this.§@=§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(this.§@=§ != param1)
            {
               do
               {
                  this.§@=§ = param1;
                  do
                  {
                     this.§1!&§.§#!^§(param1,1);
                  }
                  while(!(_loc2_ || _loc2_));
                  
               }
               while(_loc3_);
               
               addr63:
            }
            return;
         }
         §§goto(addr63);
      }
      
      public function copyVertexDataTo(param1:§3C§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param3))
         {
            this.§1!&§.copyTo(param1,param2,param3,true,param4);
         }
      }
      
      override public function render(param1:§0L§, param2:Number) : void
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
      
      public function get § !v§() : Number
      {
         return this.§=!r§;
      }
      
      public function get §4w§() : Number
      {
         return this.§[!k§;
      }
   }
}
