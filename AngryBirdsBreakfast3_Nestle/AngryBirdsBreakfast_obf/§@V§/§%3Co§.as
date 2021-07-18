package §@V§
{
   import §#!I§.§0k§;
   import §0!m§.§@!S§;
   import §0"!§.b2DebugDraw;
   import §0"!§.b2World;
   import §@!E§.b2Vec2;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §<o§
   {
      
      public static const §2e§:Number = 33.333333333333336;
      
      public static const §1!R§:int = 10;
      
      public static const §^H§:Boolean = false;
      
      public static const §1f§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §2e§ = 1000 / 30;
            while(true)
            {
               §1!R§ = 10;
               while(!(_loc1_ && §<o§))
               {
                  §^H§ = false;
                  loop2:
                  while(!_loc1_)
                  {
                     while(true)
                     {
                        §1f§ = true;
                        if(!(_loc1_ && §<o§))
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
         §§goto(addr52);
      }
      
      public var §^d§:b2World;
      
      private var §!!h§:Boolean = true;
      
      public var §!f§:§2!_§;
      
      public var §#F§:Sprite;
      
      private var §?!Y§:b2DebugDraw;
      
      public var §!`§:§#=§;
      
      public var §+!9§:Number;
      
      private var §3!_§:Number;
      
      private var §1§:int;
      
      private var §9u§:Boolean = false;
      
      public function §<o§(param1:§#=§, param2:Number = 20)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super();
            do
            {
               this.§!`§ = param1;
               do
               {
                  this.§<""§(param2);
                  do
                  {
                     this.§+!s§ = §^H§;
                  }
                  while(!(_loc4_ || _loc3_));
                  
               }
               while(!(_loc4_ || this));
               
            }
            while(_loc3_);
            
         }
      }
      
      public function get §-!G§() : int
      {
         return this.§1§;
      }
      
      public function get §%!w§() : Number
      {
         return this.§3!_§;
      }
      
      public function set §+!s§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(!param1)
            {
               if(this.§#F§)
               {
                  loop30:
                  while(true)
                  {
                     §§push(this.§!`§);
                     if(!_loc3_)
                     {
                        §§pop().stage.removeChild(this.§#F§);
                        loop16:
                        while(true)
                        {
                           if(_loc2_ || param1)
                           {
                              this.§#F§ = null;
                              while(!(_loc2_ || param1))
                              {
                                 loop7:
                                 while(true)
                                 {
                                    if(_loc2_)
                                    {
                                       loop8:
                                       while(true)
                                       {
                                          §§push(this.§?!Y§);
                                          addr166:
                                          while(true)
                                          {
                                             if(_loc2_)
                                             {
                                                if(_loc2_ || _loc2_)
                                                {
                                                   §§pop().§ "5§(this.§#F§);
                                                   while(_loc3_)
                                                   {
                                                      while(true)
                                                      {
                                                         if(_loc2_ || this)
                                                         {
                                                            §§push(this.§!`§);
                                                            while(true)
                                                            {
                                                               §§pop().stage.addChild(this.§#F§);
                                                               continue loop7;
                                                            }
                                                            addr184:
                                                         }
                                                         else
                                                         {
                                                            loop11:
                                                            while(true)
                                                            {
                                                               §§push(this.§?!Y§);
                                                               addr255:
                                                               while(true)
                                                               {
                                                                  §§push(b2DebugDraw.§&!C§);
                                                                  loop26:
                                                                  while(_loc2_)
                                                                  {
                                                                     addr259:
                                                                     §§pop().§>K§(§§pop());
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§?!Y§);
                                                                        addr246:
                                                                        while(true)
                                                                        {
                                                                           §§push(b2DebugDraw.§7!8§);
                                                                           if(!_loc2_)
                                                                           {
                                                                              continue loop26;
                                                                           }
                                                                           addr250:
                                                                           §§pop().§>K§(§§pop());
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§?!Y§);
                                                                              while(true)
                                                                              {
                                                                                 §§pop().§;!_§(0.7);
                                                                                 addr240:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       §§push(this.§?!Y§);
                                                                                       while(_loc2_)
                                                                                       {
                                                                                          §§pop().§0!s§(1);
                                                                                          continue loop8;
                                                                                       }
                                                                                       continue;
                                                                                       addr230:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr284:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§?!Y§);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr250);
                                                                           }
                                                                        }
                                                                        §§goto(addr259);
                                                                     }
                                                                  }
                                                                  continue loop11;
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§push(this.§^d§);
                                                   while(true)
                                                   {
                                                      §§pop().§]X§(this.§?!Y§);
                                                      while(true)
                                                      {
                                                         §§goto(addr23);
                                                      }
                                                      §§goto(addr180);
                                                   }
                                                   addr178:
                                                   addr180:
                                                   addr159:
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr276);
                                                }
                                             }
                                             §§goto(addr230);
                                          }
                                       }
                                    }
                                    §§goto(addr251);
                                 }
                              }
                              addr123:
                              while(true)
                              {
                                 §§push(this.§?!Y§);
                                 if(_loc2_ || _loc3_)
                                 {
                                    if(!_loc3_)
                                    {
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc2_)
                                             {
                                                if(_loc2_)
                                                {
                                                   if(_loc3_ && param1)
                                                   {
                                                      continue loop16;
                                                   }
                                                   if(_loc2_ || _loc2_)
                                                   {
                                                      §§push(this.§^d§);
                                                      if(_loc2_)
                                                      {
                                                         §§pop().§]X§(null);
                                                         §§goto(addr102);
                                                      }
                                                      §§goto(addr159);
                                                   }
                                                   §§goto(addr208);
                                                }
                                                else
                                                {
                                                   §§goto(addr116);
                                                }
                                             }
                                             §§goto(addr102);
                                          }
                                          addr23:
                                          loop23:
                                          while(true)
                                          {
                                             this.§9u§ = param1;
                                             if(_loc2_)
                                             {
                                                if(!_loc3_)
                                                {
                                                   if(!(_loc3_ && this))
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr178);
                                                }
                                                else
                                                {
                                                   addr102:
                                                   while(true)
                                                   {
                                                      if(_loc3_ && this)
                                                      {
                                                         continue loop2;
                                                      }
                                                      if(!_loc3_)
                                                      {
                                                         this.§?!Y§ = null;
                                                         while(true)
                                                         {
                                                            if(_loc3_ && param1)
                                                            {
                                                               continue loop30;
                                                            }
                                                            if(_loc2_ || this)
                                                            {
                                                               continue loop23;
                                                            }
                                                            addr280:
                                                            while(true)
                                                            {
                                                               this.§?!Y§ = new b2DebugDraw();
                                                               §§goto(addr284);
                                                            }
                                                         }
                                                         addr43:
                                                      }
                                                   }
                                                   addr102:
                                                }
                                                §§goto(addr260);
                                             }
                                             §§goto(addr43);
                                          }
                                          return;
                                       }
                                       §§goto(addr255);
                                    }
                                    §§goto(addr246);
                                 }
                                 §§goto(addr166);
                                 §§goto(addr123);
                              }
                              addr116:
                              addr58:
                           }
                           §§goto(addr219);
                        }
                     }
                     §§goto(addr184);
                  }
                  addr130:
               }
               §§goto(addr58);
            }
            §§goto(addr280);
         }
         §§goto(addr130);
      }
      
      private function §<""§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§!f§ = new §2!_§(this);
         }
         while(true)
         {
            this.§^d§ = new b2World(new b2Vec2(0,param1),this.§!!h§);
            while(!_loc2_)
            {
               this.§^d§.§!k§(this.§!f§);
               if(_loc3_ || _loc3_)
               {
                  return;
               }
            }
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§^d§);
            loop0:
            while(true)
            {
               §§pop().§!k§(null);
               while(true)
               {
                  this.§!f§ = null;
                  loop2:
                  for(; !_loc1_; if(!(_loc1_ && _loc2_))
                  {
                     continue loop0;
                  })
                  {
                     if(!this.§#F§)
                     {
                        continue loop0;
                     }
                     if(!(_loc1_ && _loc1_))
                     {
                        while(true)
                        {
                           this.§!`§.stage.removeChild(this.§#F§);
                        }
                        addr103:
                     }
                     while(true)
                     {
                        this.§#F§.graphics.clear();
                        while(true)
                        {
                           this.§#F§ = null;
                           addr71:
                           while(!(_loc1_ && this))
                           {
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr103);
      }
      
      public function §5t§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            if(this.§9u§)
            {
               if(!(_loc1_ && this))
               {
                  addr79:
                  this.§^d§.§@U§();
               }
               do
               {
                  this.§#F§.parent.setChildIndex(this.§#F§,this.§#F§.parent.numChildren - 1);
               }
               while(_loc1_ && this);
               
            }
            return;
         }
         §§goto(addr79);
      }
      
      public function §4!J§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Point = null;
         if(_loc5_ || _loc3_)
         {
            if(this.§9u§)
            {
               addr30:
               _loc3_ = §@!S§.§2A§.§3!q§(0,0);
               if(_loc5_ || param1)
               {
                  this.§#F§.x = _loc3_.x;
                  loop0:
                  while(true)
                  {
                     addr77:
                     while(true)
                     {
                        this.§#F§.y = _loc3_.y;
                        continue loop0;
                     }
                  }
               }
               while(false)
               {
                  §§goto(addr77);
               }
            }
            return;
         }
         §§goto(addr30);
      }
      
      public function §'T§(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            this.§3!_§ = §2e§;
         }
         §§push(this.§#>§(param1));
         if(!(_loc4_ && _loc2_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            §§push(_loc2_);
            if(_loc3_ || _loc3_)
            {
               if(§§pop() > §1!R§)
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     addr120:
                     §§push(§1!R§);
                     if(_loc3_ || _loc3_)
                     {
                        addr139:
                        _loc2_ = int(§§pop());
                     }
                     §§goto(addr139);
                  }
                  while(true)
                  {
                     §§goto(addr91);
                  }
               }
               addr91:
               while(true)
               {
                  this.§`!@§(_loc2_);
                  if(!(_loc4_ && _loc3_))
                  {
                     break;
                  }
                  continue loop0;
               }
               while(true)
               {
                  §§push(param1);
                  if(_loc3_ || this)
                  {
                     if(!_loc4_)
                     {
                        §§push(0);
                        if(_loc3_)
                        {
                           if(§§pop() <= §§pop())
                           {
                              if(_loc3_)
                              {
                                 §§push(param1);
                                 break;
                              }
                              continue;
                           }
                           §§push(param1);
                           if(_loc3_)
                           {
                              addr80:
                              §§push(§§pop() - this.§3!_§);
                              if(_loc4_ && param1)
                              {
                              }
                              addr89:
                              param1 = §§pop();
                              continue;
                           }
                           §§goto(addr89);
                           §§push(Number(§§pop()));
                        }
                     }
                     §§goto(addr80);
                  }
                  break;
               }
               return §§pop();
            }
            §§goto(addr139);
         }
         §§goto(addr120);
      }
      
      public function §`!@§(param1:int) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:* = NaN;
         if(_loc9_)
         {
            this.§+!9§ = 0;
         }
         var _loc2_:int = 10;
         var _loc3_:int = 10;
         §§push(0);
         if(_loc9_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc5_);
            if(_loc9_)
            {
               if(§§pop() >= param1)
               {
                  if(!_loc10_)
                  {
                     §§push(§1f§);
                     if(!(_loc10_ && _loc3_))
                     {
                        if(§§pop())
                        {
                           if(_loc9_ || param1)
                           {
                              addr82:
                              if(!(_loc10_ && this))
                              {
                                 if(!(_loc10_ && _loc3_))
                                 {
                                    if(!_loc10_)
                                    {
                                       if(_loc9_)
                                       {
                                          §@!S§.§["4§.§0p§("Box2D",_loc4_);
                                          addr105:
                                          if(!(_loc9_ || this))
                                          {
                                             continue;
                                          }
                                          if(!_loc10_)
                                          {
                                             break;
                                          }
                                          loop1:
                                          while(true)
                                          {
                                             §§push(this.§^d§);
                                             if(!(_loc10_ && this))
                                             {
                                                §§pop().§3W§();
                                                loop2:
                                                while(_loc9_)
                                                {
                                                   §§push(this);
                                                   §§push(this.§+!9§);
                                                   if(_loc9_ || _loc2_)
                                                   {
                                                      §§push(§§pop() + this.§3!_§);
                                                   }
                                                   §§pop().§+!9§ = §§pop();
                                                   while(true)
                                                   {
                                                      if(!(_loc10_ && _loc3_))
                                                      {
                                                         §§push(§1f§);
                                                         loop3:
                                                         while(true)
                                                         {
                                                            if(_loc9_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(!_loc10_)
                                                                  {
                                                                     §§push(_loc4_);
                                                                     if(!_loc10_)
                                                                     {
                                                                        §§push(§§pop() + (getTimer() - _loc6_));
                                                                        if(!_loc10_)
                                                                        {
                                                                           addr152:
                                                                           if(_loc9_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 _loc6_ = §§pop();
                                                                                 break loop2;
                                                                              }
                                                                              addr248:
                                                                           }
                                                                        }
                                                                        if(!(_loc10_ && _loc3_))
                                                                        {
                                                                           _loc4_ = §§pop();
                                                                           addr163:
                                                                           while(true)
                                                                           {
                                                                              if(_loc9_)
                                                                              {
                                                                                 break loop3;
                                                                              }
                                                                              addr241:
                                                                              while(true)
                                                                              {
                                                                                 §§push(Number(getTimer()));
                                                                              }
                                                                           }
                                                                           addr163:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           _loc6_ = §§pop();
                                                                           addr245:
                                                                           while(true)
                                                                           {
                                                                              addr203:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§^d§);
                                                                                 addr206:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§3!_§);
                                                                                    if(_loc9_ || _loc2_)
                                                                                    {
                                                                                       §§push(1000);
                                                                                       if(!(_loc9_ || this))
                                                                                       {
                                                                                          continue loop1;
                                                                                       }
                                                                                       §§push(§§pop() / §§pop());
                                                                                    }
                                                                                    continue loop1;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr152);
                                                                  }
                                                                  §§goto(addr163);
                                                               }
                                                               break;
                                                            }
                                                            addr230:
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  §§goto(addr241);
                                                               }
                                                               §§goto(addr203);
                                                            }
                                                         }
                                                         this.§!`§.§2!5§(this.§3!_§);
                                                         _loc5_++;
                                                         continue loop0;
                                                         addr134:
                                                         addr137:
                                                      }
                                                      continue loop2;
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr230);
                                                }
                                                addr249:
                                             }
                                             §§goto(addr206);
                                          }
                                       }
                                       §§goto(addr245);
                                    }
                                    §§goto(addr181);
                                 }
                                 §§goto(addr163);
                              }
                              §§goto(addr134);
                           }
                           §§goto(addr105);
                        }
                        break;
                     }
                     §§goto(addr137);
                  }
                  §§goto(addr82);
               }
               else
               {
                  var _loc7_:*;
                  §§push((_loc7_ = this).§1§);
                  if(!_loc10_)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc8_:* = §§pop();
                  if(!_loc10_)
                  {
                     _loc7_.§1§ = _loc8_;
                  }
                  if(!_loc10_)
                  {
                     addr247:
                     §§goto(addr248);
                     §§push(Number(0));
                  }
               }
               §§goto(addr249);
            }
            §§goto(addr247);
         }
      }
      
      private function §#>§(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(param1);
            if(!(_loc4_ && this))
            {
               if(_loc3_)
               {
                  §§push(0);
                  if(!_loc4_)
                  {
                     if(§§pop() <= §§pop())
                     {
                        if(_loc4_ && this)
                        {
                           continue;
                        }
                        if(_loc3_)
                        {
                           break;
                        }
                     }
                     else
                     {
                        _loc2_++;
                     }
                     addr59:
                     §§push(param1);
                     §§push(this.§3!_§);
                  }
                  §§push(§§pop() - §§pop());
                  if(_loc3_ || _loc2_)
                  {
                     addr80:
                     param1 = §§pop();
                     continue;
                  }
                  §§goto(addr80);
               }
               §§goto(addr59);
            }
            §§goto(addr80);
         }
         return _loc2_;
      }
   }
}
