package §7!H§
{
   import §#!b§.§'y§;
   import §%!r§.§3!'§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class §]!P§ extends EventDispatcher implements §&!k§
   {
       
      
      protected var §>!R§:Rectangle;
      
      protected var § !%§:Number;
      
      protected var §=D§:Number;
      
      protected var §?"<§:int;
      
      protected var §-!U§:Boolean;
      
      protected var §&"+§:Boolean;
      
      protected var §null §:Vector.<§'"H§>;
      
      protected var §'!s§:§'"H§;
      
      protected var §7Z§:§3!'§;
      
      protected var §3!+§:§'y§;
      
      protected var §[S§:MovieClip;
      
      public function §]!P§(param1:int, param2:MovieClip, param3:§3!'§, param4:§'y§, param5:Boolean = true, param6:Rectangle = null, param7:Boolean = false)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!_loc8_)
         {
            super();
            loop0:
            while(true)
            {
               this.§7Z§ = param3;
               addr136:
               while(true)
               {
                  this.§3!+§ = param4;
                  while(true)
                  {
                     this.§null § = new Vector.<§'"H§>();
                     loop3:
                     while(true)
                     {
                        this.§?"<§ = param1;
                        while(true)
                        {
                           this.§&"+§ = param5;
                           continue loop0;
                           addr75:
                           if(_loc9_ || param1)
                           {
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§-!U§ = param7;
            for(; !_loc8_; this.§'U§(param2),if(_loc9_ || param1)
            {
               return;
            })
            {
               if(_loc9_)
               {
                  continue;
               }
               §§goto(addr136);
            }
            §§goto(addr58);
         }
      }
      
      public function set §6!%§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§&"+§ = param1;
         }
      }
      
      public function get §6!%§() : Boolean
      {
         return this.§&"+§;
      }
      
      public function set §0"!§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§>!R§ = param1;
         }
      }
      
      public function get §0"!§() : Rectangle
      {
         return this.§>!R§;
      }
      
      public function get index() : int
      {
         return this.§?"<§;
      }
      
      public function get data() : §'"H§
      {
         return this.§'!s§;
      }
      
      public function set isPersistentLayer(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§-!U§ = param1;
         }
      }
      
      public function get isPersistentLayer() : Boolean
      {
         return this.§-!U§;
      }
      
      protected function §'U§(param1:MovieClip) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§[S§ = param1.addChild(new MovieClip()) as MovieClip;
            do
            {
               this.§,!<§();
            }
            while(!_loc3_);
            
         }
      }
      
      public function §,!<§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.index);
         if(!_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(_loc2_)
         {
            §§push(_loc1_);
            if(_loc2_ || this)
            {
               if(§§pop() >= this.§[S§.parent.numChildren)
               {
                  if(!_loc3_)
                  {
                     addr81:
                     _loc1_ = int(this.§[S§.parent.numChildren - 1);
                     addr82:
                     while(true)
                     {
                     }
                     addr82:
                  }
                  §§goto(addr82);
               }
               while(true)
               {
                  this.§[S§.parent.setChildIndex(this.§[S§,_loc1_);
                  if(!_loc3_)
                  {
                     break;
                  }
                  §§goto(addr82);
               }
               return;
            }
         }
         §§goto(addr81);
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§ !%§ = param1;
         }
         while(true)
         {
            this.§=D§ = param2;
            while(true)
            {
               §§push(this.§'!s§);
               if(_loc3_ || _loc3_)
               {
                  if(§§pop())
                  {
                     if(!_loc4_)
                     {
                        continue;
                     }
                     addr86:
                  }
                  return;
               }
               break;
            }
            addr62:
            §§pop().popup.setViewSize(this.§ !%§ + this.§>!R§.width,this.§=D§ + this.§>!R§.height);
            §§goto(addr86);
            if(!(_loc3_ || param2))
            {
               continue;
            }
            §§goto(addr62);
            §§push(this.§'!s§);
         }
      }
      
      public function openPopup(param1:§'"H§, param2:Boolean = false) : void
      {
         throw "--#AbstractPopupLayer[openPopup]:: must be implemented";
      }
      
      public function closePopup(param1:Boolean = false, param2:Boolean = true) : void
      {
         throw "--#AbstractPopupLayer[openPopup]:: must be implemented";
      }
      
      public function §<!N§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§null §)
            {
               if(!(_loc1_ && _loc1_))
               {
                  addr49:
                  this.§null § = new Vector.<§'"H§>();
               }
            }
            return;
         }
         §§goto(addr49);
      }
      
      public function §^",§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§-!U§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr41:
                     §§push(false);
                     if(!_loc1_)
                     {
                        return §§pop();
                     }
                     addr61:
                     return !§§pop();
                  }
                  else
                  {
                     addr55:
                     §§push(this.§'!s§ == null);
                     if(_loc2_)
                     {
                        §§goto(addr61);
                     }
                  }
                  return §§pop();
               }
               §§goto(addr55);
            }
            §§goto(addr61);
         }
         §§goto(addr41);
      }
      
      public function isPopupOpenById(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§-!U§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§'!s§);
                     loop2:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        loop3:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop4:
                              while(true)
                              {
                                 §§pop();
                                 addr126:
                                 while(true)
                                 {
                                    §§push(this.§'!s§);
                                    if(!(_loc3_ || _loc2_))
                                    {
                                       break;
                                    }
                                    §§push(§§pop().popup.id == param1);
                                    continue loop4;
                                 }
                                 continue loop2;
                              }
                           }
                           loop7:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(_loc3_)
                                 {
                                    if(_loc3_ || _loc2_)
                                    {
                                       if(!_loc3_)
                                       {
                                          §§goto(addr131);
                                       }
                                       while(true)
                                       {
                                          §§push(true);
                                          break loop7;
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr126);
                                    }
                                 }
                                 else
                                 {
                                    if(!_loc3_)
                                    {
                                       continue loop1;
                                    }
                                    addr25:
                                    §§push(false);
                                    if(!(_loc3_ || _loc2_))
                                    {
                                       break;
                                    }
                                    if(!_loc2_)
                                    {
                                       return §§pop();
                                    }
                                 }
                                 §§goto(addr53);
                              }
                              §§goto(addr25);
                           }
                           while(true)
                           {
                              if(!(_loc2_ && this))
                              {
                                 break loop3;
                              }
                              continue loop3;
                           }
                           addr105:
                           return §§pop();
                        }
                        if(!(_loc2_ && _loc3_))
                        {
                           continue loop0;
                        }
                        §§goto(addr131);
                     }
                  }
               }
               addr131:
               return false;
            }
         }
         §§goto(addr83);
      }
      
      public function §'!Q§(param1:String) : §3z§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§'!s§);
            do
            {
               §§push(Boolean(§§pop()));
               if(!(_loc2_ && param1))
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        §§goto(addr109);
                     }
                     addr108:
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc3_ || param1)
                        {
                           §§push(this.§'!s§);
                           break;
                        }
                        if(_loc2_)
                        {
                           addr109:
                           §§goto(addr82);
                        }
                        else
                        {
                           addr85:
                        }
                     }
                     return null;
                  }
                  continue;
               }
               §§goto(addr108);
            }
            while(_loc2_ && this);
            
            addr82:
            while(true)
            {
               §§push(this.§'!s§);
               if(!(_loc3_ || _loc3_))
               {
                  continue loop0;
               }
               §§push(§§pop().popup);
               if(!(_loc3_ || _loc3_))
               {
                  break;
               }
               §§push(§§pop().id == param1);
               if(_loc3_)
               {
               }
               continue loop3;
            }
            return §§pop();
            §§push(§§pop().popup);
         }
         §§goto(addr85);
      }
      
      public function isTransitioning() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§'!s§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr48:
                     §§push(this.§'!s§.popup.isTransitioning);
                     if(!(_loc1_ && _loc1_))
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr68:
                     return false;
                  }
                  return §§pop();
               }
               §§goto(addr68);
            }
         }
         §§goto(addr48);
      }
   }
}
