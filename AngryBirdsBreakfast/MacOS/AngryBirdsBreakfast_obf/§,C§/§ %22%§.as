package §,C§
{
   public class § "%§
   {
       
      
      protected var §^!^§:String;
      
      protected var §>3§:Number;
      
      protected var §6!r§:Number;
      
      protected var §?H§:Boolean;
      
      protected var §"0§:Number;
      
      protected var §'`§:Number;
      
      protected var §var §:Boolean;
      
      protected var §?Y§:Boolean;
      
      protected var §1!-§:Vector.<§<U§>;
      
      protected var §#!+§:Boolean;
      
      protected var §@=§:String;
      
      public function § "%§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean = false)
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         if(!_loc11_)
         {
            super();
            loop0:
            while(true)
            {
               this.§^!^§ = param1;
               loop1:
               while(true)
               {
                  this.§>3§ = param4;
                  while(true)
                  {
                     this.§var § = param7;
                     loop3:
                     while(true)
                     {
                        §§push(this);
                        if(_loc12_ || param1)
                        {
                           §§push(param3);
                           if(!_loc11_)
                           {
                              if(§§pop() != 0)
                              {
                                 addr143:
                                 §§push(param3);
                                 if(_loc12_ || param3)
                                 {
                                    addr151:
                                    §§push(Number(§§pop()));
                                    if(!_loc12_)
                                    {
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(Number(1));
                              }
                              §§pop().§6!r§ = §§pop();
                              while(true)
                              {
                                 this.§?H§ = param8;
                                 continue loop3;
                                 loop9:
                                 while(_loc12_ || param3)
                                 {
                                    continue loop1;
                                    addr40:
                                    if(_loc11_ && this)
                                    {
                                       continue;
                                    }
                                    addr47:
                                    if(_loc12_ || param1)
                                    {
                                       addr102:
                                       if(!_loc11_)
                                       {
                                          this.§1!-§ = new Vector.<§<U§>();
                                          addr56:
                                          if(_loc11_)
                                          {
                                             loop11:
                                             while(true)
                                             {
                                                if(!_loc11_)
                                                {
                                                   §§goto(addr40);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      this.§?Y§ = param10;
                                                      continue loop11;
                                                   }
                                                   addr61:
                                                }
                                             }
                                             while(true)
                                             {
                                                if(!_loc11_)
                                                {
                                                   this.§#!+§ = param9;
                                                   continue loop9;
                                                }
                                                continue loop0;
                                                §§goto(addr47);
                                             }
                                             addr95:
                                          }
                                          return;
                                       }
                                       while(!(_loc11_ && param2))
                                       {
                                          while(true)
                                          {
                                             this.§'`§ = param6;
                                          }
                                       }
                                       continue loop3;
                                       addr102:
                                    }
                                    §§goto(addr95);
                                 }
                              }
                           }
                           §§goto(addr151);
                        }
                        §§goto(addr143);
                     }
                     if(_loc11_ && param2)
                     {
                        continue;
                     }
                     this.§"0§ = param5;
                     §§goto(addr102);
                  }
               }
            }
         }
         §§goto(addr109);
      }
      
      public function get §3x§() : String
      {
         return this.§^!^§;
      }
      
      public function get color() : String
      {
         return this.§@=§;
      }
      
      public function get speed() : Number
      {
         return this.§>3§;
      }
      
      public function get scale() : Number
      {
         return this.§6!r§;
      }
      
      public function get xOffset() : Number
      {
         return this.§"0§;
      }
      
      public function get yOffset() : Number
      {
         return this.§'`§;
      }
      
      public function get tileable() : Boolean
      {
         return this.§?H§;
      }
      
      public function get highQuality() : Boolean
      {
         return this.§?Y§;
      }
      
      public function get foreground() : Boolean
      {
         return this.§var §;
      }
      
      public function get optional() : Boolean
      {
         return this.§#!+§;
      }
      
      public function get §93§() : int
      {
         return this.§1!-§.length;
      }
      
      public function §5p§(param1:int) : §<U§
      {
         return this.§1!-§[param1];
      }
      
      public function §<q§(param1:XMLList) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:XML = null;
         var _loc3_:§<U§ = null;
         loop0:
         for each(_loc2_ in param1)
         {
            _loc3_ = new §<U§();
            if(_loc7_ || this)
            {
               _loc3_.id = _loc2_.@id.toString();
               loop1:
               while(true)
               {
                  §§push(_loc3_);
                  if(_loc7_ || param1)
                  {
                     §§push(Number(Number(_loc2_.@x)));
                     if(_loc7_)
                     {
                        if(!§§pop())
                        {
                           if(!(_loc6_ && _loc3_))
                           {
                              addr270:
                              §§pop();
                              §§push(Number(0));
                           }
                        }
                        §§pop().x = §§pop();
                        while(true)
                        {
                           §§push(_loc3_);
                           if(_loc7_ || param1)
                           {
                              §§push(Number(Number(_loc2_.@y)));
                              if(!_loc6_)
                              {
                                 if(!§§pop())
                                 {
                                    if(_loc7_)
                                    {
                                       addr240:
                                       §§pop();
                                       §§push(Number(0));
                                    }
                                 }
                                 §§pop().y = §§pop();
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    if(!_loc6_)
                                    {
                                       §§push(Number(Number(_loc2_.@rotation)));
                                       if(!(_loc6_ && _loc2_))
                                       {
                                          if(!§§pop())
                                          {
                                             if(!_loc6_)
                                             {
                                                addr208:
                                                §§pop();
                                                §§push(Number(0));
                                             }
                                          }
                                          §§pop().rotation = §§pop();
                                          continue loop1;
                                       }
                                    }
                                    §§goto(addr208);
                                 }
                                 addr244:
                              }
                           }
                           §§goto(addr240);
                           addr113:
                           if(!(_loc7_ || _loc2_))
                           {
                              continue;
                           }
                           while(true)
                           {
                              loop9:
                              do
                              {
                                 _loc3_.§^#§ = _loc2_.@behindGraphic.toString().toLowerCase() == "true";
                                 addr72:
                                 loop10:
                                 while(_loc7_ || this)
                                 {
                                    if(_loc6_ && param1)
                                    {
                                       continue loop1;
                                    }
                                    this.§1!-§.push(_loc3_);
                                    if(!_loc7_)
                                    {
                                       continue;
                                    }
                                    addr54:
                                    if(!(_loc6_ && this))
                                    {
                                       continue loop9;
                                    }
                                    addr185:
                                    addr111:
                                    while(!_loc6_)
                                    {
                                       §§goto(addr113);
                                       §§goto(addr54);
                                    }
                                    while(_loc7_)
                                    {
                                       §§push(_loc3_);
                                       if(!_loc6_)
                                       {
                                          §§push(Number(Number(_loc2_.@alpha)));
                                          if(_loc7_)
                                          {
                                             if(!§§pop())
                                             {
                                                if(_loc7_ || _loc3_)
                                                {
                                                   §§pop();
                                                   addr152:
                                                   §§push(Number(1));
                                                }
                                             }
                                          }
                                          §§pop().alpha = §§pop();
                                          break loop10;
                                       }
                                       §§goto(addr152);
                                    }
                                    §§goto(addr244);
                                 }
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    if(_loc7_ || this)
                                    {
                                       §§push(Number(Number(_loc2_.@fastForwardsAfterAdd)));
                                       if(!_loc6_)
                                       {
                                          if(!§§pop())
                                          {
                                             if(!_loc6_)
                                             {
                                                addr107:
                                                §§pop();
                                                §§push(Number(0));
                                             }
                                          }
                                          §§pop().fastForwardsAfterAdd = §§pop();
                                          §§goto(addr111);
                                       }
                                    }
                                    §§goto(addr107);
                                    §§goto(addr72);
                                 }
                              }
                              while(false);
                              
                              continue loop0;
                           }
                        }
                     }
                  }
                  §§goto(addr270);
               }
            }
            §§goto(addr120);
         }
      }
   }
}
