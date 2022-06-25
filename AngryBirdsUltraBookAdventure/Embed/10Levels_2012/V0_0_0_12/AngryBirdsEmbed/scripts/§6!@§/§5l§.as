package §6!@§
{
   import §%$§.§"r§;
   import §%$§.§3V§;
   import §%$§.§<]§;
   import §&p§.§'_§;
   import §-!0§.§'!3§;
   import §0!<§.§#y§;
   import §>!C§.§9R§;
   import §?!?§.§3!E§;
   import §?!?§.§]t§;
   import §?^§.§?C§;
   import §?^§.DisplayObject;
   import §?^§.Sprite;
   import §[F§.§`m§;
   
   public class §5l§
   {
      
      public static const §37§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §37§ = true;
         }
      }
      
      private var § 7§:§'!3§;
      
      private var §>1§:§<]§;
      
      private var §[O§:Vector.<§6h§>;
      
      private var §&e§:Sprite;
      
      private var §1>§:Sprite;
      
      private var §'e§:Sprite;
      
      private var §0z§:Number;
      
      private var §[!!§:Number;
      
      private var §@$§:Number;
      
      private var §8F§:Boolean = true;
      
      private var §#!8§:Boolean = true;
      
      private var §&K§:§]t§;
      
      private var §%>§:Number;
      
      public function §5l§(param1:String, param2:Number, param3:§'!3§, param4:Number)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         this.§[O§ = new Vector.<§6h§>();
         super();
         this.§ 7§ = param3;
         if(_loc6_)
         {
            this.§[!!§ = 0;
            this.§@$§ = 0;
            this.§0z§ = param2;
            if(_loc6_)
            {
               §§goto(addr61);
            }
            §§goto(addr78);
         }
         addr61:
         this.§&e§ = new Sprite();
         if(_loc6_)
         {
            this.§1>§ = new Sprite();
            if(_loc6_ || param1)
            {
               addr78:
               this.§'e§ = new Sprite();
            }
         }
         this.§%>§ = param4;
         this.§>-§(param1,param4);
      }
      
      public function get §![§() : Boolean
      {
         return this.§8F§;
      }
      
      public function get §9q§() : Sprite
      {
         return this.§'e§;
      }
      
      public function get §`6§() : Sprite
      {
         return this.§&e§;
      }
      
      public function get §^;§() : Sprite
      {
         return this.§1>§;
      }
      
      protected function get textureManager() : §'!3§
      {
         return this.§ 7§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§[!G§();
            §§push(this.§&e§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  §§goto(addr33);
               }
               §§goto(addr54);
            }
            addr33:
            this.§&e§.dispose();
            if(!(_loc1_ && this))
            {
               this.§&e§ = null;
               addr54:
               §§push(this.§1>§);
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
                  this.§1>§ = null;
                  if(_loc2_)
                  {
                     §§goto(addr86);
                  }
                  §§goto(addr101);
               }
            }
            addr86:
            §§push(this.§'e§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  §§push(this.§'e§);
               }
               §§goto(addr104);
            }
            §§pop().dispose();
            if(_loc2_)
            {
               addr101:
               this.§'e§ = null;
            }
            §§goto(addr104);
         }
         addr104:
         if(_loc2_)
         {
            §§push(this.§1>§);
         }
      }
      
      public function §[[§() : Boolean
      {
         return this.§#!8§;
      }
      
      public function §69§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§#!8§);
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
                  this.§#!8§ = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     addr48:
                     if(!param1)
                     {
                        this.§[!G§();
                        §§goto(addr51);
                     }
                     else
                     {
                        this.§>-§(this.§>1§.mName,this.§%>§);
                     }
                  }
               }
               return;
            }
            §§goto(addr48);
         }
         §§goto(addr37);
      }
      
      public function §"I§() : String
      {
         return this.§>1§.§&A§;
      }
      
      private function §[!G§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         loop0:
         while(true)
         {
            §§push(this.§1>§);
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
                        §§push(this.§&e§);
                        while(§§pop().numChildren > 0)
                        {
                           §§push(this.§&e§);
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
               §§push(this.§1>§);
               if(!_loc2_)
               {
                  continue loop0;
               }
            }
            addr100:
            while(this.§[O§.length > 0)
            {
               this.§[O§.pop().dispose();
               if(!(_loc1_ || _loc2_))
               {
                  break;
               }
            }
            §§goto(addr105);
         }
      }
      
      private function §>-§(param1:String, param2:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:§"r§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§6h§ = null;
         if(!_loc8_)
         {
            this.§>1§ = §3V§.§9S§(param1);
         }
         if(this.§>1§ == null)
         {
            if(_loc7_ || this)
            {
               §§push(§#y§);
               §§push("UNKNOWN LEVEL THEME! ");
               if(_loc7_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().log(§§pop());
               if(!(_loc8_ && param2))
               {
                  §§push(§9R§.§ !4§);
                  if(_loc7_)
                  {
                     §§push(§§pop());
                  }
                  param1 = §§pop();
                  if(_loc7_)
                  {
                     this.§>1§ = §3V§.§9S§(param1);
                     if(!(_loc8_ && param1))
                     {
                        addr77:
                        this.§&e§.y = this.§0z§;
                     }
                     this.§1>§.y = this.§0z§;
                     if(_loc7_)
                     {
                        addr89:
                        this.§'e§.y = this.§0z§;
                        this.§3!G§();
                     }
                  }
               }
               var _loc3_:int = 0;
               while(_loc3_ < this.§>1§.§[O§.length)
               {
                  _loc4_ = this.§>1§.§[O§[_loc3_];
                  if(_loc7_)
                  {
                     §§push(§'_§.§;'§);
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
                                    §§push(_loc4_.§`=§);
                                    if(_loc7_ || param2)
                                    {
                                       addr158:
                                       if(!§§pop())
                                       {
                                          if(!(_loc8_ && _loc3_))
                                          {
                                             _loc5_ = new Sprite();
                                             _loc6_ = new §6h§(_loc4_,_loc5_,this.§ 7§,param2);
                                             if(!_loc8_)
                                             {
                                                this.§[O§.push(_loc6_);
                                                if(_loc7_)
                                                {
                                                   if(_loc6_.§#!5§)
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
                                                      this.§&e§.addChild(_loc5_);
                                                      if(!(_loc7_ || _loc3_))
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr230);
                                                   }
                                                   §§goto(addr230);
                                                }
                                                this.§1>§.addChild(_loc5_);
                                                if(_loc7_ || _loc3_)
                                                {
                                                }
                                             }
                                             §§goto(addr230);
                                          }
                                       }
                                       else if(_loc4_.§#!<§)
                                       {
                                          if(!_loc7_)
                                          {
                                          }
                                       }
                                       §§goto(addr243);
                                    }
                                    §§goto(addr158);
                                 }
                                 this.§#@§(parseInt(_loc4_.§#!<§,16));
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
      
      private function §3!G§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§?C§ = null;
         if(!(_loc2_ && this))
         {
            §§push(this.§>1§);
            if(_loc3_ || _loc1_)
            {
               §§push(§§pop().§;!<§);
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        addr52:
                        this.§#@§(this.§>1§.§;!<§);
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
            if(this.§>1§.§2!§)
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
                           §§push(uint(this.§>1§.§2!§));
                        }
                     }
                  }
                  _loc1_ = §§pop().§!!4§(§§pop());
                  if(!_loc2_)
                  {
                     _loc1_.y = 0;
                     if(_loc2_)
                     {
                     }
                     §§goto(addr108);
                  }
                  this.§'e§.addChild(_loc1_);
                  §§goto(addr108);
               }
               §§goto(addr90);
            }
            addr108:
            return;
         }
         §§goto(addr52);
      }
      
      protected function §!!4§(param1:uint) : §?C§
      {
         return new §?C§(4096,4096,param1);
      }
      
      private function §#@§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(§'_§.§17§);
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
            §§push(§'_§.§17§);
         }
      }
      
      public function §9r§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§[!G§();
            if(_loc2_ || this)
            {
               §§push(§#y§);
               §§push("Switch background! NEW BACKGROUND NAME = ");
               if(_loc2_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().log(§§pop());
               if(!(_loc3_ && _loc3_))
               {
                  this.§>-§(param1,this.§%>§);
               }
            }
         }
      }
      
      public function §#,§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§6h§ = null;
         if(!(_loc6_ && param2))
         {
            if(param1 == this.§8F§)
            {
               if(_loc7_)
               {
                  return;
               }
            }
            else
            {
               this.§8F§ = param1;
            }
         }
         for each(_loc3_ in this.§[O§)
         {
            if(!_loc6_)
            {
               _loc3_.§#,§(param1);
            }
         }
      }
      
      public function §break§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§3!E§.§8!§("CHANNEL_AMBIENT"));
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
                           §§push(§3!E§.§8!§("CHANNEL_AMBIENT").§!q§());
                           if(!(_loc2_ && _loc2_))
                           {
                              addr76:
                              if(!§§pop())
                              {
                                 if(!(_loc2_ && this))
                                 {
                                    addr84:
                                    §3!E§.§<!,§(this.§>1§.§%b§,"CHANNEL_AMBIENT",999);
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
      
      public function §!M§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §3!E§.§9o§("CHANNEL_AMBIENT");
         }
      }
      
      public function §4<§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:DisplayObject = null;
         if(_loc4_)
         {
            §§push(param1);
            if(_loc4_)
            {
               §§push(this.§&e§);
               if(_loc4_ || param1)
               {
                  if(§§pop() < §§pop().numChildren)
                  {
                     if(_loc4_)
                     {
                        _loc2_ = this.§&e§.getChildAt(param1);
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
                     §§push(this.§1>§);
                     §§push(param1);
                     if(_loc4_ || _loc3_)
                     {
                        §§push(§§pop() - this.§&e§.numChildren);
                     }
                     _loc2_ = §§pop().getChildAt(§§pop());
                  }
                  else
                  {
                     §§push(param1);
                     if(!(_loc3_ && _loc2_))
                     {
                        addr67:
                        §§push(§§pop() - this.§&e§.numChildren);
                     }
                     if(§§pop() < this.§1>§.numChildren)
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
      
      public function §^-§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:int = 0;
         if(_loc6_ || param1)
         {
            this.§[!!§ = param1;
            if(!(_loc5_ && _loc3_))
            {
               addr36:
               this.§@$§ = param2;
               if(_loc6_)
               {
                  addr41:
                  if(this.§[O§ != null)
                  {
                     if(!_loc5_)
                     {
                        addr47:
                        _loc3_ = 0;
                     }
                     while(true)
                     {
                        if(_loc3_ < this.§[O§.length)
                        {
                           this.§[O§[_loc3_].setSideScroll(this.§[!!§,this.§@$§);
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
                        §§push(this.§'e§);
                        if(!_loc5_)
                        {
                           if(§§pop() != null)
                           {
                              if(_loc6_)
                              {
                                 §§push(this.§'e§);
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    §§push(this.§'e§.scaleY = 1 / §`m§.§;`§);
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       §§pop().scaleX = §§pop();
                                       §§push(this.§'e§);
                                       if(!(_loc5_ && param1))
                                       {
                                          addr135:
                                          §§push(§`m§.§0!6§);
                                          if(_loc6_)
                                          {
                                             §§push(-§§pop());
                                             if(!_loc5_)
                                             {
                                                §§push(1 / §`m§.§;`§);
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
                                                         §§push(this.§'e§);
                                                         §§push(this.§0z§);
                                                         if(_loc6_ || param1)
                                                         {
                                                            §§push(this.§@$§);
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
      
      public function §,C§() : String
      {
         return this.§>1§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
