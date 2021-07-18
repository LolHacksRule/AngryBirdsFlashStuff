package §<M§
{
   import § !B§.§-#§;
   import § !B§.ColorFadeLayerEvent;
   import §"U§.§36§;
   import §6v§.§var §;
   import §8!B§.§#! §;
   import §]!-§.§`o§;
   
   public class Popup extends §36§
   {
      
      public static const §+!M§:int = 0;
      
      public static const §]!O§:int = 1;
      
      public static const §@!$§:int = 2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §+!M§ = 0;
            do
            {
               §]!O§ = 1;
               do
               {
                  §@!$§ = 2;
               }
               while(_loc1_ && _loc2_);
               
            }
            while(_loc1_);
            
         }
      }
      
      protected const §%5§:Number = 0.25;
      
      protected var §!>§:§-#§;
      
      protected var §%Q§:§`o§;
      
      protected var §+;§:Boolean = false;
      
      private var §]!#§:int = 0;
      
      private var §+e§:Boolean = false;
      
      public function Popup(param1:XML, param2:§`o§)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super(param1,param2.container);
         }
         loop0:
         do
         {
            this.§!>§ = new §-#§(0,0,0,0);
            while(true)
            {
               param2.container.addComponent(this);
               while(!_loc3_)
               {
                  this.§%Q§ = param2;
                  if(!(_loc3_ && param2))
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(!(_loc4_ || _loc3_));
         
      }
      
      public function deActivate() : void
      {
      }
      
      public function get isOpen() : Boolean
      {
         return this.§+e§;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            super.open(param1);
            do
            {
               §#! §.pause();
            }
            while(!(_loc2_ || param1));
            
            this.§+e§ = true;
            mClip.addChildAt(this.§!>§,0);
         }
         do
         {
            if(param1)
            {
               §§push(this.§!>§);
            }
            else
            {
               §§push(this.§!>§);
               if(_loc2_)
               {
                  §§push(0.7);
                  if(_loc2_)
                  {
                     §§pop().§3!@§(§§pop());
                     §§goto(addr24);
                  }
                  continue;
               }
            }
         }
         while(§§pop().fadeToAlpha(§§pop(),this.§%5§), _loc3_);
         
         addr24:
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
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        §§push(this.§!>§);
                        addr73:
                        while(true)
                        {
                           §§push(§§pop() == null);
                           if(_loc2_ && _loc2_)
                           {
                              continue loop2;
                           }
                           if(_loc2_ && param1)
                           {
                              break;
                           }
                           if(!_loc3_)
                           {
                              continue loop0;
                           }
                        }
                        continue loop1;
                     }
                  }
                  while(!§§pop())
                  {
                     while(true)
                     {
                        §§push(this.§!>§);
                        while(true)
                        {
                           §§pop().fadeToAlpha(0,this.§%5§);
                           if(!_loc3_)
                           {
                              break;
                           }
                           §§push(this.§!>§);
                           if(_loc2_)
                           {
                              continue;
                           }
                           if(_loc3_)
                           {
                              §§pop().addEventListener(ColorFadeLayerEvent.§3n§,this.§"!D§);
                              return;
                           }
                           §§goto(addr73);
                        }
                     }
                  }
               }
            }
         }
         this.close();
      }
      
      protected function §"!D§(param1:ColorFadeLayerEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.close();
         }
      }
      
      override public function close() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§+e§ = false;
            loop0:
            while(!this.§+;§)
            {
               loop1:
               while(true)
               {
                  §§push(this.§!>§);
                  if(_loc3_)
                  {
                     if(§§pop())
                     {
                        loop2:
                        for(; _loc3_; §§pop().clean(),if(_loc2_ && this)
                        {
                           continue;
                        },§§goto(addr46))
                        {
                           while(true)
                           {
                              §§push(this.§!>§);
                              addr63:
                              loop3:
                              while(true)
                              {
                                 §§pop().removeEventListener(ColorFadeLayerEvent.§3n§,this.§"!D§);
                                 if(_loc2_ && this)
                                 {
                                    break;
                                 }
                                 mClip.removeChild(this.§!>§);
                                 while(true)
                                 {
                                    addr28:
                                    while(true)
                                    {
                                       §§push(this.§!>§);
                                       if(!(_loc3_ || this))
                                       {
                                          break;
                                       }
                                       continue loop2;
                                    }
                                    addr46:
                                    continue loop3;
                                    this.§!>§ = null;
                                    if(!_loc3_)
                                    {
                                       continue;
                                    }
                                    if(false)
                                    {
                                       §§goto(addr28);
                                    }
                                    else
                                    {
                                       addr96:
                                       var _loc1_:§var § = this.§%Q§.getItemByName("Container_Popup");
                                       if(!_loc2_)
                                       {
                                          §§push(this.§%Q§);
                                          if(!(_loc2_ && _loc3_))
                                          {
                                             §§push(§§pop().container);
                                             if(!_loc2_)
                                             {
                                                if(§§pop())
                                                {
                                                   addr166:
                                                   this.§%Q§.container.§[1§(this);
                                                   addr168:
                                                   addr163:
                                                   addr165:
                                                }
                                                this.§+;§ = true;
                                                addr142:
                                                if(_loc3_ || _loc3_)
                                                {
                                                   §#! §.resume();
                                                   addr123:
                                                   if(_loc3_)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         mClip.dispatchEvent(new §%,§(§%,§.§=a§,this));
                                                         if(!_loc3_)
                                                         {
                                                            §§goto(addr123);
                                                         }
                                                         return;
                                                      }
                                                      §§goto(addr168);
                                                   }
                                                   §§goto(addr142);
                                                }
                                                §§goto(addr163);
                                             }
                                             §§goto(addr166);
                                          }
                                          §§goto(addr165);
                                       }
                                       §§goto(addr166);
                                    }
                                 }
                              }
                              continue loop1;
                           }
                        }
                        continue loop0;
                     }
                     §§goto(addr96);
                  }
                  §§goto(addr63);
               }
            }
            return;
         }
         §§goto(addr61);
      }
      
      public function get §3!P§() : int
      {
         return this.§]!#§;
      }
      
      public function set §3!P§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§]!#§ = param1;
         }
      }
   }
}
