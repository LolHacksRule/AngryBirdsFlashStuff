package §<S§
{
   import §1![§.§#E§;
   import §4!i§.§@"#§;
   import §4[§.§2P§;
   import com.angrybirds.utils.§2!N§;
   import com.angrybirds.utils.§30§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §""8§ extends EventDispatcher implements §30§
   {
      
      public static const §7%§:Number = 1800000.0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§§findproperty(§7%§));
            §§push(30 * 60);
            if(_loc1_)
            {
               §§push(§§pop() * 1000);
            }
            §§pop().§7%§ = §§pop();
         }
      }
      
      private var §3D§:String;
      
      private var §&!4§:Boolean;
      
      private var §3<§:Boolean = true;
      
      private var §,!m§:Array;
      
      private var §5!p§:int = -1;
      
      private var §?v§:int = 1;
      
      private var §["$§:Number = 0;
      
      public function §""8§(param1:String, param2:Boolean)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super();
            while(true)
            {
               this.§3D§ = param1;
            }
            addr59:
         }
         loop1:
         while(true)
         {
            addr28:
            addr60:
            addr87:
            while(true)
            {
               this.§,!m§ = [];
               continue loop1;
            }
            var _loc3_:int = 0;
            while(true)
            {
               if(_loc3_ >= 50)
               {
                  if(_loc5_ || param1)
                  {
                     break;
                  }
                  loop5:
                  while(!(_loc5_ || param2))
                  {
                     while(true)
                     {
                        _loc3_++;
                        continue loop5;
                     }
                  }
                  continue;
               }
               this.§,!m§.push({
                  "nickName":"",
                  "score":"",
                  "isPlayer":"false"
               });
               §§goto(addr109);
            }
            return;
         }
      }
      
      public function §"c§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§["$§ = 0;
            do
            {
               this.§3<§ = true;
            }
            while(!(_loc2_ || _loc1_));
            
         }
      }
      
      public function §1S§(param1:Boolean = false) : Boolean
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc5_:§#E§ = null;
         var _loc6_:* = null;
         if(!_loc8_)
         {
            §§push(this.§3<§);
            if(_loc7_)
            {
               if(!§§pop())
               {
                  if(_loc7_ || _loc3_)
                  {
                     §§goto(addr43);
                  }
               }
               var _loc2_:Date = new Date();
               if(!_loc8_)
               {
                  §§push(param1);
                  loop0:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     loop1:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr141:
                              while(true)
                              {
                                 §§push(_loc2_.time - this.§["$§ > §7%§);
                                 addr127:
                                 while(!_loc8_)
                                 {
                                 }
                                 continue loop1;
                              }
                           }
                           addr140:
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop6:
                              while(true)
                              {
                                 this.§["$§ = _loc2_.time;
                                 loop7:
                                 while(true)
                                 {
                                    addr58:
                                    loop8:
                                    while(true)
                                    {
                                       §§push(this.§&!4§);
                                       if(_loc7_)
                                       {
                                          if(_loc7_)
                                          {
                                             if(§§pop())
                                             {
                                                if(!(_loc8_ && _loc2_))
                                                {
                                                   if(_loc8_ && _loc3_)
                                                   {
                                                      if(_loc7_ || _loc2_)
                                                      {
                                                         continue loop6;
                                                      }
                                                      continue loop7;
                                                   }
                                                   §§push(§@"#§.§,2§.§0!x§());
                                                   if(_loc7_)
                                                   {
                                                      §§push(§§pop());
                                                   }
                                                   _loc6_ = §§pop();
                                                   while(true)
                                                   {
                                                   }
                                                   addr87:
                                                }
                                                §§goto(addr87);
                                             }
                                             while(true)
                                             {
                                                _loc4_ = "highscore";
                                                if(!_loc8_)
                                                {
                                                   if(false)
                                                   {
                                                      continue loop8;
                                                   }
                                                   if(§2P§.§[!$§)
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         §§push(_loc6_);
                                                         if(_loc7_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(_loc7_ || _loc3_)
                                                               {
                                                                  addr168:
                                                                  §§push("levelId");
                                                                  if(_loc7_)
                                                                  {
                                                                     §§push(this.§3D§);
                                                                     if(_loc7_ || _loc2_)
                                                                     {
                                                                        §§push("playerId");
                                                                        if(_loc7_ || _loc3_)
                                                                        {
                                                                           §§push(§2P§.§[!$§);
                                                                           if(_loc7_ || param1)
                                                                           {
                                                                              §§push(null);
                                                                              if(!(_loc8_ && param1))
                                                                              {
                                                                                 _loc3_ = §§pop();
                                                                                 addr237:
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr264:
                                                                                 _loc3_ = §§pop();
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr226:
                                                                              §§push(null);
                                                                              if(_loc7_ || this)
                                                                              {
                                                                                 _loc3_ = §§pop();
                                                                                 §§goto(addr237);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr257:
                                                                                 _loc3_ = §§pop();
                                                                              }
                                                                           }
                                                                           §§goto(addr266);
                                                                        }
                                                                        addr224:
                                                                        §§push(§2P§.§[!$§);
                                                                        §§goto(addr226);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr263:
                                                                        §§push(null);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr243:
                                                                     §§push(this.§3D§);
                                                                     if(_loc7_ || _loc2_)
                                                                     {
                                                                        §§push(null);
                                                                        if(_loc7_)
                                                                        {
                                                                           §§goto(addr257);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr264);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr263);
                                                                     }
                                                                  }
                                                                  §§goto(addr264);
                                                               }
                                                               else
                                                               {
                                                                  addr240:
                                                                  §§push("levelId");
                                                                  if(!_loc8_)
                                                                  {
                                                                     §§goto(addr243);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr261:
                                                                     §§push(this.§3D§);
                                                                  }
                                                                  §§goto(addr263);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push("levelId");
                                                               if(_loc7_ || _loc2_)
                                                               {
                                                                  §§push(this.§3D§);
                                                                  if(_loc7_)
                                                                  {
                                                                     §§goto(addr224);
                                                                     §§push("playerId");
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr263);
                                                                  }
                                                                  addr266:
                                                                  _loc5_ = new §#E§(_loc3_,AngryBirdsCustom.§;"1§ + _loc4_,this,§#E§.§3b§);
                                                                  if(!(_loc8_ && _loc3_))
                                                                  {
                                                                     this.§3<§ = false;
                                                                  }
                                                                  return true;
                                                               }
                                                               §§goto(addr243);
                                                               §§goto(addr263);
                                                            }
                                                            §§goto(addr243);
                                                         }
                                                         else
                                                         {
                                                            addr239:
                                                            if(§§pop())
                                                            {
                                                               §§goto(addr240);
                                                            }
                                                            else
                                                            {
                                                               §§push("levelId");
                                                            }
                                                            §§goto(addr261);
                                                         }
                                                      }
                                                      §§goto(addr168);
                                                   }
                                                   else
                                                   {
                                                      §§push(_loc6_);
                                                   }
                                                   §§goto(addr239);
                                                }
                                                §§goto(addr240);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr127);
                                          }
                                       }
                                    }
                                    §§goto(addr141);
                                 }
                              }
                           }
                           else
                           {
                              §§push(false);
                           }
                           if(_loc7_)
                           {
                              break;
                           }
                           §§goto(addr140);
                        }
                        if(!_loc8_)
                        {
                           return §§pop();
                        }
                        continue loop0;
                     }
                  }
               }
               §§goto(addr87);
            }
            §§goto(addr43);
         }
         addr43:
         return false;
      }
      
      public function §[@§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            var _loc1_:*;
            §§push((_loc1_ = this).§?v§);
            if(!_loc3_)
            {
               §§push(§§pop() + 1);
            }
            var _loc2_:* = §§pop();
            if(!_loc3_)
            {
               _loc1_.§?v§ = _loc2_;
            }
            if(_loc4_)
            {
               if(this.§?v§ > HighscoreSidebar.§%A§)
               {
                  if(_loc4_ || _loc3_)
                  {
                     addr68:
                     this.§?v§ = 1;
                  }
               }
            }
            return;
         }
         §§goto(addr68);
      }
      
      public function §>!8§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            var _loc1_:*;
            §§push((_loc1_ = this).§?v§);
            if(!(_loc3_ && _loc3_))
            {
               §§push(§§pop() - 1);
            }
            var _loc2_:* = §§pop();
            if(_loc4_)
            {
               _loc1_.§?v§ = _loc2_;
            }
            if(!(_loc3_ && this))
            {
               addr56:
               if(this.§?v§ < 1)
               {
                  if(_loc4_ || _loc3_)
                  {
                     this.§?v§ = HighscoreSidebar.§%A§;
                  }
               }
            }
            return;
         }
         §§goto(addr56);
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Object = §2!N§.§6l§((param1.currentTarget as URLLoader).data);
         if(_loc4_ || param1)
         {
            if(_loc2_.highScore is Array)
            {
               while(true)
               {
                  this.§,!m§ = _loc2_.highScore as Array;
                  addr93:
                  while(true)
                  {
                  }
               }
               addr87:
            }
            while(true)
            {
               this.§3<§ = true;
               while(true)
               {
                  if(_loc4_)
                  {
                     continue;
                  }
                  §§goto(addr87);
               }
               §§goto(addr93);
            }
         }
      }
      
      public function §?!§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §'![§(param1:IOErrorEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§3<§ = true;
         }
      }
      
      public function get ready() : Boolean
      {
         return this.§3<§;
      }
      
      public function get §7P§() : Array
      {
         return this.§,!m§;
      }
      
      public function get levelId() : String
      {
         return this.§3D§;
      }
      
      public function get §!!T§() : int
      {
         return this.§?v§;
      }
      
      public function get §]!T§() : int
      {
         return this.§5!p§;
      }
      
      public function get §>E§() : Boolean
      {
         return this.§&!4§;
      }
   }
}
