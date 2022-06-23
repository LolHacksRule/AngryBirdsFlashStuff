package §=!4§
{
   import §"!5§.§,!!§;
   import §,K§.§-!$§;
   import §,K§.ColorFadeLayerEvent;
   import §1;§.§!!1§;
   import §=^§.§;%§;
   import §@s§.§3!?§;
   
   public class Popup extends §;%§
   {
       
      
      protected const §`!G§:Number = 0.25;
      
      protected var §>!;§:§-!$§;
      
      protected var §,§:§!!1§;
      
      protected var §-=§:Boolean = false;
      
      public function Popup(param1:XML, param2:§!!1§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super(param1,param2.container);
            if(_loc3_ || param1)
            {
               §§goto(addr50);
            }
            §§goto(addr60);
         }
         addr50:
         this.§>!;§ = new §-!$§(0,0,0,0);
         if(_loc3_)
         {
            addr60:
            param2.container.§?b§(this);
            if(!(_loc4_ && param2))
            {
               this.§,§ = param2;
            }
         }
      }
      
      public function deActivate() : void
      {
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         super.open(param1);
         §,!!§.pause();
         mClip.addChildAt(this.§>!;§,0);
         if(param1)
         {
            if(_loc2_ || param1)
            {
               §§push(this.§>!;§);
               if(!(_loc3_ && param1))
               {
                  §§push(0.7);
                  if(_loc2_)
                  {
                     §§pop().§0C§(§§pop(),this.§`!G§);
                     addr70:
                  }
                  else
                  {
                     addr74:
                     §§pop().§`!'§(§§pop());
                  }
                  return;
               }
               addr73:
               §§push(0.7);
               §§goto(addr74);
            }
            §§goto(addr70);
         }
         else
         {
            §§push(this.§>!;§);
         }
         §§goto(addr73);
      }
      
      public function preClose(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(param1);
            if(_loc3_)
            {
               §§push(!§§pop());
               if(_loc3_ || param1)
               {
                  if(!§§pop())
                  {
                     if(!(_loc2_ && this))
                     {
                        §§goto(addr54);
                     }
                  }
                  §§goto(addr61);
               }
            }
            addr54:
            §§pop();
            §§push(this.§>!;§);
            if(_loc3_)
            {
               addr61:
               if(§§pop() == null)
               {
                  if(_loc3_ || this)
                  {
                     this.close();
                  }
                  return;
               }
               §§push(this.§>!;§);
               if(_loc3_)
               {
                  §§pop().§0C§(0,this.§`!G§);
                  §§goto(addr106);
               }
            }
            §§pop().addEventListener(ColorFadeLayerEvent.§"%§,this.§00§);
            §§goto(addr106);
         }
         addr106:
         if(_loc3_ || _loc2_)
         {
            §§push(this.§>!;§);
         }
      }
      
      protected function §00§(param1:ColorFadeLayerEvent) : void
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(this.§-=§)
         {
            return;
         }
         §§push(this.§>!;§);
         if(_loc3_ || _loc3_)
         {
            if(§§pop())
            {
               if(!(_loc2_ && _loc1_))
               {
                  §§push(this.§>!;§);
                  if(_loc3_ || _loc2_)
                  {
                     §§pop().removeEventListener(ColorFadeLayerEvent.§"%§,this.§00§);
                     if(_loc3_)
                     {
                        §§goto(addr61);
                     }
                     §§goto(addr82);
                  }
                  §§goto(addr84);
               }
               addr61:
               mClip.removeChild(this.§>!;§);
               if(!(_loc2_ && _loc3_))
               {
                  addr84:
                  this.§>!;§.clean();
                  addr82:
                  if(_loc2_ && _loc3_)
                  {
                  }
                  §§goto(addr95);
               }
               this.§>!;§ = null;
               addr95:
               var _loc1_:§3!?§ = this.§,§.getItemByName("Container_Popup");
               if(_loc3_)
               {
                  if(_loc1_ != null)
                  {
                     _loc1_.setVisibility(false);
                     if(_loc3_ || this)
                     {
                        addr116:
                        §§push(this.§,§);
                        if(_loc3_)
                        {
                           §§push(§§pop().container);
                           if(_loc3_)
                           {
                              if(§§pop())
                              {
                                 addr137:
                                 this.§,§.container.§ '§(this);
                                 addr136:
                                 if(_loc3_ || _loc2_)
                                 {
                                 }
                                 §§goto(addr158);
                              }
                              this.§-=§ = true;
                              §§goto(addr149);
                           }
                           §§goto(addr137);
                        }
                        §§goto(addr136);
                     }
                     §§goto(addr137);
                  }
                  §§goto(addr116);
               }
               addr149:
               §,!!§.resume();
               if(!(_loc2_ && _loc1_))
               {
                  §§goto(addr158);
               }
               addr158:
               mClip.dispatchEvent(new §;=§(§;=§.§"!G§,this));
               return;
            }
         }
         §§goto(addr84);
      }
   }
}
