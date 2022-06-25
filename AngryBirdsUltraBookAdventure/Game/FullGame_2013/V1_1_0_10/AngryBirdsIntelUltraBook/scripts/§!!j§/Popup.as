package §!!j§
{
   import §2y§.§=!o§;
   import §;!y§.§,!s§;
   import §>!q§.§!^§;
   import §>!q§.ColorFadeLayerEvent;
   import §>f§.§&!G§;
   import §@!&§.§7!>§;
   
   public class Popup extends §=!o§
   {
      
      public static const §]p§:int = 0;
      
      public static const §!!D§:int = 1;
      
      public static const §[M§:int = 2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && Popup))
         {
            §]p§ = 0;
            while(true)
            {
               §!!D§ = 1;
               while(_loc1_)
               {
                  §[M§ = 2;
                  if(!(_loc2_ && Popup))
                  {
                     return;
                     addr49:
                  }
               }
            }
         }
         §§goto(addr49);
      }
      
      protected const §<K§:Number = 0.25;
      
      protected var §`!%§:§!^§;
      
      protected var §2!r§:§&!G§;
      
      protected var §1!r§:Boolean = false;
      
      protected var §9!e§:Number = 0.7;
      
      private var §2!>§:int = 0;
      
      private var §!!S§:Boolean = false;
      
      public function Popup(param1:XML, param2:§&!G§)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super(param1,param2.§^!W§);
         }
         loop0:
         while(true)
         {
            this.§`!%§ = new §!^§(0,0,0,0);
            while(true)
            {
               param2.§^!W§.addComponent(this);
               while(!_loc3_)
               {
                  continue loop0;
                  this.§2!r§ = param2;
                  if(_loc4_ || param1)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      public function deActivate() : void
      {
      }
      
      public function get isOpen() : Boolean
      {
         return this.§!!S§;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.open(param1);
            while(true)
            {
               §,!s§.pause();
               loop1:
               while(true)
               {
                  this.§!!S§ = true;
                  addr105:
                  while(true)
                  {
                     mClip.addChildAt(this.§`!%§,0);
                     continue loop1;
                  }
               }
               addr39:
               if(_loc3_ && this)
               {
                  continue;
               }
               §§goto(addr19);
            }
         }
         while(true)
         {
            if(param1)
            {
               if(!(_loc3_ && param1))
               {
                  if(_loc2_)
                  {
                     §§push(this.§`!%§);
                     break;
                  }
                  §§goto(addr105);
               }
            }
            else
            {
               §§push(this.§`!%§);
               if(_loc3_)
               {
                  break;
               }
               §§push(this.§9!e§);
               if(_loc2_)
               {
                  §§pop().§!0§(§§pop());
                  if(!_loc3_)
                  {
                     if(!_loc3_)
                     {
                        §§goto(addr39);
                     }
                     §§goto(addr93);
                  }
                  else
                  {
                     addr86:
                  }
                  addr19:
                  return;
               }
               addr83:
               §§pop().§^p§(§§pop(),this.§<K§);
            }
            §§goto(addr86);
         }
         §§goto(addr83);
         §§push(this.§9!e§);
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               if(!_loc2_)
               {
                  if(!§§pop())
                  {
                     loop6:
                     while(true)
                     {
                        §§pop();
                        addr114:
                        while(true)
                        {
                           §§push(this.§`!%§);
                           addr91:
                           while(true)
                           {
                              §§push(§§pop() == null);
                              if(!(_loc2_ && _loc3_))
                              {
                                 break;
                              }
                              continue loop6;
                           }
                           if(!_loc3_)
                           {
                              continue loop0;
                           }
                        }
                     }
                     addr113:
                  }
                  loop1:
                  while(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§push(this.§`!%§);
                        loop3:
                        while(!(_loc2_ && _loc3_))
                        {
                           §§pop().§^p§(0,this.§<K§);
                           loop4:
                           while(!_loc2_)
                           {
                              while(true)
                              {
                                 §§push(this.§`!%§);
                                 if(_loc2_ && param1)
                                 {
                                    continue loop3;
                                 }
                                 §§pop().addEventListener(ColorFadeLayerEvent.§&G§,this.§[-§);
                                 if(_loc2_)
                                 {
                                    continue loop4;
                                 }
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 if(!_loc3_)
                                 {
                                    break loop4;
                                 }
                                 if(!_loc2_)
                                 {
                                    continue loop2;
                                 }
                                 §§goto(addr114);
                              }
                              return;
                           }
                           break loop1;
                           return;
                        }
                        §§goto(addr91);
                     }
                  }
                  this.close();
                  §§goto(addr106);
               }
               §§goto(addr113);
            }
         }
         §§goto(addr70);
      }
      
      protected function §[-§(param1:ColorFadeLayerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.close();
         }
      }
      
      override public function close() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§!!S§ = false;
            loop0:
            while(true)
            {
               if(!this.§1!r§)
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§`!%§);
                     if(_loc3_)
                     {
                        if(!§§pop())
                        {
                           break;
                        }
                     }
                     else
                     {
                        loop3:
                        while(true)
                        {
                           §§pop().removeEventListener(ColorFadeLayerEvent.§&G§,this.§[-§);
                           while(true)
                           {
                              mClip.removeChild(this.§`!%§);
                              addr56:
                              while(!(_loc2_ && _loc2_))
                              {
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push(this.§`!%§);
                                       if(!(_loc3_ || _loc1_))
                                       {
                                          break;
                                       }
                                       §§pop().clean();
                                       while(true)
                                       {
                                          if(!_loc2_)
                                          {
                                             continue;
                                          }
                                          continue loop1;
                                       }
                                       continue loop1;
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                        }
                        addr96:
                     }
                     while(!(_loc2_ && _loc2_))
                     {
                        continue loop0;
                        §§goto(addr56);
                     }
                  }
                  var _loc1_:§7!>§ = this.§2!r§.getItemByName("Container_Popup");
                  if(!(_loc2_ && _loc3_))
                  {
                     §§push(this.§2!r§);
                     if(!_loc2_)
                     {
                        §§push(§§pop().§^!W§);
                        if(_loc3_ || _loc1_)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§push(this.§2!r§);
                                 addr180:
                                 while(true)
                                 {
                                    §§push(§§pop().§^!W§);
                                    addr181:
                                    while(true)
                                    {
                                       §§pop().§=!=§(this);
                                       addr183:
                                       while(true)
                                       {
                                       }
                                    }
                                 }
                              }
                              addr178:
                           }
                           loop10:
                           while(true)
                           {
                              this.§1!r§ = true;
                              while(!_loc2_)
                              {
                                 mClip.dispatchEvent(new §5!`§(§5!`§.§#V§,this));
                                 if(_loc2_ && _loc3_)
                                 {
                                    continue;
                                 }
                                 if(_loc3_)
                                 {
                                    break loop10;
                                 }
                                 §§goto(addr178);
                              }
                              §§goto(addr183);
                           }
                           return;
                           addr157:
                        }
                        §§goto(addr181);
                     }
                     §§goto(addr180);
                  }
                  §§goto(addr157);
               }
               return;
            }
         }
         §§goto(addr63);
      }
      
      public function get §4i§() : int
      {
         return this.§2!>§;
      }
      
      public function set §4i§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§2!>§ = param1;
         }
      }
   }
}
