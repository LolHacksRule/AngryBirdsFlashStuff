package §'!3§
{
   import §1!i§.§4z§;
   import §1!i§.§`!t§;
   import §24§.§4!H§;
   import §2u§.§,6§;
   import §[!5§.§+!1§;
   import §[!5§.§2p§;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class § !3§ extends §;!o§
   {
      
      private static var §`!x§:Class;
      
      public static var §0!3§:Number = 5000;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §`!x§ = §&!u§;
         }
         do
         {
            §0!3§ = 5000;
         }
         while(!_loc2_);
         
      }
      
      private var §]!_§:Number;
      
      private var §!e§:§2p§;
      
      private var §1!G§:String;
      
      private var §?!@§:Timer;
      
      private var §<n§:Boolean;
      
      public function § !3§(param1:String, param2:Number = 5000, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            this.§1!G§ = param1;
            loop0:
            while(true)
            {
               this.§]!_§ = param2;
               while(true)
               {
                  §^J§ = true;
                  loop3:
                  while(_loc4_ || param3)
                  {
                     if(_loc4_)
                     {
                        this.§<n§ = param3;
                        if(!_loc5_)
                        {
                           addr34:
                           if(_loc5_ && param2)
                           {
                              while(true)
                              {
                                 super(§`!t§.§9r§,§4z§.DEFAULT,this.§'!,§());
                                 continue loop3;
                                 §§goto(addr34);
                              }
                              addr85:
                           }
                           return;
                        }
                        continue;
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr85);
      }
      
      protected function §'!,§() : XML
      {
         var _loc1_:XML = §4!H§.§7o§(§`!x§);
         return AngryBirdsCustom.§9!>§(_loc1_);
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super.init();
         }
         loop0:
         while(true)
         {
            §§push(this.§<n§);
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     this.§?!@§ = new Timer(this.§]!_§,1);
                     addr158:
                     while(true)
                     {
                        this.§?!@§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§5!P§);
                        addr136:
                        while(true)
                        {
                           this.§?!@§.start();
                           addr127:
                           while(true)
                           {
                           }
                           addr55:
                           if(_loc1_ || _loc2_)
                           {
                              §§goto(addr24);
                           }
                        }
                     }
                  }
                  addr141:
               }
               while(true)
               {
                  this.§!e§ = new §2p§(§29§,-AngryBirdsCustom.§`!,§ / 2);
                  continue loop0;
               }
               addr87:
               §§push(this.§<n§);
               if(_loc1_ || _loc1_)
               {
                  if(!§§pop())
                  {
                     if(!_loc2_)
                     {
                        if(_loc1_)
                        {
                           §-p§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§,o§,true);
                           addr51:
                           if(!_loc1_)
                           {
                              loop10:
                              while(true)
                              {
                                 if(!(_loc2_ && this))
                                 {
                                    if(_loc1_)
                                    {
                                       addr103:
                                       §§push(this.§!e§);
                                       if(_loc1_)
                                       {
                                          §§push(§+!1§.§[!U§);
                                          if(!_loc2_)
                                          {
                                             §§pop().addEventListener(§§pop(),this.§!!y§);
                                             while(true)
                                             {
                                                if(_loc1_)
                                                {
                                                   §§goto(addr87);
                                                }
                                                else
                                                {
                                                   §§goto(addr141);
                                                }
                                             }
                                             §§goto(addr136);
                                             addr85:
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§push(this.§1!G§);
                                             §§goto(addr103);
                                          }
                                          addr91:
                                       }
                                       while(true)
                                       {
                                          §§pop().show(§§pop());
                                          continue loop10;
                                       }
                                    }
                                    break;
                                 }
                                 continue loop0;
                              }
                              §§goto(addr158);
                              addr94:
                           }
                           if(_loc1_)
                           {
                              §§goto(addr55);
                           }
                           §§goto(addr127);
                        }
                        §§goto(addr85);
                     }
                     §§goto(addr51);
                  }
                  addr24:
               }
               continue;
               return;
            }
         }
      }
      
      private function §,o§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §-p§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§,o§);
            loop0:
            while(true)
            {
               §§push(this.§!e§);
               if(!(_loc2_ && this))
               {
                  if(!§§pop())
                  {
                     §§goto(addr25);
                  }
                  if(!(_loc3_ || this))
                  {
                     continue;
                  }
                  while(true)
                  {
                     §§push(this.§!e§);
                  }
               }
               while(true)
               {
                  §§pop().hide();
                  continue loop0;
               }
            }
            addr25:
            return;
         }
         §§goto(addr57);
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.show(param1);
         }
      }
      
      private function §5!P§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§!e§.hide();
         }
      }
      
      private function §!!y§(param1:§+!1§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            close();
         }
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            if(this.§?!@§)
            {
               while(true)
               {
                  this.§?!@§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§5!P§);
                  addr116:
                  while(true)
                  {
                  }
                  addr66:
                  if(_loc4_ && this)
                  {
                     continue;
                  }
                  this.§!e§ = null;
                  do
                  {
                     super.hide(param1,param2);
                  }
                  while(!_loc3_);
                  
                  addr73:
                  if(!(_loc3_ || this))
                  {
                     loop6:
                     while(true)
                     {
                        if(_loc3_)
                        {
                           §§goto(addr66);
                        }
                        else
                        {
                           loop5:
                           while(true)
                           {
                              if(!_loc4_)
                              {
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 addr86:
                                 §§push(this.§!e§);
                                 if(_loc3_)
                                 {
                                    §§pop().dispose();
                                    continue loop6;
                                 }
                                 addr90:
                                 while(true)
                                 {
                                    §§pop().removeEventListener(§+!1§.§[!U§,this.§!!y§);
                                    §§goto(addr86);
                                 }
                              }
                              while(true)
                              {
                                 §-p§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§,o§);
                                 continue loop5;
                              }
                           }
                           §§goto(addr116);
                        }
                     }
                  }
                  return;
                  addr42:
               }
            }
            while(true)
            {
               §§goto(addr90);
               §§goto(addr116);
            }
         }
         §§goto(addr42);
      }
      
      public function §2!l§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§!e§);
            if(_loc1_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr53);
            }
            §§pop().hide();
         }
         addr53:
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§!e§);
         }
      }
      
      public function get container() : §,6§
      {
         return §29§;
      }
   }
}
