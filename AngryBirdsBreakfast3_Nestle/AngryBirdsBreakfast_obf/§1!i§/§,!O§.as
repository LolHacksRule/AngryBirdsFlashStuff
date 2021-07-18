package §1!i§
{
   import §,!'§.§5O§;
   import §,M§.§+f§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class §,!O§ extends EventDispatcher implements §]7§
   {
       
      
      protected var §3!d§:Rectangle;
      
      protected var §^!J§:Number;
      
      protected var §+=§:Number;
      
      protected var §#W§:int;
      
      protected var §8s§:Boolean;
      
      protected var §?5§:Boolean;
      
      protected var §2!i§:Vector.<§?O§>;
      
      protected var §?q§:§?O§;
      
      protected var §8&§:§+f§;
      
      protected var §-p§:§5O§;
      
      protected var §29§:MovieClip;
      
      public function §,!O§(param1:int, param2:MovieClip, param3:§+f§, param4:§5O§, param5:Boolean = true, param6:Rectangle = null, param7:Boolean = false)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_)
         {
            super();
            loop0:
            while(true)
            {
               this.§8&§ = param3;
               addr126:
               while(true)
               {
                  this.§-p§ = param4;
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§#W§ = param1;
            while(true)
            {
               this.§?5§ = param5;
               loop6:
               while(_loc9_ || param2)
               {
                  §§push(this);
                  if(_loc9_)
                  {
                     §§pop().§3!d§ = param6 || new Rectangle();
                     loop7:
                     while(true)
                     {
                        this.§8s§ = param7;
                        while(!_loc8_)
                        {
                           this.§"!3§(param2);
                           if(!_loc9_)
                           {
                              continue;
                           }
                           if(!_loc9_)
                           {
                              continue loop7;
                           }
                           if(_loc8_)
                           {
                              continue loop6;
                           }
                           §§goto(addr34);
                        }
                        §§goto(addr126);
                     }
                  }
                  §§goto(addr68);
               }
            }
         }
      }
      
      public function set §,,§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§?5§ = param1;
         }
      }
      
      public function get §,,§() : Boolean
      {
         return this.§?5§;
      }
      
      public function set §!!W§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§3!d§ = param1;
         }
      }
      
      public function get §!!W§() : Rectangle
      {
         return this.§3!d§;
      }
      
      public function get index() : int
      {
         return this.§#W§;
      }
      
      public function get data() : §?O§
      {
         return this.§?q§;
      }
      
      public function set isPersistentLayer(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§8s§ = param1;
         }
      }
      
      public function get isPersistentLayer() : Boolean
      {
         return this.§8s§;
      }
      
      protected function §"!3§(param1:MovieClip) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§29§ = param1.addChild(new MovieClip()) as MovieClip;
         }
         do
         {
            this.§&A§();
         }
         while(!_loc3_);
         
      }
      
      public function §&A§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.index);
         if(_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(_loc3_ || _loc2_)
         {
            §§push(_loc1_);
            if(_loc3_)
            {
               if(§§pop() >= this.§29§.parent.numChildren)
               {
                  addr81:
                  while(true)
                  {
                     §§push(int(this.§29§.parent.numChildren - 1));
                     addr87:
                     while(true)
                     {
                        _loc1_ = §§pop();
                        addr88:
                        while(true)
                        {
                        }
                     }
                  }
                  addr81:
               }
               while(true)
               {
                  this.§29§.parent.setChildIndex(this.§29§,_loc1_);
                  if(!(_loc3_ || _loc1_))
                  {
                     continue;
                  }
                  if(!_loc2_)
                  {
                     break;
                  }
                  §§goto(addr81);
               }
               return;
            }
            §§goto(addr87);
         }
         §§goto(addr81);
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            this.§^!J§ = param1;
            loop0:
            while(true)
            {
               this.§+=§ = param2;
               do
               {
                  §§push(this.§?q§);
                  if(!_loc3_)
                  {
                     if(!§§pop())
                     {
                        §§goto(addr25);
                     }
                     if(_loc3_)
                     {
                        continue;
                     }
                     if(_loc3_)
                     {
                        continue loop0;
                     }
                     §§push(this.§?q§);
                  }
                  §§pop().popup.setViewSize(this.§^!J§ + this.§3!d§.width,this.§+=§ + this.§3!d§.height);
               }
               while(!_loc4_);
               
            }
         }
         addr25:
      }
      
      public function openPopup(param1:§?O§, param2:Boolean = false) : void
      {
         throw "--#AbstractPopupLayer[openPopup]:: must be implemented";
      }
      
      public function closePopup(param1:Boolean = false, param2:Boolean = true) : void
      {
         throw "--#AbstractPopupLayer[openPopup]:: must be implemented";
      }
      
      public function §4"3§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§2!i§)
            {
               if(_loc2_)
               {
                  addr44:
                  this.§2!i§ = new Vector.<§?O§>();
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      public function §8!5§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§8s§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     addr41:
                     §§push(false);
                     if(_loc2_)
                     {
                        §§goto(addr54);
                     }
                     else
                     {
                        addr61:
                        return !§§pop();
                     }
                  }
                  else
                  {
                     addr55:
                     §§push(this.§?q§ == null);
                     if(_loc2_)
                     {
                        §§goto(addr61);
                     }
                  }
                  return §§pop();
               }
               §§goto(addr55);
            }
            addr54:
            return §§pop();
         }
         §§goto(addr41);
      }
      
      public function isPopupOpenById(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(this.§8s§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§?q§);
                     loop2:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        loop3:
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              continue loop0;
                           }
                           if(§§pop())
                           {
                              loop4:
                              while(_loc2_)
                              {
                                 §§pop();
                                 loop5:
                                 while(_loc2_)
                                 {
                                    if(!_loc2_)
                                    {
                                       §§push(false);
                                    }
                                    else
                                    {
                                       addr104:
                                    }
                                    §§push(this.§?q§);
                                    if(!(_loc2_ || _loc2_))
                                    {
                                       continue loop2;
                                       addr62:
                                    }
                                    §§push(§§pop().popup.id == param1);
                                    loop6:
                                    while(true)
                                    {
                                       loop7:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             continue;
                                          }
                                          if(!_loc3_)
                                          {
                                             if(!_loc3_)
                                             {
                                                §§push(true);
                                                break;
                                             }
                                             continue loop5;
                                          }
                                          addr74:
                                          while(true)
                                          {
                                             continue loop7;
                                          }
                                       }
                                       while(true)
                                       {
                                          if(_loc2_)
                                          {
                                             break loop6;
                                          }
                                          continue loop4;
                                       }
                                    }
                                    if(_loc2_)
                                    {
                                       break loop3;
                                    }
                                    continue loop3;
                                 }
                                 continue loop1;
                              }
                              return §§pop();
                           }
                           §§goto(addr62);
                        }
                        return §§pop();
                     }
                  }
               }
               §§goto(addr104);
            }
         }
         §§goto(addr74);
      }
      
      public function §+7§(param1:String) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§?O§ = null;
         for each(_loc2_ in this.§2!i§)
         {
            if(_loc5_ || _loc2_)
            {
               if(_loc2_.popup.id == param1)
               {
                  if(_loc5_)
                  {
                     return true;
                  }
               }
            }
         }
         return false;
      }
      
      public function §;j§(param1:String) : §?!a§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this.§?q§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(this.§?q§);
                           if(_loc2_)
                           {
                              break;
                           }
                           if(_loc3_)
                           {
                              §§push(§§pop().popup);
                              if(_loc2_)
                              {
                                 return §§pop();
                              }
                              §§push(§§pop().id == param1);
                              if(!(_loc2_ && _loc2_))
                              {
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    while(§§pop())
                                    {
                                       if(_loc3_ || this)
                                       {
                                          §§push(this.§?q§);
                                          break loop3;
                                       }
                                       if(_loc3_ || _loc2_)
                                       {
                                          addr97:
                                          break;
                                       }
                                       continue loop3;
                                    }
                                    return null;
                                    addr67:
                                 }
                                 continue loop1;
                              }
                              continue loop2;
                              addr79:
                           }
                           continue loop0;
                        }
                        §§goto(addr79);
                     }
                  }
                  §§goto(addr67);
               }
            }
         }
         §§goto(addr97);
      }
      
      public function isTransitioning() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§?q§);
            if(_loc2_ || this)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr53:
                     §§push(this.§?q§.popup.isTransitioning);
                     if(!_loc1_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr58:
                     return false;
                  }
                  return §§pop();
               }
               §§goto(addr58);
            }
         }
         §§goto(addr53);
      }
      
      public function get container() : MovieClip
      {
         return this.§29§;
      }
   }
}
