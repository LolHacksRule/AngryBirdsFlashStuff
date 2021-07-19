package § !B§
{
   import §'K§.§[!9§;
   import com.rovio.assets.§[!D§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §5!L§ extends Sprite
   {
       
      
      private var §0;§:Sprite;
      
      private var §>!<§:Number;
      
      private var §`X§:Number;
      
      private var §,$§:§[!9§;
      
      public function §5!L§(param1:Number)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:* = null;
         if(_loc6_ || param1)
         {
            super();
         }
         var _loc2_:int = Math.random() * 7;
         §§push(_loc2_);
         if(!_loc5_)
         {
            var _loc4_:* = §§pop();
            if(!(_loc5_ && param1))
            {
               §§push(0);
               if(!(_loc5_ && param1))
               {
                  §§push(_loc4_);
                  if(_loc6_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc5_ && this))
                        {
                           addr152:
                           §§push(0);
                           if(!_loc6_)
                           {
                              addr188:
                           }
                        }
                        else
                        {
                           addr201:
                           §§push(3);
                           if(_loc5_)
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push(1);
                        if(!(_loc5_ && param1))
                        {
                           if(§§pop() === _loc4_)
                           {
                              §§push(1);
                              if(_loc6_ || _loc2_)
                              {
                                 addr246:
                                 loop4:
                                 switch(§§pop())
                                 {
                                    case 0:
                                       addr100:
                                       _loc3_ = "P_STAR_4";
                                       if(!(_loc5_ && this))
                                       {
                                          addr300:
                                          this.§0;§ = this.§-!I§(_loc3_);
                                          addChild(this.§0;§);
                                          break;
                                       }
                                       break;
                                    case 1:
                                       addr95:
                                       _loc3_ = "P_STAR_3";
                                       §§goto(addr300);
                                       addr96:
                                    case 2:
                                       addr87:
                                       §§push("P_STAR_2");
                                       if(_loc6_)
                                       {
                                          _loc3_ = §§pop();
                                       }
                                       else
                                       {
                                          §§goto(addr100);
                                       }
                                       §§goto(addr300);
                                    case 3:
                                       _loc3_ = "P_STAR_1";
                                       if(!(_loc5_ && param1))
                                       {
                                          §§goto(addr300);
                                       }
                                       break;
                                    case 4:
                                       §§push("P_SMOKE_3");
                                       if(_loc6_)
                                       {
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             _loc3_ = §§pop();
                                             if(_loc6_)
                                             {
                                                addr45:
                                             }
                                             §§goto(addr300);
                                          }
                                          else
                                          {
                                             §§goto(addr95);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr87);
                                       }
                                       §§goto(addr300);
                                    case 5:
                                       _loc3_ = "P_SMOKE_2";
                                       if(_loc6_)
                                       {
                                          §§goto(addr300);
                                       }
                                       while(true)
                                       {
                                          this.§0;§.y = -this.§0;§.height / 2;
                                          if(_loc6_)
                                          {
                                             break;
                                          }
                                          loop1:
                                          while(_loc5_)
                                          {
                                             break loop4;
                                             while(true)
                                             {
                                                this.§0;§.x = -this.§0;§.width / 2;
                                                continue loop1;
                                             }
                                          }
                                       }
                                       return;
                                    case 6:
                                       _loc3_ = "P_SMOKE_1";
                                       if(_loc6_)
                                       {
                                          if(false)
                                          {
                                             §§goto(addr45);
                                          }
                                          §§goto(addr300);
                                       }
                                       §§goto(addr293);
                                    default:
                                       §§goto(addr300);
                                 }
                                 continue loop3;
                                 addr246:
                              }
                              else
                              {
                                 addr236:
                                 §§push(_loc4_);
                              }
                              §§goto(addr246);
                           }
                           else
                           {
                              §§push(2);
                              §§push(_loc4_);
                              if(!(_loc5_ && _loc3_))
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    §§push(2);
                                    if(!_loc5_)
                                    {
                                       §§goto(addr188);
                                    }
                                    else
                                    {
                                       addr213:
                                       §§goto(addr246);
                                    }
                                 }
                                 else
                                 {
                                    §§push(3);
                                    if(!_loc5_)
                                    {
                                       §§push(_loc4_);
                                       if(!(_loc5_ && this))
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             §§goto(addr201);
                                          }
                                          else
                                          {
                                             addr206:
                                             §§push(4);
                                             §§push(_loc4_);
                                             if(_loc6_)
                                             {
                                                addr209:
                                                if(§§pop() === §§pop())
                                                {
                                                   §§push(4);
                                                   if(_loc6_)
                                                   {
                                                      §§goto(addr213);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(5);
                                                   §§push(_loc4_);
                                                   if(_loc5_ && this)
                                                   {
                                                   }
                                                   addr237:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      §§push(6);
                                                      if(!_loc6_)
                                                      {
                                                      }
                                                      §§goto(addr246);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr246);
                                                      §§push(7);
                                                   }
                                                }
                                                §§goto(addr246);
                                             }
                                          }
                                          §§goto(addr246);
                                       }
                                       if(§§pop() === §§pop())
                                       {
                                          §§push(5);
                                          if(!_loc5_)
                                          {
                                             addr227:
                                          }
                                       }
                                       else
                                       {
                                          §§push(6);
                                          if(!(_loc5_ && this))
                                          {
                                             §§goto(addr236);
                                          }
                                       }
                                    }
                                    §§goto(addr246);
                                 }
                                 §§goto(addr246);
                              }
                           }
                           §§goto(addr237);
                        }
                        §§goto(addr206);
                     }
                     §§goto(addr246);
                  }
                  §§goto(addr209);
               }
               §§goto(addr227);
            }
            §§goto(addr152);
         }
         §§goto(addr246);
      }
      
      public function clean() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§,$§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  loop5:
                  while(true)
                  {
                     §§push(this.§,$§);
                     addr75:
                     while(true)
                     {
                        §§pop().stop();
                        loop4:
                        while(true)
                        {
                           this.§,$§ = null;
                           addr63:
                           addr67:
                           while(true)
                           {
                              if(!_loc1_)
                              {
                                 if(!_loc1_)
                                 {
                                    break;
                                 }
                                 continue loop5;
                              }
                              continue loop4;
                           }
                        }
                     }
                  }
                  addr73:
               }
               while(true)
               {
                  removeChild(this.§0;§);
                  while(_loc2_)
                  {
                     this.§0;§ = null;
                     if(_loc2_)
                     {
                        return;
                     }
                  }
                  §§goto(addr63);
                  §§goto(addr67);
               }
            }
            §§goto(addr75);
         }
         §§goto(addr73);
      }
      
      public function §-!I§(param1:String) : MovieClip
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §[!D§.§8!N§(param1);
         _loc2_ = new _loc3_();
         if(_loc4_ || param1)
         {
            _loc2_.x = _loc2_.width / 2;
            do
            {
               _loc2_.y = _loc2_.height / 2;
            }
            while(_loc5_ && param1);
            
         }
         return _loc2_;
      }
      
      public function set §#!?§(param1:§[!9§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§,$§ = param1;
         }
      }
      
      public function get §#!?§() : §[!9§
      {
         return this.§,$§;
      }
      
      public function get §-z§() : Number
      {
         return this.§>!<§;
      }
      
      public function set §-z§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§>!<§ = param1;
         }
      }
      
      public function get §5!F§() : Number
      {
         return this.§`X§;
      }
      
      public function set §5!F§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§`X§ = param1;
         }
      }
   }
}
