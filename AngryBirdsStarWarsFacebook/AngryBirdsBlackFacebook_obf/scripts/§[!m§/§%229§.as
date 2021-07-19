package §[!m§
{
   import §0!=§.§]"3§;
   import §>@§.§5"H§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class §"9§ extends EventDispatcher implements §]"X§
   {
       
      
      protected var §;!O§:Rectangle;
      
      protected var §+"p§:Number;
      
      protected var §?!"§:Number;
      
      protected var §1`§:int;
      
      protected var §6!m§:Boolean;
      
      protected var §;g§:Boolean;
      
      protected var §'"R§:Vector.<§1!v§>;
      
      protected var §`p§:§1!v§;
      
      protected var §^"N§:§5"H§;
      
      protected var §;D§:§]"3§;
      
      protected var §^c§:MovieClip;
      
      public function §"9§(param1:int, param2:MovieClip, param3:§5"H§, param4:§]"3§, param5:Boolean = true, param6:Rectangle = null, param7:Boolean = false)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_ || param1)
         {
            super();
            loop0:
            while(true)
            {
               this.§^"N§ = param3;
               loop1:
               while(true)
               {
                  this.§;D§ = param4;
                  loop2:
                  while(true)
                  {
                     this.§'"R§ = new Vector.<§1!v§>();
                     loop3:
                     while(!_loc9_)
                     {
                        this.§1`§ = param1;
                        while(_loc8_)
                        {
                           addr53:
                           if(_loc8_ || this)
                           {
                              this.§=#T§(param2);
                              addr70:
                              if(!_loc9_)
                              {
                                 continue loop2;
                              }
                              loop8:
                              while(true)
                              {
                                 if(!(_loc8_ || this))
                                 {
                                    while(_loc8_)
                                    {
                                       this.§6!m§ = param7;
                                       continue loop8;
                                    }
                                    continue loop3;
                                    while(!(_loc9_ && this))
                                    {
                                       §§push(this);
                                       if(!_loc9_)
                                       {
                                          §§pop().§;!O§ = param6 || new Rectangle();
                                          §§goto(addr84);
                                       }
                                       §§goto(addr80);
                                    }
                                    addr84:
                                 }
                                 §§goto(addr53);
                              }
                           }
                        }
                        continue loop0;
                     }
                     continue loop1;
                  }
               }
            }
         }
         while(true)
         {
            this.§;g§ = param5;
            §§goto(addr91);
         }
         §§goto(addr41);
      }
      
      public function set §3!-§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§;g§ = param1;
         }
      }
      
      public function get §3!-§() : Boolean
      {
         return this.§;g§;
      }
      
      public function set §%#_§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§;!O§ = param1;
         }
      }
      
      public function get §%#_§() : Rectangle
      {
         return this.§;!O§;
      }
      
      public function get index() : int
      {
         return this.§1`§;
      }
      
      public function get data() : §1!v§
      {
         return this.§`p§;
      }
      
      public function set isPersistentLayer(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§6!m§ = param1;
         }
      }
      
      public function get isPersistentLayer() : Boolean
      {
         return this.§6!m§;
      }
      
      protected function §=#T§(param1:MovieClip) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§^c§ = param1.addChild(new MovieClip()) as MovieClip;
            do
            {
               this.§-"1§();
            }
            while(_loc3_ && _loc3_);
            
         }
      }
      
      public function §-"1§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.index);
         if(_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(_loc3_)
         {
            §§push(_loc1_);
            if(_loc3_ || _loc3_)
            {
               if(§§pop() >= this.§^c§.parent.numChildren)
               {
                  if(_loc3_)
                  {
                     addr82:
                     _loc1_ = int(this.§^c§.parent.numChildren - 1);
                     addr83:
                     while(true)
                     {
                     }
                     addr83:
                  }
                  §§goto(addr83);
               }
               while(true)
               {
                  this.§^c§.parent.setChildIndex(this.§^c§,_loc1_);
                  if(!_loc2_)
                  {
                     break;
                  }
                  §§goto(addr83);
               }
               return;
            }
         }
         §§goto(addr82);
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            this.§+"p§ = param1;
            while(true)
            {
               this.§?!"§ = param2;
               addr74:
               if(!(_loc3_ || param2))
               {
                  continue;
               }
               §§goto(addr24);
            }
         }
         while(true)
         {
            §§push(this.§`p§);
            if(!_loc4_)
            {
               if(!§§pop())
               {
                  break;
               }
               if(_loc4_ && _loc3_)
               {
                  continue;
               }
               §§push(this.§`p§);
            }
            §§pop().popup.setViewSize(this.§+"p§ + this.§;!O§.width,this.§?!"§ + this.§;!O§.height);
         }
         addr24:
      }
      
      public function openPopup(param1:§1!v§, param2:Boolean = false) : void
      {
         throw "--#AbstractPopupLayer[openPopup]:: must be implemented";
      }
      
      public function closePopup(param1:Boolean = false, param2:Boolean = true) : void
      {
         throw "--#AbstractPopupLayer[openPopup]:: must be implemented";
      }
      
      public function §=#@§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            if(this.§'"R§)
            {
               if(!_loc2_)
               {
                  this.§'"R§ = new Vector.<§1!v§>();
               }
            }
         }
      }
      
      public function §""n§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§6!m§);
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     §§push(false);
                     if(!_loc1_)
                     {
                        return §§pop();
                     }
                     addr66:
                     §§push(!§§pop());
                  }
                  else
                  {
                     addr60:
                     §§push(this.§`p§ == null);
                     if(_loc2_)
                     {
                        §§goto(addr66);
                     }
                  }
               }
               §§goto(addr60);
            }
            return §§pop();
         }
         §§goto(addr60);
      }
      
      public function isPopupOpenById(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§6!m§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§`p§);
                     loop2:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        if(_loc2_ || _loc2_)
                        {
                           if(§§pop())
                           {
                              loop4:
                              while(true)
                              {
                                 §§pop();
                                 loop5:
                                 while(true)
                                 {
                                    if(!_loc3_)
                                    {
                                       §§push(this.§`p§);
                                       if(_loc3_)
                                       {
                                          continue loop2;
                                       }
                                       §§push(§§pop().popup.id == param1);
                                       loop6:
                                       while(true)
                                       {
                                          if(!_loc3_)
                                          {
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc2_ || param1)
                                                   {
                                                      if(!(_loc2_ || this))
                                                      {
                                                         continue loop5;
                                                      }
                                                      if(!(_loc2_ || this))
                                                      {
                                                         continue loop1;
                                                      }
                                                      §§push(true);
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §§goto(addr19);
                                                      }
                                                      addr83:
                                                   }
                                                   while(true)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         return §§pop();
                                                      }
                                                      continue loop4;
                                                   }
                                                }
                                                addr19:
                                                while(true)
                                                {
                                                   §§push(false);
                                                   if(!_loc3_)
                                                   {
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            break;
                                                         }
                                                         continue loop0;
                                                      }
                                                      continue loop6;
                                                   }
                                                }
                                                return §§pop();
                                                continue loop6;
                                             }
                                             addr46:
                                          }
                                       }
                                    }
                                    else
                                    {
                                       addr114:
                                       return false;
                                    }
                                    return §§pop();
                                 }
                              }
                              addr97:
                           }
                           §§goto(addr46);
                        }
                        §§goto(addr97);
                     }
                  }
               }
               §§goto(addr114);
            }
         }
         §§goto(addr83);
      }
      
      public function §6#-§(param1:String) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§1!v§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§'"R§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!(_loc5_ || this))
               {
                  break;
               }
               if(_loc2_.popup.id == param1)
               {
                  if(!(_loc6_ && param1))
                  {
                     break;
                  }
               }
            }
            return false;
         }
         return true;
      }
      
      public function § #6§(param1:String) : §[!j§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§`p§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               addr100:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc2_)
                           {
                              §§push(this.§`p§);
                              break;
                           }
                           if(!_loc2_)
                           {
                              while(true)
                              {
                                 §§push(this.§`p§);
                                 if(_loc3_ && _loc2_)
                                 {
                                    break loop3;
                                 }
                                 continue loop0;
                                 §§goto(addr102);
                              }
                              addr103:
                           }
                        }
                        return null;
                     }
                     addr83:
                     return §§pop().popup;
                     addr76:
                  }
                  while(true)
                  {
                     §§pop();
                  }
                  addr102:
               }
            }
         }
         §§goto(addr103);
      }
      
      public function isTransitioning() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§`p§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     addr37:
                     §§push(this.§`p§.popup.isTransitioning);
                     if(_loc1_ || _loc2_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr57:
                     return false;
                  }
                  return §§pop();
               }
               §§goto(addr57);
            }
         }
         §§goto(addr37);
      }
      
      public function get container() : MovieClip
      {
         return this.§^c§;
      }
   }
}
