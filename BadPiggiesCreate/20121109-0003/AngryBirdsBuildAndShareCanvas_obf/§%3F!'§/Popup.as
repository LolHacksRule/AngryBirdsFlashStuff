package §?!'§
{
   import §&!<§.§>!V§;
   import §,P§.§'_§;
   import §<!]§.ColorFadeLayerEvent;
   import §<!]§.§]!v§;
   import §=!7§.§>!;§;
   import §@y§.§0"4§;
   
   public class Popup extends §>!;§
   {
      
      public static const §5w§:int = 0;
      
      public static const §-"=§:int = 1;
      
      public static const §=u§:int = 2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §5w§ = 0;
         }
         do
         {
            §-"=§ = 1;
            do
            {
               §=u§ = 2;
            }
            while(_loc2_);
            
         }
         while(_loc2_);
         
      }
      
      protected const §3§:Number = 0.25;
      
      protected var §<E§:§]!v§;
      
      protected var §-^§:§>!V§;
      
      protected var §2L§:Boolean = false;
      
      protected var §3C§:Number = 0.7;
      
      private var §8"4§:int = 0;
      
      private var §+!f§:Boolean = false;
      
      public function Popup(param1:XML, param2:§>!V§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(param1,param2.container);
         }
         while(true)
         {
            this.§<E§ = new §]!v§(0,0,0,0);
            while(_loc3_ || _loc3_)
            {
               param2.container.§#i§(this);
               while(!_loc4_)
               {
                  this.§-^§ = param2;
                  if(_loc3_ || _loc3_)
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
         return this.§+!f§;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.open(param1);
            loop0:
            while(true)
            {
               §'_§.pause();
               while(true)
               {
                  this.§+!f§ = true;
                  addr62:
                  if(_loc2_ || param1)
                  {
                     addr73:
                     this.§<E§.§[!r§(this.§3C§,this.§3§);
                     if(!_loc3_)
                     {
                        addr19:
                        return;
                        addr78:
                     }
                     continue loop0;
                     addr71:
                  }
               }
            }
         }
         loop2:
         while(true)
         {
            mClip.addChildAt(this.§<E§,0);
            while(true)
            {
               if(param1)
               {
                  if(_loc2_)
                  {
                     if(_loc3_)
                     {
                        continue;
                     }
                     §§goto(addr62);
                  }
               }
               else
               {
                  §§push(this.§<E§);
                  if(!_loc2_)
                  {
                     break;
                  }
                  §§push(this.§3C§);
                  if(_loc2_ || this)
                  {
                     §§pop().§0"+§(§§pop());
                     if(_loc2_)
                     {
                        if(!_loc2_)
                        {
                           continue loop2;
                        }
                        §§goto(addr19);
                     }
                  }
                  else
                  {
                     §§goto(addr73);
                  }
               }
               §§goto(addr73);
            }
            §§goto(addr71);
         }
         §§goto(addr78);
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(param1);
            if(!(_loc3_ && this))
            {
               §§push(!§§pop());
               if(_loc2_ || this)
               {
                  if(!§§pop())
                  {
                     loop5:
                     while(true)
                     {
                        §§pop();
                        addr133:
                        while(true)
                        {
                           addr81:
                           §§push(this.§<E§ == null);
                           if(!(_loc3_ && param1))
                           {
                              break;
                           }
                           continue loop5;
                        }
                     }
                     addr132:
                  }
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§push(this.§<E§);
                           loop2:
                           while(true)
                           {
                              §§pop().§[!r§(0,this.§3§);
                              addr72:
                              while(true)
                              {
                                 if(_loc2_)
                                 {
                                    continue loop2;
                                 }
                              }
                              §§goto(addr133);
                           }
                        }
                        return;
                        addr54:
                     }
                     if(_loc2_)
                     {
                        this.close();
                     }
                     if(_loc2_ || param1)
                     {
                        break;
                     }
                     §§goto(addr133);
                     §§goto(addr81);
                  }
                  return;
               }
            }
            §§goto(addr132);
         }
         §§goto(addr54);
      }
      
      protected function §9!>§(param1:ColorFadeLayerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
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
            this.§+!f§ = false;
            loop0:
            while(true)
            {
               if(this.§2L§)
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     break;
                  }
                  while(true)
                  {
                  }
                  addr112:
               }
               while(true)
               {
                  §§push(this.§<E§);
                  if(!(_loc2_ && this))
                  {
                     if(!§§pop())
                     {
                        break;
                     }
                     if(!(_loc2_ && _loc1_))
                     {
                        if(!_loc3_)
                        {
                           continue loop0;
                        }
                        addr82:
                        §§push(this.§<E§);
                        while(true)
                        {
                           §§pop().removeEventListener(ColorFadeLayerEvent.§;x§,this.§9!>§);
                        }
                        addr82:
                     }
                     while(!_loc2_)
                     {
                        mClip.removeChild(this.§<E§);
                        loop4:
                        while(true)
                        {
                           addr28:
                           while(true)
                           {
                              §§push(this.§<E§);
                              if(_loc2_ && this)
                              {
                                 break;
                              }
                              §§pop().clean();
                              continue loop4;
                           }
                           §§goto(addr82);
                        }
                     }
                     continue;
                  }
                  §§goto(addr82);
               }
               var _loc1_:§0"4§ = this.§-^§.getItemByName("Container_Popup");
               if(!_loc2_)
               {
                  §§push(this.§-^§);
                  if(_loc3_ || _loc2_)
                  {
                     §§push(§§pop().container);
                     if(_loc3_ || this)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§push(this.§-^§);
                              addr196:
                              while(true)
                              {
                                 §§push(§§pop().container);
                                 addr197:
                                 while(true)
                                 {
                                    §§pop().removeComponent(this);
                                    addr199:
                                    while(true)
                                    {
                                    }
                                 }
                              }
                           }
                           addr194:
                        }
                        loop10:
                        while(true)
                        {
                           this.§2L§ = true;
                           loop11:
                           while(true)
                           {
                              §'_§.resume();
                              while(true)
                              {
                                 if(_loc2_ && _loc3_)
                                 {
                                    continue loop11;
                                 }
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 if(!_loc2_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr194);
                              }
                              continue loop10;
                           }
                        }
                     }
                     §§goto(addr197);
                  }
                  §§goto(addr196);
               }
               §§goto(addr199);
            }
            return;
         }
         §§goto(addr26);
      }
      
      public function get §9=§() : int
      {
         return this.§8"4§;
      }
      
      public function set §9=§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§8"4§ = param1;
         }
      }
   }
}
