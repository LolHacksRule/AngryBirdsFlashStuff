package §1" §
{
   import §"_§.§!"8§;
   import §,P§.§'_§;
   import §7t§.§7a§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §`!]§ extends EventDispatcher implements §4!x§
   {
       
      
      private var §;!w§:Boolean = false;
      
      private var §9J§:§#!j§;
      
      public function §`!]§(param1:§#!j§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super();
            do
            {
               this.§9J§ = param1;
            }
            while(_loc3_);
            
         }
      }
      
      public function initialize() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§9J§.§<!_§.addEventListener(§!"8§.§;`§,this.§>!>§);
         }
      }
      
      public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(§!!2§.§[E§);
            loop0:
            while(true)
            {
               §§push(this.§?!p§);
               loop1:
               while(true)
               {
                  §§push(§!!2§.SAVE);
                  loop2:
                  while(true)
                  {
                     §§pop().§[j§(§§pop(),§§pop());
                     loop3:
                     while(true)
                     {
                        §§push(§!!2§.§[E§);
                        loop4:
                        while(true)
                        {
                           §§push(this.§[?§);
                           loop5:
                           while(_loc2_)
                           {
                              §§push(§!!2§.MODIFY);
                              while(true)
                              {
                                 §§pop().§[j§(§§pop(),§§pop());
                                 loop10:
                                 while(_loc2_ || this)
                                 {
                                    if(_loc2_)
                                    {
                                       §§pop().§[j§(§§pop(),§§pop());
                                       loop11:
                                       while(true)
                                       {
                                          if(_loc2_)
                                          {
                                             if(_loc1_)
                                             {
                                                break;
                                             }
                                             §§push(§!!2§.§[E§);
                                             if(!(_loc1_ && _loc1_))
                                             {
                                                continue loop0;
                                             }
                                             addr108:
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§push(§!!2§.§[E§);
                                             }
                                             addr129:
                                          }
                                          while(_loc2_)
                                          {
                                             §§push(this.§+'§);
                                             while(_loc2_ || _loc2_)
                                             {
                                                §§push(§!!2§.ADD);
                                                §§push(this.§[Q§);
                                                continue loop10;
                                                if(!(_loc1_ && _loc1_))
                                                {
                                                   §§push(§!!2§.DELETE);
                                                   if(_loc2_)
                                                   {
                                                      continue loop11;
                                                   }
                                                   continue loop10;
                                                }
                                             }
                                             continue loop5;
                                             §§goto(addr108);
                                          }
                                          continue loop4;
                                       }
                                       continue loop3;
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr129);
      }
      
      protected function §>!>§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this);
            §§push(this.§;!w§);
            if(!(_loc3_ && _loc3_))
            {
               §§push(!§§pop());
            }
            §§pop().§9!G§(§§pop());
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(!§'_§.isPaused)
            {
               if(!(_loc3_ && this))
               {
                  addr53:
                  this.§9J§.§0"!§.§0z§.update(param1,this.§;!w§);
               }
            }
            return;
         }
         §§goto(addr53);
      }
      
      public function §'[§() : Boolean
      {
         return this.§;!w§;
      }
      
      public function §9!G§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§;!w§);
            loop0:
            for(; §§pop() != param1; while(true)
            {
               §§push(this.§;!w§);
               if(!(_loc3_ && this))
               {
                  if(!§§pop())
                  {
                     dispatchEvent(new §!"8§(§!"8§.§3!?§));
                     if(!_loc3_)
                     {
                        if(!(_loc2_ || _loc3_))
                        {
                           break;
                        }
                        continue;
                     }
                     §§goto(addr78);
                  }
                  break;
               }
               continue loop0;
            },if(_loc3_)
            {
               §§goto(addr81);
            },§§goto(addr72))
            {
               while(true)
               {
                  this.§;!w§ = param1;
                  continue loop0;
               }
               dispatchEvent(new §!"8§(§!"8§.§4]§));
               if(_loc3_)
               {
                  break;
               }
            }
            return;
         }
         §§goto(addr19);
      }
      
      public function §[?§(param1:§7a§ = null) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§;!w§);
         if(_loc2_ || _loc3_)
         {
            return !§§pop();
         }
      }
      
      public function §+'§(param1:String = null) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§;!w§);
         if(!_loc3_)
         {
            return !§§pop();
         }
      }
      
      public function §[Q§(param1:§7a§ = null) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§;!w§);
         if(_loc3_ || _loc2_)
         {
            return !§§pop();
         }
      }
      
      public function §?!p§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§;!w§);
         if(!_loc1_)
         {
            return !§§pop();
         }
      }
   }
}
