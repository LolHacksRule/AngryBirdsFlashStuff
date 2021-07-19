package §7!F§
{
   import §!!U§.DisplayObject;
   import §!!U§.Sprite;
   import starling.events.Event;
   
   public class §0'§ extends Sprite
   {
       
      
      protected var §]!`§:§>"G§;
      
      protected var §'!<§:Number = 0;
      
      protected var § H§:int;
      
      protected var §6#F§:Number;
      
      protected var §?"[§:Number;
      
      protected var §?"l§:int = -1;
      
      protected var §>#;§:DisplayObject;
      
      protected var §#S§:Boolean;
      
      protected var §&#6§:Boolean = true;
      
      public function §0'§(param1:§>"G§, param2:Boolean = false, param3:Number = 30)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            super();
            loop0:
            while(true)
            {
               this.§]!`§ = param1;
               loop1:
               while(true)
               {
                  this.§#S§ = param2;
                  loop2:
                  while(true)
                  {
                     this.§ H§ = param1.frameCount;
                     loop3:
                     for(; _loc5_; if(_loc4_ && param1)
                     {
                        continue;
                     },if(_loc4_)
                     {
                        continue loop2;
                     })
                     {
                        if(_loc4_)
                        {
                           continue loop0;
                        }
                        this.§6#F§ = param3;
                        while(true)
                        {
                           this.§?"[§ = 1000 / param3;
                           while(_loc5_)
                           {
                              this.currentFrame = 0;
                              if(!(_loc4_ && param1))
                              {
                                 continue loop3;
                              }
                           }
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            if(!this.§&#6§)
            {
               if(_loc4_)
               {
                  return;
               }
            }
            §§push(this);
            §§push(this.§'!<§);
            if(!(_loc3_ && _loc3_))
            {
               §§push(§§pop() + param1);
            }
            §§pop().§'!<§ = §§pop();
         }
         §§push(this.§'!<§);
         if(_loc4_ || param1)
         {
            §§push(§§pop() / this.§?"[§);
         }
         var _loc2_:* = int(§§pop());
         if(_loc4_ || param1)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(this.§ H§);
               loop1:
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     loop2:
                     while(true)
                     {
                        if(!this.§#S§)
                        {
                           this.§&#6§ = false;
                           while(true)
                           {
                              addr131:
                              while(true)
                              {
                                 dispatchEvent(new Event(Event.COMPLETE));
                                 addr138:
                                 while(true)
                                 {
                                 }
                              }
                           }
                           addr145:
                        }
                        addr179:
                        while(true)
                        {
                           §§push(this);
                           §§push(this.§'!<§);
                           if(!(_loc3_ && _loc2_))
                           {
                              §§push(§§pop() - _loc2_ * this.§?"[§);
                           }
                           §§pop().§'!<§ = §§pop();
                           loop12:
                           while(true)
                           {
                              §§push(_loc2_);
                              addr148:
                              while(_loc4_)
                              {
                                 §§push(this.§ H§);
                                 while(!(_loc3_ && this))
                                 {
                                    §§push(int(§§pop() - §§pop()));
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                       addr162:
                                       while(true)
                                       {
                                          if(_loc4_ || _loc2_)
                                          {
                                             if(!_loc3_)
                                             {
                                                break;
                                             }
                                             continue loop2;
                                          }
                                          continue loop12;
                                       }
                                       §§goto(addr131);
                                    }
                                 }
                                 continue loop1;
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§push(this.§?"l§);
                     if(!_loc3_)
                     {
                        if(!(_loc3_ && this))
                        {
                           §§push(_loc2_);
                           if(_loc4_ || this)
                           {
                              if(§§pop() != §§pop())
                              {
                                 if(!(_loc3_ && param1))
                                 {
                                    if(!_loc3_)
                                    {
                                       this.currentFrame = _loc2_;
                                    }
                                    §§goto(addr179);
                                 }
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    if(_loc4_)
                                    {
                                       if(_loc4_ || this)
                                       {
                                          break;
                                       }
                                       §§goto(addr162);
                                    }
                                    §§goto(addr145);
                                 }
                                 §§goto(addr138);
                              }
                              break;
                           }
                           §§goto(addr152);
                        }
                        §§goto(addr148);
                     }
                     §§goto(addr161);
                  }
                  return;
               }
            }
         }
         §§goto(addr179);
      }
      
      public function set currentFrame(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            if(this.§?"l§ == param1)
            {
               if(_loc2_)
               {
                  return;
               }
               addr122:
               while(true)
               {
               }
               addr122:
            }
            while(true)
            {
               this.§?"l§ = param1;
               while(_loc2_ || this)
               {
                  §§push(this.§>#;§);
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           removeChild(this.§>#;§,true);
                           addr92:
                           while(true)
                           {
                           }
                        }
                        addr87:
                     }
                     while(true)
                     {
                        this.§>#;§ = this.§]!`§.getFrame(this.§?"l§);
                        addr80:
                        while(true)
                        {
                           if(_loc2_)
                           {
                              continue loop2;
                           }
                           §§goto(addr87);
                        }
                        §§goto(addr92);
                     }
                  }
               }
               §§goto(addr122);
            }
         }
         §§goto(addr122);
      }
      
      public function get currentFrame() : int
      {
         return this.§?"l§;
      }
      
      public function get totalFrames() : int
      {
         return this.§ H§;
      }
      
      public function get §<"M§() : Boolean
      {
         return this.§&#6§;
      }
   }
}
