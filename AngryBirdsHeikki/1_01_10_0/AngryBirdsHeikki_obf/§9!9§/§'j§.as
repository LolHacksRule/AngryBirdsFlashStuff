package §9!9§
{
   import §"^§.§+!'§;
   import §+"§.§#!=§;
   import §+"§.§'! §;
   import §+"§.§>w§;
   import §2Y§.§7?§;
   import §2Y§.DisplayObject;
   import §2Y§.Sprite;
   import §9!4§.§95§;
   import §=!<§.§>a§;
   import §@R§.§4,§;
   import §^!0§.§&M§;
   import §^!0§.§4E§;
   import §^!5§.§&!E§;
   
   public class §'j§
   {
      
      public static const §=!!§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §=!!§ = true;
         }
      }
      
      private var §;u§:§>a§;
      
      protected var §-O§:§>w§;
      
      protected var §2e§:Vector.<§;!R§>;
      
      private var §8g§:Sprite;
      
      private var §6B§:Sprite;
      
      private var §if§:Sprite;
      
      private var §^+§:Number;
      
      private var §7e§:Number;
      
      private var §7V§:Number;
      
      private var §]!R§:Boolean = true;
      
      private var §`G§:Boolean = true;
      
      private var §&'§:§4E§;
      
      private var §-C§:Number;
      
      public function §'j§(param1:String, param2:Number, param3:§>a§, param4:Number)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            this.§2e§ = new Vector.<§;!R§>();
            loop0:
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.§;u§ = param3;
                  while(true)
                  {
                     this.§7e§ = 0;
                     loop4:
                     while(!(_loc6_ && this))
                     {
                        if(!_loc5_)
                        {
                           continue loop1;
                        }
                        if(!_loc5_)
                        {
                           continue loop0;
                        }
                        this.§^+§ = param2;
                        loop5:
                        while(true)
                        {
                           this.§8g§ = new Sprite();
                           addr78:
                           addr111:
                           loop6:
                           while(_loc5_ || param3)
                           {
                              this.§6B§ = new Sprite();
                              loop7:
                              while(true)
                              {
                                 this.§if§ = new Sprite();
                                 while(!_loc6_)
                                 {
                                    this.§-C§ = param4;
                                    while(true)
                                    {
                                       if(!_loc6_)
                                       {
                                          if(_loc5_)
                                          {
                                             if(!_loc5_)
                                             {
                                                break;
                                             }
                                             continue;
                                          }
                                          continue loop5;
                                       }
                                       continue loop7;
                                    }
                                    continue loop4;
                                    if(!(_loc6_ && param1))
                                    {
                                       return;
                                    }
                                 }
                                 continue loop6;
                              }
                           }
                           while(true)
                           {
                              this.§7V§ = 0;
                              continue loop4;
                              §§goto(addr78);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr111);
      }
      
      public function get §"!&§() : Boolean
      {
         return this.§]!R§;
      }
      
      public function get §1!`§() : Sprite
      {
         return this.§if§;
      }
      
      public function get §7E§() : Sprite
      {
         return this.§8g§;
      }
      
      public function get §5N§() : Sprite
      {
         return this.§6B§;
      }
      
      protected function get textureManager() : §>a§
      {
         return this.§;u§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§#!R§();
            loop0:
            while(true)
            {
               §§push(this.§8g§);
               if(!(_loc2_ && _loc1_))
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(this.§8g§);
                        addr124:
                        while(true)
                        {
                           §§pop().dispose();
                           addr125:
                           while(true)
                           {
                              this.§8g§ = null;
                              addr100:
                              while(true)
                              {
                              }
                           }
                        }
                        addr85:
                        if(!(_loc1_ || this))
                        {
                           continue;
                        }
                        §§push(this.§6B§);
                        while(true)
                        {
                           §§pop().dispose();
                           loop9:
                           while(true)
                           {
                              this.§6B§ = null;
                              loop10:
                              while(true)
                              {
                                 if(_loc1_)
                                 {
                                    while(true)
                                    {
                                       §§push(this.§if§);
                                       if(!(_loc2_ && _loc1_))
                                       {
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                if(!_loc1_)
                                                {
                                                   continue loop9;
                                                }
                                                §§push(this.§if§);
                                                while(true)
                                                {
                                                   §§pop().dispose();
                                                   while(true)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         continue;
                                                      }
                                                      continue loop10;
                                                   }
                                                   continue loop10;
                                                }
                                             }
                                             continue loop9;
                                          }
                                          §§goto(addr19);
                                       }
                                       §§goto(addr66);
                                       continue loop10;
                                    }
                                    addr41:
                                 }
                                 continue loop0;
                              }
                           }
                        }
                        addr94:
                     }
                  }
                  while(true)
                  {
                     §§push(this.§6B§);
                     if(!_loc2_)
                     {
                        if(§§pop())
                        {
                           §§goto(addr83);
                        }
                        §§goto(addr41);
                     }
                     §§goto(addr94);
                     §§goto(addr100);
                  }
               }
               §§goto(addr124);
            }
         }
         §§goto(addr125);
      }
      
      public function §<!?§() : Boolean
      {
         return this.§`G§;
      }
      
      public function §%2§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§`G§);
            loop0:
            for(; §§pop() != param1; while(true)
            {
               §§push(param1);
               if(_loc2_)
               {
                  if(!§§pop())
                  {
                     if(!_loc3_)
                     {
                        if(_loc2_ || _loc3_)
                        {
                           this.§#!R§();
                           break;
                        }
                        break loop0;
                     }
                     break;
                  }
                  this.§?G§(this.§-O§.mName,this.§-C§);
                  if(_loc3_ && _loc3_)
                  {
                     break;
                  }
                  continue;
               }
               continue loop0;
            },return)
            {
               while(true)
               {
                  this.§`G§ = param1;
                  continue loop0;
               }
            }
            return;
         }
         §§goto(addr24);
      }
      
      public function §-!+§() : String
      {
         return this.§-O§.§]!O§;
      }
      
      private function §#!R§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         while(true)
         {
            §§push(this.§6B§);
            if(_loc1_ || _loc2_)
            {
               if(§§pop().numChildren <= 0)
               {
                  loop1:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(this.§8g§);
                        if(!(_loc2_ && _loc1_))
                        {
                           if(§§pop().numChildren <= 0)
                           {
                              while(true)
                              {
                                 if(_loc1_)
                                 {
                                    continue loop1;
                                 }
                                 addr30:
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    return;
                                 }
                              }
                              continue loop1;
                           }
                           addr103:
                           this.§8g§.removeChildAt(0,true);
                           continue;
                        }
                        §§goto(addr103);
                     }
                  }
               }
               else
               {
                  §§push(this.§6B§);
               }
            }
            §§pop().removeChildAt(0,true);
         }
      }
      
      protected function §77§(param1:§>w§, param2:String) : void
      {
      }
      
      private function §?G§(param1:String, param2:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:§#!=§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§;!R§ = null;
         if(_loc7_ || param2)
         {
            this.§-O§ = §'! §.§#n§(param1);
            while(true)
            {
               if(this.§-O§ == null)
               {
                  loop1:
                  while(true)
                  {
                     §4,§.log("UNKNOWN LEVEL THEME! " + param1);
                     addr129:
                     while(true)
                     {
                        §§push(§&!E§.§5!$§);
                        if(!_loc8_)
                        {
                           §§push(§§pop());
                        }
                        param1 = §§pop();
                        continue loop1;
                     }
                  }
               }
               while(true)
               {
                  this.§77§(this.§-O§,param1);
                  §§goto(addr94);
               }
               while(!(_loc8_ && this))
               {
                  this.§6B§.y = this.§^+§;
                  §§goto(addr71);
               }
            }
         }
         §§goto(addr64);
      }
      
      protected function §=!J§(param1:§#!=§, param2:Sprite, param3:§>a§, param4:Number) : §;!R§
      {
         return new §;!R§(param1,param2,param3,param4);
      }
      
      private function §>!A§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§7?§ = null;
         if(!(_loc3_ && this))
         {
            §§push(this.§-O§);
            if(_loc2_)
            {
               §§push(§§pop().§!!+§);
               if(_loc2_ || _loc1_)
               {
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        addr41:
                        this.§+!1§(this.§-O§.§!!+§);
                        if(!_loc3_)
                        {
                           §§goto(addr48);
                        }
                     }
                     §§goto(addr62);
                  }
               }
               §§goto(addr48);
            }
            addr48:
            if(this.§-O§.§"`§)
            {
               addr62:
               §§push(this);
               if(!(_loc3_ && _loc2_))
               {
                  §§push(uint(0));
                  if(_loc2_)
                  {
                     if(!§§pop())
                     {
                        if(!_loc3_)
                        {
                           addr78:
                           §§pop();
                           §§push(uint(this.§-O§.§"`§));
                        }
                     }
                     _loc1_ = §§pop().§ !X§(§§pop());
                     if(!(_loc3_ && _loc1_))
                     {
                        _loc1_.y = 0;
                        if(_loc2_ || this)
                        {
                        }
                        §§goto(addr117);
                     }
                     this.§if§.addChild(_loc1_);
                     §§goto(addr117);
                  }
               }
               §§goto(addr78);
            }
            addr117:
            return;
         }
         §§goto(addr41);
      }
      
      protected function § !X§(param1:uint) : §7?§
      {
         return new §7?§(4096,4096,param1);
      }
      
      protected function §+!1§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(§+!'§.§2d§);
            if(!(_loc3_ && _loc2_))
            {
               if(!§§pop())
               {
               }
               §§goto(addr64);
            }
            §§pop().color = param1;
         }
         addr64:
         if(!(_loc3_ && this))
         {
            §§push(§+!'§.§2d§);
         }
      }
      
      public function §^!_§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§#!R§();
            while(true)
            {
               §4,§.log("Switch background! NEW BACKGROUND NAME = " + param1);
               §§goto(addr65);
            }
         }
         addr65:
         while(true)
         {
            this.§?G§(param1,this.§-C§);
            if(!_loc3_)
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §=[§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§;!R§ = null;
         if(!(_loc7_ && param2))
         {
            if(param1 == this.§]!R§)
            {
               if(_loc6_)
               {
                  return;
               }
            }
            else
            {
               addr45:
               this.§]!R§ = param1;
            }
            for each(_loc3_ in this.§2e§)
            {
               if(_loc6_)
               {
                  _loc3_.§=[§(param1);
               }
            }
            return;
         }
         §§goto(addr45);
      }
      
      public function §`!B§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(§&M§.§2!W§("CHANNEL_AMBIENT"));
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               addr92:
               while(true)
               {
                  if(§§pop())
                  {
                     loop4:
                     while(§§pop())
                     {
                        if(!_loc1_)
                        {
                           while(true)
                           {
                              §&M§.§6!#§(this.§-O§.§"!Z§,"CHANNEL_AMBIENT",999);
                           }
                           addr62:
                        }
                        while(true)
                        {
                           if(_loc2_ || this)
                           {
                              break loop4;
                           }
                           continue loop0;
                        }
                     }
                     return;
                     addr58:
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr62);
      }
      
      public function §=b§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §&M§.§7!<§("CHANNEL_AMBIENT");
         }
      }
      
      public function §'!3§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:DisplayObject = null;
         if(_loc3_ || this)
         {
            §§push(param1);
            if(_loc3_)
            {
               §§push(this.§8g§);
               if(!(_loc4_ && this))
               {
                  if(§§pop() < §§pop().numChildren)
                  {
                     if(_loc3_ || param1)
                     {
                        _loc2_ = this.§8g§.getChildAt(param1);
                        §§goto(addr47);
                     }
                     else
                     {
                        addr82:
                        §§push(this.§6B§);
                        §§push(param1);
                        if(_loc3_)
                        {
                           §§push(§§pop() - this.§8g§.numChildren);
                        }
                        _loc2_ = §§pop().getChildAt(§§pop());
                     }
                  }
                  else
                  {
                     §§push(param1);
                     if(!(_loc4_ && param1))
                     {
                        addr78:
                        if(§§pop() - this.§8g§.numChildren < this.§6B§.numChildren)
                        {
                           §§goto(addr82);
                        }
                     }
                     §§goto(addr78);
                  }
                  §§goto(addr94);
               }
            }
            §§goto(addr78);
         }
         addr47:
         if(_loc3_)
         {
            addr94:
            if(_loc2_)
            {
               if(!_loc4_)
               {
                  §§push(_loc2_);
                  §§push(_loc2_.visible);
                  if(_loc3_ || param1)
                  {
                     §§push(!§§pop());
                  }
                  §§pop().visible = §§pop();
               }
            }
         }
      }
      
      public function §+!+§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:int = 0;
         if(_loc6_ || _loc3_)
         {
            this.§7e§ = param1;
         }
         loop0:
         while(true)
         {
            this.§7V§ = param2;
            loop1:
            while(this.§2e§ != null)
            {
               if(!_loc5_)
               {
                  if(_loc5_)
                  {
                     continue loop0;
                  }
                  _loc3_ = 0;
               }
               if(_loc5_)
               {
                  continue;
               }
               loop9:
               while(true)
               {
                  loop10:
                  while(true)
                  {
                     if(_loc3_ < this.§2e§.length)
                     {
                        this.§2e§[_loc3_].setSideScroll(this.§7e§,this.§7V§);
                        if(!(_loc5_ && param1))
                        {
                           _loc3_++;
                           if(!_loc5_)
                           {
                              if(false)
                              {
                                 continue loop9;
                              }
                              continue;
                           }
                           addr96:
                           addr146:
                           §§push(this.§if§);
                           if(!_loc5_)
                           {
                              §§push(this.§if§.scaleY = 1 / §95§.§3d§);
                              if(!(_loc5_ && param1))
                              {
                                 §§pop().scaleX = §§pop();
                                 if(_loc6_)
                                 {
                                    §§goto(addr131);
                                 }
                                 addr133:
                                 return;
                                 addr189:
                              }
                              §§goto(addr204);
                           }
                           while(true)
                           {
                              §§push(this.§^+§);
                              if(_loc6_ || param1)
                              {
                                 §§push(this.§7V§);
                                 if(_loc6_ || param1)
                                 {
                                    addr165:
                                    §§push(§§pop() - §§pop());
                                    if(!(_loc5_ && param2))
                                    {
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             §§pop().y = §§pop();
                                             if(_loc6_)
                                             {
                                                break;
                                             }
                                             break loop10;
                                          }
                                          §§goto(addr204);
                                       }
                                       §§goto(addr205);
                                    }
                                    while(true)
                                    {
                                       §§pop().x = §§pop();
                                       break loop10;
                                    }
                                    addr210:
                                 }
                                 §§goto(addr209);
                              }
                              §§goto(addr165);
                           }
                           §§goto(addr189);
                        }
                        break;
                     }
                     if(!(_loc5_ && _loc3_))
                     {
                        break loop1;
                     }
                     §§push(this.§if§);
                     while(true)
                     {
                        §§push(§95§.§02§);
                        addr204:
                        while(true)
                        {
                           §§push(-§§pop());
                           addr205:
                           while(true)
                           {
                              §§push(1 / §95§.§3d§);
                              addr209:
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                              }
                           }
                        }
                     }
                     addr131:
                     §§goto(addr210);
                  }
                  while(true)
                  {
                     §§push(this.§if§);
                     if(_loc5_ && this)
                     {
                        break;
                     }
                     §§goto(addr146);
                  }
                  §§goto(addr192);
               }
            }
            §§push(this.§if§);
            if(!_loc5_)
            {
               if(§§pop() != null)
               {
                  if(!_loc5_)
                  {
                     §§goto(addr96);
                  }
                  §§goto(addr189);
               }
               §§goto(addr133);
            }
            §§goto(addr192);
         }
      }
      
      public function §?2§() : String
      {
         return this.§-O§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
