package §=I§
{
   import §2m§.§<!?§;
   import §;!y§.§,!s§;
   import §=`§.§6!I§;
   import §`g§.§ O§;
   import §`g§.Sprite;
   
   public class §@x§
   {
      
      public static const §@<§:String = "CutScene_Type_Intro";
      
      public static const §<""§:String = "CutScene_Type_Outro";
      
      public static const §4!X§:String = "CutScene_Type_Final_Outro";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §@<§ = "CutScene_Type_Intro";
            while(true)
            {
               §<""§ = "CutScene_Type_Outro";
               while(!_loc1_)
               {
                  §4!X§ = "CutScene_Type_Final_Outro";
                  if(_loc2_)
                  {
                     return;
                     addr45:
                  }
               }
            }
         }
         §§goto(addr45);
      }
      
      private var §&!k§:§6!I§;
      
      private var §>G§:String;
      
      private var §^e§:Vector.<§?!t§>;
      
      private var §!!L§:Number;
      
      private var §&!`§:Number;
      
      private var §3!8§:Number;
      
      private var §0!Q§:Number;
      
      private var §]2§:Sprite;
      
      private var §#!L§:Boolean = true;
      
      private var §5A§:uint;
      
      private var §4!D§:Boolean;
      
      private var §0!a§:§ O§;
      
      private var §3m§:§ O§;
      
      public function §@x§(param1:Object, param2:String)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:§?!t§ = null;
         var _loc4_:Object = null;
         if(_loc7_)
         {
            this.§^e§ = new Vector.<§?!t§>();
            loop0:
            while(true)
            {
               super();
               while(true)
               {
                  this.§!!L§ = 0;
                  continue loop0;
                  while(_loc7_ || param2)
                  {
                     while(true)
                     {
                        §§push(param2);
                        loop6:
                        while(true)
                        {
                           §§push("intro");
                           addr82:
                           addr85:
                           addr88:
                           while(§§pop().search(§§pop()) == -1)
                           {
                              continue loop6;
                           }
                           this.§>G§ = §@<§;
                           if(_loc8_ && param2)
                           {
                              continue loop0;
                           }
                           var _loc5_:int = 0;
                           var _loc6_:* = param1;
                           addr156:
                           §§push(§§hasnext(_loc6_,_loc5_));
                           if(!_loc8_)
                           {
                              if(§§pop())
                              {
                                 _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                 _loc3_ = this.§+A§(_loc4_);
                                 if(_loc7_)
                                 {
                                    if(_loc3_)
                                    {
                                       if(_loc7_)
                                       {
                                          addr152:
                                          this.§^e§.push(_loc3_);
                                       }
                                    }
                                    §§goto(addr156);
                                 }
                                 §§goto(addr152);
                              }
                              if(!_loc8_)
                              {
                                 if(_loc7_ || param1)
                                 {
                                    if(!(_loc8_ && _loc3_))
                                    {
                                       _loc5_ = 0;
                                       if(_loc7_ || param2)
                                       {
                                          _loc6_ = this.§^e§;
                                          addr274:
                                          for each(_loc3_ in _loc6_)
                                          {
                                             if(!_loc8_)
                                             {
                                                addr264:
                                                if(_loc3_ is §@!l§)
                                                {
                                                   addr265:
                                                   (_loc3_ as §@!l§).setSize(this.§3!8§,this.§0!Q§);
                                                   (_loc3_ as §@!l§).§+!U§ = this.§#!L§;
                                                   addr219:
                                                   §§goto(addr274);
                                                   addr273:
                                                   addr260:
                                                }
                                                §§push(_loc3_ is §1$§);
                                                if(_loc7_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      addr228:
                                                      if(_loc7_)
                                                      {
                                                         (_loc3_ as §1$§).setSize(this.§3!8§,this.§0!Q§);
                                                         addr238:
                                                         if(_loc7_)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               (_loc3_ as §1$§).§-!m§ = this.§#!L§;
                                                               if(_loc7_)
                                                               {
                                                                  if(_loc7_ || _loc3_)
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        §§goto(addr219);
                                                                     }
                                                                     §§goto(addr274);
                                                                  }
                                                                  §§goto(addr228);
                                                               }
                                                               §§goto(addr238);
                                                            }
                                                            §§goto(addr273);
                                                         }
                                                         §§goto(addr260);
                                                      }
                                                      §§goto(addr265);
                                                   }
                                                   §§goto(addr274);
                                                }
                                                §§goto(addr264);
                                             }
                                             §§goto(addr265);
                                          }
                                          addr277:
                                          addr276:
                                       }
                                       §§goto(addr277);
                                    }
                                    addr278:
                                    return;
                                 }
                                 §§goto(addr277);
                              }
                              §§goto(addr276);
                           }
                           §§goto(addr274);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr80);
      }
      
      public function get sprite() : Sprite
      {
         return this.§]2§;
      }
      
      private function §+A§(param1:Object) : §?!t§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:* = param1.action;
         if(!_loc5_)
         {
            §§push(§?!t§.§^k§);
            if(!_loc5_)
            {
               if(§§pop() === _loc4_)
               {
                  if(_loc6_ || _loc3_)
                  {
                     §§push(0);
                     if(!_loc6_)
                     {
                     }
                  }
                  else
                  {
                     addr327:
                     §§push(4);
                     if(_loc5_)
                     {
                        addr369:
                     }
                  }
                  §§goto(addr414);
               }
               else
               {
                  §§push(§?!t§.§0!u§);
                  if(_loc6_)
                  {
                     if(§§pop() === _loc4_)
                     {
                        if(!(_loc5_ && param1))
                        {
                           §§push(1);
                           if(!_loc5_)
                           {
                              §§goto(addr414);
                           }
                           else
                           {
                              §§goto(addr330);
                           }
                        }
                        else
                        {
                           addr361:
                           §§push(6);
                           if(_loc6_ || param1)
                           {
                              §§goto(addr369);
                           }
                           §§goto(addr414);
                        }
                        §§goto(addr414);
                     }
                     else
                     {
                        §§push(§?!t§.§]!e§);
                        if(!(_loc5_ && _loc3_))
                        {
                           if(§§pop() === _loc4_)
                           {
                              if(_loc6_)
                              {
                                 §§push(2);
                                 if(_loc5_)
                                 {
                                    addr401:
                                 }
                              }
                           }
                           else
                           {
                              §§push(§?!t§.§;X§);
                              if(_loc6_ || _loc3_)
                              {
                                 addr301:
                                 if(§§pop() === _loc4_)
                                 {
                                    if(_loc6_ || _loc2_)
                                    {
                                       §§push(3);
                                       if(!_loc6_)
                                       {
                                          addr409:
                                       }
                                    }
                                    else
                                    {
                                       addr344:
                                       §§push(5);
                                       if(_loc5_ && this)
                                       {
                                       }
                                    }
                                    §§goto(addr414);
                                 }
                                 else
                                 {
                                    §§push(§?!t§.END);
                                    if(_loc6_)
                                    {
                                       if(§§pop() === _loc4_)
                                       {
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             §§goto(addr327);
                                          }
                                          else
                                          {
                                             §§goto(addr344);
                                          }
                                       }
                                       else
                                       {
                                          §§push(§?!t§.§-;§);
                                          if(!(_loc5_ && _loc2_))
                                          {
                                             if(§§pop() === _loc4_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   §§goto(addr344);
                                                }
                                                else
                                                {
                                                   addr398:
                                                   §§push(7);
                                                   if(_loc6_)
                                                   {
                                                      §§goto(addr401);
                                                   }
                                                   §§goto(addr414);
                                                }
                                             }
                                             else
                                             {
                                                §§push(§?!t§.§else §);
                                                if(!_loc6_)
                                                {
                                                }
                                                addr404:
                                                if(§§pop() === _loc4_)
                                                {
                                                   addr406:
                                                   §§push(8);
                                                   if(!_loc5_)
                                                   {
                                                      §§goto(addr409);
                                                   }
                                                   §§goto(addr414);
                                                }
                                                else
                                                {
                                                   addr414:
                                                   switch(§§pop())
                                                   {
                                                      case 0:
                                                         return new §1$§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
                                                      case 1:
                                                         _loc2_ = param1.scroll_target;
                                                         if(!(_loc5_ && param1))
                                                         {
                                                            if(_loc2_.type == "sprite")
                                                            {
                                                               if(!(_loc5_ && _loc2_))
                                                               {
                                                                  §§goto(addr73);
                                                               }
                                                            }
                                                            break;
                                                         }
                                                         addr73:
                                                         return new §@!l§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
                                                      case 2:
                                                         _loc3_ = param1.zoom_target;
                                                         if(_loc6_)
                                                         {
                                                            if(_loc3_.type != "sprite")
                                                            {
                                                               addr179:
                                                               break;
                                                            }
                                                            §§goto(addr215);
                                                         }
                                                         else
                                                         {
                                                            addr210:
                                                         }
                                                         break;
                                                      case 8:
                                                         this.§5A§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
                                                         if(_loc6_)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               if(!(_loc5_ && _loc2_))
                                                               {
                                                                  if(false)
                                                                  {
                                                                     addr135:
                                                                     break;
                                                                  }
                                                                  break;
                                                               }
                                                               if(_loc6_)
                                                               {
                                                                  §§goto(addr210);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr179);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr150:
                                                               if(!_loc5_)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     addr215:
                                                                     return new §`!N§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
                                                                  }
                                                                  §§goto(addr135);
                                                               }
                                                               else
                                                               {
                                                                  addr168:
                                                                  if(_loc6_)
                                                                  {
                                                                     this.§0!Q§ = param1.height;
                                                                     break;
                                                                     addr160:
                                                                  }
                                                               }
                                                            }
                                                            break;
                                                            addr178:
                                                         }
                                                         else
                                                         {
                                                            addr141:
                                                            if(_loc6_)
                                                            {
                                                               break;
                                                            }
                                                         }
                                                         §§goto(addr160);
                                                      case 4:
                                                         this.§&!`§ = param1.time * 1000;
                                                         §§goto(addr178);
                                                      case 3:
                                                         return new §>r§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
                                                      case 5:
                                                         this.§3!8§ = param1.width;
                                                         §§goto(addr168);
                                                      case 6:
                                                         this.§#!L§ = false;
                                                         §§goto(addr150);
                                                      case 7:
                                                         this.§#!L§ = true;
                                                         §§goto(addr141);
                                                   }
                                                   return null;
                                                   §§push(9);
                                                }
                                                §§goto(addr414);
                                             }
                                             §§goto(addr414);
                                          }
                                          §§goto(addr404);
                                       }
                                       §§goto(addr414);
                                    }
                                    addr389:
                                    if(§§pop() === _loc4_)
                                    {
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          §§goto(addr398);
                                       }
                                       else
                                       {
                                          §§goto(addr406);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr404);
                                       §§push(§?!t§.§&+§);
                                    }
                                    §§goto(addr406);
                                 }
                              }
                              if(§§pop() === _loc4_)
                              {
                                 if(_loc6_)
                                 {
                                    §§goto(addr361);
                                 }
                                 else
                                 {
                                    §§goto(addr398);
                                 }
                              }
                              else
                              {
                                 §§push(§?!t§.§,h§);
                                 if(_loc6_ || _loc2_)
                                 {
                                    §§goto(addr389);
                                 }
                                 §§goto(addr404);
                              }
                           }
                           §§goto(addr414);
                        }
                        §§goto(addr404);
                     }
                  }
                  §§goto(addr389);
               }
            }
            §§goto(addr301);
         }
         §§goto(addr398);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§]2§);
            if(_loc2_ || this)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§]2§);
                     addr82:
                     while(true)
                     {
                        §§pop().dispose();
                        addr83:
                        while(true)
                        {
                           this.§]2§ = null;
                           addr67:
                           addr69:
                           while(!_loc2_)
                           {
                              continue loop0;
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  this.§^e§ = null;
                  if(_loc2_)
                  {
                     if(_loc2_ || this)
                     {
                        break;
                     }
                     §§goto(addr83);
                  }
                  §§goto(addr67);
                  §§goto(addr69);
               }
               return;
               addr62:
            }
            §§goto(addr82);
         }
         §§goto(addr62);
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            if(!this.§]2§)
            {
               if(_loc3_)
               {
                  §§goto(addr28);
               }
            }
            §§goto(addr34);
         }
         addr28:
         this.§]2§ = new Sprite();
         if(_loc3_)
         {
            addr34:
            §§push(this);
            §§push(this.§!!L§);
            if(!(_loc4_ && _loc2_))
            {
               §§push(§§pop() + param1);
            }
            §§pop().§!!L§ = §§pop();
         }
         var _loc2_:* = int(this.§^e§.length - 1);
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc4_ && this))
            {
               if(§§pop() < 0)
               {
                  if(_loc3_ || param1)
                  {
                     this.§2!t§();
                  }
                  do
                  {
                     this.§^c§();
                  }
                  while(_loc4_);
                  
                  if(!(_loc3_ || this))
                  {
                     continue;
                  }
                  if(!_loc4_)
                  {
                     break;
                  }
                  addr157:
               }
               else if(!this.§^e§[_loc2_].update(this.§!!L§,this.§]2§,this.§&!k§))
               {
                  if(!(_loc4_ && this))
                  {
                     this.§^e§.splice(_loc2_,1);
                  }
                  §§goto(addr157);
               }
               §§push(_loc2_);
               if(_loc3_ || _loc3_)
               {
                  §§push(§§pop() - 1);
               }
            }
            _loc2_ = §§pop();
         }
         return this.§!!L§ < this.§&!`§;
      }
      
      private function §^c§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:int = §<!?§.§+i§.height;
         §§push(§,!s§.§8;§);
         if(!(_loc6_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(§,!s§.§#d§);
         if(!_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc1_);
         if(!_loc6_)
         {
            §§push(this.§0!Q§);
            if(_loc5_)
            {
               §§push(§§pop() * _loc2_);
            }
            §§push(§§pop() - §§pop());
            if(_loc5_)
            {
               §§push(§§pop() / _loc2_);
            }
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(!(_loc6_ && _loc1_))
         {
            §§push(this.§]2§);
            §§push(_loc4_);
            if(_loc5_ || _loc3_)
            {
               §§push(§§pop() >> 1);
            }
            §§pop().y = §§pop();
         }
      }
      
      private function §2!t§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §<!?§.§,=§.color = this.§5A§;
         }
      }
      
      public function clone(param1:§6!I§) : §@x§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§?!t§ = null;
         var _loc2_:§@x§ = new §@x§(null,null);
         for each(_loc3_ in this.§^e§)
         {
            if(_loc6_)
            {
               _loc2_.§^e§.push(_loc3_.clone());
            }
         }
         if(_loc6_)
         {
            _loc2_.§!!L§ = this.§!!L§;
            while(true)
            {
               _loc2_.§&!`§ = this.§&!`§;
               addr101:
               if(!(_loc6_ || param1))
               {
                  continue;
               }
               _loc2_.§>G§ = this.§>G§;
               loop7:
               while(!(_loc7_ && param1))
               {
                  _loc2_.§&!k§ = param1;
                  if(_loc7_ && this)
                  {
                     continue;
                  }
                  if(_loc6_)
                  {
                     return _loc2_;
                  }
                  while(_loc6_ || param1)
                  {
                     _loc2_.§5A§ = this.§5A§;
                     break loop7;
                  }
                  loop2:
                  while(true)
                  {
                     _loc2_.§3!8§ = this.§3!8§;
                     while(true)
                     {
                        _loc2_.§0!Q§ = this.§0!Q§;
                        addr137:
                        while(!(_loc7_ && this))
                        {
                           _loc2_.§#!L§ = this.§#!L§;
                           continue loop2;
                        }
                     }
                  }
                  addr114:
                  addr156:
               }
               while(_loc6_)
               {
                  §§goto(addr101);
                  §§goto(addr86);
               }
               addr86:
               §§goto(addr137);
            }
         }
         §§goto(addr156);
      }
      
      public function get §+l§() : String
      {
         return this.§>G§;
      }
      
      public function set §+l§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§>G§ = param1;
         }
      }
   }
}
