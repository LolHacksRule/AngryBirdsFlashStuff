package §`!r§
{
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §2"Y§.§1#K§;
   import §7!F§.§>"G§;
   import §7P§.§;$§;
   
   public class §7!w§ extends §!!H§
   {
       
      
      protected var §<X§:§1#K§;
      
      protected var §`#[§:Vector.<§!!$§>;
      
      public function §7!w§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§"t§, param5:Number, param6:Number, param7:Number = 0.0, param8:Number = 0.0, param9:Number = 0.0, param10:Number = 1.0)
      {
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = true;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:int = 0;
         var _loc18_:§!!$§ = null;
         if(!_loc19_)
         {
            super(param1,param3,param4);
         }
         while(true)
         {
            while(true)
            {
               this.§<X§ = param4 as §1#K§;
               do
               {
                  this.§`#[§ = new Vector.<§!!$§>();
               }
               while(_loc19_);
               
               if(!(_loc20_ || this))
               {
                  break;
               }
               if(false)
               {
                  continue;
               }
               §§push(0);
               if(!(_loc19_ && param1))
               {
                  §§push(Number(§§pop()));
               }
               var _loc11_:* = §§pop();
               §§push(0);
               if(!(_loc19_ && param3))
               {
                  §§push(Number(§§pop()));
               }
               var _loc12_:* = §§pop();
               var _loc13_:int = this.§<X§.amount;
               if(!(_loc19_ && param1))
               {
                  §§push(param8);
                  while(true)
                  {
                     §§push(0);
                     while(true)
                     {
                        §§push(§§pop() > §§pop());
                        if(!(_loc19_ && this))
                        {
                           §§push(§§pop());
                           loop5:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 addr593:
                                 while(true)
                                 {
                                    §§pop();
                                    addr594:
                                    while(true)
                                    {
                                       §§push(param9);
                                       addr565:
                                       while(true)
                                       {
                                          §§push(0);
                                          addr566:
                                          while(true)
                                          {
                                             §§push(§§pop() > §§pop());
                                          }
                                       }
                                    }
                                 }
                                 addr593:
                              }
                              while(true)
                              {
                                 continue loop5;
                              }
                           }
                        }
                        §§goto(addr593);
                     }
                  }
               }
               §§goto(addr209);
            }
         }
      }
      
      override public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = 0;
         if(_loc3_)
         {
            if(this.§`#[§)
            {
               if(!(_loc2_ && _loc2_))
               {
                  addr119:
                  _loc1_ = int(this.§`#[§.length - 1);
               }
               loop0:
               while(true)
               {
                  §§push(_loc1_);
                  if(_loc3_ || this)
                  {
                     if(§§pop() < 0)
                     {
                        while(true)
                        {
                           this.§`#[§ = null;
                           while(true)
                           {
                              §§goto(addr26);
                           }
                        }
                     }
                     else
                     {
                        this.§`#[§[_loc1_].dispose();
                     }
                     while(true)
                     {
                        §§push(_loc1_);
                        if(_loc3_ || this)
                        {
                           §§push(§§pop() - 1);
                        }
                     }
                  }
                  while(true)
                  {
                     _loc1_ = §§pop();
                     continue loop0;
                  }
               }
            }
            addr26:
            while(true)
            {
               super.dispose();
               if(_loc3_ || _loc1_)
               {
                  continue loop1;
               }
               continue loop2;
            }
            addr52:
            return;
         }
         §§goto(addr119);
      }
      
      override public function update(param1:Number, param2:§;$§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super.update(param1,param2);
         }
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= this.§`#[§.length)
            {
               if(!(_loc5_ && _loc3_))
               {
                  break;
               }
            }
            else
            {
               this.§`#[§[_loc3_].update(param1);
               while(true)
               {
                  _loc3_++;
               }
               addr74:
            }
            while(!_loc4_)
            {
               §§goto(addr74);
            }
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§`#[§.length > 0);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop4:
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc1_ || _loc2_)
                        {
                           if(!(_loc2_ && this))
                           {
                              while(true)
                              {
                                 §§push(false);
                                 addr79:
                                 while(true)
                                 {
                                    if(!(_loc2_ && this))
                                    {
                                       break loop4;
                                    }
                                    addr105:
                                    while(true)
                                    {
                                       §§pop();
                                    }
                                 }
                              }
                              addr78:
                           }
                           while(true)
                           {
                              §§push(Boolean(this.§`#[§[0].isAlive));
                              continue loop0;
                           }
                        }
                        else
                        {
                           addr24:
                           §§push(true);
                           if(!(_loc2_ && this))
                           {
                              if(_loc1_)
                              {
                                 return §§pop();
                              }
                              continue loop0;
                           }
                        }
                        §§goto(addr79);
                     }
                     §§goto(addr24);
                  }
                  return §§pop();
                  addr62:
               }
               §§goto(addr105);
            }
         }
         §§goto(addr78);
      }
   }
}
