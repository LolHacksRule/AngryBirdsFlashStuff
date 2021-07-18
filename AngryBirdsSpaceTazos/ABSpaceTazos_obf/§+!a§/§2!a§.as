package §+!a§
{
   public class §2!a§
   {
       
      
      protected var §7!'§:String;
      
      protected var §^§:Number;
      
      protected var §=T§:Number;
      
      protected var §`O§:Boolean;
      
      protected var §04§:Number;
      
      protected var §6"!§:Number;
      
      protected var §4![§:Boolean;
      
      protected var §>v§:Boolean;
      
      protected var §9"6§:Vector.<§3!;§>;
      
      protected var §?!u§:Boolean;
      
      protected var §4"%§:String;
      
      public function §2!a§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean = false)
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         if(_loc12_)
         {
            super();
            while(true)
            {
               this.§7!'§ = param1;
               loop1:
               while(true)
               {
                  this.§^§ = param4;
                  while(true)
                  {
                     this.§4![§ = param7;
                     addr78:
                     while(_loc12_ || param3)
                     {
                        continue loop1;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§push(this);
            if(!(_loc11_ && param1))
            {
               §§push(param3);
               if(!_loc11_)
               {
                  if(§§pop() != 0)
                  {
                     addr141:
                     §§push(param3);
                     if(!(_loc11_ && param3))
                     {
                        addr149:
                        §§push(Number(§§pop()));
                        if(!_loc12_)
                        {
                        }
                        addr155:
                        §§pop().§=T§ = §§pop();
                        continue;
                     }
                  }
                  else
                  {
                     §§push(Number(1));
                  }
                  §§goto(addr155);
               }
               §§goto(addr149);
            }
            §§goto(addr141);
         }
      }
      
      public function get spriteName() : String
      {
         return this.§7!'§;
      }
      
      public function get color() : String
      {
         return this.§4"%§;
      }
      
      public function get speed() : Number
      {
         return this.§^§;
      }
      
      public function get scale() : Number
      {
         return this.§=T§;
      }
      
      public function get xOffset() : Number
      {
         return this.§04§;
      }
      
      public function get yOffset() : Number
      {
         return this.§6"!§;
      }
      
      public function get tileable() : Boolean
      {
         return this.§`O§;
      }
      
      public function get highQuality() : Boolean
      {
         return this.§>v§;
      }
      
      public function get foreground() : Boolean
      {
         return this.§4![§;
      }
      
      public function get optional() : Boolean
      {
         return this.§?!u§;
      }
      
      public function get §4i§() : int
      {
         return this.§9"6§.length;
      }
      
      public function §7!s§(param1:int) : §3!;§
      {
         return this.§9"6§[param1];
      }
      
      public function §>!]§(param1:XMLList) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:XML = null;
         var _loc3_:§3!;§ = null;
         loop0:
         for each(_loc2_ in param1)
         {
            _loc3_ = new §3!;§();
            if(!_loc6_)
            {
               _loc3_.id = _loc2_.@id.toString();
            }
            loop1:
            while(true)
            {
               §§push(_loc3_);
               if(_loc7_ || param1)
               {
                  §§push(Number(Number(_loc2_.@x)));
                  if(!(_loc6_ && _loc3_))
                  {
                     if(!§§pop())
                     {
                        if(!_loc6_)
                        {
                           addr260:
                           §§pop();
                           §§push(Number(0));
                        }
                     }
                     §§pop().x = §§pop();
                     while(true)
                     {
                        §§push(_loc3_);
                        if(!(_loc6_ && param1))
                        {
                           §§push(Number(Number(_loc2_.@y)));
                           if(!_loc6_)
                           {
                              if(!§§pop())
                              {
                                 if(_loc7_)
                                 {
                                    addr230:
                                    §§pop();
                                    §§push(Number(0));
                                 }
                              }
                              §§pop().y = §§pop();
                              while(true)
                              {
                                 §§push(_loc3_);
                                 if(_loc7_)
                                 {
                                    §§push(Number(Number(_loc2_.@rotation)));
                                    if(!(_loc6_ && param1))
                                    {
                                       if(!§§pop())
                                       {
                                          if(!_loc6_)
                                          {
                                             §§pop();
                                             addr204:
                                             §§push(Number(0));
                                          }
                                       }
                                    }
                                    §§pop().rotation = §§pop();
                                    loop4:
                                    while(!_loc6_)
                                    {
                                       §§push(_loc3_);
                                       if(_loc7_ || this)
                                       {
                                          §§push(Number(Number(_loc2_.@scale)));
                                          if(_loc7_)
                                          {
                                             if(!§§pop())
                                             {
                                                if(!_loc6_)
                                                {
                                                   addr178:
                                                   §§pop();
                                                   §§push(Number(1));
                                                }
                                             }
                                             §§pop().scale = §§pop();
                                             while(true)
                                             {
                                                §§push(_loc3_);
                                                if(_loc7_ || _loc2_)
                                                {
                                                   §§push(Number(Number(_loc2_.@alpha)));
                                                   if(!(_loc6_ && this))
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         if(_loc7_ || param1)
                                                         {
                                                            addr151:
                                                            §§pop();
                                                            §§push(Number(1));
                                                         }
                                                      }
                                                      §§pop().alpha = §§pop();
                                                      while(!_loc6_)
                                                      {
                                                         §§push(_loc3_);
                                                         if(_loc7_ || _loc3_)
                                                         {
                                                            §§push(Number(Number(_loc2_.@fastForwardsAfterAdd)));
                                                            if(_loc7_)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     §§pop();
                                                                     addr107:
                                                                     §§push(Number(0));
                                                                  }
                                                               }
                                                            }
                                                            §§pop().fastForwardsAfterAdd = §§pop();
                                                            loop7:
                                                            while(true)
                                                            {
                                                               addr67:
                                                               while(true)
                                                               {
                                                                  _loc3_.§=%§ = _loc2_.@behindGraphic.toString().toLowerCase() == "true";
                                                                  addr76:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        continue loop1;
                                                                     }
                                                                     continue loop7;
                                                                  }
                                                                  continue loop1;
                                                               }
                                                               continue loop0;
                                                            }
                                                         }
                                                         §§goto(addr107);
                                                      }
                                                      continue loop4;
                                                      addr155:
                                                   }
                                                }
                                                §§goto(addr151);
                                             }
                                             addr182:
                                          }
                                       }
                                       §§goto(addr178);
                                    }
                                    continue;
                                 }
                                 §§goto(addr204);
                              }
                           }
                        }
                        §§goto(addr230);
                        addr58:
                        if(_loc6_ && param1)
                        {
                           continue;
                        }
                        if(true)
                        {
                           continue loop0;
                        }
                        §§goto(addr67);
                     }
                  }
               }
               §§goto(addr260);
            }
         }
      }
   }
}
