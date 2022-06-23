package §6!'§
{
   import §#!;§.§;T§;
   import §'k§.§ >§;
   import §+!"§.§5!<§;
   import §5!%§.§%p§;
   import §5!%§.§4D§;
   import §5!%§.§`Z§;
   import §6J§.§&!;§;
   import §9W§.§3g§;
   import §9W§.DisplayObject;
   import §9W§.Sprite;
   import §@!!§.§=_§;
   import §@D§.§6I§;
   import §@D§.§`!%§;
   
   public class §2!<§
   {
      
      public static const §?V§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §?V§ = true;
         }
      }
      
      private var §`!8§:§ >§;
      
      private var §6!7§:§`Z§;
      
      private var §,q§:Vector.<§6#§>;
      
      private var §3#§:Sprite;
      
      private var § A§:Sprite;
      
      private var §;8§:Sprite;
      
      private var §`a§:Number;
      
      private var § null§:Number;
      
      private var §>g§:Number;
      
      private var § if§:Boolean = true;
      
      private var §!_§:Boolean = true;
      
      private var §@0§:§`!%§;
      
      private var §6!,§:Number;
      
      public function §2!<§(param1:String, param2:Number, param3:§ >§, param4:Number)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         this.§,q§ = new Vector.<§6#§>();
         super();
         this.§`!8§ = param3;
         if(_loc6_)
         {
            this.§ null§ = 0;
            this.§>g§ = 0;
            this.§`a§ = param2;
            if(_loc6_)
            {
               §§goto(addr61);
            }
            §§goto(addr78);
         }
         addr61:
         this.§3#§ = new Sprite();
         if(_loc6_)
         {
            this.§ A§ = new Sprite();
            if(_loc6_ || param1)
            {
               addr78:
               this.§;8§ = new Sprite();
            }
         }
         this.§6!,§ = param4;
         this.§`!3§(param1,param4);
      }
      
      public function get §2§() : Boolean
      {
         return this.§ if§;
      }
      
      public function get §?1§() : Sprite
      {
         return this.§;8§;
      }
      
      public function get §=d§() : Sprite
      {
         return this.§3#§;
      }
      
      public function get §4$§() : Sprite
      {
         return this.§ A§;
      }
      
      protected function get textureManager() : § >§
      {
         return this.§`!8§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§&!2§();
            §§push(this.§3#§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  §§goto(addr33);
               }
               §§goto(addr54);
            }
            addr33:
            this.§3#§.dispose();
            if(!(_loc1_ && this))
            {
               this.§3#§ = null;
               addr54:
               §§push(this.§ A§);
               if(!(_loc1_ && _loc1_))
               {
                  if(§§pop())
                  {
                     §§goto(addr104);
                  }
                  §§goto(addr86);
               }
               §§pop().dispose();
               if(_loc2_)
               {
                  this.§ A§ = null;
                  if(_loc2_)
                  {
                     §§goto(addr86);
                  }
                  §§goto(addr101);
               }
            }
            addr86:
            §§push(this.§;8§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  §§push(this.§;8§);
               }
               §§goto(addr104);
            }
            §§pop().dispose();
            if(_loc2_)
            {
               addr101:
               this.§;8§ = null;
            }
            §§goto(addr104);
         }
         addr104:
         if(_loc2_)
         {
            §§push(this.§ A§);
         }
      }
      
      public function §-f§() : Boolean
      {
         return this.§!_§;
      }
      
      public function §`!G§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§!_§);
            if(_loc2_)
            {
               if(§§pop() == param1)
               {
                  if(_loc2_)
                  {
                     return;
                  }
                  addr51:
               }
               else
               {
                  addr37:
                  this.§!_§ = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     addr48:
                     if(!param1)
                     {
                        this.§&!2§();
                        §§goto(addr51);
                     }
                     else
                     {
                        this.§`!3§(this.§6!7§.mName,this.§6!,§);
                     }
                  }
               }
               return;
            }
            §§goto(addr48);
         }
         §§goto(addr37);
      }
      
      public function §8!#§() : String
      {
         return this.§6!7§.§2q§;
      }
      
      private function §&!2§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         loop0:
         while(true)
         {
            §§push(this.§ A§);
            loop1:
            while(true)
            {
               if(§§pop().numChildren <= 0)
               {
                  if(_loc1_)
                  {
                     loop3:
                     while(true)
                     {
                        §§push(this.§3#§);
                        while(§§pop().numChildren > 0)
                        {
                           §§push(this.§3#§);
                           if(!(_loc2_ && _loc2_))
                           {
                              §§pop().removeChildAt(0,true);
                              if(_loc2_)
                              {
                                 return;
                              }
                              addr105:
                              continue loop3;
                           }
                        }
                        if(!(_loc2_ && _loc1_))
                        {
                           break loop1;
                        }
                        break loop1;
                     }
                  }
                  break;
               }
               §§push(this.§ A§);
               if(!_loc2_)
               {
                  continue loop0;
               }
            }
            addr100:
            while(this.§,q§.length > 0)
            {
               this.§,q§.pop().dispose();
               if(!(_loc1_ || _loc2_))
               {
                  break;
               }
            }
            §§goto(addr105);
         }
      }
      
      private function §`!3§(param1:String, param2:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:§4D§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§6#§ = null;
         if(!_loc8_)
         {
            this.§6!7§ = §%p§.§9F§(param1);
         }
         if(this.§6!7§ == null)
         {
            if(_loc7_ || this)
            {
               §§push(§5!<§);
               §§push("UNKNOWN LEVEL THEME! ");
               if(_loc7_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().log(§§pop());
               if(!(_loc8_ && param2))
               {
                  §§push(§&!;§.§7D§);
                  if(_loc7_)
                  {
                     §§push(§§pop());
                  }
                  param1 = §§pop();
                  if(_loc7_)
                  {
                     this.§6!7§ = §%p§.§9F§(param1);
                     if(!(_loc8_ && param1))
                     {
                        addr77:
                        this.§3#§.y = this.§`a§;
                     }
                     this.§ A§.y = this.§`a§;
                     if(_loc7_)
                     {
                        addr89:
                        this.§;8§.y = this.§`a§;
                        this.§@!8§();
                     }
                  }
               }
               var _loc3_:int = 0;
               while(_loc3_ < this.§6!7§.§,q§.length)
               {
                  _loc4_ = this.§6!7§.§,q§[_loc3_];
                  if(_loc7_)
                  {
                     §§push(§;T§.§>!,§);
                     if(_loc7_ || this)
                     {
                        §§push(!§§pop());
                        if(!(_loc8_ && this))
                        {
                           addr136:
                           if(!§§pop())
                           {
                              if(_loc7_)
                              {
                                 §§pop();
                                 if(!(_loc8_ && _loc3_))
                                 {
                                    §§push(_loc4_.§`4§);
                                    if(_loc7_ || param2)
                                    {
                                       addr158:
                                       if(!§§pop())
                                       {
                                          if(!(_loc8_ && _loc3_))
                                          {
                                             _loc5_ = new Sprite();
                                             _loc6_ = new §6#§(_loc4_,_loc5_,this.§`!8§,param2);
                                             if(!_loc8_)
                                             {
                                                this.§,q§.push(_loc6_);
                                                if(_loc7_)
                                                {
                                                   if(_loc6_.§;W§)
                                                   {
                                                      if(_loc7_ || param2)
                                                      {
                                                      }
                                                      addr243:
                                                      _loc3_++;
                                                      addr230:
                                                      continue;
                                                      addr230:
                                                   }
                                                   else
                                                   {
                                                      this.§3#§.addChild(_loc5_);
                                                      if(!(_loc7_ || _loc3_))
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr230);
                                                   }
                                                   §§goto(addr230);
                                                }
                                                this.§ A§.addChild(_loc5_);
                                                if(_loc7_ || _loc3_)
                                                {
                                                }
                                             }
                                             §§goto(addr230);
                                          }
                                       }
                                       else if(_loc4_.§ t§)
                                       {
                                          if(!_loc7_)
                                          {
                                          }
                                       }
                                       §§goto(addr243);
                                    }
                                    §§goto(addr158);
                                 }
                                 this.§5a§(parseInt(_loc4_.§ t§,16));
                                 §§goto(addr243);
                              }
                           }
                        }
                        §§goto(addr158);
                     }
                     §§goto(addr136);
                  }
                  §§goto(addr243);
               }
               return;
            }
            §§goto(addr89);
         }
         §§goto(addr77);
      }
      
      private function §@!8§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§3g§ = null;
         if(!(_loc2_ && this))
         {
            §§push(this.§6!7§);
            if(_loc3_ || _loc1_)
            {
               §§push(§§pop().§6P§);
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        addr52:
                        this.§5a§(this.§6!7§.§6P§);
                        if(!_loc2_)
                        {
                           §§goto(addr59);
                        }
                     }
                     §§goto(addr63);
                  }
               }
               §§goto(addr59);
            }
            addr59:
            if(this.§6!7§.§7!§)
            {
               addr63:
               §§push(this);
               if(!_loc2_)
               {
                  §§push(uint(0));
                  if(_loc3_ || _loc2_)
                  {
                     if(!§§pop())
                     {
                        if(_loc3_)
                        {
                           §§pop();
                           addr90:
                           §§push(uint(this.§6!7§.§7!§));
                        }
                     }
                  }
                  _loc1_ = §§pop().§=!A§(§§pop());
                  if(!_loc2_)
                  {
                     _loc1_.y = 0;
                     if(_loc2_)
                     {
                     }
                     §§goto(addr108);
                  }
                  this.§;8§.addChild(_loc1_);
                  §§goto(addr108);
               }
               §§goto(addr90);
            }
            addr108:
            return;
         }
         §§goto(addr52);
      }
      
      protected function §=!A§(param1:uint) : §3g§
      {
         return new §3g§(4096,4096,param1);
      }
      
      private function §5a§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(§;T§.§,H§);
            if(!(_loc3_ && _loc2_))
            {
               if(!§§pop())
               {
               }
               §§goto(addr49);
            }
            §§pop().color = param1;
         }
         addr49:
         if(_loc2_ || _loc3_)
         {
            §§push(§;T§.§,H§);
         }
      }
      
      public function §?v§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§&!2§();
            if(_loc2_ || this)
            {
               §§push(§5!<§);
               §§push("Switch background! NEW BACKGROUND NAME = ");
               if(_loc2_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().log(§§pop());
               if(!(_loc3_ && _loc3_))
               {
                  this.§`!3§(param1,this.§6!,§);
               }
            }
         }
      }
      
      public function §^v§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§6#§ = null;
         if(!(_loc6_ && param2))
         {
            if(param1 == this.§ if§)
            {
               if(_loc7_)
               {
                  return;
               }
            }
            else
            {
               this.§ if§ = param1;
            }
         }
         for each(_loc3_ in this.§,q§)
         {
            if(!_loc6_)
            {
               _loc3_.§^v§(param1);
            }
         }
      }
      
      public function §6!!§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§6I§.§3t§("CHANNEL_AMBIENT"));
            if(_loc1_ || this)
            {
               §§push(§§pop() == null);
               if(!(_loc2_ && _loc2_))
               {
                  if(!§§pop())
                  {
                     if(!_loc2_)
                     {
                        §§pop();
                        if(!_loc2_)
                        {
                           addr67:
                           §§push(§6I§.§3t§("CHANNEL_AMBIENT").§^[§());
                           if(!(_loc2_ && _loc2_))
                           {
                              addr76:
                              if(!§§pop())
                              {
                                 if(!(_loc2_ && this))
                                 {
                                    addr84:
                                    §6I§.§ ;§(this.§6!7§.§1q§,"CHANNEL_AMBIENT",999);
                                 }
                              }
                           }
                           §§goto(addr76);
                        }
                        return;
                     }
                     §§goto(addr76);
                  }
               }
               §§goto(addr76);
            }
            §§goto(addr67);
         }
         §§goto(addr84);
      }
      
      public function §]I§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §6I§.§9w§("CHANNEL_AMBIENT");
         }
      }
      
      public function §=4§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:DisplayObject = null;
         if(_loc4_)
         {
            §§push(param1);
            if(_loc4_)
            {
               §§push(this.§3#§);
               if(_loc4_ || param1)
               {
                  if(§§pop() < §§pop().numChildren)
                  {
                     if(_loc4_)
                     {
                        _loc2_ = this.§3#§.getChildAt(param1);
                        if(_loc4_)
                        {
                           addr100:
                           if(_loc2_)
                           {
                              if(!_loc3_)
                              {
                                 §§push(_loc2_);
                                 §§push(_loc2_.visible);
                                 if(_loc4_)
                                 {
                                    §§push(!§§pop());
                                 }
                                 §§pop().visible = §§pop();
                              }
                           }
                        }
                        return;
                     }
                     addr83:
                     §§push(this.§ A§);
                     §§push(param1);
                     if(_loc4_ || _loc3_)
                     {
                        §§push(§§pop() - this.§3#§.numChildren);
                     }
                     _loc2_ = §§pop().getChildAt(§§pop());
                  }
                  else
                  {
                     §§push(param1);
                     if(!(_loc3_ && _loc2_))
                     {
                        addr67:
                        §§push(§§pop() - this.§3#§.numChildren);
                     }
                     if(§§pop() < this.§ A§.numChildren)
                     {
                        §§goto(addr83);
                     }
                  }
                  §§goto(addr100);
               }
            }
            §§goto(addr67);
         }
         §§goto(addr83);
      }
      
      public function §-b§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:int = 0;
         if(_loc6_ || param1)
         {
            this.§ null§ = param1;
            if(!(_loc5_ && _loc3_))
            {
               addr36:
               this.§>g§ = param2;
               if(_loc6_)
               {
                  addr41:
                  if(this.§,q§ != null)
                  {
                     if(!_loc5_)
                     {
                        addr47:
                        _loc3_ = 0;
                     }
                     while(true)
                     {
                        if(_loc3_ < this.§,q§.length)
                        {
                           this.§,q§[_loc3_].setSideScroll(this.§ null§,this.§>g§);
                           if(!(_loc5_ && _loc3_))
                           {
                              _loc3_++;
                              if(_loc6_ || this)
                              {
                                 continue;
                              }
                              §§goto(addr178);
                           }
                           break;
                        }
                        §§push(this.§;8§);
                        if(!_loc5_)
                        {
                           if(§§pop() != null)
                           {
                              if(_loc6_)
                              {
                                 §§push(this.§;8§);
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    §§push(this.§;8§.scaleY = 1 / §=_§.§&!?§);
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       §§pop().scaleX = §§pop();
                                       §§push(this.§;8§);
                                       if(!(_loc5_ && param1))
                                       {
                                          addr135:
                                          §§push(§=_§.§[!#§);
                                          if(_loc6_)
                                          {
                                             §§push(-§§pop());
                                             if(!_loc5_)
                                             {
                                                §§push(1 / §=_§.§&!?§);
                                                if(!_loc5_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc6_)
                                                   {
                                                      addr161:
                                                      §§pop().x = §§pop();
                                                      if(!_loc5_)
                                                      {
                                                         addr178:
                                                         §§push(this.§;8§);
                                                         §§push(this.§`a§);
                                                         if(_loc6_ || param1)
                                                         {
                                                            §§push(this.§>g§);
                                                         }
                                                         §§pop().y = §§pop();
                                                         break;
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr178);
                                                }
                                                §§push(§§pop() - §§pop());
                                             }
                                             §§goto(addr178);
                                          }
                                          §§goto(addr161);
                                       }
                                       §§goto(addr178);
                                    }
                                    §§goto(addr161);
                                 }
                                 §§goto(addr135);
                              }
                              §§goto(addr178);
                           }
                           break;
                        }
                        §§goto(addr135);
                        §§goto(addr178);
                     }
                     return;
                  }
                  §§goto(addr90);
               }
               §§goto(addr47);
            }
            §§goto(addr41);
         }
         §§goto(addr36);
      }
      
      public function §]m§() : String
      {
         return this.§6!7§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
