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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §<!=§ = new Vector3D();
         }
         while(true)
         {
            §<r§ = new Point();
            while(_loc2_ || §%!g§)
            {
               §5g§ = new Matrix();
               if(_loc2_ || _loc1_)
               {
                  return;
               }
            }
         }
      }
      
      protected var § Q§:§0p§;
      
      private var §[!Q§:Number = 0.0;
      
      private var §]j§:Number = 0.0;
      
      private var §%!v§:uint = 16777215;
      
      public function §%!g§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            super();
            loop0:
            do
            {
               this.§ Q§ = new §0p§(4,param4);
               while(true)
               {
                  this.updateVertexData(param1,param2,param3,param4);
                  while(!_loc5_)
                  {
                     this.§%!v§ = param3;
                     if(_loc6_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(!_loc6_);
            
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
         if(_loc6_ || param1)
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
                              while(!(_loc5_ && this))
                              {
                                 §§push(this.§ Q§);
                                 loop7:
                                 while(true)
                                 {
                                    §§push(1);
                                    addr154:
                                    while(_loc6_ || param3)
                                    {
                                       §§push(param1);
                                       while(true)
                                       {
                                          if(!_loc6_)
                                          {
                                             addr175:
                                             break;
                                             addr175:
                                          }
                                          §§push(0);
                                          while(_loc6_)
                                          {
                                             §§pop().setPosition(§§pop(),§§pop(),§§pop());
                                             while(true)
                                             {
                                                §§push(this.§ Q§);
                                                continue loop7;
                                                addr42:
                                                if(!(_loc5_ && param3))
                                                {
                                                   return;
                                                   addr49:
                                                }
                                             }
                                          }
                                          continue loop5;
                                          addr138:
                                          while(_loc6_ || param3)
                                          {
                                             §§push(param2);
                                             while(true)
                                             {
                                                §§pop().setPosition(§§pop(),§§pop(),§§pop());
                                                addr147:
                                                while(!_loc5_)
                                                {
                                                   §§push(this.§ Q§);
                                                   continue loop0;
                                                }
                                                addr110:
                                                §§push(param2);
                                                continue loop6;
                                                if(!(_loc6_ || param1))
                                                {
                                                   continue;
                                                }
                                                if(!_loc5_)
                                                {
                                                   §§pop().setPosition(§§pop(),§§pop(),§§pop());
                                                   loop18:
                                                   while(true)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         §§push(this.§ Q§);
                                                         if(!(_loc6_ || param3))
                                                         {
                                                            continue loop0;
                                                         }
                                                         if(!(_loc6_ || param3))
                                                         {
                                                            break;
                                                         }
                                                         §§pop().§4!^§(param3);
                                                         loop19:
                                                         do
                                                         {
                                                            this.§[!Q§ = param1;
                                                            while(_loc6_)
                                                            {
                                                               this.§]j§ = param2;
                                                               if(!(_loc5_ && param3))
                                                               {
                                                                  continue loop19;
                                                               }
                                                            }
                                                            continue loop18;
                                                         }
                                                         while(_loc5_);
                                                         
                                                         §§goto(addr42);
                                                         addr123:
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr147);
                                                      }
                                                   }
                                                   continue loop7;
                                                }
                                                §§goto(addr175);
                                                §§goto(addr178);
                                             }
                                          }
                                       }
                                       continue loop4;
                                    }
                                    continue loop3;
                                 }
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr49);
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:int = 0;
         if(!(_loc8_ && param2))
         {
            if(param2 == null)
            {
               addr29:
               param2 = new Rectangle();
            }
            var _loc3_:* = Number(Number.MAX_VALUE);
            §§push(-Number.MAX_VALUE);
            if(_loc9_ || this)
            {
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            var _loc5_:* = Number(Number.MAX_VALUE);
            §§push(-Number.MAX_VALUE);
            if(_loc9_)
            {
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            if(_loc9_)
            {
               if(param1 == this)
               {
                  if(_loc9_ || param1)
                  {
                     _loc7_ = 0;
                     addr685:
                     loop76:
                     while(true)
                     {
                        §§push(_loc7_);
                        while(true)
                        {
                           §§push(4);
                           while(true)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 while(!(_loc9_ || _loc3_))
                                 {
                                    loop62:
                                    while(true)
                                    {
                                       §§push(_loc6_);
                                       addr560:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          addr561:
                                          while(true)
                                          {
                                             addr569:
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                addr570:
                                                while(true)
                                                {
                                                   _loc6_ = §§pop();
                                                   addr571:
                                                   while(true)
                                                   {
                                                      _loc7_++;
                                                      addr552:
                                                      while(true)
                                                      {
                                                         continue loop76;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          continue loop62;
                                       }
                                    }
                                 }
                                 addr543:
                                 loop69:
                                 while(true)
                                 {
                                    param2.x = _loc3_;
                                    loop70:
                                    while(_loc9_ || param1)
                                    {
                                       param2.y = _loc5_;
                                       loop71:
                                       while(true)
                                       {
                                          if(!_loc8_)
                                          {
                                             if(_loc9_ || this)
                                             {
                                                addr134:
                                                if(!(_loc8_ && param2))
                                                {
                                                   if(!(_loc8_ && this))
                                                   {
                                                      param2.width = _loc4_ - _loc3_;
                                                      continue;
                                                   }
                                                   loop28:
                                                   while(true)
                                                   {
                                                      §§push(_loc5_);
                                                      loop63:
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         loop52:
                                                         while(true)
                                                         {
                                                            loop23:
                                                            while(true)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               loop24:
                                                               while(!_loc8_)
                                                               {
                                                                  if(!(_loc8_ && this))
                                                                  {
                                                                     _loc5_ = §§pop();
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc6_);
                                                                        loop26:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() > §<!=§.y);
                                                                           loop61:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 §§goto(addr559);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(Number(§<!=§.y));
                                                                                 loop46:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          §§goto(addr569);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          loop44:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             addr662:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc3_ = §§pop();
                                                                                                addr663:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc4_);
                                                                                                   if(_loc9_ || this)
                                                                                                   {
                                                                                                      §§push(§§pop() > §<!=§.x);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc9_ || param2)
                                                                                                         {
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                               §§push(Number(§<!=§.x));
                                                                                                               break loop24;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc4_);
                                                                                                               addr624:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  if(_loc9_ || _loc3_)
                                                                                                                  {
                                                                                                                     break loop24;
                                                                                                                  }
                                                                                                                  break loop24;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr644:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  §§push(Number(§<!=§.x));
                                                                                                                  continue loop44;
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc3_);
                                                                                                                  addr656:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     addr657:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        continue loop44;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            addr644:
                                                                                                         }
                                                                                                      }
                                                                                                      addr615:
                                                                                                   }
                                                                                                   break loop24;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr637:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc4_ = §§pop();
                                                                                       addr638:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc5_);
                                                                                          loop20:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() < §<!=§.y);
                                                                                             loop21:
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   continue loop28;
                                                                                                }
                                                                                                §§push(Number(§<!=§.y));
                                                                                                loop22:
                                                                                                while(_loc9_ || param2)
                                                                                                {
                                                                                                   continue loop23;
                                                                                                   loop51:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc9_ || _loc3_))
                                                                                                      {
                                                                                                         continue loop22;
                                                                                                      }
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         continue loop52;
                                                                                                      }
                                                                                                      addr347:
                                                                                                      loop33:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         addr354:
                                                                                                         loop34:
                                                                                                         while(_loc9_)
                                                                                                         {
                                                                                                            _loc5_ = §§pop();
                                                                                                            loop35:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc6_);
                                                                                                               if(!_loc8_)
                                                                                                               {
                                                                                                                  if(!_loc8_)
                                                                                                                  {
                                                                                                                     if(_loc8_)
                                                                                                                     {
                                                                                                                        continue loop46;
                                                                                                                     }
                                                                                                                     §§push(§§pop() > §<r§.y);
                                                                                                                     if(!_loc8_)
                                                                                                                     {
                                                                                                                        if(!_loc8_)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              loop41:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc9_ || param1)
                                                                                                                                 {
                                                                                                                                    §§push(_loc6_);
                                                                                                                                    if(!_loc8_)
                                                                                                                                    {
                                                                                                                                       if(!(_loc8_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          if(!_loc8_)
                                                                                                                                          {
                                                                                                                                             if(!(_loc8_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                if(_loc9_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   addr259:
                                                                                                                                                   while(_loc9_ || param1)
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                         addr284:
                                                                                                                                                         addr400:
                                                                                                                                                         addr482:
                                                                                                                                                         while(_loc9_)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc9_ || this))
                                                                                                                                                            {
                                                                                                                                                               continue loop24;
                                                                                                                                                            }
                                                                                                                                                            _loc6_ = §§pop();
                                                                                                                                                            loop39:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc8_ && param2))
                                                                                                                                                               {
                                                                                                                                                                  _loc7_++;
                                                                                                                                                                  break loop71;
                                                                                                                                                               }
                                                                                                                                                               addr396:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc8_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc4_);
                                                                                                                                                                     break loop41;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr663);
                                                                                                                                                                  continue loop39;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc8_ && param2))
                                                                                                                                                            {
                                                                                                                                                               break loop34;
                                                                                                                                                            }
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            break loop35;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   continue loop34;
                                                                                                                                                   addr259:
                                                                                                                                                }
                                                                                                                                                §§goto(addr284);
                                                                                                                                             }
                                                                                                                                             §§goto(addr656);
                                                                                                                                          }
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       continue loop51;
                                                                                                                                    }
                                                                                                                                    §§goto(addr259);
                                                                                                                                 }
                                                                                                                                 §§goto(addr552);
                                                                                                                                 §§goto(addr134);
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§goto(addr400);
                                                                                                                              }
                                                                                                                              addr225:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§push(Number(§<r§.y));
                                                                                                                              if(!_loc8_)
                                                                                                                              {
                                                                                                                                 if(_loc9_)
                                                                                                                                 {
                                                                                                                                    if(!_loc8_)
                                                                                                                                    {
                                                                                                                                       continue loop26;
                                                                                                                                    }
                                                                                                                                    §§goto(addr560);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    loop30:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!(_loc8_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          if(_loc9_)
                                                                                                                                          {
                                                                                                                                             _loc4_ = §§pop();
                                                                                                                                             while(!(_loc8_ && param2))
                                                                                                                                             {
                                                                                                                                                §§push(_loc5_);
                                                                                                                                                if(_loc8_ && param2)
                                                                                                                                                {
                                                                                                                                                   continue loop51;
                                                                                                                                                }
                                                                                                                                                if(!_loc8_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() < §<r§.y);
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         break loop70;
                                                                                                                                                      }
                                                                                                                                                      §§push(Number(§<r§.y));
                                                                                                                                                      if(!_loc8_)
                                                                                                                                                      {
                                                                                                                                                         continue loop33;
                                                                                                                                                      }
                                                                                                                                                      continue loop34;
                                                                                                                                                   }
                                                                                                                                                   addr316:
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr561);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             loop10:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc4_);
                                                                                                                                                if(_loc8_ && param2)
                                                                                                                                                {
                                                                                                                                                   continue loop30;
                                                                                                                                                }
                                                                                                                                                if(!(_loc8_ && param1))
                                                                                                                                                {
                                                                                                                                                   if(!_loc8_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc8_)
                                                                                                                                                      {
                                                                                                                                                         addr381:
                                                                                                                                                         §§push(§§pop() > §<r§.x);
                                                                                                                                                         while(!(_loc8_ && this))
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc9_ || param2))
                                                                                                                                                            {
                                                                                                                                                               continue loop21;
                                                                                                                                                            }
                                                                                                                                                            if(!§§pop())
                                                                                                                                                            {
                                                                                                                                                               §§push(Number(§<r§.x));
                                                                                                                                                               break loop34;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr396);
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(_loc8_ && param2)
                                                                                                                                                            {
                                                                                                                                                               continue loop61;
                                                                                                                                                            }
                                                                                                                                                            if(_loc9_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               if(!§§pop())
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(§<r§.x));
                                                                                                                                                                  break loop35;
                                                                                                                                                               }
                                                                                                                                                               while(_loc9_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc9_ || param2)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc3_);
                                                                                                                                                                     if(!(_loc9_ || param2))
                                                                                                                                                                     {
                                                                                                                                                                        break loop35;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop20;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr623);
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc9_)
                                                                                                                                                                  {
                                                                                                                                                                     transformCoords(§5g§,§<!=§.x,§<!=§.y,§<r§);
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc8_ && param1))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc3_);
                                                                                                                                                                           break loop10;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr571);
                                                                                                                                                                        addr81:
                                                                                                                                                                        if(!(_loc9_ || this))
                                                                                                                                                                        {
                                                                                                                                                                           continue;
                                                                                                                                                                        }
                                                                                                                                                                        if(!_loc8_)
                                                                                                                                                                        {
                                                                                                                                                                           break loop69;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr645);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     addr672:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc3_);
                                                                                                                                                                        addr641:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr644);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr672:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr452);
                                                                                                                                                               }
                                                                                                                                                               addr452:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr615);
                                                                                                                                                            §§goto(addr381);
                                                                                                                                                         }
                                                                                                                                                         addr381:
                                                                                                                                                         addr437:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr624);
                                                                                                                                                   }
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc3_ = §§pop();
                                                                                                                                                   continue loop10;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!_loc9_)
                                                                                                                                                {
                                                                                                                                                   continue loop63;
                                                                                                                                                }
                                                                                                                                                §§goto(addr437);
                                                                                                                                                §§push(§§pop() < §<r§.x);
                                                                                                                                             }
                                                                                                                                             addr422:
                                                                                                                                          }
                                                                                                                                          §§goto(addr641);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr412:
                                                                                                                                 }
                                                                                                                                 §§goto(addr570);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr284);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr284);
                                                                                                                        }
                                                                                                                        §§goto(addr381);
                                                                                                                     }
                                                                                                                     §§goto(addr316);
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§goto(addr259);
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§goto(addr487);
                                                                                                            }
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§goto(addr412);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr662);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr569);
                                                                           }
                                                                        }
                                                                        addr169:
                                                                        if(!(_loc8_ && param2))
                                                                        {
                                                                           continue loop69;
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr657);
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr637);
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr225);
                                                }
                                                §§goto(addr552);
                                             }
                                             break;
                                          }
                                          continue loop70;
                                       }
                                       while(true)
                                       {
                                          if(_loc9_ || this)
                                          {
                                             if(_loc9_)
                                             {
                                                if(!_loc8_)
                                                {
                                                   if(_loc9_ || _loc3_)
                                                   {
                                                      §§goto(addr208);
                                                   }
                                                   §§goto(addr638);
                                                }
                                                break;
                                             }
                                             §§goto(addr357);
                                          }
                                          §§goto(addr294);
                                       }
                                       §§goto(addr422);
                                    }
                                    while(!_loc8_)
                                    {
                                       §§push(_loc5_);
                                       if(_loc9_ || _loc3_)
                                       {
                                          §§goto(addr338);
                                          §§push(Number(§§pop()));
                                       }
                                       §§goto(addr354);
                                    }
                                    §§goto(addr531);
                                 }
                                 addr536:
                                 return param2;
                              }
                              §§push(this.§ Q§);
                              §§goto(addr669);
                           }
                        }
                     }
                     addr685:
                  }
                  §§goto(addr685);
               }
               else
               {
                  §^2§(param1,§5g§);
               }
               §§goto(addr549);
            }
            §§goto(addr685);
         }
         §§goto(addr29);
      }
      
      public function §3!o§(param1:int) : uint
      {
         return this.§ Q§.§6!b§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
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
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
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
         if(!_loc3_)
         {
            if(this.§%!v§ != param1)
            {
               do
               {
                  this.§%!v§ = param1;
                  do
                  {
                     this.§ Q§.§4!^§(param1,1);
                  }
                  while(_loc3_ && param1);
                  
               }
               while(!(_loc2_ || _loc2_));
               
               addr63:
            }
            return;
         }
         §§goto(addr63);
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
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
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
