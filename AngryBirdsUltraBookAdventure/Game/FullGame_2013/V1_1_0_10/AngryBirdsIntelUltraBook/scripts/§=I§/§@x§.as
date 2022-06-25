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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §@<§ = "CutScene_Type_Intro";
         }
         while(true)
         {
            §<""§ = "CutScene_Type_Outro";
            while(_loc1_)
            {
               §4!X§ = "CutScene_Type_Final_Outro";
               if(!_loc2_)
               {
                  return;
               }
            }
         }
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
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:§?!t§ = null;
         var _loc4_:Object = null;
         if(!_loc7_)
         {
            this.§^e§ = new Vector.<§?!t§>();
            loop0:
            while(true)
            {
               super();
               while(true)
               {
                  this.§!!L§ = 0;
                  while(!(_loc7_ && param1))
                  {
                     if(_loc8_)
                     {
                        while(param1)
                        {
                           if(!(_loc7_ && _loc3_))
                           {
                              while(true)
                              {
                                 §§push(param2);
                                 loop5:
                                 while(true)
                                 {
                                    §§push("intro");
                                    addr73:
                                    addr76:
                                    while(§§pop().search(§§pop()) == -1)
                                    {
                                       continue loop5;
                                    }
                                    this.§>G§ = §@<§;
                                 }
                              }
                              addr71:
                           }
                           §§goto(addr79);
                        }
                        return;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr71);
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
         if(_loc6_)
         {
            §§push(§?!t§.§^k§);
            if(!(_loc5_ && param1))
            {
               if(§§pop() === _loc4_)
               {
                  if(_loc6_ || param1)
                  {
                     §§push(0);
                     if(!_loc6_)
                     {
                        addr321:
                     }
                  }
                  else
                  {
                     addr369:
                     §§push(5);
                     if(_loc6_)
                     {
                        addr372:
                     }
                     else
                     {
                        addr429:
                     }
                  }
               }
               else
               {
                  §§push(§?!t§.§0!u§);
                  if(_loc6_)
                  {
                     addr282:
                     if(§§pop() === _loc4_)
                     {
                        if(!_loc5_)
                        {
                           §§push(1);
                           if(!(_loc5_ && _loc3_))
                           {
                              §§goto(addr434);
                           }
                           else
                           {
                              §§goto(addr372);
                           }
                        }
                        else
                        {
                           addr418:
                           §§push(7);
                           if(_loc6_)
                           {
                              §§goto(addr434);
                           }
                           else
                           {
                              §§goto(addr429);
                           }
                        }
                        §§goto(addr434);
                     }
                     else
                     {
                        §§push(§?!t§.§]!e§);
                        if(_loc6_ || _loc2_)
                        {
                           if(§§pop() === _loc4_)
                           {
                              if(_loc6_ || param1)
                              {
                                 §§push(2);
                                 if(_loc6_ || _loc3_)
                                 {
                                    §§goto(addr321);
                                 }
                                 else
                                 {
                                    addr360:
                                    §§goto(addr434);
                                 }
                              }
                              else
                              {
                                 §§goto(addr369);
                              }
                              §§goto(addr434);
                           }
                           else
                           {
                              §§push(§?!t§.§;X§);
                              if(!(_loc5_ && _loc3_))
                              {
                                 if(§§pop() === _loc4_)
                                 {
                                    if(_loc6_ || param1)
                                    {
                                       §§push(3);
                                       if(_loc6_)
                                       {
                                          §§goto(addr434);
                                       }
                                       else
                                       {
                                          §§goto(addr372);
                                       }
                                    }
                                    else
                                    {
                                       addr352:
                                       §§push(4);
                                       if(!(_loc5_ && _loc2_))
                                       {
                                          §§goto(addr360);
                                       }
                                       else
                                       {
                                          §§goto(addr429);
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push(§?!t§.END);
                                    if(!_loc5_)
                                    {
                                       addr348:
                                       if(§§pop() === _loc4_)
                                       {
                                          if(!_loc5_)
                                          {
                                             §§goto(addr352);
                                          }
                                          else
                                          {
                                             §§goto(addr418);
                                          }
                                       }
                                       else
                                       {
                                          §§push(§?!t§.§-;§);
                                          if(!_loc6_)
                                          {
                                          }
                                          addr409:
                                          if(§§pop() === _loc4_)
                                          {
                                             if(_loc6_ || _loc3_)
                                             {
                                                §§goto(addr418);
                                             }
                                             else
                                             {
                                                addr426:
                                                §§push(8);
                                                if(!_loc5_)
                                                {
                                                   §§goto(addr429);
                                                }
                                                §§goto(addr434);
                                             }
                                          }
                                          else
                                          {
                                             addr424:
                                             if(§?!t§.§&+§ === _loc4_)
                                             {
                                                §§goto(addr426);
                                             }
                                             else
                                             {
                                                addr434:
                                                switch(§§pop())
                                                {
                                                   case 0:
                                                      return new §1$§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
                                                   case 1:
                                                      _loc2_ = param1.scroll_target;
                                                      if(!_loc5_)
                                                      {
                                                         if(_loc2_.type == "sprite")
                                                         {
                                                            if(!(_loc5_ && _loc2_))
                                                            {
                                                               §§goto(addr68);
                                                            }
                                                         }
                                                         break;
                                                      }
                                                      addr68:
                                                      return new §@!l§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
                                                   case 2:
                                                      _loc3_ = param1.zoom_target;
                                                      if(_loc6_ || _loc2_)
                                                      {
                                                         if(_loc3_.type != "sprite")
                                                         {
                                                            addr189:
                                                            break;
                                                         }
                                                         §§goto(addr230);
                                                      }
                                                      else
                                                      {
                                                         addr145:
                                                         break;
                                                         addr162:
                                                      }
                                                      break;
                                                   case 3:
                                                      return new §>r§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
                                                   case 5:
                                                      this.§3!8§ = param1.width;
                                                      addr178:
                                                      if(_loc6_)
                                                      {
                                                         this.§0!Q§ = param1.height;
                                                         addr168:
                                                         if(!_loc5_)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      else if(_loc6_ || _loc2_)
                                                      {
                                                         addr181:
                                                         this.§&!`§ = param1.time * 1000;
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr189);
                                                      }
                                                      break;
                                                   case 8:
                                                      this.§5A§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
                                                      if(_loc6_ || param1)
                                                      {
                                                         if(_loc6_ || _loc2_)
                                                         {
                                                            if(_loc6_ || _loc2_)
                                                            {
                                                               if(true)
                                                               {
                                                                  break;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr178);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr162);
                                                         }
                                                         §§goto(addr145);
                                                      }
                                                      else
                                                      {
                                                         addr151:
                                                         if(_loc6_)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               break;
                                                            }
                                                            addr230:
                                                            return new §`!N§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
                                                         }
                                                      }
                                                      §§goto(addr168);
                                                   case 4:
                                                      §§goto(addr181);
                                                   case 6:
                                                      this.§#!L§ = false;
                                                      §§goto(addr145);
                                                   case 7:
                                                      this.§#!L§ = true;
                                                      §§goto(addr151);
                                                }
                                                return null;
                                                §§push(9);
                                             }
                                             §§goto(addr434);
                                          }
                                          §§goto(addr426);
                                       }
                                       §§goto(addr434);
                                    }
                                    if(§§pop() === _loc4_)
                                    {
                                       if(_loc6_)
                                       {
                                          §§goto(addr369);
                                       }
                                       else
                                       {
                                          §§goto(addr418);
                                       }
                                    }
                                    else
                                    {
                                       §§push(§?!t§.§else §);
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          if(§§pop() === _loc4_)
                                          {
                                             if(!_loc5_)
                                             {
                                                §§push(6);
                                                if(_loc6_ || _loc2_)
                                                {
                                                   §§goto(addr434);
                                                }
                                                else
                                                {
                                                   §§goto(addr429);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr426);
                                             }
                                             §§goto(addr434);
                                          }
                                          else
                                          {
                                             §§push(§?!t§.§,h§);
                                             if(_loc5_)
                                             {
                                             }
                                             §§goto(addr424);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr434);
                              }
                              §§goto(addr409);
                           }
                        }
                        §§goto(addr424);
                     }
                  }
                  §§goto(addr348);
               }
               §§goto(addr434);
            }
            §§goto(addr282);
         }
         §§goto(addr426);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§]2§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§]2§);
                     addr77:
                     while(true)
                     {
                        §§pop().dispose();
                        addr78:
                        while(true)
                        {
                           this.§]2§ = null;
                           addr69:
                           while(true)
                           {
                           }
                        }
                     }
                     addr57:
                     if(!(_loc2_ || this))
                     {
                        continue;
                     }
                     return;
                     addr64:
                  }
               }
               while(true)
               {
                  this.§^e§ = null;
                  if(!(_loc2_ || _loc1_))
                  {
                     continue;
                  }
                  if(!_loc1_)
                  {
                     §§goto(addr57);
                  }
                  §§goto(addr78);
               }
               §§goto(addr64);
            }
            §§goto(addr77);
         }
         §§goto(addr78);
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(!this.§]2§)
            {
               if(!(_loc4_ && this))
               {
                  this.§]2§ = new Sprite();
                  if(_loc3_)
                  {
                     addr34:
                     §§push(this);
                     §§push(this.§!!L§);
                     if(!_loc4_)
                     {
                        §§push(§§pop() + param1);
                     }
                     §§pop().§!!L§ = §§pop();
                  }
                  var _loc2_:* = int(this.§^e§.length - 1);
                  while(true)
                  {
                     §§push(_loc2_);
                     if(_loc3_ || this)
                     {
                        if(§§pop() < 0)
                        {
                           while(true)
                           {
                              if(!_loc4_)
                              {
                                 continue;
                              }
                              addr142:
                           }
                           continue;
                        }
                        if(!this.§^e§[_loc2_].update(this.§!!L§,this.§]2§,this.§&!k§))
                        {
                           if(_loc3_ || this)
                           {
                              this.§^e§.splice(_loc2_,1);
                           }
                           §§goto(addr142);
                        }
                        §§push(_loc2_);
                        if(!_loc4_)
                        {
                           §§push(§§pop() - 1);
                        }
                     }
                     _loc2_ = §§pop();
                  }
                  return this.§!!L§ < this.§&!`§;
               }
            }
         }
         §§goto(addr34);
      }
      
      private function §^c§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:int = §<!?§.§+i§.height;
         §§push(§,!s§.§8;§);
         if(_loc5_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(§,!s§.§#d§);
         if(!(_loc6_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc1_);
         if(!(_loc6_ && this))
         {
            §§push(this.§0!Q§);
            if(!_loc6_)
            {
               §§push(§§pop() * _loc2_);
            }
            §§push(§§pop() - §§pop());
            if(_loc5_ || this)
            {
               §§push(§§pop() / _loc2_);
            }
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(_loc5_ || _loc1_)
         {
            §§push(this.§]2§);
            §§push(_loc4_);
            if(!_loc6_)
            {
               §§push(§§pop() >> 1);
            }
            §§pop().y = §§pop();
         }
      }
      
      private function §2!t§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §<!?§.§,=§.color = this.§5A§;
         }
      }
      
      public function clone(param1:§6!I§) : §@x§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§?!t§ = null;
         var _loc2_:§@x§ = new §@x§(null,null);
         for each(_loc3_ in this.§^e§)
         {
            if(!_loc6_)
            {
               _loc2_.§^e§.push(_loc3_.clone());
            }
         }
         if(_loc7_)
         {
            _loc2_.§!!L§ = this.§!!L§;
            loop1:
            while(true)
            {
               _loc2_.§&!`§ = this.§&!`§;
               loop2:
               while(true)
               {
                  _loc2_.§3!8§ = this.§3!8§;
                  loop3:
                  while(true)
                  {
                     _loc2_.§0!Q§ = this.§0!Q§;
                     while(true)
                     {
                        if(!_loc7_)
                        {
                           break;
                           addr103:
                        }
                        _loc2_.§#!L§ = this.§#!L§;
                        while(_loc7_)
                        {
                           continue loop2;
                        }
                        continue loop3;
                        addr90:
                        if(!(_loc6_ && _loc2_))
                        {
                           _loc2_.§>G§ = this.§>G§;
                           loop7:
                           while(true)
                           {
                              _loc2_.§&!k§ = param1;
                              if(_loc6_)
                              {
                                 continue;
                              }
                              if(!_loc6_)
                              {
                                 break;
                              }
                              addr88:
                              while(!_loc6_)
                              {
                                 §§goto(addr90);
                                 continue loop7;
                              }
                              §§goto(addr103);
                           }
                           return _loc2_;
                           addr82:
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr82);
      }
      
      public function get §+l§() : String
      {
         return this.§>G§;
      }
      
      public function set §+l§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§>G§ = param1;
         }
      }
   }
}
