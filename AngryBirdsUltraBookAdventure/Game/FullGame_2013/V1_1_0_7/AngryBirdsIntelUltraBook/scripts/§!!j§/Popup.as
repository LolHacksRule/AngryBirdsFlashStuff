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
            do
            {
               §!!D§ = 1;
               do
               {
                  §[M§ = 2;
               }
               while(_loc2_);
               
            }
            while(_loc2_ && _loc1_);
            
         }
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
         while(true)
         {
            this.§`!%§ = new §!^§(0,0,0,0);
            while(!_loc3_)
            {
               param2.§^!W§.addComponent(this);
               while(!(_loc3_ && param1))
               {
                  this.§2!r§ = param2;
                  if(!(_loc3_ && param1))
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.open(param1);
            loop0:
            do
            {
               §,!s§.pause();
               loop1:
               while(true)
               {
                  this.§!!S§ = true;
                  do
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        mClip.addChildAt(this.§`!%§,0);
                        do
                        {
                           if(!param1)
                           {
                              §§push(this.§`!%§);
                              if(!_loc2_)
                              {
                                 §§push(this.§9!e§);
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    §§pop().§!0§(§§pop());
                                    if(_loc2_)
                                    {
                                       continue;
                                    }
                                    if(_loc3_ || _loc2_)
                                    {
                                       §§goto(addr20);
                                    }
                                    addr66:
                                    §§push(this.§`!%§);
                                    §§push(this.§9!e§);
                                 }
                                 §§pop().§^p§(§§pop(),this.§<K§);
                                 continue;
                              }
                           }
                           §§goto(addr66);
                        }
                        while(_loc2_);
                        
                        continue;
                     }
                     continue loop1;
                  }
                  while(!(_loc3_ || _loc2_));
                  
                  continue loop0;
               }
            }
            while(!_loc3_);
            
         }
         addr20:
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
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
                        addr128:
                        while(true)
                        {
                           §§push(this.§`!%§);
                           addr105:
                           while(true)
                           {
                              §§push(§§pop() == null);
                              if(_loc3_)
                              {
                                 continue loop2;
                              }
                              if(!(_loc2_ || _loc3_))
                              {
                                 break;
                              }
                              if(!_loc2_)
                              {
                                 continue loop0;
                              }
                           }
                           continue loop1;
                        }
                     }
                  }
                  loop5:
                  while(!§§pop())
                  {
                     loop6:
                     while(true)
                     {
                        §§push(this.§`!%§);
                        loop7:
                        while(_loc2_)
                        {
                           §§pop().§^p§(0,this.§<K§);
                           while(_loc2_ || _loc3_)
                           {
                              §§push(this.§`!%§);
                              if(!(_loc2_ || _loc3_))
                              {
                                 continue loop7;
                              }
                              §§pop().addEventListener(ColorFadeLayerEvent.§&G§,this.§[-§);
                              if(_loc3_)
                              {
                                 continue;
                              }
                              if(_loc2_ || this)
                              {
                                 if(_loc2_ || this)
                                 {
                                    return;
                                 }
                                 break loop5;
                              }
                              if(_loc2_)
                              {
                                 continue loop6;
                              }
                              §§goto(addr128);
                           }
                           return;
                        }
                        §§goto(addr105);
                     }
                  }
               }
            }
         }
         this.close();
         §§goto(addr122);
      }
      
      protected function §[-§(param1:ColorFadeLayerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.close();
         }
      }
      
      override public function close() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§!!S§ = false;
            loop0:
            for(; !this.§1!r§; if(!(_loc2_ || _loc1_))
            {
               continue;
            },§§goto(addr106))
            {
               while(true)
               {
                  §§push(this.§`!%§);
                  loop2:
                  while(§§pop())
                  {
                     loop3:
                     while(true)
                     {
                        §§push(this.§`!%§);
                        loop4:
                        while(true)
                        {
                           §§pop().removeEventListener(ColorFadeLayerEvent.§&G§,this.§[-§);
                           addr93:
                           while(true)
                           {
                              mClip.removeChild(this.§`!%§);
                              while(true)
                              {
                                 continue loop4;
                                 addr25:
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    if(!_loc3_)
                                    {
                                       if(!_loc3_)
                                       {
                                          if(true)
                                          {
                                             break loop2;
                                          }
                                          continue loop4;
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
                  var _loc1_:§7!>§ = this.§2!r§.getItemByName("Container_Popup");
                  if(_loc2_ || this)
                  {
                     §§push(this.§2!r§);
                     if(_loc2_)
                     {
                        §§push(§§pop().§^!W§);
                        if(_loc2_)
                        {
                           if(§§pop())
                           {
                              if(!(_loc3_ && _loc2_))
                              {
                                 addr180:
                                 this.§2!r§.§^!W§.§=!=§(this);
                              }
                              addr182:
                           }
                           this.§1!r§ = true;
                           mClip.dispatchEvent(new §5!`§(§5!`§.§#V§,this));
                           if(_loc2_)
                           {
                              if(!(_loc2_ || _loc2_))
                              {
                                 §§goto(addr182);
                              }
                              return;
                           }
                           addr161:
                           §§goto(addr161);
                        }
                     }
                  }
                  §§goto(addr180);
                  addr106:
               }
            }
            return;
         }
         §§goto(addr76);
      }
      
      public function get §4i§() : int
      {
         return this.§2!>§;
      }
      
      public function set §4i§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§2!>§ = param1;
         }
      }
   }
}
