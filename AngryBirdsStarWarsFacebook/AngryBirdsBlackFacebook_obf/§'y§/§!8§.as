package §'y§
{
   import §+!c§.§5" §;
   import §+D§.§^"m§;
   import §,"N§.§@#B§;
   import §6!H§.§-"b§;
   import §;"Y§.§1"z§;
   import flash.display.MovieClip;
   
   public class §!8§
   {
       
      
      public var view:§^"m§;
      
      protected var §4j§:§5" §;
      
      private var §]!=§:String;
      
      private var §1U§:Boolean;
      
      private var §]"u§:Boolean;
      
      public function §!8§(param1:§^"m§, param2:String)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super();
            loop0:
            while(true)
            {
               this.view = param1;
               loop1:
               while(true)
               {
                  this.§]!=§ = param2;
                  loop2:
                  while(true)
                  {
                     this.§1U§ = false;
                     loop3:
                     while(true)
                     {
                        this.§]"u§ = false;
                        loop4:
                        while(true)
                        {
                           this.§4j§ = new §5" §(param1.mClip.count);
                           while(_loc3_)
                           {
                              if(_loc3_)
                              {
                                 param1.mClip.icon.gotoAndStop(0);
                                 loop6:
                                 while(_loc3_ || _loc3_)
                                 {
                                    if(!_loc3_)
                                    {
                                       continue loop4;
                                       while(true)
                                       {
                                          this.refresh();
                                          if(!_loc4_)
                                          {
                                             continue loop2;
                                          }
                                          continue loop6;
                                       }
                                    }
                                    continue loop1;
                                    return;
                                 }
                                 continue;
                              }
                              continue loop0;
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr68);
      }
      
      public function set §0!H§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§1U§ = param1;
         }
         do
         {
            this.refresh();
         }
         while(!(_loc2_ || _loc2_));
         
      }
      
      public function get §0!H§() : Boolean
      {
         return this.§1U§;
      }
      
      public function set isDisabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§]"u§ = param1;
            do
            {
               this.refresh();
            }
            while(!(_loc3_ || this));
            
         }
      }
      
      public function get isDisabled() : Boolean
      {
         return this.§]"u§;
      }
      
      public function set dataID(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§]!=§ = param1;
         }
         do
         {
            this.refresh();
         }
         while(_loc3_);
         
      }
      
      public function get dataID() : String
      {
         return this.§]!=§;
      }
      
      public function set count(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§4j§.count = param1;
            do
            {
               this.refresh();
            }
            while(_loc2_);
            
         }
      }
      
      public function get count() : int
      {
         return this.§4j§.count;
      }
      
      public function refresh() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§4j§.§ "r§ = §@#B§(§4#;§.singleton.dataModel).§]"<§.§ #D§(this.§]!=§);
            if(!(_loc4_ && this))
            {
               if(this.§]!=§)
               {
                  try
                  {
                     addr44:
                     MovieClip(this.view.mClip.icon).gotoAndStop(this.§]!=§.toLowerCase());
                     if(!_loc4_)
                     {
                        addr258:
                        if(§-"b§.§?#!§.indexOf(this.§]!=§) == -1)
                        {
                           §§push(this.§4j§);
                           if(!(_loc4_ && _loc2_))
                           {
                              §§push(true);
                              if(_loc3_)
                              {
                                 §§pop().visible = §§pop();
                                 loop0:
                                 while(true)
                                 {
                                    loop1:
                                    while(true)
                                    {
                                       §§push(this.§1U§);
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
                                                   loop5:
                                                   while(true)
                                                   {
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(this.§]"u§);
                                                            while(true)
                                                            {
                                                               §§push(!§§pop());
                                                               addr203:
                                                               while(_loc3_ || _loc1_)
                                                               {
                                                               }
                                                               continue loop2;
                                                               addr127:
                                                               if(!(_loc3_ || _loc3_))
                                                               {
                                                                  continue;
                                                               }
                                                               if(!(_loc3_ || _loc3_))
                                                               {
                                                                  continue loop4;
                                                               }
                                                               if(_loc4_)
                                                               {
                                                                  continue loop3;
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  addr154:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.view);
                                                                     addr156:
                                                                     loop20:
                                                                     while(true)
                                                                     {
                                                                        if(_loc3_ || _loc3_)
                                                                        {
                                                                           §§push(§1"z§.COMPONENT_STATE_DISABLED);
                                                                           while(true)
                                                                           {
                                                                              §§pop().setComponentState(§§pop());
                                                                              addr166:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       continue loop5;
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    loop10:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc4_ && _loc3_))
                                                                                       {
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                continue loop0;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§]"u§);
                                                                                                if(_loc4_ && this)
                                                                                                {
                                                                                                   break loop10;
                                                                                                }
                                                                                                §§goto(addr127);
                                                                                             }
                                                                                             addr117:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.view);
                                                                                             addr214:
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop().mClip.glow.visible = true;
                                                                                             }
                                                                                          }
                                                                                          addr212:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc4_ && _loc1_)
                                                                                          {
                                                                                             break loop5;
                                                                                          }
                                                                                          §§goto(addr117);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr203);
                                                                                    addr187:
                                                                                 }
                                                                                 §§goto(addr91);
                                                                              }
                                                                           }
                                                                           addr165:
                                                                        }
                                                                        addr176:
                                                                        while(true)
                                                                        {
                                                                           if(_loc3_ || _loc3_)
                                                                           {
                                                                              §§pop().mClip.glow.visible = false;
                                                                              §§goto(addr187);
                                                                           }
                                                                           §§goto(addr214);
                                                                           continue loop20;
                                                                        }
                                                                     }
                                                                  }
                                                                  addr154:
                                                               }
                                                               §§push(this.view);
                                                               if(!(_loc4_ && this))
                                                               {
                                                                  §§push(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                                                  if(_loc3_)
                                                                  {
                                                                     §§pop().setComponentState(§§pop());
                                                                     if(!_loc4_)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           §§goto(addr154);
                                                                        }
                                                                        addr91:
                                                                        return;
                                                                     }
                                                                     §§goto(addr166);
                                                                  }
                                                                  §§goto(addr165);
                                                               }
                                                               §§goto(addr156);
                                                            }
                                                         }
                                                         addr240:
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(this.§4j§);
                                                            addr277:
                                                            while(true)
                                                            {
                                                               §§push(false);
                                                               addr278:
                                                               while(true)
                                                               {
                                                                  §§pop().visible = §§pop();
                                                                  break loop5;
                                                               }
                                                            }
                                                         }
                                                         addr275:
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      continue loop1;
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   §§goto(addr176);
                                                   §§push(this.view);
                                                }
                                                §§goto(addr212);
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr278);
                           }
                           §§goto(addr277);
                        }
                        §§goto(addr275);
                        addr79:
                     }
                     §§goto(addr240);
                  }
                  catch(e:Error)
                  {
                     var _loc2_:* = e;
                     if(_loc3_)
                     {
                        MovieClip(view.mClip.icon).gotoAndStop(1);
                     }
                  }
                  §§goto(addr79);
               }
               else
               {
                  MovieClip(this.view.mClip.icon).gotoAndStop(1);
                  if(_loc3_)
                  {
                     §§goto(addr258);
                  }
               }
               §§goto(addr154);
            }
         }
         §§goto(addr44);
      }
   }
}
