package §6!7§
{
   import §0P§.RenderSupport;
   import §8g§.VertexData;
   import §8g§.transformCoords;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §3x§ extends DisplayObject
   {
      
      private static var §4!2§:Vector3D;
      
      private static var §1!c§:Point;
      
      private static var §18§:Matrix;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §4!2§ = new Vector3D();
            while(true)
            {
               §1!c§ = new Point();
               §§goto(addr54);
            }
         }
         addr54:
         while(true)
         {
            §18§ = new Matrix();
            if(_loc2_)
            {
               if(!_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      protected var §;H§:VertexData;
      
      private var §"!N§:Number = 0.0;
      
      private var §6>§:Number = 0.0;
      
      private var §1!T§:uint = 16777215;
      
      public function §3x§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param3)
         {
            super();
            while(true)
            {
               this.§;H§ = new VertexData(4,param4);
            }
            addr89:
         }
         loop1:
         while(true)
         {
            this.updateVertexData(param1,param2,param3,param4);
            while(_loc6_ || this)
            {
               this.§1!T§ = param3;
               if(_loc5_ && param3)
               {
                  continue;
               }
               if(_loc6_)
               {
                  break loop1;
               }
               §§goto(addr89);
            }
         }
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param3))
         {
            §§push(this.§;H§);
            loop0:
            while(true)
            {
               §§pop().setPremultipliedAlpha(param4);
               addr193:
               while(true)
               {
                  §§push(this.§;H§);
                  addr182:
                  while(true)
                  {
                     §§push(0);
                     addr183:
                     while(true)
                     {
                        §§push(0);
                        addr184:
                        while(true)
                        {
                           §§push(0);
                           addr185:
                           while(true)
                           {
                              §§pop().setPosition(§§pop(),§§pop(),§§pop());
                              addr187:
                              while(true)
                              {
                                 §§push(this.§;H§);
                                 continue loop0;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr73);
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:* = 0;
         if(_loc8_ || this)
         {
            if(param2 == null)
            {
               addr28:
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
            if(!(_loc9_ && param1))
            {
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            if(_loc8_)
            {
               if(param1 == this)
               {
                  if(!(_loc9_ && param1))
                  {
                     §§push(0);
                     if(!(_loc9_ && this))
                     {
                        §§push(int(§§pop()));
                     }
                     _loc7_ = §§pop();
                     addr734:
                     loop84:
                     while(true)
                     {
                        §§push(_loc7_);
                        loop42:
                        while(true)
                        {
                           §§push(4);
                           loop79:
                           while(true)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 loop70:
                                 while(true)
                                 {
                                    loop68:
                                    while(true)
                                    {
                                       param2.x = _loc3_;
                                       loop72:
                                       while(true)
                                       {
                                          param2.y = _loc5_;
                                          loop73:
                                          while(true)
                                          {
                                             if(_loc8_)
                                             {
                                                if(!(_loc9_ && param2))
                                                {
                                                   if(!_loc9_)
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         if(!_loc9_)
                                                         {
                                                            if(!(_loc9_ && param2))
                                                            {
                                                               param2.width = _loc4_ - _loc3_;
                                                               while(_loc8_)
                                                               {
                                                                  param2.height = _loc6_ - _loc5_;
                                                                  if(!_loc8_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  addr79:
                                                                  if(_loc8_ || param1)
                                                                  {
                                                                     return param2;
                                                                  }
                                                                  addr582:
                                                                  while(true)
                                                                  {
                                                                     §§push(0);
                                                                     addr563:
                                                                     loop1:
                                                                     while(true)
                                                                     {
                                                                        if(_loc8_)
                                                                        {
                                                                           if(!_loc9_)
                                                                           {
                                                                              §§push(int(§§pop()));
                                                                              loop2:
                                                                              while(true)
                                                                              {
                                                                                 _loc7_ = §§pop();
                                                                                 loop3:
                                                                                 while(true)
                                                                                 {
                                                                                    addr123:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc7_);
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          if(_loc8_ || this)
                                                                                          {
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§push(4);
                                                                                             if(_loc9_ && _loc3_)
                                                                                             {
                                                                                                continue loop79;
                                                                                             }
                                                                                             if(§§pop() >= §§pop())
                                                                                             {
                                                                                                if(!(_loc8_ || param2))
                                                                                                {
                                                                                                   continue loop72;
                                                                                                }
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   if(!(_loc8_ || param2))
                                                                                                   {
                                                                                                      continue loop70;
                                                                                                   }
                                                                                                   if(_loc8_)
                                                                                                   {
                                                                                                      continue loop68;
                                                                                                   }
                                                                                                   addr713:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc3_);
                                                                                                      addr676:
                                                                                                      loop67:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() < §4!2§.x);
                                                                                                         loop46:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc3_);
                                                                                                                  if(_loc8_)
                                                                                                                  {
                                                                                                                     addr684:
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§goto(addr684);
                                                                                                                     }
                                                                                                                     addr685:
                                                                                                                  }
                                                                                                               }
                                                                                                               addr681:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push(Number(§4!2§.x));
                                                                                                            }
                                                                                                            addr690:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               loop31:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc3_ = §§pop();
                                                                                                                  addr692:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc4_);
                                                                                                                     addr657:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() > §4!2§.x);
                                                                                                                        addr661:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              continue loop46;
                                                                                                                           }
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc4_);
                                                                                                                                 addr665:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    addr666:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr664:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§push(Number(§4!2§.x));
                                                                                                                           }
                                                                                                                           loop25:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              addr672:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 _loc4_ = §§pop();
                                                                                                                                 addr673:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc5_);
                                                                                                                                    addr638:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() < §4!2§.y);
                                                                                                                                       addr642:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             loop55:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc5_);
                                                                                                                                                addr644:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!_loc8_)
                                                                                                                                                   {
                                                                                                                                                      continue loop25;
                                                                                                                                                   }
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                   }
                                                                                                                                                   continue loop55;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr643:
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§push(Number(§4!2§.y));
                                                                                                                                          }
                                                                                                                                          loop34:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                             addr653:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc5_ = §§pop();
                                                                                                                                                addr654:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc6_);
                                                                                                                                                   addr598:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc8_ || param2)
                                                                                                                                                      {
                                                                                                                                                         if(_loc9_ && _loc3_)
                                                                                                                                                         {
                                                                                                                                                            continue loop31;
                                                                                                                                                         }
                                                                                                                                                         §§push(§§pop() > §4!2§.y);
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop())
                                                                                                                                                            {
                                                                                                                                                               addr617:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc6_);
                                                                                                                                                                  addr618:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                     continue loop34;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr617:
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               addr631:
                                                                                                                                                               §§push(Number(§4!2§.y));
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                  addr632:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc8_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop67;
                                                                                                                                                                     }
                                                                                                                                                                     _loc6_ = §§pop();
                                                                                                                                                                  }
                                                                                                                                                                  continue loop67;
                                                                                                                                                               }
                                                                                                                                                               addr631:
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr665);
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
                                                                                                   addr713:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   loop71:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         §§push(_loc4_);
                                                                                                         loop12:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc8_ || _loc3_)
                                                                                                            {
                                                                                                               §§push(§§pop() > §1!c§.x);
                                                                                                               loop13:
                                                                                                               for(; _loc8_; while(_loc8_ || param1)
                                                                                                               {
                                                                                                                  if(!(_loc9_ && this))
                                                                                                                  {
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        §§push(Number(§1!c§.y));
                                                                                                                        continue loop12;
                                                                                                                     }
                                                                                                                     if(!_loc9_)
                                                                                                                     {
                                                                                                                        if(!_loc9_)
                                                                                                                        {
                                                                                                                           if(!(_loc9_ && param2))
                                                                                                                           {
                                                                                                                              §§goto(addr389);
                                                                                                                              §§push(_loc5_);
                                                                                                                           }
                                                                                                                           §§goto(addr664);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              transformCoords(§18§,§4!2§.x,§4!2§.y,§1!c§);
                                                                                                                           }
                                                                                                                           addr560:
                                                                                                                        }
                                                                                                                        §§goto(addr538);
                                                                                                                     }
                                                                                                                     §§goto(addr419);
                                                                                                                  }
                                                                                                                  §§goto(addr642);
                                                                                                               })
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     while(_loc8_)
                                                                                                                     {
                                                                                                                        §§push(_loc4_);
                                                                                                                        while(!(_loc8_ || _loc3_))
                                                                                                                        {
                                                                                                                           §§goto(addr685);
                                                                                                                        }
                                                                                                                        addr447:
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        loop15:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           addr469:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc8_)
                                                                                                                              {
                                                                                                                                 _loc4_ = §§pop();
                                                                                                                                 addr472:
                                                                                                                                 while(_loc8_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    if(!_loc9_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc5_);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!(_loc9_ && this))
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() < §1!c§.y);
                                                                                                                                             continue loop13;
                                                                                                                                          }
                                                                                                                                          §§goto(addr657);
                                                                                                                                       }
                                                                                                                                       addr341:
                                                                                                                                    }
                                                                                                                                    §§goto(addr643);
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!_loc9_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc3_);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() < §1!c§.x);
                                                                                                                                          break loop13;
                                                                                                                                          addr459:
                                                                                                                                          if(!(_loc8_ || _loc3_))
                                                                                                                                          {
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          if(!_loc9_)
                                                                                                                                          {
                                                                                                                                             continue loop15;
                                                                                                                                          }
                                                                                                                                          §§goto(addr598);
                                                                                                                                       }
                                                                                                                                       addr484:
                                                                                                                                    }
                                                                                                                                    §§goto(addr617);
                                                                                                                                    §§goto(addr472);
                                                                                                                                 }
                                                                                                                                 addr472:
                                                                                                                                 addr538:
                                                                                                                              }
                                                                                                                              §§goto(addr638);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop3;
                                                                                                                     addr436:
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§push(Number(§1!c§.x));
                                                                                                                     loop14:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!(_loc9_ && _loc3_))
                                                                                                                        {
                                                                                                                           §§goto(addr459);
                                                                                                                        }
                                                                                                                        addr520:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc3_ = §§pop();
                                                                                                                           continue loop71;
                                                                                                                        }
                                                                                                                        loop21:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!(_loc9_ && _loc3_))
                                                                                                                           {
                                                                                                                              if(!_loc9_)
                                                                                                                              {
                                                                                                                                 loop22:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    loop23:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!_loc9_)
                                                                                                                                       {
                                                                                                                                          if(!_loc9_)
                                                                                                                                          {
                                                                                                                                             _loc5_ = §§pop();
                                                                                                                                             addr419:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc6_);
                                                                                                                                                if(!(_loc9_ && this))
                                                                                                                                                {
                                                                                                                                                   if(!_loc9_)
                                                                                                                                                   {
                                                                                                                                                      addr512:
                                                                                                                                                      if(!(_loc9_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() > §1!c§.y);
                                                                                                                                                         if(_loc9_)
                                                                                                                                                         {
                                                                                                                                                            continue loop13;
                                                                                                                                                         }
                                                                                                                                                         if(!(_loc9_ && param2))
                                                                                                                                                         {
                                                                                                                                                            if(_loc8_ || param1)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  loop47:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc8_ || param2)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc6_);
                                                                                                                                                                        if(_loc8_ || param1)
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc8_ || _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop23;
                                                                                                                                                                              }
                                                                                                                                                                              if(_loc9_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop21;
                                                                                                                                                                              }
                                                                                                                                                                              if(_loc8_ || _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                 if(_loc8_ || _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc8_ || this))
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop22;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(_loc9_ && param2)
                                                                                                                                                                                       {
                                                                                                                                                                                          break loop47;
                                                                                                                                                                                       }
                                                                                                                                                                                       addr307:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                          addr331:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc8_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc8_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc8_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc6_ = §§pop();
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc7_);
                                                                                                                                                                                                         if(!(_loc8_ || param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop2;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(_loc9_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop42;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(§§pop() + 1);
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(int(§§pop()));
                                                                                                                                                                                                            continue loop2;
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr338:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr672);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr618);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr631);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr307);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    addr293:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr331);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr632);
                                                                                                                                                                           }
                                                                                                                                                                           addr269:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr293);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr436);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  loop64:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     addr519:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr520);
                                                                                                                                                                        continue loop64;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr507:
                                                                                                                                                                  addr254:
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(§1!c§.y));
                                                                                                                                                                  if(_loc8_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     addr319:
                                                                                                                                                                     if(!(_loc9_ && param2))
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc8_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc8_)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr330);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr666);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr341);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc8_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                              continue loop21;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr319);
                                                                                                                                                                        }
                                                                                                                                                                        addr389:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr647);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr331);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr661);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr616);
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc9_ && this))
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr519);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr653);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr512:
                                                                                                                                                   }
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                §§goto(addr269);
                                                                                                                                                break loop73;
                                                                                                                                             }
                                                                                                                                             §§goto(addr469);
                                                                                                                                             addr419:
                                                                                                                                          }
                                                                                                                                          §§goto(addr644);
                                                                                                                                       }
                                                                                                                                       §§goto(addr439);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr413:
                                                                                                                              }
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           continue loop14;
                                                                                                                        }
                                                                                                                        §§goto(addr447);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr484);
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!(_loc9_ && param2))
                                                                                                                        {
                                                                                                                           §§push(_loc3_);
                                                                                                                           if(_loc8_ || param1)
                                                                                                                           {
                                                                                                                              if(_loc8_)
                                                                                                                              {
                                                                                                                                 §§goto(addr507);
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr690);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr512);
                                                                                                                           }
                                                                                                                           §§goto(addr653);
                                                                                                                        }
                                                                                                                        §§goto(addr654);
                                                                                                                     }
                                                                                                                     addr489:
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§push(Number(§1!c§.x));
                                                                                                                  }
                                                                                                                  §§goto(addr512);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr619);
                                                                                                            while(!(_loc9_ && param1))
                                                                                                            {
                                                                                                               §§goto(addr413);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc7_);
                                                                                                   addr585:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() + 1);
                                                                                                      if(_loc8_ || _loc3_)
                                                                                                      {
                                                                                                         addr594:
                                                                                                         §§push(int(§§pop()));
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc7_ = §§pop();
                                                                                                            addr595:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               continue loop84;
                                                                                                            }
                                                                                                         }
                                                                                                         addr594:
                                                                                                      }
                                                                                                      §§goto(addr594);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(this.§;H§);
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   §§push(_loc7_);
                                                                                                   if(_loc8_ || this)
                                                                                                   {
                                                                                                      §§pop().§?!#§(§§pop(),§4!2§);
                                                                                                      §§goto(addr560);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop().§?!#§(§§pop(),§4!2§);
                                                                                                         §§goto(addr713);
                                                                                                      }
                                                                                                      addr709:
                                                                                                   }
                                                                                                   §§goto(addr676);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                   }
                                                                                                   addr708:
                                                                                                }
                                                                                                §§goto(addr709);
                                                                                             }
                                                                                             §§goto(addr713);
                                                                                          }
                                                                                          §§goto(addr180);
                                                                                       }
                                                                                       continue loop2;
                                                                                    }
                                                                                    continue loop1;
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr585);
                                                                        }
                                                                        §§goto(addr594);
                                                                     }
                                                                     §§goto(addr79);
                                                                  }
                                                               }
                                                               continue;
                                                            }
                                                            §§goto(addr692);
                                                         }
                                                         §§goto(addr489);
                                                      }
                                                      §§goto(addr254);
                                                   }
                                                   §§goto(addr338);
                                                }
                                                break;
                                             }
                                             continue loop72;
                                          }
                                          while(true)
                                          {
                                             if(_loc8_ || param1)
                                             {
                                                if(_loc8_)
                                                {
                                                   if(_loc8_)
                                                   {
                                                      if(!(_loc9_ && this))
                                                      {
                                                         if(!(_loc9_ && this))
                                                         {
                                                            break loop72;
                                                         }
                                                         §§goto(addr681);
                                                      }
                                                      §§goto(addr673);
                                                   }
                                                   §§goto(addr595);
                                                }
                                                §§goto(addr472);
                                             }
                                             §§goto(addr419);
                                          }
                                          §§goto(addr617);
                                       }
                                       §§goto(addr123);
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(this.§;H§);
                              }
                              §§goto(addr708);
                           }
                        }
                     }
                     addr734:
                  }
                  §§goto(addr734);
               }
               else
               {
                  §[!4§(param1,§18§);
                  §§goto(addr582);
               }
            }
            §§goto(addr734);
         }
         §§goto(addr28);
      }
      
      public function §[n§(param1:int) : uint
      {
         return this.§;H§.§3<§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            this.§;H§.§-!Z§(param1,param2);
         }
      }
      
      public function §^!a§(param1:int) : Number
      {
         return this.§;H§.§9Z§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            this.§;H§.§2X§(param1,param2);
         }
      }
      
      public function get color() : uint
      {
         return this.§1!T§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§1!T§ != param1)
            {
               if(_loc2_)
               {
                  this.§1!T§ = param1;
               }
               do
               {
                  this.§;H§.§2!]§(param1,1);
               }
               while(!_loc2_);
               
               addr42:
            }
            return;
         }
         §§goto(addr42);
      }
      
      public function copyVertexDataTo(param1:VertexData, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.§;H§.copyTo(param1,param2,param3,true,param4);
         }
      }
      
      override public function render(param1:RenderSupport, param2:Number) : void
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
      
      public function get §5l§() : Number
      {
         return this.§"!N§;
      }
      
      public function get §<z§() : Number
      {
         return this.§6>§;
      }
   }
}
