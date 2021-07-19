package §&;§
{
   import §#";§.§0"#§;
   import §#";§.§8V§;
   import §%!j§.§%K§;
   import §+!-§.§4!O§;
   import §+!-§.DisplayObject;
   import §+!-§.Sprite;
   import §,!g§.§"!P§;
   import §6]§.§,"0§;
   import §;"7§.§="<§;
   import §<i§.§'!e§;
   import §switch§.§,!!§;
   import §switch§.§47§;
   import §switch§.§4G§;
   
   public class §4!@§
   {
      
      public static const §-"+§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §4!@§))
         {
            §-"+§ = true;
         }
      }
      
      private var §7k§:§="<§;
      
      protected var §1!6§:§4G§;
      
      protected var §4o§:Vector.<§]o§>;
      
      private var §&!!§:Sprite;
      
      private var §=F§:Sprite;
      
      private var §%^§:Sprite;
      
      private var §]"&§:Number;
      
      private var §8!`§:Number;
      
      private var §%!?§:Number;
      
      private var §?1§:Boolean = true;
      
      private var §1!'§:Boolean = true;
      
      private var §5!,§:§8V§;
      
      private var §`y§:Number;
      
      public function §4!@§(param1:String, param2:Number, param3:§="<§, param4:Number)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param2))
         {
            this.§4o§ = new Vector.<§]o§>();
         }
         loop0:
         while(true)
         {
            super();
            addr140:
            while(true)
            {
               this.§7k§ = param3;
               continue loop0;
            }
         }
      }
      
      public function get §0!b§() : Boolean
      {
         return this.§?1§;
      }
      
      public function get §>,§() : Sprite
      {
         return this.§%^§;
      }
      
      public function get §"!q§() : Sprite
      {
         return this.§&!!§;
      }
      
      public function get §=h§() : Sprite
      {
         return this.§=F§;
      }
      
      protected function get §8=§() : §="<§
      {
         return this.§7k§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§'!?§();
         }
         loop0:
         while(true)
         {
            §§push(this.§&!!§);
            if(_loc2_ || this)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     §§push(this.§=F§);
                     if(!_loc1_)
                     {
                        if(§§pop())
                        {
                           while(!(_loc1_ && _loc2_))
                           {
                              §§push(this.§=F§);
                              while(true)
                              {
                                 §§pop().dispose();
                                 addr109:
                                 while(true)
                                 {
                                    this.§=F§ = null;
                                    addr90:
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          while(true)
                                          {
                                             §§push(this.§&!!§);
                                             addr128:
                                             while(true)
                                             {
                                                §§pop().dispose();
                                                continue loop0;
                                             }
                                          }
                                          addr126:
                                       }
                                       else
                                       {
                                          addr92:
                                       }
                                    }
                                 }
                              }
                           }
                           continue;
                           addr99:
                        }
                        loop4:
                        while(true)
                        {
                           §§push(this.§%^§);
                           if(_loc2_ || _loc2_)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    if(!(_loc1_ && _loc1_))
                                    {
                                       addr82:
                                       this.§%^§.dispose();
                                       while(_loc2_)
                                       {
                                          this.§%^§ = null;
                                          if(_loc1_)
                                          {
                                             continue;
                                          }
                                          if(_loc2_ || _loc2_)
                                          {
                                             if(_loc2_)
                                             {
                                                break loop4;
                                             }
                                             §§goto(addr99);
                                          }
                                          §§goto(addr109);
                                       }
                                       continue loop0;
                                       addr83:
                                    }
                                    §§goto(addr90);
                                 }
                                 §§goto(addr83);
                              }
                              break;
                           }
                           §§goto(addr82);
                           §§goto(addr92);
                        }
                        return;
                     }
                     §§goto(addr108);
                  }
                  continue;
               }
               §§goto(addr126);
            }
            §§goto(addr128);
         }
      }
      
      public function §"!c§() : Boolean
      {
         return this.§1!'§;
      }
      
      public function §'"@§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§1!'§);
            loop0:
            while(§§pop() != param1)
            {
               while(true)
               {
                  this.§1!'§ = param1;
                  do
                  {
                     §§push(param1);
                     if(_loc3_ && _loc3_)
                     {
                        continue loop0;
                     }
                     if(!§§pop())
                     {
                        continue;
                     }
                     this.§7w§(this.§1!6§.mName,this.§`y§);
                     if(!(_loc3_ && param1))
                     {
                        if(!_loc2_)
                        {
                           continue;
                        }
                        if(_loc3_)
                        {
                           §§goto(addr77);
                        }
                        §§goto(addr54);
                     }
                     else
                     {
                        addr74:
                        if(_loc3_)
                        {
                           break loop0;
                        }
                     }
                     §§goto(addr77);
                  }
                  while(!(_loc2_ || param1));
                  
                  continue loop0;
               }
               return;
            }
            return;
         }
         this.§'!?§();
         §§goto(addr74);
      }
      
      public function §>N§() : String
      {
         return this.§1!6§.§<!7§;
      }
      
      private function §'!?§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         loop0:
         while(true)
         {
            §§push(this.§=F§);
            if(!_loc1_)
            {
               if(§§pop().numChildren <= 0)
               {
                  while(true)
                  {
                     while(true)
                     {
                        §§push(this.§&!!§);
                        if(_loc2_)
                        {
                           if(§§pop().numChildren <= 0)
                           {
                              if(!(_loc1_ && _loc2_))
                              {
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 while(true)
                                 {
                                    if(this.§4o§.length <= 0)
                                    {
                                       if(_loc2_ || this)
                                       {
                                          break;
                                       }
                                    }
                                    else
                                    {
                                       this.§4o§.pop().dispose();
                                    }
                                    addr76:
                                 }
                                 if(_loc2_)
                                 {
                                    break loop0;
                                 }
                                 continue loop0;
                              }
                              while(!(_loc1_ && this))
                              {
                                 §§goto(addr76);
                              }
                           }
                           else
                           {
                              addr89:
                              this.§&!!§.removeChildAt(0,true);
                           }
                           continue;
                        }
                        §§goto(addr89);
                     }
                  }
               }
               else
               {
                  §§push(this.§=F§);
               }
            }
            §§pop().removeChildAt(0,true);
         }
      }
      
      protected function §^!z§(param1:§4G§, param2:String) : void
      {
      }
      
      private function §7w§(param1:String, param2:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:§,!!§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§]o§ = null;
         if(!(_loc8_ && param1))
         {
            this.§1!6§ = §47§.§," §(param1);
            loop0:
            while(true)
            {
               if(this.§1!6§ == null)
               {
                  loop1:
                  while(true)
                  {
                     §,"0§.log("UNKNOWN LEVEL THEME! " + param1);
                     while(true)
                     {
                        §§push(§'!e§.§>!=§);
                        if(!(_loc8_ && param1))
                        {
                           §§push(§§pop());
                        }
                        param1 = §§pop();
                        while(!_loc8_)
                        {
                           this.§1!6§ = §47§.§," §(param1);
                           while(true)
                           {
                           }
                           loop11:
                           while(_loc7_ || param1)
                           {
                              this.§'! §();
                              if(!(_loc7_ || _loc3_))
                              {
                                 continue;
                              }
                              addr43:
                              if(_loc7_ || _loc3_)
                              {
                                 addr50:
                                 if(!(_loc8_ && param2))
                                 {
                                    continue loop1;
                                 }
                                 continue loop0;
                              }
                              addr95:
                              while(!_loc8_)
                              {
                                 while(true)
                                 {
                                    this.§%^§.y = this.§]"&§;
                                    continue loop11;
                                 }
                                 §§goto(addr43);
                              }
                              while(_loc7_)
                              {
                                 while(true)
                                 {
                                    this.§=F§.y = this.§]"&§;
                                    §§goto(addr86);
                                 }
                              }
                              addr86:
                              §§goto(addr118);
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  this.§^!z§(this.§1!6§,param1);
                  continue loop0;
                  §§goto(addr118);
               }
            }
         }
         §§goto(addr97);
      }
      
      protected function §3!>§(param1:§,!!§, param2:Sprite, param3:§="<§, param4:Number) : §]o§
      {
         return new §]o§(param1,param2,param3,param4);
      }
      
      private function §'! §() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§4!O§ = null;
         if(!_loc3_)
         {
            §§push(this.§1!6§);
            if(_loc2_ || _loc3_)
            {
               §§push(§§pop().§`!I§);
               if(!(_loc3_ && _loc1_))
               {
                  if(§§pop())
                  {
                     if(_loc2_)
                     {
                        this.§@"2§(this.§1!6§.§`!I§);
                        if(_loc3_ && this)
                        {
                        }
                        addr67:
                        §§push(this);
                        if(!_loc3_)
                        {
                           §§push(uint(0));
                           if(!_loc3_)
                           {
                              if(!§§pop())
                              {
                                 if(_loc2_)
                                 {
                                    §§pop();
                                    addr79:
                                    §§push(uint(this.§1!6§.§@7§));
                                 }
                              }
                           }
                           _loc1_ = §§pop().§8!P§(§§pop());
                           if(!(_loc3_ && _loc1_))
                           {
                              _loc1_.y = 0;
                              if(!(_loc3_ && _loc1_))
                              {
                                 addr113:
                                 this.§%^§.addChild(_loc1_);
                              }
                              §§goto(addr117);
                           }
                           §§goto(addr113);
                        }
                        §§goto(addr79);
                     }
                     §§goto(addr67);
                  }
                  addr65:
                  §§push(this.§1!6§.§@7§);
               }
               if(§§pop())
               {
                  §§goto(addr67);
               }
               addr117:
               return;
            }
            §§goto(addr65);
         }
         §§goto(addr67);
      }
      
      protected function §8!P§(param1:uint) : §4!O§
      {
         return new §4!O§(4096,4096,param1);
      }
      
      protected function §@"2§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(§%K§.§`9§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(!(_loc3_ && this))
                  {
                     addr52:
                     §%K§.§`9§.color = param1;
                  }
               }
               return;
            }
         }
         §§goto(addr52);
      }
      
      public function resetLevelBackground(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§'!?§();
         }
         do
         {
            §,"0§.log("Switch background! NEW BACKGROUND NAME = " + param1);
            do
            {
               this.§7w§(param1,this.§`y§);
            }
            while(!(_loc2_ || _loc3_));
            
         }
         while(!_loc2_);
         
      }
      
      public function §?R§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§]o§ = null;
         if(!_loc6_)
         {
            if(param1 == this.§?1§)
            {
               if(_loc7_ || this)
               {
                  return;
               }
            }
            else
            {
               addr46:
               this.§?1§ = param1;
            }
            for each(_loc3_ in this.§4o§)
            {
               if(_loc7_ || this)
               {
                  _loc3_.§?R§(param1);
               }
            }
            return;
         }
         §§goto(addr46);
      }
      
      public function §@Q§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(§0"#§.§9!$§("CHANNEL_AMBIENT"));
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               if(_loc1_)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        addr66:
                        while(§§pop())
                        {
                           if(_loc1_ || _loc1_)
                           {
                              §0"#§.§9"2§(this.§1!6§.§5!"§,"CHANNEL_AMBIENT",999);
                           }
                           if(_loc1_ || _loc1_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        return;
                        addr64:
                     }
                     addr65:
                  }
               }
               addr108:
               while(true)
               {
                  §§pop();
                  continue loop0;
               }
            }
            addr102:
         }
         while(true)
         {
            §§push(§0"#§.§9!$§("CHANNEL_AMBIENT"));
            if(_loc1_ || _loc1_)
            {
               §§push(§§pop().§4C§());
               if(!(_loc2_ && _loc2_))
               {
                  if(_loc2_ && _loc2_)
                  {
                     continue;
                  }
                  §§goto(addr64);
               }
               §§goto(addr66);
            }
            else
            {
               §§goto(addr102);
            }
         }
      }
      
      public function §?!e§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §0"#§.§<"0§("CHANNEL_AMBIENT");
         }
      }
      
      public function §-N§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:DisplayObject = null;
         if(!(_loc4_ && _loc2_))
         {
            §§push(param1);
            if(_loc3_ || param1)
            {
               §§push(this.§&!!§);
               if(_loc3_ || _loc2_)
               {
                  if(§§pop() < §§pop().numChildren)
                  {
                     if(!(_loc4_ && _loc2_))
                     {
                        _loc2_ = this.§&!!§.getChildAt(param1);
                        if(!_loc4_)
                        {
                           §§goto(addr104);
                        }
                        §§goto(addr108);
                     }
                     else
                     {
                        addr87:
                        §§push(this.§=F§);
                        §§push(param1);
                        if(!(_loc4_ && param1))
                        {
                           §§push(§§pop() - this.§&!!§.numChildren);
                        }
                        _loc2_ = §§pop().getChildAt(§§pop());
                     }
                  }
                  else
                  {
                     §§push(param1);
                     if(!(_loc4_ && this))
                     {
                        addr81:
                        §§push(§§pop() - this.§&!!§.numChildren);
                     }
                     if(§§pop() < this.§=F§.numChildren)
                     {
                        §§goto(addr87);
                     }
                  }
                  addr104:
                  if(_loc2_)
                  {
                     if(_loc3_)
                     {
                        addr108:
                        §§push(_loc2_);
                        §§push(_loc2_.visible);
                        if(!(_loc4_ && _loc3_))
                        {
                           §§push(!§§pop());
                        }
                        §§pop().visible = §§pop();
                     }
                  }
                  return;
               }
            }
            §§goto(addr81);
         }
         §§goto(addr87);
      }
      
      public function §6"1§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:int = 0;
         if(_loc6_)
         {
            this.§8!`§ = param1;
            loop0:
            while(true)
            {
               this.§%!?§ = param2;
               loop1:
               while(this.§4o§ != null)
               {
                  if(!_loc5_)
                  {
                     if(!_loc5_)
                     {
                        continue loop0;
                     }
                     continue;
                  }
                  addr61:
                  loop9:
                  while(true)
                  {
                     while(true)
                     {
                        if(_loc3_ >= this.§4o§.length)
                        {
                           if(!(_loc5_ && this))
                           {
                              break loop1;
                           }
                           break;
                        }
                        this.§4o§[_loc3_].setSideScroll(this.§8!`§,this.§%!?§);
                        if(!_loc5_)
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
                           addr131:
                           addr165:
                           §§push(this.§%^§);
                           while(true)
                           {
                              §§push(§"!P§.§2'§);
                              if(!(_loc5_ && param1))
                              {
                                 while(true)
                                 {
                                    §§push(-§§pop());
                                 }
                                 addr184:
                              }
                              addr185:
                              while(true)
                              {
                                 §§push(1 / §"!P§.§#X§);
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    addr190:
                                    §§goto(addr141);
                                 }
                              }
                           }
                        }
                        break;
                     }
                     while(true)
                     {
                        §§push(this.§%^§);
                        if(_loc6_)
                        {
                           addr141:
                           while(true)
                           {
                              §§pop().x = §§pop();
                              break loop10;
                           }
                           §§goto(addr162);
                        }
                        else
                        {
                           §§goto(addr165);
                        }
                     }
                  }
               }
               §§push(this.§%^§);
               if(!_loc5_)
               {
                  if(§§pop() != null)
                  {
                     if(_loc6_)
                     {
                        §§push(this.§%^§);
                        if(!(_loc5_ && this))
                        {
                           addr110:
                           §§push(this.§%^§.scaleY = 1 / §"!P§.§#X§);
                           if(_loc6_)
                           {
                              §§pop().scaleX = §§pop();
                              if(!(_loc5_ && param1))
                              {
                                 §§goto(addr131);
                              }
                              §§goto(addr162);
                           }
                           §§goto(addr184);
                        }
                        §§goto(addr141);
                     }
                     §§goto(addr131);
                  }
                  addr162:
                  while(true)
                  {
                     §§push(this.§]"&§);
                     if(_loc6_)
                     {
                        if(_loc6_)
                        {
                           §§push(this.§%!?§);
                           if(_loc5_ && param2)
                           {
                              continue loop3;
                           }
                           §§push(§§pop() - §§pop());
                        }
                        else
                        {
                           §§goto(addr190);
                        }
                     }
                     if(_loc6_)
                     {
                        §§pop().y = §§pop();
                        if(!_loc5_)
                        {
                           break;
                        }
                        break loop10;
                     }
                     continue loop6;
                  }
                  return;
               }
               §§goto(addr110);
            }
         }
         §§goto(addr61);
      }
      
      public function getCurrentThemeName() : String
      {
         return this.§1!6§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
