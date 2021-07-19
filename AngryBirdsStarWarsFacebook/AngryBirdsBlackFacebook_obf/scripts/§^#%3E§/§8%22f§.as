package §^#>§
{
   import §!!U§.Sprite;
   import §"O§.§"K§;
   import §&#H§.§3#J§;
   import §'"E§.§8d§;
   import §,"N§.§@#B§;
   import §2"Y§.§,§;
   import §6!H§.§8!r§;
   import §69§.§!!u§;
   import §69§.§""H§;
   import §69§.§4!e§;
   import §7!F§.§7§;
   import §7P§.§3C§;
   import §7P§.§7"s§;
   import §7P§.§7B§;
   import §7P§.§9"k§;
   import §7P§.§=1§;
   import §7P§.§=T§;
   import §7P§.§?"N§;
   import §7P§.§@!8§;
   import §7P§.§^!K§;
   import §9#@§.§ "V§;
   import §9#@§.§##D§;
   import §?m§.§+"2§;
   import §?m§.§,"X§;
   import §?m§.§8!B§;
   import §?m§.§=!z§;
   import flash.display.Stage;
   
   public class §8"f§ extends §'6§
   {
       
      
      private var §>=§:§"K§;
      
      private var §#"f§:Vector.<String>;
      
      private var §5"'§:Vector.<String>;
      
      protected var §2#R§:Boolean;
      
      protected var § ,§:int;
      
      public function §8"f§(param1:Stage, param2:§,#5§, param3:§!!u§, param4:§+"2§)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            super(param1,param2,param3,param4);
         }
      }
      
      public function get §>O§() : int
      {
         return this.§ ,§;
      }
      
      public function get §-#I§() : Boolean
      {
         return this.§2#R§;
      }
      
      public function set §-#I§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§2#R§ = param1;
         }
      }
      
      public function get §=j§() : §"K§
      {
         return this.§>=§;
      }
      
      override public function init(param1:§8!B§) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:§8!r§ = null;
         var _loc5_:§8d§ = null;
         if(!(_loc8_ && param1))
         {
            super.init(param1);
            if(!(_loc8_ && _loc3_))
            {
               this.§5"'§ = new Vector.<String>();
            }
         }
         var _loc2_:§@#B§ = §@#B§(§4#;§.singleton.dataModel);
         var _loc3_:Vector.<§8!r§> = _loc2_.§]"<§.§;#?§.§^"'§;
         if(!(_loc8_ && _loc2_))
         {
            this.§#"f§ = new Vector.<String>(0);
            if(_loc9_)
            {
               this.§>=§ = new §"K§(_loc2_,§,"X§(§+!b§));
            }
         }
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = §8d§(new _loc4_.actionClass());
            if(_loc9_ || _loc3_)
            {
               this.§>=§.§&"]§(_loc5_);
               if(_loc9_ || this)
               {
                  if(!_loc4_.§+'§)
                  {
                     if(_loc9_ || this)
                     {
                        this.§#"f§.push(_loc4_.§="A§);
                     }
                  }
               }
            }
         }
         if(!_loc8_)
         {
            this.§2#R§ = false;
         }
      }
      
      override public function isCollisionExcluded(param1:§7B§, param2:§7B§) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(param1 is §@!8§);
            while(true)
            {
               §§push(§§pop());
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr178:
                        while(true)
                        {
                           §§push(param2 is §@!8§);
                        }
                     }
                     addr177:
                  }
                  while(true)
                  {
                     while(true)
                     {
                        §§push(§§pop());
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop7:
                              while(true)
                              {
                                 §§pop();
                                 loop8:
                                 while(true)
                                 {
                                    §§push(param1 is §3C§);
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       loop10:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             while(true)
                                             {
                                                §§pop();
                                                loop12:
                                                while(!(_loc4_ && param1))
                                                {
                                                   §§push(param2 is §3C§);
                                                   while(true)
                                                   {
                                                      loop14:
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         addr124:
                                                         while(!(_loc4_ && this))
                                                         {
                                                            if(§§pop())
                                                            {
                                                               loop18:
                                                               while(§§pop())
                                                               {
                                                                  if(_loc3_ || _loc3_)
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           continue loop8;
                                                                        }
                                                                        return true;
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(param2 is §=T§);
                                                                           if(_loc3_ || this)
                                                                           {
                                                                              if(!_loc3_)
                                                                              {
                                                                                 continue loop7;
                                                                              }
                                                                              if(!(_loc3_ || param2))
                                                                              {
                                                                                 continue loop14;
                                                                              }
                                                                              if(_loc3_)
                                                                              {
                                                                                 continue loop18;
                                                                              }
                                                                              addr132:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    §§pop();
                                                                                    while(_loc3_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(param1 is §=T§);
                                                                                          continue loop14;
                                                                                       }
                                                                                       if(_loc3_ || _loc3_)
                                                                                       {
                                                                                          break loop18;
                                                                                       }
                                                                                    }
                                                                                    continue loop12;
                                                                                    addr135:
                                                                                 }
                                                                                 §§goto(addr177);
                                                                              }
                                                                           }
                                                                           addr116:
                                                                           §§pop();
                                                                        }
                                                                     }
                                                                     return §§pop();
                                                                  }
                                                                  §§goto(addr64);
                                                                  §§goto(addr135);
                                                               }
                                                               return super.isCollisionExcluded(param1,param2);
                                                               addr49:
                                                            }
                                                            §§goto(addr132);
                                                         }
                                                         continue loop10;
                                                      }
                                                   }
                                                }
                                                §§goto(addr178);
                                             }
                                          }
                                          §§goto(addr122);
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr49);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr137);
      }
      
      override protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            this.§>=§.updateWithTime(param1);
         }
         return super.updateWithTime(param1,param2,param3);
      }
      
      override public function handleEngineUpdateStep(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.handleEngineUpdateStep(param1);
            do
            {
               this.§>=§.handleEngineUpdateStep(param1);
            }
            while(!(_loc3_ || param1));
            
         }
      }
      
      override protected function initializeLevelObjectManagerBlack(param1:§8!B§, param2:String, param3:String = "", param4:String = "") : §^!K§
      {
         return new §7"s§(this,§=!z§(param1),new Sprite(),param2,param3,param4);
      }
      
      override protected function initializeLevelSlingshot(param1:§8!B§) : §;x§
      {
         return new §>f§(this,param1,new Sprite());
      }
      
      override public function shootBird(param1:§`"]§, param2:Number, param3:Number) : §?"N§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:§?"N§ = super.shootBird(param1,param2,param3);
         var _loc5_:§'"3§ = param1 as §'"3§;
         var _loc6_:§9"k§ = _loc4_ as §9"k§;
         if(_loc8_ || param2)
         {
            if(_loc5_)
            {
               loop0:
               while(true)
               {
                  §§push(_loc5_.§[g§);
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §7"s§(§%H§).§#W§(_loc5_,_loc4_);
                           addr222:
                           while(true)
                           {
                           }
                        }
                        addr216:
                     }
                     while(true)
                     {
                        §§push(_loc5_.§!#?§);
                        loop5:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!(_loc7_ && this))
                              {
                                 §7"s§(§%H§).§@#Y§(_loc5_,_loc4_,_loc5_.§="U§);
                              }
                              while(true)
                              {
                                 addr139:
                                 if(!(_loc8_ || param3))
                                 {
                                    continue;
                                 }
                                 addr42:
                                 return _loc4_;
                                 addr47:
                              }
                           }
                           while(true)
                           {
                              §§push(_loc5_.§^"x§);
                              loop8:
                              for(; !_loc7_; while(!(_loc7_ && param1))
                              {
                                 continue loop1;
                              })
                              {
                                 if(!§§pop())
                                 {
                                    §§push(_loc5_.§ !c§);
                                    if(_loc7_ && param3)
                                    {
                                       continue;
                                    }
                                    if(§§pop())
                                    {
                                       if(_loc8_ || param2)
                                       {
                                          if(_loc8_ || this)
                                          {
                                             while(true)
                                             {
                                                _loc6_.glow(§15§.§1!6§);
                                                addr78:
                                                while(true)
                                                {
                                                   if(!(_loc7_ && this))
                                                   {
                                                      if(_loc8_ || param3)
                                                      {
                                                         §§goto(addr42);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            if(_loc8_ || param3)
                                                            {
                                                               continue loop0;
                                                            }
                                                         }
                                                         addr155:
                                                      }
                                                   }
                                                   else
                                                   {
                                                      loop10:
                                                      while(true)
                                                      {
                                                         if(_loc8_ || param1)
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               §§goto(addr139);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§push(_loc4_ is §=1§);
                                                                     continue loop8;
                                                                  }
                                                                  §§goto(addr155);
                                                               }
                                                               addr153:
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr173:
                                                            while(true)
                                                            {
                                                               if(_loc8_ || param1)
                                                               {
                                                                  §§goto(addr47);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr216);
                                                               }
                                                            }
                                                            addr173:
                                                         }
                                                         addr124:
                                                         while(true)
                                                         {
                                                            §=1§(_loc4_).glow(§15§.§!![§);
                                                            continue loop10;
                                                         }
                                                         §§goto(addr173);
                                                      }
                                                      addr130:
                                                   }
                                                   §§goto(addr222);
                                                }
                                             }
                                             addr74:
                                          }
                                          else
                                          {
                                             §§goto(addr124);
                                          }
                                          §§goto(addr130);
                                       }
                                       §§goto(addr78);
                                    }
                                    §§goto(addr42);
                                 }
                                 §§goto(addr153);
                              }
                              continue loop5;
                           }
                        }
                     }
                     if(_loc7_ && param2)
                     {
                        continue;
                     }
                     if(§§pop())
                     {
                        §§goto(addr124);
                     }
                     §§goto(addr42);
                  }
               }
            }
            §§goto(addr42);
         }
         §§goto(addr74);
      }
      
      public function §8%§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!this.§5"'§)
            {
               if(!_loc2_)
               {
                  §§push(false);
                  if(!(_loc2_ && _loc3_))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr53:
                  return this.§5"'§.indexOf(param1) >= 0;
               }
               return §§pop();
            }
         }
         §§goto(addr53);
      }
      
      public function §0"[§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(!this.§5"'§)
            {
               if(_loc2_ || _loc3_)
               {
                  this.§5"'§ = new Vector.<String>(0);
                  addr74:
                  while(true)
                  {
                  }
                  addr74:
               }
               §§goto(addr74);
            }
            while(true)
            {
               this.§5"'§.push(param1);
               if(!_loc3_)
               {
                  break;
               }
               §§goto(addr74);
            }
            return;
         }
         §§goto(addr74);
      }
      
      public function § !S§() : Vector.<String>
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(this.§5"'§)
            {
               if(_loc2_)
               {
                  §§goto(addr49);
               }
            }
            return null;
         }
         addr49:
         return this.§5"'§.concat();
      }
      
      public function §2!o§() : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:Vector.<String> = null;
         var _loc3_:* = 0;
         var _loc4_:int = 0;
         var _loc5_:* = 0;
         var _loc1_:* = 0;
         if(!(_loc7_ && _loc2_))
         {
            if(this.§5"'§)
            {
               addr37:
               _loc2_ = this.§5"'§.concat();
               if(!(_loc7_ && _loc1_))
               {
                  _loc3_ = int(_loc2_.length - 1);
               }
               while(true)
               {
                  §§push(_loc3_);
                  if(!(_loc7_ && this))
                  {
                     if(!(_loc7_ && _loc1_))
                     {
                        §§push(0);
                        if(!_loc7_)
                        {
                           if(_loc6_ || _loc2_)
                           {
                              if(§§pop() < §§pop())
                              {
                                 if(!(_loc7_ && _loc1_))
                                 {
                                    if(!(_loc7_ && this))
                                    {
                                       addr104:
                                       §§push(int(_loc2_.length));
                                       if(_loc6_ || this)
                                       {
                                          if(_loc6_)
                                          {
                                             if(_loc6_ || _loc2_)
                                             {
                                                _loc1_ = §§pop();
                                                addr121:
                                                if(_loc6_)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         if(true)
                                                         {
                                                            break;
                                                         }
                                                         loop3:
                                                         while(true)
                                                         {
                                                            §§push(_loc4_);
                                                            if(!(_loc7_ && _loc2_))
                                                            {
                                                               if(§§pop() >= this.§#"f§.length)
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     if(!_loc7_)
                                                                     {
                                                                        addr148:
                                                                        §§push(§§pop() - 1);
                                                                        while(true)
                                                                        {
                                                                           _loc3_ = §§pop();
                                                                           addr149:
                                                                           while(true)
                                                                           {
                                                                              if(_loc6_ || _loc1_)
                                                                              {
                                                                                 break loop3;
                                                                              }
                                                                              continue loop3;
                                                                           }
                                                                        }
                                                                        addr148:
                                                                     }
                                                                     §§goto(addr148);
                                                                  }
                                                                  §§goto(addr149);
                                                               }
                                                               else
                                                               {
                                                                  §§push(int(_loc2_.indexOf(this.§#"f§[_loc4_])));
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     addr171:
                                                                     while(true)
                                                                     {
                                                                        _loc5_ = §§pop();
                                                                        addr172:
                                                                        while(true)
                                                                        {
                                                                           §§push(0);
                                                                           addr173:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop() >= §§pop())
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    _loc2_.splice(_loc5_,1);
                                                                                    addr178:
                                                                                    while(true)
                                                                                    {
                                                                                    }
                                                                                 }
                                                                                 addr174:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 _loc4_++;
                                                                                 addr159:
                                                                                 while(true)
                                                                                 {
                                                                                    continue loop3;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  addr170:
                                                               }
                                                            }
                                                            §§goto(addr148);
                                                         }
                                                         continue;
                                                      }
                                                      §§goto(addr178);
                                                   }
                                                   §§goto(addr159);
                                                }
                                                §§goto(addr149);
                                             }
                                             §§goto(addr170);
                                          }
                                          §§goto(addr172);
                                       }
                                       §§goto(addr148);
                                    }
                                    §§goto(addr174);
                                 }
                                 §§goto(addr121);
                              }
                              else
                              {
                                 addr183:
                                 _loc4_ = 0;
                              }
                              §§goto(addr194);
                           }
                           §§goto(addr171);
                        }
                        §§goto(addr173);
                     }
                     §§goto(addr183);
                  }
                  §§goto(addr104);
               }
            }
            return _loc1_;
         }
         §§goto(addr37);
      }
      
      override public function clearLevel() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.clearLevel();
            while(true)
            {
               §§push(this.§>=§);
               if(!(_loc2_ && _loc2_))
               {
                  if(§§pop())
                  {
                     if(_loc1_ || _loc2_)
                     {
                        continue;
                     }
                     addr83:
                     do
                     {
                        this.§>=§ = null;
                     }
                     while(_loc2_ && _loc2_);
                     
                  }
                  return;
               }
               break;
            }
            §§pop().dispose();
         }
         §§goto(addr83);
      }
      
      override public function gameOver(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§ ,§ = param1;
         }
         do
         {
            this.§2#R§ = true;
         }
         while(!_loc2_);
         
      }
      
      public function §7#K§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§2#R§ = false;
         }
      }
      
      override protected function initializeLevelBackground(param1:String, param2:Number, param3:§7#5§, param4:Number) : § "V§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§4!e§;
         if((_loc5_ = §?"1§.getBackground(param1)) is §""H§)
         {
            if(!(_loc6_ && param2))
            {
               return new §##D§(§""H§(_loc5_),param2,param3,§0"l§.soundManager,param4,!§3#J§.§3!s§);
            }
         }
         return super.initializeLevelBackground(param1,param2,param3,param4);
      }
   }
}
