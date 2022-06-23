package §6!C§
{
   import §%4§.§"e§;
   import §-!D§.§4!,§;
   import §0!#§.§'!,§;
   import §0,§.§4V§;
   import §0,§.ColorFadeLayerEvent;
   import §5!L§.§=w§;
   
   public class Popup extends §"e§
   {
      
      public static const §^!B§:int = 0;
      
      public static const §[j§:int = 1;
      
      public static const §-!4§:int = 2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §^!B§ = 0;
            if(!_loc1_)
            {
               §[j§ = 1;
               if(!(_loc1_ && Popup))
               {
                  addr44:
                  §-!4§ = 2;
               }
               return;
            }
         }
         §§goto(addr44);
      }
      
      protected const §<!N§:Number = 0.25;
      
      protected var §+f§:§4V§;
      
      protected var §,<§:§4!,§;
      
      protected var §`#§:Boolean = false;
      
      protected var §5d§:Number = 0.7;
      
      private var §8Z§:int = 0;
      
      private var §2x§:Boolean = false;
      
      public function Popup(param1:XML, param2:§4!,§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super(param1,param2.container);
            if(!_loc4_)
            {
               this.§+f§ = new §4V§(0,0,0,0);
               if(_loc4_ && _loc3_)
               {
               }
               §§goto(addr71);
            }
            param2.container.§9!@§(this);
            if(_loc3_ || param2)
            {
            }
            §§goto(addr71);
         }
         addr71:
         this.§,<§ = param2;
      }
      
      public function deActivate() : void
      {
      }
      
      public function get isOpen() : Boolean
      {
         return this.§2x§;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.open(param1);
            if(_loc3_ || _loc2_)
            {
               §=w§.pause();
               this.§2x§ = true;
               if(!_loc2_)
               {
                  addr46:
                  mClip.addChildAt(this.§+f§,0);
                  if(_loc3_)
                  {
                     addr53:
                     if(param1)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           §§push(this.§+f§);
                           if(_loc3_ || _loc2_)
                           {
                              §§push(this.§5d§);
                              if(_loc3_)
                              {
                                 §§pop().§[!'§(§§pop(),this.§<!N§);
                                 addr88:
                              }
                              else
                              {
                                 addr93:
                                 §§pop().§0z§(§§pop());
                              }
                              return;
                           }
                           addr91:
                           §§push(this.§5d§);
                           §§goto(addr93);
                        }
                        §§goto(addr88);
                     }
                     else
                     {
                        §§push(this.§+f§);
                     }
                     §§goto(addr91);
                  }
               }
               §§goto(addr88);
            }
            §§goto(addr53);
         }
         §§goto(addr46);
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1);
            if(_loc3_)
            {
               §§push(!§§pop());
               if(!_loc2_)
               {
                  if(!§§pop())
                  {
                     if(_loc3_ || _loc2_)
                     {
                     }
                  }
                  §§goto(addr58);
               }
               §§pop();
               if(_loc3_)
               {
                  §§push(this.§+f§);
                  if(!(_loc2_ && _loc3_))
                  {
                     addr58:
                     if(§§pop())
                     {
                        if(_loc3_ || param1)
                        {
                           this.close();
                           if(!(_loc2_ && param1))
                           {
                              return;
                           }
                        }
                        addr101:
                        §§push(this.§+f§);
                     }
                     else
                     {
                        addr86:
                        §§push(this.§+f§);
                        if(_loc3_)
                        {
                           §§pop().§[!'§(0,this.§<!N§);
                           if(!(_loc2_ && this))
                           {
                              §§goto(addr101);
                           }
                           §§goto(addr108);
                        }
                     }
                     §§pop().addEventListener(ColorFadeLayerEvent.§?!5§,this.§5-§);
                     addr108:
                     return;
                     §§push(§§pop() == null);
                  }
                  §§goto(addr58);
               }
               §§goto(addr101);
            }
            §§goto(addr58);
         }
         §§goto(addr86);
      }
      
      protected function §5-§(param1:ColorFadeLayerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.close();
         }
      }
      
      override public function close() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§2x§ = false;
            if(_loc2_ || _loc3_)
            {
               addr28:
               if(this.§`#§)
               {
                  if(!_loc3_)
                  {
                     return;
                  }
               }
               else
               {
                  §§push(this.§+f§);
                  if(!(_loc3_ && _loc1_))
                  {
                     if(§§pop())
                     {
                        §§push(this.§+f§);
                        if(!(_loc3_ && _loc3_))
                        {
                           §§pop().removeEventListener(ColorFadeLayerEvent.§?!5§,this.§5-§);
                           mClip.removeChild(this.§+f§);
                           addr74:
                           this.§+f§.clean();
                           this.§+f§ = null;
                        }
                        §§goto(addr74);
                     }
                     var _loc1_:§'!,§ = this.§,<§.getItemByName("Container_Popup");
                     if(!(_loc3_ && _loc1_))
                     {
                        §§push(this.§,<§);
                        if(!(_loc3_ && _loc3_))
                        {
                           §§push(§§pop().container);
                           if(_loc2_ || _loc2_)
                           {
                              if(§§pop())
                              {
                                 if(_loc2_ || _loc3_)
                                 {
                                    addr129:
                                    this.§,<§.container.§^Y§(this);
                                    addr128:
                                    if(_loc3_)
                                    {
                                    }
                                 }
                                 §§goto(addr138);
                              }
                              this.§`#§ = true;
                              if(!_loc3_)
                              {
                                 §§goto(addr138);
                              }
                              addr138:
                              mClip.dispatchEvent(new §%n§(§%n§.§<6§,this));
                              return;
                           }
                           §§goto(addr129);
                        }
                        §§goto(addr128);
                     }
                     §§goto(addr129);
                  }
                  §§goto(addr74);
               }
            }
            §§goto(addr74);
         }
         §§goto(addr28);
      }
      
      public function get §=g§() : int
      {
         return this.§8Z§;
      }
      
      public function set §=g§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§8Z§ = param1;
         }
      }
   }
}
