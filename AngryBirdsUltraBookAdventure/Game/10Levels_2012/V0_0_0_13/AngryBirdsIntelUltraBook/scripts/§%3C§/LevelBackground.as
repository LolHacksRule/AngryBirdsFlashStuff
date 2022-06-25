package §<§
{
   import §"L§.LevelModel;
   import §,!_§.TextureManager;
   import §0P§.Starling;
   import §6!7§.§3x§;
   import §6!7§.DisplayObject;
   import §6!7§.Sprite;
   import §6b§.Log;
   import §<!j§.§%!-§;
   import §=?§.§7[§;
   import §=?§.SoundEngine;
   import §[m§.§#c§;
   import §[m§.LevelThemeBackground;
   import §[m§.LevelThemeBackgroundManager;
   
   public class LevelBackground
   {
      
      public static const §'G§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || LevelBackground)
         {
            §'G§ = true;
         }
      }
      
      private var §6! §:TextureManager;
      
      private var § !!§:LevelThemeBackground;
      
      private var §1!,§:Vector.<LevelBackgroundLayer>;
      
      private var § J§:Sprite;
      
      private var §%%§:Sprite;
      
      private var §"N§:Sprite;
      
      private var §44§:Number;
      
      private var §5v§:Number;
      
      private var §-!N§:Number;
      
      private var §6!]§:Boolean = true;
      
      private var §8!J§:Boolean = true;
      
      private var § !$§:§7[§;
      
      private var §5!4§:Number;
      
      public function LevelBackground(param1:String, param2:Number, param3:TextureManager, param4:Number)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            this.§1!,§ = new Vector.<LevelBackgroundLayer>();
            loop0:
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.§6! § = param3;
                  while(true)
                  {
                     this.§5v§ = 0;
                     loop3:
                     while(_loc5_)
                     {
                        this.§-!N§ = 0;
                        loop4:
                        while(true)
                        {
                           this.§44§ = param2;
                           while(_loc5_)
                           {
                              this.§ J§ = new Sprite();
                              loop6:
                              while(true)
                              {
                                 this.§%%§ = new Sprite();
                                 addr78:
                                 while(true)
                                 {
                                    if(!_loc6_)
                                    {
                                       continue loop4;
                                    }
                                    continue loop6;
                                 }
                                 continue loop4;
                              }
                              addr42:
                              if(_loc6_ && param1)
                              {
                                 continue;
                              }
                              this.§;^§(param1,param4);
                              addr49:
                              if(!_loc5_)
                              {
                                 while(true)
                                 {
                                    if(_loc6_)
                                    {
                                       continue loop1;
                                    }
                                    §§goto(addr42);
                                    §§goto(addr49);
                                 }
                                 continue;
                                 addr40:
                              }
                              if(_loc5_)
                              {
                                 if(!_loc6_)
                                 {
                                    return;
                                    addr35:
                                 }
                                 continue loop3;
                              }
                              §§goto(addr78);
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§"N§ = new Sprite();
            §§goto(addr65);
         }
         §§goto(addr35);
      }
      
      public function get §99§() : Boolean
      {
         return this.§6!]§;
      }
      
      public function get §@![§() : Sprite
      {
         return this.§"N§;
      }
      
      public function get §4a§() : Sprite
      {
         return this.§ J§;
      }
      
      public function get §1!g§() : Sprite
      {
         return this.§%%§;
      }
      
      protected function get textureManager() : TextureManager
      {
         return this.§6! §;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§8A§();
            loop0:
            while(true)
            {
               §§push(this.§ J§);
               if(_loc1_ || _loc2_)
               {
                  §§push(Boolean(§§pop()));
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§push(this.§%%§);
                           if(_loc1_)
                           {
                              §§push(Boolean(§§pop()));
                              continue loop1;
                           }
                           loop10:
                           while(true)
                           {
                              §§pop().dispose();
                              loop9:
                              while(true)
                              {
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    this.§%%§ = null;
                                    while(!_loc1_)
                                    {
                                       continue loop9;
                                       §§goto(addr106);
                                    }
                                    addr106:
                                    loop14:
                                    while(true)
                                    {
                                       addr39:
                                       while(true)
                                       {
                                          §§push(this.§"N§);
                                          if(!_loc2_)
                                          {
                                             §§push(Boolean(§§pop()));
                                             if(!_loc2_)
                                             {
                                                if(!§§pop())
                                                {
                                                   break;
                                                }
                                                if(!_loc2_)
                                                {
                                                   addr52:
                                                   this.§"N§.dispose();
                                                }
                                                while(true)
                                                {
                                                   if(_loc1_ || _loc1_)
                                                   {
                                                      continue;
                                                   }
                                                   addr93:
                                                   while(_loc1_)
                                                   {
                                                      §§push(this.§%%§);
                                                      continue loop10;
                                                   }
                                                   continue loop0;
                                                }
                                                continue loop9;
                                             }
                                             continue loop1;
                                          }
                                          §§goto(addr52);
                                          continue loop14;
                                       }
                                       return;
                                    }
                                    addr76:
                                    addr78:
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       continue loop3;
                                    }
                                    addr121:
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr134);
                  }
               }
               §§goto(addr136);
            }
         }
         §§goto(addr78);
      }
      
      public function §5>§() : Boolean
      {
         return this.§8!J§;
      }
      
      public function §,>§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this.§8!J§);
            loop0:
            while(true)
            {
               if(§§pop() != param1)
               {
                  loop1:
                  while(true)
                  {
                     this.§8!J§ = param1;
                     loop2:
                     while(true)
                     {
                        §§push(param1);
                        if(!_loc3_)
                        {
                           continue loop0;
                        }
                        addr88:
                        if(!§§pop())
                        {
                           this.§;^§(this.§ !!§.mName,this.§5!4§);
                           if(!_loc3_)
                           {
                              if(!(_loc3_ && this))
                              {
                                 if(!(_loc3_ && this))
                                 {
                                    §§goto(addr24);
                                 }
                                 continue loop1;
                              }
                              addr89:
                              if(!_loc2_)
                              {
                                 §§goto(addr111);
                              }
                              while(true)
                              {
                                 this.§8A§();
                              }
                           }
                           while(true)
                           {
                              if(!(_loc3_ && this))
                              {
                                 break loop2;
                              }
                              continue loop2;
                           }
                        }
                        §§goto(addr89);
                     }
                     addr24:
                     return;
                  }
               }
               addr111:
               return;
            }
         }
         §§goto(addr91);
      }
      
      public function § #§() : String
      {
         return this.§ !!§.§>!F§;
      }
      
      private function §8A§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         loop0:
         while(true)
         {
            §§push(this.§%%§);
            if(!_loc1_)
            {
               if(§§pop().numChildren <= 0)
               {
                  loop1:
                  do
                  {
                     while(true)
                     {
                        §§push(this.§ J§);
                        if(!(_loc1_ && this))
                        {
                           if(§§pop().numChildren <= 0)
                           {
                              do
                              {
                                 while(true)
                                 {
                                    if(this.§1!,§.length <= 0)
                                    {
                                       if(!_loc1_)
                                       {
                                          break;
                                       }
                                    }
                                    else
                                    {
                                       this.§1!,§.pop().dispose();
                                    }
                                 }
                              }
                              while(!_loc2_);
                              
                              if(_loc2_)
                              {
                                 continue loop1;
                              }
                           }
                           else
                           {
                              addr93:
                              this.§ J§.removeChildAt(0,true);
                           }
                           if(!(_loc2_ || this))
                           {
                              break;
                           }
                           continue;
                        }
                        §§goto(addr93);
                     }
                     continue loop0;
                  }
                  while(!(_loc2_ || _loc2_));
                  
                  return;
               }
               §§push(this.§%%§);
            }
            §§pop().removeChildAt(0,true);
         }
      }
      
      private function §;^§(param1:String, param2:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:§#c§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:LevelBackgroundLayer = null;
         if(!(_loc8_ && param1))
         {
            this.§ !!§ = LevelThemeBackgroundManager.§]!0§(param1);
            while(true)
            {
               if(this.§ !!§ == null)
               {
                  loop1:
                  while(true)
                  {
                     §§push(Log);
                     §§push("UNKNOWN LEVEL THEME! ");
                     if(_loc7_)
                     {
                        §§push(§§pop() + param1);
                     }
                     §§pop().log(§§pop());
                     loop2:
                     while(true)
                     {
                        §§push(LevelModel.§-!Q§);
                        if(_loc7_)
                        {
                           §§push(§§pop());
                        }
                        param1 = §§pop();
                        while(_loc7_)
                        {
                           this.§ !!§ = LevelThemeBackgroundManager.§]!0§(param1);
                           while(_loc7_)
                           {
                              while(true)
                              {
                              }
                              while(_loc7_ || this)
                              {
                                 this.§%%§.y = this.§44§;
                                 continue loop2;
                              }
                           }
                        }
                        continue loop1;
                     }
                  }
               }
               while(true)
               {
                  this.§ J§.y = this.§44§;
                  §§goto(addr89);
               }
               if(_loc8_ && param2)
               {
                  continue;
               }
               this.§+@§();
               if(_loc7_ || param1)
               {
                  §§goto(addr44);
               }
               §§goto(addr52);
            }
         }
         §§goto(addr106);
      }
      
      private function §+@§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§3x§ = null;
         if(!_loc2_)
         {
            §§push(this.§ !!§);
            if(_loc3_)
            {
               §§push(§§pop().§52§);
               if(!(_loc2_ && _loc3_))
               {
                  §§push(Boolean(§§pop()));
                  if(_loc3_)
                  {
                     if(§§pop())
                     {
                        if(_loc3_ || _loc1_)
                        {
                           addr55:
                           this.§ !R§(this.§ !!§.§52§);
                           if(_loc3_)
                           {
                              §§goto(addr63);
                           }
                        }
                        §§goto(addr68);
                     }
                  }
               }
               §§goto(addr63);
            }
            addr63:
            if(this.§ !!§.§ V§)
            {
               addr68:
               §§push(this);
               if(_loc3_)
               {
                  §§push(uint(0));
                  if(!(_loc2_ && _loc3_))
                  {
                     if(!§§pop())
                     {
                        if(!_loc2_)
                        {
                           §§pop();
                           addr96:
                           §§push(uint(this.§ !!§.§ V§));
                        }
                     }
                  }
                  _loc1_ = §§pop().createGroundQuad(§§pop());
                  if(_loc3_)
                  {
                     _loc1_.y = 0;
                     if(!_loc2_)
                     {
                        this.§"N§.addChild(_loc1_);
                     }
                  }
                  §§goto(addr115);
               }
               §§goto(addr96);
            }
            addr115:
            return;
         }
         §§goto(addr55);
      }
      
      protected function createGroundQuad(param1:uint) : §3x§
      {
         return new §3x§(4096,4096,param1);
      }
      
      private function § !R§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(Starling.§!!F§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr46:
                     Starling.§!!F§.color = param1;
                  }
               }
               return;
            }
         }
         §§goto(addr46);
      }
      
      public function § ![§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§8A§();
         }
         do
         {
            §§push(Log);
            §§push("Switch background! NEW BACKGROUND NAME = ");
            if(!(_loc3_ && _loc3_))
            {
               §§push(§§pop() + param1);
            }
            §§pop().log(§§pop());
            do
            {
               this.§;^§(param1,this.§5!4§);
            }
            while(!_loc2_);
            
         }
         while(_loc3_ && this);
         
      }
      
      public function §^!Y§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:LevelBackgroundLayer = null;
         if(!(_loc7_ && _loc3_))
         {
            if(param1 == this.§6!]§)
            {
               if(!_loc7_)
               {
                  return;
               }
            }
            else
            {
               this.§6!]§ = param1;
            }
         }
         for each(_loc3_ in this.§1!,§)
         {
            if(!(_loc7_ && param1))
            {
               _loc3_.§^!Y§(param1);
            }
         }
      }
      
      public function §5T§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(SoundEngine.§!_§("CHANNEL_AMBIENT"));
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               addr105:
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  addr106:
                  while(true)
                  {
                     §§push(§§pop());
                     if(!_loc2_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                           addr59:
                           if(!(_loc1_ || this))
                           {
                              continue;
                           }
                           if(!_loc1_)
                           {
                              continue loop1;
                           }
                           while(§§pop())
                           {
                              if(_loc1_ || _loc2_)
                              {
                                 if(_loc2_)
                                 {
                                    continue loop0;
                                 }
                                 SoundEngine.§9!X§(this.§ !!§.§?!R§,"CHANNEL_AMBIENT",999);
                              }
                              break;
                           }
                           return;
                           addr68:
                        }
                     }
                     else
                     {
                        §§goto(addr68);
                     }
                  }
               }
            }
         }
         §§goto(addr89);
      }
      
      public function §"d§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            SoundEngine.§'!B§("CHANNEL_AMBIENT");
         }
      }
      
      public function §;!c§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:DisplayObject = null;
         if(_loc4_)
         {
            §§push(param1);
            if(_loc4_)
            {
               §§push(this.§ J§);
               if(!_loc3_)
               {
                  if(§§pop() < §§pop().numChildren)
                  {
                     if(_loc4_ || this)
                     {
                        _loc2_ = this.§ J§.getChildAt(param1);
                        if(!(_loc3_ && _loc3_))
                        {
                           §§goto(addr95);
                        }
                        §§goto(addr105);
                     }
                     else
                     {
                        addr73:
                        §§push(this.§%%§);
                        §§push(param1);
                        if(_loc4_)
                        {
                           §§push(§§pop() - this.§ J§.numChildren);
                        }
                        _loc2_ = §§pop().getChildAt(§§pop());
                     }
                  }
                  else
                  {
                     §§push(param1);
                     if(!_loc3_)
                     {
                        addr67:
                        §§push(§§pop() - this.§ J§.numChildren);
                     }
                     if(§§pop() < this.§%%§.numChildren)
                     {
                        §§goto(addr73);
                     }
                  }
                  addr95:
                  if(_loc2_)
                  {
                     if(_loc4_ || param1)
                     {
                        addr105:
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
            §§goto(addr67);
         }
         §§goto(addr73);
      }
      
      public function §+F§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = 0;
         if(_loc5_ || _loc3_)
         {
            this.§5v§ = param1;
            loop0:
            while(true)
            {
               this.§-!N§ = param2;
               loop1:
               while(true)
               {
                  if(_loc5_ || _loc3_)
                  {
                     if(this.§1!,§ != null)
                     {
                        if(!_loc6_)
                        {
                           continue;
                        }
                        addr86:
                        loop9:
                        while(true)
                        {
                           loop10:
                           while(true)
                           {
                              §§push(_loc3_);
                              do
                              {
                                 if(§§pop() >= this.§1!,§.length)
                                 {
                                    break loop10;
                                 }
                                 this.§1!,§[_loc3_].setSideScroll(this.§5v§,this.§-!N§);
                                 if(!_loc5_)
                                 {
                                    break loop1;
                                 }
                                 §§push(_loc3_);
                                 if(!(_loc5_ || _loc3_))
                                 {
                                    break;
                                 }
                                 §§push(§§pop() + 1);
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                                 §§push(int(§§pop()));
                              }
                              while(_loc6_ && param2);
                              
                              _loc3_ = §§pop();
                              if(_loc6_)
                              {
                                 return;
                              }
                              addr166:
                              addr220:
                              if(false)
                              {
                                 continue loop9;
                              }
                           }
                           if(!(_loc6_ && param1))
                           {
                              break loop1;
                           }
                           addr164:
                           addr223:
                           §§push(this.§"N§);
                           loop8:
                           while(true)
                           {
                              §§push(§%!-§.§^6§);
                              if(!(_loc6_ && _loc3_))
                              {
                                 while(true)
                                 {
                                    §§push(-§§pop());
                                 }
                                 addr233:
                              }
                              loop4:
                              while(true)
                              {
                                 §§push(1 / §%!-§.§?!I§);
                                 loop5:
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    loop6:
                                    while(true)
                                    {
                                       §§pop().x = §§pop();
                                       addr241:
                                       loop2:
                                       while(true)
                                       {
                                          §§push(this.§"N§);
                                          if(!(_loc5_ || param2))
                                          {
                                             continue loop8;
                                          }
                                          while(true)
                                          {
                                             §§push(this.§44§);
                                             if(!_loc6_)
                                             {
                                                §§push(this.§-!N§);
                                                if(_loc6_ && param1)
                                                {
                                                   continue loop5;
                                                }
                                                §§push(§§pop() - §§pop());
                                             }
                                             if(!(_loc6_ && this))
                                             {
                                                if(_loc5_ || _loc3_)
                                                {
                                                   §§pop().y = §§pop();
                                                   if(!_loc6_)
                                                   {
                                                      break;
                                                   }
                                                   continue loop2;
                                                }
                                                continue loop4;
                                             }
                                             continue loop6;
                                          }
                                          §§goto(addr220);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     break;
                  }
                  continue loop0;
               }
               §§push(this.§"N§);
               if(_loc5_)
               {
                  if(§§pop() != null)
                  {
                     if(!(_loc6_ && _loc3_))
                     {
                        §§push(this.§"N§);
                        if(_loc5_ || _loc3_)
                        {
                           §§push(this.§"N§.scaleY = 1 / §%!-§.§?!I§);
                           if(_loc5_)
                           {
                              §§pop().scaleX = §§pop();
                              if(!_loc6_)
                              {
                                 §§goto(addr164);
                              }
                              §§goto(addr241);
                           }
                           §§goto(addr233);
                        }
                        §§goto(addr179);
                     }
                     §§goto(addr164);
                  }
                  §§goto(addr166);
               }
               §§goto(addr223);
            }
         }
         §§goto(addr86);
      }
      
      public function §=z§() : String
      {
         return this.§ !!§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
