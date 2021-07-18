package starling.events
{
   import §2Y§.§7!f§;
   import §2Y§.Sprite;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §?!R§ extends Sprite
   {
      
      private static var §?!,§:Class;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §?!,§ = TouchMarker_TouchMarkerBmp;
         }
      }
      
      private var §[!H§:Point;
      
      private var §-y§:Texture;
      
      function §?!R§(param1:Context3D)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§7!f§ = null;
         if(!(_loc5_ && _loc2_))
         {
            super();
         }
         while(true)
         {
            while(true)
            {
               this.§[!H§ = new Point();
               do
               {
                  this.§-y§ = Texture.§"r§(param1,new §?!,§());
               }
               while(!_loc4_);
               
               if(_loc4_)
               {
                  if(true)
                  {
                     var _loc2_:int = 0;
                     while(_loc2_ < 2)
                     {
                        _loc3_ = new §7!f§(this.§-y§);
                        if(_loc4_ || _loc3_)
                        {
                           §§push(_loc3_);
                           §§push(this.§-y§.width);
                           if(_loc4_)
                           {
                              §§push(§§pop() / 2);
                           }
                           §§pop().pivotX = §§pop();
                           while(true)
                           {
                              §§push(_loc3_);
                              §§push(this.§-y§.height);
                              if(!(_loc5_ && _loc2_))
                              {
                                 §§push(§§pop() / 2);
                              }
                              §§pop().pivotY = §§pop();
                              loop5:
                              while(_loc4_)
                              {
                                 _loc3_.§0!3§ = false;
                                 loop6:
                                 while(true)
                                 {
                                    addr89:
                                    while(true)
                                    {
                                       addChild(_loc3_);
                                       addr93:
                                       while(_loc4_)
                                       {
                                          if(!_loc4_)
                                          {
                                             continue loop5;
                                          }
                                       }
                                       continue loop6;
                                    }
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           _loc2_++;
                           if(_loc4_ || this)
                           {
                              if(true)
                              {
                                 break;
                              }
                              §§goto(addr89);
                           }
                           §§goto(addr93);
                        }
                     }
                  }
                  continue;
                  return;
               }
               break;
            }
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§-y§.dispose();
            do
            {
               super.dispose();
            }
            while(_loc1_);
            
         }
      }
      
      public function §case§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            if(param3)
            {
               loop0:
               while(true)
               {
                  this.§[!H§.x += param1 - this.§15§.x;
                  while(true)
                  {
                     this.§[!H§.y += param2 - this.§15§.y;
                     loop2:
                     while(_loc5_)
                     {
                        addr112:
                        if(!(_loc5_ || this))
                        {
                           continue;
                        }
                        while(true)
                        {
                           §§push(this.§4!L§);
                           addr85:
                           while(true)
                           {
                              §§push(2);
                              addr86:
                              addr100:
                              while(true)
                              {
                                 §§push(§§pop() * this.§[!H§.x);
                                 addr90:
                                 while(true)
                                 {
                                    §§push(param1);
                                    addr91:
                                    while(true)
                                    {
                                       §§push(§§pop() - §§pop());
                                       addr92:
                                       while(true)
                                       {
                                          §§pop().x = §§pop();
                                          continue loop0;
                                       }
                                    }
                                 }
                              }
                              §§push(this.§4!L§);
                              if(_loc4_ && param1)
                              {
                                 continue;
                              }
                              §§push(2);
                              if(!(_loc4_ && param1))
                              {
                                 §§push(§§pop() * this.§[!H§.y);
                                 if(_loc5_)
                                 {
                                    if(!(_loc4_ && param1))
                                    {
                                       §§push(param2);
                                       if(!(_loc4_ && this))
                                       {
                                          addr64:
                                          §§push(§§pop() - §§pop());
                                          if(_loc5_)
                                          {
                                             §§pop().y = §§pop();
                                             if(_loc5_)
                                             {
                                                if(_loc5_)
                                                {
                                                   return;
                                                }
                                                loop7:
                                                while(true)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      §§goto(addr112);
                                                   }
                                                   else
                                                   {
                                                      loop6:
                                                      while(true)
                                                      {
                                                         §§push(this.§15§);
                                                         if(_loc4_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(param2);
                                                         if(!_loc4_)
                                                         {
                                                            §§pop().y = §§pop();
                                                            continue loop7;
                                                         }
                                                         addr124:
                                                         while(true)
                                                         {
                                                            §§pop().x = §§pop();
                                                            continue loop6;
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr124);
                                                         §§goto(addr125);
                                                      }
                                                      addr125:
                                                      addr123:
                                                   }
                                                }
                                                continue loop2;
                                             }
                                             continue loop0;
                                          }
                                          §§goto(addr90);
                                       }
                                       §§goto(addr91);
                                    }
                                    §§goto(addr92);
                                 }
                                 §§goto(addr64);
                              }
                              else
                              {
                                 §§goto(addr86);
                              }
                           }
                        }
                     }
                  }
               }
            }
            while(true)
            {
               §§goto(addr123);
            }
         }
         §§goto(addr119);
      }
      
      public function §`!§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§[!H§.x = param1;
            while(true)
            {
               this.§[!H§.y = param2;
               while(_loc4_)
               {
                  this.§case§(this.§[!&§,this.§5o§);
                  if(!(_loc3_ && this))
                  {
                     return;
                     addr48:
                  }
               }
            }
         }
         §§goto(addr48);
      }
      
      private function get §15§() : §7!f§
      {
         return getChildAt(0) as §7!f§;
      }
      
      private function get §4!L§() : §7!f§
      {
         return getChildAt(1) as §7!f§;
      }
      
      public function get §[!&§() : Number
      {
         return this.§15§.x;
      }
      
      public function get §5o§() : Number
      {
         return this.§15§.y;
      }
      
      public function get §6P§() : Number
      {
         return this.§4!L§.x;
      }
      
      public function get §<I§() : Number
      {
         return this.§4!L§.y;
      }
   }
}
