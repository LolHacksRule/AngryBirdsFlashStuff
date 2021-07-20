package §_-OJ§
{
   import §_-Iw§.b2DebugDraw;
   import §_-Iw§.b2World;
   import §_-Ja§.b2Vec2;
   import §_-hU§.§_-MB§;
   import flash.display.Sprite;
   import flash.utils.getTimer;
   
   public class §_-Bu§
   {
      
      public static const §_-Ks§:Number = 0.03333333333333333;
      
      public static const §_-73§:int = 10;
      
      public static const §_-CD§:Boolean = false;
      
      public static const §_-0K§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §_-Ks§ = 1 / 30;
            if(_loc1_)
            {
               §_-73§ = 10;
               if(!(_loc2_ && _loc2_))
               {
                  §_-CD§ = false;
                  if(_loc2_)
                  {
                  }
                  §§goto(addr59);
               }
               §_-0K§ = true;
            }
         }
         addr59:
      }
      
      public var §_-fy§:b2World;
      
      private var §_-Uk§:Boolean = true;
      
      public var §_-VJ§:§_-FZ§;
      
      public var §_-5i§:Sprite;
      
      private var §_-eY§:b2DebugDraw;
      
      public var §_-Ag§:§_-tL§;
      
      public var §_-QA§:Number;
      
      private var §_-OH§:Number;
      
      private var §_-vh§:int;
      
      public function §_-Bu§(param1:§_-tL§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            super();
            if(!(_loc3_ && param1))
            {
               addr36:
               this.§_-Ag§ = param1;
               if(!(_loc3_ && param1))
               {
                  this.§_-QZ§();
               }
            }
            return;
         }
         §§goto(addr36);
      }
      
      public function get §_-mv§() : int
      {
         return this.§_-vh§;
      }
      
      public function get §_-Vi§() : Number
      {
         return this.§_-OH§;
      }
      
      private function §_-QZ§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§_-VJ§ = new §_-FZ§(this);
            if(_loc2_)
            {
               this.§_-fy§ = new b2World(new b2Vec2(0,20),this.§_-Uk§);
               if(_loc2_)
               {
                  this.§_-fy§.§_-PR§(this.§_-VJ§);
               }
            }
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§_-fy§);
            if(_loc1_ || _loc1_)
            {
               §§pop().§_-PR§(null);
               if(!_loc2_)
               {
                  this.§_-VJ§ = null;
                  if(§_-CD§)
                  {
                     if(!_loc2_)
                     {
                        this.§_-5i§.graphics.clear();
                     }
                     §§goto(addr76);
                  }
                  this.§_-5i§ = null;
                  if(_loc1_ || this)
                  {
                  }
                  §§goto(addr76);
               }
               §§push(this.§_-fy§);
            }
            §§pop().§_-RZ§();
            if(_loc1_ || this)
            {
               this.§_-fy§ = null;
            }
         }
         addr76:
      }
      
      public function §_-oK§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(!§_-CD§)
            {
            }
         }
      }
      
      public function §_-lt§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(§_-CD§)
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr32:
                  this.§_-5i§.x = -param1;
                  if(_loc4_ || this)
                  {
                     this.§_-5i§.y = -param2;
                  }
               }
            }
            return;
         }
         §§goto(addr32);
      }
      
      public function §_-mi§(param1:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§_-OH§ = §_-Ks§;
         }
         §§push(this.§_-fr§(param1));
         if(!(_loc3_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               if(§§pop() > §_-73§)
               {
                  if(_loc4_)
                  {
                     §§push(§_-73§);
                     if(_loc4_)
                     {
                        addr44:
                        _loc2_ = int(§§pop());
                        if(_loc4_ || this)
                        {
                           addr59:
                           this.§_-ym§(_loc2_);
                        }
                     }
                     §§goto(addr44);
                  }
                  loop0:
                  while(true)
                  {
                     §§push(param1);
                     if(!_loc3_)
                     {
                        loop1:
                        while(true)
                        {
                           §§push(0.0001);
                           while(§§pop() > §§pop())
                           {
                              §§push(param1);
                              if(!(_loc3_ && _loc2_))
                              {
                                 §§push(this.§_-OH§);
                                 if(!_loc3_)
                                 {
                                    §§push(§§pop() * 1000);
                                    if(!_loc4_)
                                    {
                                       continue;
                                    }
                                 }
                                 §§push(§§pop() - §§pop());
                                 if(_loc4_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc3_)
                                    {
                                       break loop0;
                                    }
                                 }
                                 continue loop0;
                              }
                              continue loop1;
                           }
                           addr106:
                           break loop0;
                        }
                     }
                     break;
                  }
                  return §§pop();
               }
               §§goto(addr59);
            }
            §§goto(addr44);
         }
         §§goto(addr59);
      }
      
      public function §_-ym§(param1:int) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc5_:* = NaN;
         if(!_loc8_)
         {
            this.§_-QA§ = 0;
         }
         var _loc2_:int = 10;
         var _loc3_:int = 10;
         var _loc4_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            while(§§pop() < param1)
            {
               var _loc6_:*;
               §§push((_loc6_ = this).§_-vh§);
               if(_loc9_ || _loc3_)
               {
                  §§push(§§pop() + 1);
               }
               var _loc7_:* = §§pop();
               if(_loc9_ || param1)
               {
                  _loc6_.§_-vh§ = _loc7_;
               }
               §§push(0);
               if(!(_loc9_ || this))
               {
                  continue;
               }
               §§push(Number(§§pop()));
               if(!(_loc8_ && param1))
               {
                  _loc5_ = §§pop();
                  if(!(_loc9_ || _loc2_))
                  {
                     continue loop0;
                  }
                  §§push(§_-0K§);
                  if(_loc9_)
                  {
                     if(§§pop())
                     {
                        if(_loc9_ || this)
                        {
                           addr99:
                           _loc5_ = Number(getTimer());
                           addr100:
                           §§push(this.§_-fy§);
                           if(_loc9_)
                           {
                              §§pop().§_-bf§(this.§_-OH§,_loc2_,_loc3_);
                              §§push(this.§_-fy§);
                           }
                           §§pop().§_-RZ§();
                           if(_loc9_)
                           {
                              §§push(this);
                              §§push(this.§_-QA§);
                              if(_loc9_)
                              {
                                 §§push(this.§_-OH§);
                                 if(!(_loc8_ && this))
                                 {
                                    §§push(§§pop() * 1000);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              §§pop().§_-QA§ = §§pop();
                              if(_loc9_ || param1)
                              {
                              }
                              addr186:
                              _loc4_++;
                              continue loop0;
                           }
                           if(§_-0K§)
                           {
                              if(_loc9_)
                              {
                                 §_-MB§.§_-Dg§.§_-LC§("Box2D",getTimer() - _loc5_);
                                 addr151:
                                 §§push(this.§_-Ag§);
                                 if(_loc9_ || _loc3_)
                                 {
                                    §§push(§§pop().objects);
                                    if(_loc9_ || param1)
                                    {
                                       §§pop().§_-FN§();
                                       addr171:
                                       §§push(this.§_-Ag§.objects);
                                    }
                                    §§push(this.§_-OH§);
                                    if(!_loc8_)
                                    {
                                       §§push(§§pop() * 1000);
                                    }
                                    §§pop().§_-ER§(§§pop());
                                    §§goto(addr186);
                                 }
                              }
                              §§goto(addr171);
                           }
                           §§goto(addr151);
                        }
                        §§goto(addr186);
                     }
                  }
                  §§goto(addr100);
               }
               §§goto(addr99);
            }
            return;
         }
      }
      
      private function §_-fr§(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            §§push(param1);
            loop1:
            while(true)
            {
               §§push(0.0001);
               while(§§pop() > §§pop())
               {
                  _loc2_++;
                  if(_loc3_ || _loc2_)
                  {
                     §§push(param1);
                     if(_loc3_ || param1)
                     {
                        §§push(this.§_-OH§);
                        if(_loc3_)
                        {
                           §§push(§§pop() * 1000);
                           if(!_loc3_)
                           {
                              continue;
                           }
                        }
                        §§push(§§pop() - §§pop());
                        if(_loc4_ && _loc3_)
                        {
                           continue loop1;
                        }
                        §§push(Number(§§pop()));
                        if(_loc4_)
                        {
                           continue loop1;
                        }
                     }
                     param1 = §§pop();
                     if(!(_loc3_ || _loc3_))
                     {
                        break;
                     }
                  }
                  continue loop0;
               }
               return _loc2_;
            }
         }
      }
   }
}
