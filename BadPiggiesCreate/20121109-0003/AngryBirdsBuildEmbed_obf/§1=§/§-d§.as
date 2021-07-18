package §1=§
{
   import § !r§.§`![§;
   import §-!0§.§2! §;
   import §-!`§.§8!p§;
   import §-!`§.DisplayObject;
   import §-!`§.Sprite;
   import §1?§.§#!C§;
   import §1?§.§+!§;
   import §=U§.§3p§;
   import §@!X§.§7j§;
   import §]Z§.§,d§;
   import §]Z§.§0!H§;
   import §]Z§.§7!n§;
   import §`a§.§ !U§;
   
   public class §-d§
   {
      
      public static const §%k§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §%k§ = true;
         }
      }
      
      private var §>!S§:§3p§;
      
      private var §+x§:§,d§;
      
      private var §!4§:Vector.<§?!8§>;
      
      private var §2!N§:Sprite;
      
      private var §@S§:Sprite;
      
      private var §4!b§:Sprite;
      
      private var §^j§:Number;
      
      private var §2!G§:Number;
      
      private var §5!_§:Number;
      
      private var §=!E§:Boolean = true;
      
      private var § I§:Boolean = true;
      
      private var §%!p§:§#!C§;
      
      private var §0<§:Number;
      
      public function §-d§(param1:String, param2:Number, param3:§3p§, param4:Number)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param3))
         {
            this.§!4§ = new Vector.<§?!8§>();
            if(!_loc5_)
            {
               super();
               if(!_loc5_)
               {
                  this.§>!S§ = param3;
                  this.§2!G§ = 0;
                  if(_loc6_ || param2)
                  {
                     this.§5!_§ = 0;
                     this.§^j§ = param2;
                     this.§2!N§ = new Sprite();
                     this.§@S§ = new Sprite();
                     addr62:
                     if(!(_loc5_ && param1))
                     {
                        this.§4!b§ = new Sprite();
                        this.§0<§ = param4;
                        if(!_loc5_)
                        {
                           this.§!A§(param1,param4);
                        }
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr62);
      }
      
      public function get §?!f§() : Boolean
      {
         return this.§=!E§;
      }
      
      public function get §@!-§() : Sprite
      {
         return this.§4!b§;
      }
      
      public function get §?[§() : Sprite
      {
         return this.§2!N§;
      }
      
      public function get §4`§() : Sprite
      {
         return this.§@S§;
      }
      
      protected function get textureManager() : §3p§
      {
         return this.§>!S§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         this.§-!J§();
         if(_loc1_)
         {
            §§push(this.§2!N§);
            if(!(_loc2_ && this))
            {
               §§goto(addr53);
            }
            §§pop().dispose();
            this.§2!N§ = null;
            if(_loc1_ || _loc2_)
            {
               addr53:
               if(§§pop())
               {
                  §§push(this.§2!N§);
               }
               §§push(this.§@S§);
               if(!_loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc1_)
                     {
                        §§goto(addr72);
                     }
                     §§goto(addr98);
                  }
                  §§goto(addr78);
               }
               addr72:
               this.§@S§.dispose();
               this.§@S§ = null;
               if(!_loc2_)
               {
                  addr78:
                  §§push(this.§4!b§);
                  if(_loc1_ || this)
                  {
                     if(!§§pop())
                     {
                     }
                     §§goto(addr101);
                  }
                  §§pop().dispose();
                  addr98:
                  this.§4!b§ = null;
               }
               §§goto(addr101);
            }
            addr101:
            if(_loc1_ || _loc2_)
            {
               §§push(this.§4!b§);
            }
            return;
         }
         §§goto(addr53);
      }
      
      public function §2Q§() : Boolean
      {
         return this.§ I§;
      }
      
      public function §-I§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§ I§);
            if(_loc3_)
            {
               if(§§pop() == param1)
               {
                  return;
               }
               this.§ I§ = param1;
               if(!(_loc2_ && param1))
               {
                  addr57:
                  if(!param1)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        this.§-!J§();
                        if(_loc3_)
                        {
                           addr69:
                        }
                     }
                     §§goto(addr69);
                  }
                  else
                  {
                     this.§!A§(this.§+x§.mName,this.§0<§);
                  }
               }
               return;
            }
            §§goto(addr57);
         }
         §§goto(addr69);
      }
      
      public function §'!e§() : String
      {
         return this.§+x§.§!!Z§;
      }
      
      private function §-!J§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         loop0:
         while(true)
         {
            §§push(this.§@S§);
            while(true)
            {
               if(§§pop().numChildren > 0)
               {
                  §§push(this.§@S§);
                  if(!(_loc2_ && _loc1_))
                  {
                     §§pop().removeChildAt(0,true);
                     if(!_loc1_)
                     {
                        break;
                     }
                     continue loop0;
                  }
                  continue;
               }
               if(_loc1_ || this)
               {
                  break;
               }
               loop2:
               while(true)
               {
                  §§push(this.§2!N§);
                  while(true)
                  {
                     if(§§pop().numChildren <= 0)
                     {
                        if(_loc1_ || _loc2_)
                        {
                           break;
                        }
                        while(this.§!4§.length > 0)
                        {
                           this.§!4§.pop().dispose();
                           if(_loc2_ && this)
                           {
                              break;
                           }
                        }
                        return;
                        addr105:
                     }
                     §§push(this.§2!N§);
                     if(!(_loc2_ && this))
                     {
                        §§pop().removeChildAt(0,true);
                        if(!_loc1_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                  }
                  §§goto(addr105);
               }
            }
            §§goto(addr70);
         }
      }
      
      private function §!A§(param1:String, param2:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:§0!H§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§?!8§ = null;
         if(_loc8_ || param1)
         {
            this.§+x§ = §7!n§.§&!c§(param1);
            if(this.§+x§ == null)
            {
               if(_loc8_)
               {
                  §§push(§`![§);
                  §§push("UNKNOWN LEVEL THEME! ");
                  if(_loc8_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
                  if(!_loc7_)
                  {
                     §§push(§2! §.§4!l§);
                     if(!_loc7_)
                     {
                        §§push(§§pop());
                     }
                     param1 = §§pop();
                     this.§+x§ = §7!n§.§&!c§(param1);
                     if(!_loc7_)
                     {
                        addr66:
                        this.§2!N§.y = this.§^j§;
                        addr71:
                        this.§@S§.y = this.§^j§;
                        if(!_loc8_)
                        {
                        }
                        §§goto(addr83);
                     }
                     this.§4!b§.y = this.§^j§;
                  }
                  addr83:
                  this.§%!r§();
                  var _loc3_:int = 0;
                  while(_loc3_ < this.§+x§.§!4§.length)
                  {
                     _loc4_ = this.§+x§.§!4§[_loc3_];
                     if(!_loc7_)
                     {
                        §§push(§7j§.§?!X§);
                        if(!_loc7_)
                        {
                           §§push(!§§pop());
                           if(!_loc7_)
                           {
                              if(!§§pop())
                              {
                                 if(_loc8_)
                                 {
                                    addr119:
                                    §§pop();
                                    if(_loc8_ || this)
                                    {
                                       §§push(_loc4_.§;A§);
                                       if(!_loc7_)
                                       {
                                          addr132:
                                          if(!§§pop())
                                          {
                                             if(_loc8_ || this)
                                             {
                                                addr140:
                                                _loc5_ = new Sprite();
                                                _loc6_ = new §?!8§(_loc4_,_loc5_,this.§>!S§,param2);
                                                if(!_loc7_)
                                                {
                                                   this.§!4§.push(_loc6_);
                                                   if(_loc8_)
                                                   {
                                                      addr161:
                                                      if(_loc6_.§,!b§)
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            addr166:
                                                            this.§@S§.addChild(_loc5_);
                                                            if(!(_loc8_ || param2))
                                                            {
                                                               continue;
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         this.§2!N§.addChild(_loc5_);
                                                         if(_loc7_ && param1)
                                                         {
                                                            continue;
                                                         }
                                                      }
                                                      _loc3_++;
                                                      continue;
                                                   }
                                                   §§goto(addr166);
                                                }
                                                §§goto(addr161);
                                             }
                                          }
                                          else if(_loc4_.§43§)
                                          {
                                             if(!(_loc7_ && this))
                                             {
                                                addr210:
                                                this.§#!&§(parseInt(_loc4_.§43§,16));
                                             }
                                          }
                                          §§goto(addr161);
                                       }
                                       §§goto(addr132);
                                    }
                                    §§goto(addr140);
                                 }
                              }
                           }
                           §§goto(addr132);
                        }
                        §§goto(addr119);
                     }
                     §§goto(addr210);
                  }
                  return;
               }
               §§goto(addr71);
            }
         }
         §§goto(addr66);
      }
      
      private function §%!r§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§8!p§ = null;
         if(!_loc2_)
         {
            §§push(this.§+x§);
            if(_loc3_)
            {
               §§push(§§pop().§94§);
               if(_loc3_ || this)
               {
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        this.§#!&§(this.§+x§.§94§);
                        if(_loc3_ || this)
                        {
                        }
                        addr63:
                        §§push(this);
                        if(!_loc2_)
                        {
                           §§push(uint(0));
                           if(_loc3_ || _loc3_)
                           {
                              if(!§§pop())
                              {
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    addr94:
                                    §§pop();
                                    §§push(uint(this.§+x§.§,!u§));
                                 }
                              }
                              _loc1_ = §§pop().§78§(§§pop());
                              if(!_loc2_)
                              {
                                 _loc1_.y = 0;
                                 if(!_loc2_)
                                 {
                                    this.§4!b§.addChild(_loc1_);
                                 }
                              }
                              §§goto(addr113);
                           }
                        }
                        §§goto(addr94);
                     }
                  }
                  addr61:
                  §§push(this.§+x§.§,!u§);
               }
               if(§§pop())
               {
                  §§goto(addr63);
               }
               addr113:
               return;
            }
            §§goto(addr61);
         }
         §§goto(addr63);
      }
      
      protected function §78§(param1:uint) : §8!p§
      {
         return new §8!p§(4096,4096,param1);
      }
      
      private function §#!&§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(§7j§.§else§);
            if(!(_loc3_ && this))
            {
               if(§§pop())
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     addr52:
                     §7j§.§else§.color = param1;
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
         if(_loc2_ || _loc2_)
         {
            this.§-!J§();
            if(!_loc3_)
            {
               §§push(§`![§);
               §§push("Switch background! NEW BACKGROUND NAME = ");
               if(!(_loc3_ && _loc2_))
               {
                  §§push(§§pop() + param1);
               }
               §§pop().log(§§pop());
               if(!_loc3_)
               {
                  addr51:
                  this.§!A§(param1,this.§0<§);
               }
            }
            return;
         }
         §§goto(addr51);
      }
      
      public function §6!Y§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§?!8§ = null;
         if(!(_loc6_ && param2))
         {
            if(param1 == this.§=!E§)
            {
               if(!(_loc6_ && param1))
               {
                  return;
               }
            }
         }
         this.§=!E§ = param1;
         for each(_loc3_ in this.§!4§)
         {
            if(_loc7_ || _loc3_)
            {
               _loc3_.§6!Y§(param1);
            }
         }
      }
      
      public function §[!<§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§+!§.§%!6§("CHANNEL_AMBIENT"));
            if(_loc1_)
            {
               §§push(§§pop() == null);
               if(!(_loc2_ && _loc1_))
               {
                  if(!§§pop())
                  {
                     if(!(_loc2_ && this))
                     {
                        §§goto(addr61);
                     }
                  }
                  §§goto(addr76);
               }
               addr61:
               §§pop();
               if(_loc1_)
               {
                  addr67:
                  §§push(§+!§.§%!6§("CHANNEL_AMBIENT").§6e§());
                  if(!(_loc2_ && _loc1_))
                  {
                     addr76:
                     if(!§§pop())
                     {
                        if(_loc1_)
                        {
                           addr79:
                           §+!§.§4c§(this.§+x§.§,'§,"CHANNEL_AMBIENT",999);
                        }
                     }
                  }
                  §§goto(addr76);
               }
               return;
            }
            §§goto(addr67);
         }
         §§goto(addr79);
      }
      
      public function §8!n§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §+!§.§+!h§("CHANNEL_AMBIENT");
         }
      }
      
      public function §]h§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:DisplayObject = null;
         if(_loc4_ || _loc3_)
         {
            §§push(param1);
            if(_loc4_)
            {
               §§push(this.§2!N§);
               if(_loc4_)
               {
                  if(§§pop() < §§pop().numChildren)
                  {
                     if(_loc4_ || this)
                     {
                        addr53:
                        _loc2_ = this.§2!N§.getChildAt(param1);
                        if(_loc4_)
                        {
                           §§goto(addr100);
                        }
                        §§goto(addr104);
                     }
                     else
                     {
                        addr88:
                        §§push(this.§@S§);
                        §§push(param1);
                        if(_loc4_)
                        {
                           §§push(§§pop() - this.§2!N§.numChildren);
                        }
                        _loc2_ = §§pop().getChildAt(§§pop());
                     }
                  }
                  else
                  {
                     §§push(param1);
                     if(_loc4_ || this)
                     {
                        addr74:
                        if(§§pop() - this.§2!N§.numChildren < this.§@S§.numChildren)
                        {
                           §§goto(addr88);
                        }
                     }
                     §§goto(addr74);
                  }
                  addr100:
                  if(_loc2_)
                  {
                     if(!_loc3_)
                     {
                        addr104:
                        §§push(_loc2_);
                        §§push(_loc2_.visible);
                        if(!(_loc3_ && this))
                        {
                           §§push(!§§pop());
                        }
                        §§pop().visible = §§pop();
                     }
                  }
                  return;
               }
            }
            §§goto(addr74);
         }
         §§goto(addr53);
      }
      
      public function §[t§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:int = 0;
         if(_loc6_ || _loc3_)
         {
            this.§2!G§ = param1;
            if(!_loc5_)
            {
               addr31:
               this.§5!_§ = param2;
               if(_loc6_)
               {
                  if(this.§!4§ != null)
                  {
                     if(_loc6_)
                     {
                        _loc3_ = 0;
                     }
                     §§goto(addr44);
                  }
                  §§goto(addr92);
               }
            }
            addr44:
            while(true)
            {
               if(_loc3_ < this.§!4§.length)
               {
                  this.§!4§[_loc3_].setSideScroll(this.§2!G§,this.§5!_§);
                  if(!(_loc6_ || _loc3_))
                  {
                     break;
                  }
                  continue;
               }
               if(_loc6_ || param2)
               {
                  addr92:
                  §§push(this.§4!b§);
                  if(_loc6_)
                  {
                     if(§§pop() != null)
                     {
                        §§push(this.§4!b§);
                        if(!_loc5_)
                        {
                           §§push(this.§4!b§.scaleY = 1 / § !U§.§#!-§);
                           if(!(_loc5_ && param1))
                           {
                              §§pop().scaleX = §§pop();
                              addr121:
                              §§push(this.§4!b§);
                              if(_loc6_ || param1)
                              {
                                 §§push(§ !U§.§@B§);
                                 if(!(_loc5_ && this))
                                 {
                                    §§push(-§§pop());
                                    if(_loc6_ || this)
                                    {
                                       §§push(1 / § !U§.§#!-§);
                                       if(!(_loc5_ && param1))
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc6_)
                                          {
                                             addr171:
                                             §§pop().x = §§pop();
                                             addr181:
                                             §§push(this.§4!b§);
                                             §§push(this.§^j§);
                                             if(_loc6_)
                                             {
                                                addr178:
                                                §§push(this.§5!_§);
                                             }
                                             §§pop().y = §§pop();
                                             break;
                                          }
                                          §§goto(addr178);
                                       }
                                       §§goto(addr181);
                                       §§push(§§pop() - §§pop());
                                    }
                                    §§goto(addr178);
                                 }
                              }
                              §§goto(addr181);
                           }
                        }
                        §§goto(addr171);
                     }
                     break;
                  }
                  §§goto(addr171);
               }
               §§goto(addr121);
            }
            return;
         }
         §§goto(addr31);
      }
      
      public function §%N§() : String
      {
         return this.§+x§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
