package §>-§
{
   import §2!5§.§?A§;
   import com.rovio.assets.§>D§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §6%§ extends Sprite
   {
       
      
      private var §+!<§:Sprite;
      
      private var §import§:Number;
      
      private var §7S§:Number;
      
      private var §;I§:§?A§;
      
      public function §6%§(param1:Number)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = null;
         if(_loc5_)
         {
            super();
         }
         var _loc2_:int = Math.random() * 7;
         §§push(_loc2_);
         if(!(_loc6_ && param1))
         {
            var _loc4_:* = §§pop();
            §§push(0);
            if(_loc5_)
            {
               if(§§pop() === _loc4_)
               {
                  §§push(0);
               }
               else
               {
                  §§push(1);
                  §§push(_loc4_);
                  if(_loc5_ || param1)
                  {
                     if(§§pop() === §§pop())
                     {
                        addr207:
                        addr208:
                        switch(1)
                        {
                           case 0:
                              _loc3_ = "P_STAR_4";
                              break;
                           case 1:
                              addr87:
                              _loc3_ = "P_STAR_3";
                              if(!_loc6_)
                              {
                                 break;
                              }
                              addr216:
                              break;
                           case 2:
                              _loc3_ = "P_STAR_2";
                              break;
                           case 3:
                              addr68:
                              _loc3_ = "P_STAR_1";
                              if(!(_loc6_ && _loc3_))
                              {
                                 break;
                              }
                              §§goto(addr216);
                              break;
                           case 4:
                              addr58:
                              §§push("P_SMOKE_3");
                              if(_loc5_)
                              {
                                 _loc3_ = §§pop();
                                 if(!_loc6_)
                                 {
                                    addr44:
                                    break;
                                 }
                                 while(true)
                                 {
                                    this.§+!<§.y = -this.§+!<§.height / 2;
                                    if(!_loc6_)
                                    {
                                       if(_loc5_ || _loc3_)
                                       {
                                          if(_loc5_)
                                          {
                                             break;
                                          }
                                          addr276:
                                          loop1:
                                          while(true)
                                          {
                                             this.mouseEnabled = false;
                                             addr282:
                                             while(true)
                                             {
                                                addChild(this.§+!<§);
                                                continue loop1;
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          this.§+!<§.x = -this.§+!<§.width / 2;
                                       }
                                    }
                                    while(!_loc5_)
                                    {
                                       §§goto(addr282);
                                    }
                                 }
                                 return;
                              }
                              §§goto(addr87);
                              break;
                           case 5:
                              §§push("P_SMOKE_2");
                              if(!_loc6_)
                              {
                                 _loc3_ = §§pop();
                                 if(_loc5_)
                                 {
                                    break;
                                 }
                                 §§goto(addr276);
                              }
                              else
                              {
                                 §§goto(addr68);
                              }
                           case 6:
                              §§push("P_SMOKE_1");
                              if(!(_loc6_ && _loc3_))
                              {
                                 _loc3_ = §§pop();
                                 if(true)
                                 {
                                    break;
                                 }
                              }
                              else
                              {
                                 §§goto(addr58);
                              }
                              §§goto(addr44);
                        }
                        this.§+!<§ = this.§^! §(_loc3_);
                        §§goto(addr282);
                     }
                     else
                     {
                        §§push(2);
                        if(!_loc6_)
                        {
                           addr141:
                           if(§§pop() === _loc4_)
                           {
                              if(_loc5_ || param1)
                              {
                                 §§push(2);
                                 if(_loc6_)
                                 {
                                    addr166:
                                 }
                                 §§goto(addr207);
                              }
                              else
                              {
                                 addr182:
                                 §§push(5);
                              }
                           }
                           else
                           {
                              §§push(3);
                              §§push(_loc4_);
                              if(!(_loc6_ && param1))
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    §§push(3);
                                    if(_loc5_)
                                    {
                                       §§goto(addr166);
                                    }
                                    §§goto(addr207);
                                 }
                                 else
                                 {
                                    §§push(4);
                                 }
                                 §§push(_loc4_);
                              }
                              if(§§pop() === §§pop())
                              {
                                 §§goto(addr207);
                                 §§push(4);
                              }
                              else
                              {
                                 §§push(5);
                                 if(!(_loc6_ && _loc2_))
                                 {
                                    addr180:
                                    if(§§pop() === _loc4_)
                                    {
                                       §§goto(addr182);
                                    }
                                    else
                                    {
                                       §§push(6);
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          if(§§pop() === _loc4_)
                                          {
                                             §§push(6);
                                             if(_loc6_ && _loc2_)
                                             {
                                             }
                                             §§goto(addr207);
                                          }
                                          else
                                          {
                                             §§goto(addr207);
                                             §§push(7);
                                          }
                                       }
                                       §§goto(addr207);
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr207);
                     }
                  }
                  §§goto(addr141);
               }
               §§goto(addr207);
            }
            §§goto(addr180);
         }
         §§goto(addr208);
      }
      
      public function clean() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§;I§);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§;I§);
                     addr89:
                     while(true)
                     {
                        §§pop().stop();
                        addr90:
                        while(true)
                        {
                           this.§;I§ = null;
                           addr76:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr87:
               }
               loop1:
               while(true)
               {
                  removeChild(this.§+!<§);
                  while(true)
                  {
                     if(!_loc2_)
                     {
                        this.§+!<§ = null;
                        if(_loc1_)
                        {
                           if(_loc1_)
                           {
                              if(_loc1_ || _loc2_)
                              {
                                 break loop1;
                              }
                              break;
                           }
                           continue loop1;
                        }
                        continue;
                     }
                     §§goto(addr87);
                  }
                  §§goto(addr90);
               }
               return;
            }
            §§goto(addr89);
         }
         §§goto(addr76);
      }
      
      public function §^! §(param1:String) : MovieClip
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §>D§.§`C§(param1);
         _loc2_ = new _loc3_();
         if(!(_loc5_ && this))
         {
            _loc2_.x = _loc2_.width / 2;
            do
            {
               _loc2_.y = _loc2_.height / 2;
            }
            while(!(_loc4_ || _loc3_));
            
         }
         return _loc2_;
      }
      
      public function set §-H§(param1:§?A§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§;I§ = param1;
         }
      }
      
      public function get §-H§() : §?A§
      {
         return this.§;I§;
      }
      
      public function get §8e§() : Number
      {
         return this.§import§;
      }
      
      public function set §8e§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§import§ = param1;
         }
      }
      
      public function get § !1§() : Number
      {
         return this.§7S§;
      }
      
      public function set § !1§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§7S§ = param1;
         }
      }
   }
}
